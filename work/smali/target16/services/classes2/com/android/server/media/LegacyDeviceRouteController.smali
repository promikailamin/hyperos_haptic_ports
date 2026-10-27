.class public final Lcom/android/server/media/LegacyDeviceRouteController;
.super Ljava/lang/Object;
.source "LegacyDeviceRouteController.java"

# interfaces
.implements Lcom/android/server/media/DeviceRouteController;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAudioRoutesObserver:Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;

.field public final mAudioService:Landroid/media/IAudioService;

.field public final mBuiltInSpeakerSuitabilityStatus:I

.field public final mContext:Landroid/content/Context;

.field public mDeviceRoute:Landroid/media/MediaRoute2Info;

.field public mDeviceVolume:I

.field public final mEventListener:Lcom/android/server/media/DeviceRouteController$EventListener;


# direct methods
.method public static bridge synthetic -$$Nest$fputmDeviceRoute(Lcom/android/server/media/LegacyDeviceRouteController;Landroid/media/MediaRoute2Info;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateRouteFromAudioInfo(Lcom/android/server/media/LegacyDeviceRouteController;Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/LegacyDeviceRouteController;->createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceRouteUpdate(Lcom/android/server/media/LegacyDeviceRouteController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/LegacyDeviceRouteController;->notifyDeviceRouteUpdate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/IAudioService;Lcom/android/server/media/DeviceRouteController$EventListener;)V
    .registers 7

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;-><init>(Lcom/android/server/media/LegacyDeviceRouteController;Lcom/android/server/media/LegacyDeviceRouteController-IA;)V

    iput-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioRoutesObserver:Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mContext:Landroid/content/Context;

    .line 91
    iput-object p4, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mEventListener:Lcom/android/server/media/DeviceRouteController$EventListener;

    .line 93
    iput-object p2, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 94
    iput-object p3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioService:Landroid/media/IAudioService;

    .line 97
    invoke-static {p1}, Lcom/android/server/media/DeviceRouteController;->getBuiltInSpeakerSuitabilityStatus(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    .line 101
    :try_start_25
    invoke-interface {p3, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception p1

    .line 103
    const-string p2, "LDeviceRouteController"

    const-string p3, "Cannot connect to audio service to start listen to routes"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :goto_32
    invoke-virtual {p0, v1}, Lcom/android/server/media/LegacyDeviceRouteController;->createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    return-void
.end method


# virtual methods
.method public final createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;
    .registers 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p1, :cond_33

    .line 194
    iget p1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, p1, 0x2

    const v3, 0x1040378

    if-eqz v2, :cond_f

    const/4 p1, 0x4

    goto :goto_37

    :cond_f
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_15

    move p1, v0

    goto :goto_37

    :cond_15
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1f

    const/16 p1, 0xd

    const v3, 0x1040374

    goto :goto_37

    :cond_1f
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_29

    const/16 p1, 0x9

    const v3, 0x1040376

    goto :goto_37

    :cond_29
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_33

    const/16 p1, 0xb

    const v3, 0x1040379

    goto :goto_37

    :cond_33
    const v3, 0x104036f

    move p1, v1

    .line 212
    :goto_37
    monitor-enter p0

    .line 213
    :try_start_38
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    const-string v4, "DEVICE_ROUTE"

    iget-object v5, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mContext:Landroid/content/Context;

    .line 216
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 218
    iget-object v3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 217
    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceVolume:I

    .line 221
    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 223
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 222
    invoke-virtual {v2, v0}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    const-string v2, "android.media.route.feature.LIVE_AUDIO"

    .line 225
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    const-string v2, "android.media.route.feature.LIVE_VIDEO"

    .line 226
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    const-string v2, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 227
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    if-ne p1, v1, :cond_8d

    .line 231
    iget p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setSuitabilityStatus(I)Landroid/media/MediaRoute2Info$Builder;

    goto :goto_8d

    :catchall_8b
    move-exception p1

    goto :goto_93

    .line 234
    :cond_8d
    :goto_8d
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 235
    :goto_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_38 .. :try_end_94} :catchall_8b

    throw p1
.end method

.method public declared-synchronized deselectRoute(JLjava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 168
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getAvailableRoutes()Ljava/util/List;
    .registers 2

    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getDeselectableRoutes()Ljava/util/List;
    .registers 1

    .line 146
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getSelectableRoutes()Ljava/util/List;
    .registers 1

    .line 139
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized getSelectedRoutes()Ljava/util/List;
    .registers 2

    monitor-enter p0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getSessionReleaseType()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyDeviceRouteUpdate()V
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mEventListener:Lcom/android/server/media/DeviceRouteController$EventListener;

    invoke-interface {p0}, Lcom/android/server/media/DeviceRouteController$EventListener;->onDeviceRouteChanged()V

    return-void
.end method

.method public releaseRoutingSession()V
    .registers 1

    .line 0
    return-void
.end method

.method public declared-synchronized selectRoute(JLjava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 163
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setVolume(JLjava/lang/String;I)V
    .registers 5

    monitor-enter p0

    .line 187
    monitor-exit p0

    return-void
.end method

.method public start(Landroid/os/UserHandle;)V
    .registers 2

    .line 0
    return-void
.end method

.method public stop()V
    .registers 1

    .line 0
    return-void
.end method

.method public declared-synchronized transferTo(JLjava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 158
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateVolume(I)Z
    .registers 4

    monitor-enter p0

    .line 172
    :try_start_1
    iget v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceVolume:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-ne v0, p1, :cond_8

    .line 173
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 176
    :cond_8
    :try_start_8
    iput p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceVolume:I

    .line 177
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    iget-object v1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 178
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1e

    .line 181
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method
