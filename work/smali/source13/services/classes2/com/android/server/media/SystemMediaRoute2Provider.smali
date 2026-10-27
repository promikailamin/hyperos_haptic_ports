.class Lcom/android/server/media/SystemMediaRoute2Provider;
.super Lcom/android/server/media/MediaRoute2Provider;
.source "SystemMediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;,
        Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final DEFAULT_ROUTE_ID:Ljava/lang/String; = "DEFAULT_ROUTE"

.field static final DEVICE_ROUTE_ID:Ljava/lang/String; = "DEVICE_ROUTE"

.field static final SYSTEM_SESSION_ID:Ljava/lang/String; = "SYSTEM_SESSION"

.field private static final TAG:Ljava/lang/String; = "MR2SystemProvider"

.field private static sComponentName:Landroid/content/ComponentName;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

.field final mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

.field private final mAudioService:Landroid/media/IAudioService;

.field private final mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

.field private final mContext:Landroid/content/Context;

.field final mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

.field mDefaultRoute:Landroid/media/MediaRoute2Info;

.field mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

.field mDeviceRoute:Landroid/media/MediaRoute2Info;

.field mDeviceVolume:I

.field private final mHandler:Landroid/os/Handler;

.field private volatile mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

.field private final mRequestLock:Ljava/lang/Object;

