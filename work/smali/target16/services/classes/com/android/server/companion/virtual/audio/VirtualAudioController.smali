.class public final Lcom/android/server/companion/virtual/audio/VirtualAudioController;
.super Ljava/lang/Object;
.source "VirtualAudioController.java"

# interfaces
.implements Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector$AudioPlaybackCallback;
.implements Lcom/android/server/companion/virtual/audio/AudioRecordingDetector$AudioRecordingCallback;


# instance fields
.field public final mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

.field public final mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

.field public final mCallbackLock:Ljava/lang/Object;

.field public mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mListening:Z

.field public final mLock:Ljava/lang/Object;

.field public mPlayingAppUids:Landroid/util/ArraySet;

.field public mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;

.field public final mRunningAppUids:Landroid/util/ArraySet;

.field public final mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$2renwhGRq9_GYv6w8-uObz8LLcc(Lcom/android/server/companion/virtual/audio/VirtualAudioController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->notifyAppsNeedingAudioRoutingChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/AttributionSource;)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/audio/VirtualAudioController;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mListening:Z

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    .line 77
    new-instance v0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    .line 79
    const-string/jumbo p0, "virtual_devices.value_virtual_audio_created_count"

    .line 81
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result p1

    .line 79
    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void
.end method

.method public static findPlaybackConfigurations(Ljava/util/List;Landroid/util/ArraySet;)Ljava/util/List;
    .registers 5

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 278
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 279
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_27
    return-object v0
.end method

.method public static findPlayingAppUids(Ljava/util/List;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 6

    .line 262
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 263
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 264
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 265
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 266
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_36
    return-object v0
.end method

.method public static findRecordingConfigurations(Ljava/util/List;Landroid/util/ArraySet;)Ljava/util/List;
    .registers 5

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecordingConfiguration;

    .line 291
    invoke-virtual {v1}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 292
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_27
    return-object v0
.end method


# virtual methods
.method public addPlayingAppsForTesting(I)V
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 307
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public hasPendingRunnable()Z
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final notifyAppsNeedingAudioRoutingChanged()V
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 233
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    :cond_11
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_14
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 239
    :goto_1d
    iget-object v3, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 240
    iget-object v3, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :catchall_36
    move-exception p0

    goto :goto_52

    .line 242
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_36

    .line 244
    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 245
    :try_start_3c
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_44

    if-eqz p0, :cond_4e

    .line 247
    :try_start_40
    invoke-interface {p0, v1}, Landroid/companion/virtual/audio/IAudioRoutingCallback;->onAppsNeedingAudioRoutingChanged([I)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_46
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_4e

    :catchall_44
    move-exception p0

    goto :goto_50

    :catch_46
    move-exception p0

    .line 249
    :try_start_47
    const-string v0, "VirtualAudioController"

    const-string v1, "RemoteException when calling updateReroutingApps"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :cond_4e
    :goto_4e
    monitor-exit v2

    return-void

    :goto_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_44

    throw p0

    .line 242
    :goto_52
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_36

    throw p0
.end method

.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .registers 4

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->updatePlayingApplications(Ljava/util/List;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_6
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-static {p1, v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->findPlaybackConfigurations(Ljava/util/List;Landroid/util/ArraySet;)Ljava/util/List;

    move-result-object p1

    .line 185
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_26

    .line 186
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_10
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    if-eqz p0, :cond_22

    .line 189
    :try_start_14
    invoke-interface {p0, p1}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback;->onPlaybackConfigChanged(Ljava/util/List;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_1a
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_22

    :catchall_18
    move-exception p0

    goto :goto_24

    :catch_1a
    move-exception p0

    .line 191
    :try_start_1b
    const-string p1, "VirtualAudioController"

    const-string v0, "RemoteException when calling onPlaybackConfigChanged"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :cond_22
    :goto_22
    monitor-exit v1

    return-void

    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_18

    throw p0

    :catchall_26
    move-exception p0

    .line 185
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public onRecordingConfigChanged(Ljava/util/List;)V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-static {p1, v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->findRecordingConfigurations(Ljava/util/List;Landroid/util/ArraySet;)Ljava/util/List;

    move-result-object p1

    .line 204
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_23

    .line 205
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_d
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_15

    if-eqz p0, :cond_1f

    .line 208
    :try_start_11
    invoke-interface {p0, p1}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback;->onRecordingConfigChanged(Ljava/util/List;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_17
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_1f

    :catchall_15
    move-exception p0

    goto :goto_21

    :catch_17
    move-exception p0

    .line 210
    :try_start_18
    const-string p1, "VirtualAudioController"

    const-string v0, "RemoteException when calling onRecordingConfigChanged"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    :cond_1f
    :goto_1f
    monitor-exit v1

    return-void

    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_15

    throw p0

    :catchall_23
    move-exception p0

    .line 204
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public onRunningAppsChanged(Landroid/util/ArraySet;)V
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mListening:Z

    if-nez v1, :cond_b

    .line 132
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_74

    .line 134
    :cond_b
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 136
    monitor-exit v0

    return-void

    .line 138
    :cond_15
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 139
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 141
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 146
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 148
    invoke-virtual {v1}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->findPlayingAppUids(Ljava/util/List;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 154
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 155
    const-string p0, "VirtualAudioController"

    const-string p1, "Audio is playing, do not change rerouted apps"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    monitor-exit v0

    return-void

    .line 160
    :cond_46
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6f

    .line 164
    const-string p1, "VirtualAudioController"

    const-string v1, "The last playing app removed, delay change rerouted apps"

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 166
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    :cond_64
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    monitor-exit v0

    return-void

    .line 171
    :cond_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_9

    .line 174
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->notifyAppsNeedingAudioRoutingChanged()V

    return-void

    .line 171
    :goto_74
    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_9

    throw p0
.end method

.method public startListening(Landroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_3
    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;

    .line 93
    iput-object p2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    .line 94
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_36

    .line 95
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 96
    :try_start_b
    iget-boolean v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mListening:Z

    if-eqz v0, :cond_19

    .line 97
    const-string v0, "VirtualAudioController"

    const-string v1, "Already listening to running applications"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_34

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mListening:Z

    .line 100
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 101
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 102
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_17

    if-eqz p2, :cond_33

    .line 104
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    invoke-virtual {p1, p0}, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->register(Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector$AudioPlaybackCallback;)V

    .line 105
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    invoke-virtual {p1, p0}, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->register(Lcom/android/server/companion/virtual/audio/AudioRecordingDetector$AudioRecordingCallback;)V

    :cond_33
    return-void

    .line 102
    :goto_34
    :try_start_34
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_17

    throw p0

    :catchall_36
    move-exception p0

    .line 94
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public stopListening()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 115
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mListening:Z

    .line 116
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2f

    .line 117
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 118
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    :cond_18
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->unregister()V

    .line 121
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->unregister()V

    .line 122
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 123
    :try_start_26
    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;

    .line 124
    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    .line 125
    monitor-exit v1

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2c

    throw p0

    :catchall_2f
    move-exception p0

    .line 116
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final updatePlayingApplications(Ljava/util/List;)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-static {p1, v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->findPlayingAppUids(Ljava/util/List;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object p1

    .line 219
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 220
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_1c

    .line 222
    :cond_15
    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 223
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_13

    .line 228
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->notifyAppsNeedingAudioRoutingChanged()V

    return-void

    .line 223
    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_13

    throw p0
.end method
