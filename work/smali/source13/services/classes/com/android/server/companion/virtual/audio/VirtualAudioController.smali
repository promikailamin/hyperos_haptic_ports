.class public final Lcom/android/server/companion/virtual/audio/VirtualAudioController;
.super Ljava/lang/Object;
.source "VirtualAudioController.java"

# interfaces
.implements Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector$AudioPlaybackCallback;
.implements Lcom/android/server/companion/virtual/audio/AudioRecordingDetector$AudioRecordingCallback;
.implements Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualAudioController"

.field private static final UPDATE_REROUTING_APPS_DELAY_MS:I = 0x7d0


# instance fields
.field private final mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

.field private final mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

.field private final mCallbackLock:Ljava/lang/Object;

.field private mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

.field private final mContext:Landroid/content/Context;

.field private mGenericWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mPlayingAppUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;

.field private final mRunningAppUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$uvtgBMyQCXeP9_0_OWAMaaGedeo(Lcom/android/server/companion/virtual/audio/VirtualAudioController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->notifyAppsNeedingAudioRoutingChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 73
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

    .line 62
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    .line 76
    new-instance v0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    .line 77
    return-void
.end method

.method private static findPlaybackConfigurations(Ljava/util/List;Landroid/util/ArraySet;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 269
    .local p0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    .local p1, "runningAppUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "runningConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 271
    .local v2, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 272
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v2    # "config":Landroid/media/AudioPlaybackConfiguration;
    :cond_26
    goto :goto_9

    .line 275
    :cond_27
    return-object v0
.end method

.method private static findPlayingAppUids(Ljava/util/List;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 255
    .local p0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    .local p1, "runningAppUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 256
    .local v0, "playingAppUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 257
    .local v2, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 258
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_35

    .line 259
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v2    # "config":Landroid/media/AudioPlaybackConfiguration;
    :cond_35
    goto :goto_9

    .line 262
    :cond_36
    return-object v0
.end method

.method private static findRecordingConfigurations(Ljava/util/List;Landroid/util/ArraySet;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 282
    .local p0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    .local p1, "runningAppUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "runningConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingConfiguration;

    .line 284
    .local v2, "config":Landroid/media/AudioRecordingConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 285
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v2    # "config":Landroid/media/AudioRecordingConfiguration;
    :cond_26
    goto :goto_9

    .line 288
    :cond_27
    return-object v0
.end method

.method private notifyAppsNeedingAudioRoutingChanged()V
    .registers 6

    .line 225
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 226
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    :cond_11
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_14
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 232
    .local v1, "runningUids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    iget-object v3, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 233
    iget-object v3, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 235
    .end local v2    # "i":I
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_4f

    .line 237
    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 238
    :try_start_3a
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_4c

    if-eqz v0, :cond_4a

    .line 240
    :try_start_3e
    invoke-interface {v0, v1}, Landroid/companion/virtual/audio/IAudioRoutingCallback;->onAppsNeedingAudioRoutingChanged([I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_4c

    .line 243
    goto :goto_4a

    .line 241
    :catch_42
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_43
    const-string v3, "VirtualAudioController"

    const-string v4, "RemoteException when calling updateReroutingApps"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4a
    :goto_4a
    monitor-exit v2

    .line 246
    return-void

    .line 245
    :catchall_4c
    move-exception v0

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_4c

    throw v0

    .line 235
    .end local v1    # "runningUids":[I
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private updatePlayingApplications(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-static {p1, v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->findPlayingAppUids(Ljava/util/List;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v1

    .line 212
    .local v1, "playingAppUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 213
    monitor-exit v0

    return-void

    .line 215
    :cond_13
    iput-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 216
    .end local v1    # "playingAppUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    .line 221
    invoke-direct {p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->notifyAppsNeedingAudioRoutingChanged()V

    .line 222
    return-void

    .line 216
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method


# virtual methods
.method addPlayingAppsForTesting(I)V
    .registers 5
    .param p1, "appUid"    # I

    .line 298
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method hasPendingRunnable()Z
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->updatePlayingApplications(Ljava/util/List;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_6
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-static {p1, v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->findPlaybackConfigurations(Ljava/util/List;Landroid/util/ArraySet;)Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, "audioPlaybackConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_25

    .line 179
    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 180
    :try_start_10
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_22

    if-eqz v0, :cond_20

    .line 182
    :try_start_14
    invoke-interface {v0, v1}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback;->onPlaybackConfigChanged(Ljava/util/List;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18
    .catchall {:try_start_14 .. :try_end_17} :catchall_22

    .line 185
    goto :goto_20

    .line 183
    :catch_18
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v3, "VirtualAudioController"

    const-string v4, "RemoteException when calling onPlaybackConfigChanged"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    monitor-exit v2

    .line 188
    return-void

    .line 187
    :catchall_22
    move-exception v0

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_22

    throw v0

    .line 178
    .end local v1    # "audioPlaybackConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public onRecordingConfigChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 194
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-static {p1, v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->findRecordingConfigurations(Ljava/util/List;Landroid/util/ArraySet;)Ljava/util/List;

    move-result-object v1

    .line 197
    .local v1, "audioRecordingConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 198
    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 199
    :try_start_d
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_1f

    if-eqz v0, :cond_1d

    .line 201
    :try_start_11
    invoke-interface {v0, v1}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback;->onRecordingConfigChanged(Ljava/util/List;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_1f

    .line 204
    goto :goto_1d

    .line 202
    :catch_15
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_16
    const-string v3, "VirtualAudioController"

    const-string v4, "RemoteException when calling onRecordingConfigChanged"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    monitor-exit v2

    .line 207
    return-void

    .line 206
    :catchall_1f
    move-exception v0

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1f

    throw v0

    .line 197
    .end local v1    # "audioRecordingConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public onRunningAppsChanged(Landroid/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "runningUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 129
    monitor-exit v0

    return-void

    .line 131
    :cond_d
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 132
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 134
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 139
    .local v1, "oldPlayingAppUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 140
    .local v2, "audioManager":Landroid/media/AudioManager;
    nop

    .line 141
    invoke-virtual {v2}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v3

    .line 142
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-static {v3, v4}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->findPlayingAppUids(Ljava/util/List;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 147
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 148
    const-string v4, "VirtualAudioController"

    const-string v5, "Audio is playing, do not change rerouted apps"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    monitor-exit v0

    return-void

    .line 153
    :cond_3f
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_68

    .line 157
    const-string v4, "VirtualAudioController"

    const-string v5, "The last playing app removed, delay change rerouted apps"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v4, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 159
    iget-object v4, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    :cond_5d
    iget-object v4, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    monitor-exit v0

    return-void

    .line 164
    .end local v1    # "oldPlayingAppUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v2    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :cond_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_6d

    .line 167
    invoke-direct {p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->notifyAppsNeedingAudioRoutingChanged()V

    .line 168
    return-void

    .line 164
    :catchall_6d
    move-exception v1

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public startListening(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    .registers 6
    .param p1, "genericWindowPolicyController"    # Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .param p2, "routingCallback"    # Landroid/companion/virtual/audio/IAudioRoutingCallback;
    .param p3, "configChangedCallback"    # Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    .line 87
    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mGenericWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 88
    invoke-virtual {p1, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->registerRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_8
    iput-object p2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;

    .line 91
    iput-object p3, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    .line 92
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_2b

    .line 93
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_10
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 95
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 96
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_28

    .line 97
    if-eqz p3, :cond_27

    .line 98
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    invoke-virtual {v0, p0}, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->register(Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector$AudioPlaybackCallback;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    invoke-virtual {v0, p0}, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->register(Lcom/android/server/companion/virtual/audio/AudioRecordingDetector$AudioRecordingCallback;)V

    .line 101
    :cond_27
    return-void

    .line 96
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    .line 92
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public stopListening()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 109
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    :cond_11
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->unregister()V

    .line 112
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->unregister()V

    .line 113
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mGenericWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 114
    invoke-virtual {v0, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    .line 116
    iput-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mGenericWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 118
    :cond_25
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_28
    iput-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;

    .line 120
    iput-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_2e

    throw v1
.end method