.field private mSelectedRouteId:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/SystemMediaRoute2Provider;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateDeviceRoute(Lcom/android/server/media/SystemMediaRoute2Provider;Landroid/media/AudioRoutesInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateDeviceRoute(Landroid/media/AudioRoutesInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 64
    const-class v0, Lcom/android/server/media/SystemMediaRoute2Provider;

    const-string v1, "MR2SystemProvider"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    .line 77
    new-instance v1, Landroid/content/ComponentName;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/media/SystemMediaRoute2Provider;->sComponentName:Landroid/content/ComponentName;

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 111
    sget-object v0, Lcom/android/server/media/SystemMediaRoute2Provider;->sComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRoute2Provider;-><init>(Landroid/content/ComponentName;)V

    .line 87
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 90
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mIsSystemRouteProvider:Z

    .line 114
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    .line 116
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    .line 118
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    .line 119
    nop

    .line 120
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 119
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioService:Landroid/media/IAudioService;

    .line 121
    const/4 v2, 0x0

    .line 123
    .local v2, "newAudioRoutes":Landroid/media/AudioRoutesInfo;
    :try_start_4a
    invoke-interface {v1, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v0
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4e} :catch_50

    move-object v2, v0

    .line 125
    goto :goto_51

    .line 124
    :catch_50
    move-exception v0

    .line 126
    :goto_51
    invoke-direct {p0, v2}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateDeviceRoute(Landroid/media/AudioRoutesInfo;)V

    .line 129
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    invoke-static {p1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->createInstance(Landroid/content/Context;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;)Lcom/android/server/media/BluetoothRouteProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    .line 135
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    .line 136
    return-void
.end method

.method private updateDeviceRoute(Landroid/media/AudioRoutesInfo;)V
    .registers 9
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .line 275
    const v0, 0x1040326

    .line 276
    .local v0, "name":I
    const/4 v1, 0x2

    .line 277
    .local v1, "type":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_45

    .line 278
    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v5, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v5, v4, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 279
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_18

    .line 280
    const/4 v1, 0x4

    .line 281
    const v0, 0x1040329

    goto :goto_45

    .line 282
    :cond_18
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_22

    .line 283
    const/4 v1, 0x3

    .line 284
    const v0, 0x1040329

    goto :goto_45

    .line 285
    :cond_22
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2e

    .line 286
    const/16 v1, 0xd

    .line 287
    const v0, 0x1040327

    goto :goto_45

    .line 288
    :cond_2e
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3a

    .line 289
    const/16 v1, 0x9

    .line 290
    const v0, 0x1040328

    goto :goto_45

    .line 291
    :cond_3a
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_45

    .line 292
    const/16 v1, 0xb

    .line 293
    const v0, 0x104032a

    .line 297
    :cond_45
    :goto_45
    new-instance v4, Landroid/media/MediaRoute2Info$Builder;

    iget-object v5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    .line 298
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEVICE_ROUTE"

    invoke-direct {v4, v6, v5}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 299
    iget-object v5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 300
    const/4 v2, 0x0

    goto :goto_65

    .line 301
    :cond_64
    nop

    .line 299
    :goto_65
    invoke-virtual {v4, v2}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceVolume:I

    .line 302
    invoke-virtual {v2, v4}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    .line 303
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 304
    invoke-virtual {v2, v1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 305
    const-string v4, "android.media.route.feature.LIVE_AUDIO"

    invoke-virtual {v2, v4}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 306
    const-string v4, "android.media.route.feature.LIVE_VIDEO"

    invoke-virtual {v2, v4}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 307
    const-string v4, "android.media.route.feature.LOCAL_PLAYBACK"

    invoke-virtual {v2, v4}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 308
    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 310
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 311
    return-void
.end method

.method private updateProviderState()V
    .registers 5

    .line 314
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    invoke-direct {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>()V

    .line 315
    .local v0, "builder":Landroid/media/MediaRoute2ProviderInfo$Builder;
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 316
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v1, :cond_26

    .line 317
    invoke-virtual {v1}, Lcom/android/server/media/BluetoothRouteProvider;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 318
    .local v2, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 319
    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_16

    .line 321
    :cond_26
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v1

    .line 322
    .local v1, "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 323
    sget-boolean v2, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    if-eqz v2, :cond_49

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating system provider info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MR2SystemProvider"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_49
    return-void
.end method


# virtual methods
.method public deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 214
    return-void
.end method

.method public generateDeviceRouteSelectedSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 260
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 262
    :cond_e
    new-instance v1, Landroid/media/RoutingSessionInfo$Builder;

    const-string v2, "SYSTEM_SESSION"

    invoke-direct {v1, v2, p1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 263
    invoke-virtual {v1, v2}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    .line 264
    .local v1, "builder":Landroid/media/RoutingSessionInfo$Builder;
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 265
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v2, :cond_44

    .line 266
    invoke-virtual {v2}, Lcom/android/server/media/BluetoothRouteProvider;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 267
    .local v3, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 268
    nop

    .end local v3    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_2f

    .line 270
    :cond_44
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 271
    .end local v1    # "builder":Landroid/media/RoutingSessionInfo$Builder;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public getDefaultRoute()Landroid/media/MediaRoute2Info;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    return-object v0
.end method

.method public getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    return-object v0
.end method

.method synthetic lambda$new$0$com-android-server-media-SystemMediaRoute2Provider(Ljava/util/List;)V
    .registers 3
    .param p1, "routes"    # Ljava/util/List;

    .line 130
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->publishProviderState()V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 132
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifySessionInfoUpdated()V

    .line 134
    :cond_c
    return-void
.end method

.method synthetic lambda$start$1$com-android-server-media-SystemMediaRoute2Provider()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->start(Landroid/os/UserHandle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyProviderState()V

    .line 148
    return-void
.end method

.method synthetic lambda$stop$2$com-android-server-media-SystemMediaRoute2Provider()V
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-virtual {v0}, Lcom/android/server/media/BluetoothRouteProvider;->stop()V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyProviderState()V

    .line 159
    return-void
.end method

.method notifySessionInfoUpdated()V
    .registers 4

    .line 405
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    if-nez v0, :cond_5

    .line 406
    return-void

    .line 410
    :cond_5
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_8
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 412
    .local v1, "sessionInfo":Landroid/media/RoutingSessionInfo;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_18

    .line 414
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionUpdated(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    .line 415
    return-void

    .line 412
    .end local v1    # "sessionInfo":Landroid/media/RoutingSessionInfo;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public prepareReleaseSession(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 247
    return-void
.end method

.method publishProviderState()V
    .registers 1

    .line 400
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 401
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyProviderState()V

    .line 402
    return-void
.end method

.method public releaseSession(JLjava/lang/String;)V
    .registers 4
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;

    .line 199
    return-void
.end method

.method public requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "requestId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;
    .param p5, "sessionHints"    # Landroid/os/Bundle;

    .line 175
    const-string v0, "DEFAULT_ROUTE"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 176
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    .line 177
    return-void

    .line 179
    :cond_10
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 180
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    .line 181
    return-void

    .line 184
    :cond_27
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    if-eqz v2, :cond_37

    .line 187
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    iget-wide v3, v3, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRequestId:J

    invoke-interface {v2, p0, v3, v4, v1}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V

    .line 190
    :cond_37
    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;-><init>(JLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    .line 191
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_45

    .line 193
    const-string v0, "SYSTEM_SESSION"

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/media/SystemMediaRoute2Provider;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void

    .line 191
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 165
    invoke-super {p0, p1}, Lcom/android/server/media/MediaRoute2Provider;->setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyProviderState()V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifySessionInfoUpdated()V

    .line 168
    return-void
.end method

.method public setRouteVolume(JLjava/lang/String;I)V
    .registers 8
    .param p1, "requestId"    # J
    .param p3, "routeId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 233
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 234
    return-void

    .line 236
    :cond_9
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 237
    return-void
.end method

.method public setSessionVolume(JLjava/lang/String;I)V
    .registers 5
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 242
    return-void
.end method

.method public start()V
    .registers 9

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v1, :cond_26

    .line 145
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateVolume()V

    .line 151
    return-void
.end method

.method public stop()V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v0, :cond_15

    .line 156
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :cond_15
    return-void
.end method

.method public transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 218
    const-string v0, "DEFAULT_ROUTE"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 220
    return-void

    .line 222
    :cond_9
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v0, :cond_25

    .line 223
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 224
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->transferTo(Ljava/lang/String;)V

    goto :goto_25

    .line 226
    :cond_20
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-virtual {v0, p4}, Lcom/android/server/media/BluetoothRouteProvider;->transferTo(Ljava/lang/String;)V

    .line 229
    :cond_25
    :goto_25
    return-void
.end method

.method public updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
    .registers 2
    .param p1, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;

    .line 204
    return-void
.end method

.method updateSessionInfosIfNeeded()Z
    .registers 13

    .line 332
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    move-object v1, v2

    goto :goto_17

    :cond_f
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 336
    .local v1, "oldSessionInfo":Landroid/media/RoutingSessionInfo;
    :goto_17
    new-instance v4, Landroid/media/RoutingSessionInfo$Builder;

    const-string v5, "SYSTEM_SESSION"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v4

    .line 340
    .local v4, "builder":Landroid/media/RoutingSessionInfo$Builder;
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 341
    .local v6, "selectedRoute":Landroid/media/MediaRoute2Info;
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v7, :cond_3b

    .line 342
    invoke-virtual {v7}, Lcom/android/server/media/BluetoothRouteProvider;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    move-result-object v7

    .line 343
    .local v7, "selectedBtRoute":Landroid/media/MediaRoute2Info;
    if-eqz v7, :cond_3b

    .line 344
    move-object v6, v7

    .line 345
    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v8}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 348
    .end local v7    # "selectedBtRoute":Landroid/media/MediaRoute2Info;
    :cond_3b
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    .line 349
    new-instance v7, Landroid/media/MediaRoute2Info$Builder;

    const-string v8, "DEFAULT_ROUTE"

    invoke-direct {v7, v8, v6}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 350
    invoke-virtual {v7, v5}, Landroid/media/MediaRoute2Info$Builder;->setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 351
    invoke-virtual {v7, v8}, Landroid/media/MediaRoute2Info$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v7

    .line 352
    invoke-virtual {v7}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 353
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 355
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v7, :cond_7e

    .line 356
    invoke-virtual {v7}, Lcom/android/server/media/BluetoothRouteProvider;->getTransferableRoutes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_69
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaRoute2Info;

    .line 357
    .local v8, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {v8}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 358
    nop

    .end local v8    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_69

    .line 361
    :cond_7e
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v7

    .line 363
    .local v7, "newSessionInfo":Landroid/media/RoutingSessionInfo;
    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    if-eqz v8, :cond_b3

    .line 365
    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_102

    .line 366
    :try_start_8f
    iget-object v9, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    .line 367
    .local v9, "sessionCreationRequest":Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;
    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    .line 368
    monitor-exit v8
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_b0

    .line 369
    if-eqz v9, :cond_b3

    .line 370
    :try_start_96
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    iget-object v8, v9, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRouteId:Ljava/lang/String;

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 371
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-wide v10, v9, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRequestId:J

    invoke-interface {v2, p0, v10, v11, v7}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    goto :goto_b3

    .line 374
    :cond_a8
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-wide v10, v9, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRequestId:J

    invoke-interface {v2, p0, v10, v11, v3}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V
    :try_end_af
    .catchall {:try_start_96 .. :try_end_af} :catchall_102

    goto :goto_b3

    .line 368
    .end local v9    # "sessionCreationRequest":Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;
    :catchall_b0
    move-exception v2

    :try_start_b1
    monitor-exit v8
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    .end local p0    # "this":Lcom/android/server/media/SystemMediaRoute2Provider;
    :try_start_b2
    throw v2

    .line 380
    .restart local p0    # "this":Lcom/android/server/media/SystemMediaRoute2Provider;
    :cond_b3
    :goto_b3
    invoke-static {v1, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 381
    monitor-exit v0

    return v3

    .line 383
    :cond_bb
    sget-boolean v2, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    if-eqz v2, :cond_d7

    .line 384
    const-string v2, "MR2SystemProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating system routing session info : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_d7
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 387
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v2, Landroid/media/RoutingSessionInfo$Builder;

    const-string v3, "SYSTEM_SESSION"

    const-string v8, ""

    invoke-direct {v2, v3, v8}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 390
    invoke-virtual {v2, v3}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v2

    .line 391
    invoke-virtual {v2, v5}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v2

    const-string v3, "DEFAULT_ROUTE"

    .line 392
    invoke-virtual {v2, v3}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v2

    .line 393
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 394
    monitor-exit v0

    return v5

    .line 396
    .end local v1    # "oldSessionInfo":Landroid/media/RoutingSessionInfo;
    .end local v4    # "builder":Landroid/media/RoutingSessionInfo$Builder;
    .end local v6    # "selectedRoute":Landroid/media/MediaRoute2Info;
    .end local v7    # "newSessionInfo":Landroid/media/RoutingSessionInfo;
    :catchall_102
    move-exception v1

    monitor-exit v0
    :try_end_104
    .catchall {:try_start_b2 .. :try_end_104} :catchall_102

    throw v1
.end method

.method updateVolume()V
    .registers 5

    .line 428
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 429
    .local v0, "devices":I
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 431
    .local v1, "volume":I
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v2

    if-eq v2, v1, :cond_26

    .line 432
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v2, v3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 433
    invoke-virtual {v2, v1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 434
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 437
    :cond_26
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v2, :cond_31

    invoke-virtual {v2, v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->updateVolumeForDevices(II)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 438
    return-void

    .line 440
    :cond_31
    iget v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceVolume:I

    if-eq v2, v1, :cond_48

    .line 441
    iput v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceVolume:I

    .line 442
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v2, v3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 443
    invoke-virtual {v2, v1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 444
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 446
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->publishProviderState()V

    .line 447
    return-void
.end method
