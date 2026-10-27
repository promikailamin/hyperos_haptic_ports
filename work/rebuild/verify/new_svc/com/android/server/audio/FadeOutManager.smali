.class public final Lcom/android/server/audio/FadeOutManager;
.super Ljava/lang/Object;
.source "FadeOutManager.java"


# instance fields
.field public final mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

.field public final mLock:Ljava/lang/Object;

.field public final mUidToFadedAppsMap:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Lcom/android/server/audio/FadeConfigurations;

    invoke-direct {v0}, Lcom/android/server/audio/FadeConfigurations;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    return-void
.end method


# virtual methods
.method public canBeFadedOut(Landroid/media/AudioPlaybackConfiguration;)Z
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    .line 166
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result p1

    .line 165
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/audio/FadeConfigurations;->isFadeable(Landroid/media/AudioAttributes;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 167
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public canCauseFadeOut(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
    .registers 4

    .line 142
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    return p1

    .line 149
    :cond_d
    invoke-virtual {p2}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_16

    return p1

    :cond_16
    return v0
.end method

.method public checkFade(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 5

    .line 250
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 252
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/FadeConfigurations;->getFadeOutVolumeShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v1

    .line 253
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    if-eqz p0, :cond_26

    if-nez v1, :cond_1e

    goto :goto_26

    :cond_1e
    const/4 v2, 0x1

    .line 257
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->addFade(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;)V

    .line 258
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    goto :goto_28

    .line 255
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    .line 258
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_24

    throw p0
.end method

.method public clearFadeManagerConfiguration()I
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->clearFadeManagerConfiguration()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 83
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public clearTransientFadeManagerConfiguration()I
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->clearTransientFadeManagerConfiguration()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 121
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 292
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 293
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 294
    iget-object v2, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 296
    :cond_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method public fadeOutUid(ILjava/util/List;)V
    .registers 7

    .line 193
    const-string v0, "AS.FadeOutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fadeOutUid() uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_19
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 196
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    invoke-direct {v2, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_59

    .line 198
    :cond_2e
    :goto_2e
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 199
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3a
    :goto_3a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 200
    iget-object v2, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 201
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/FadeConfigurations;->getFadeOutVolumeShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v2

    if-eqz v2, :cond_3a

    const/4 v3, 0x0

    .line 203
    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->addFade(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;)V

    goto :goto_3a

    .line 206
    :cond_57
    monitor-exit v0

    return-void

    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_19 .. :try_end_5a} :catchall_2c

    throw p0
.end method

.method public getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/FadeConfigurations;->getDelayFadeInOffenders(Landroid/media/AudioAttributes;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_b
    move-exception p0

    .line 189
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getFadeManagerConfiguration()Landroid/media/FadeManagerConfiguration;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getFadeManagerConfiguration()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/FadeConfigurations;->getFadeOutDuration(Landroid/media/AudioAttributes;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_b
    move-exception p0

    .line 178
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isFadeEnabled()Z
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->isFadeEnabled()Z

    move-result p0

    return p0
.end method

.method public removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 4

    .line 266
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_7
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    if-nez p0, :cond_15

    .line 274
    monitor-exit v1

    return-void

    :catchall_13
    move-exception p0

    goto :goto_1a

    .line 276
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V

    .line 277
    monitor-exit v1

    return-void

    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_13

    throw p0
.end method

.method public setFadeManagerConfiguration(Landroid/media/FadeManagerConfiguration;)I
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/FadeConfigurations;->setFadeManagerConfiguration(Landroid/media/FadeManagerConfiguration;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public setTransientFadeManagerConfiguration(Landroid/media/FadeManagerConfiguration;)I
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/FadeConfigurations;->setTransientFadeManagerConfiguration(Landroid/media/FadeManagerConfiguration;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 107
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public unfadeOutUid(ILjava/util/Map;)V
    .registers 8

    .line 215
    const-string v0, "AS.FadeOutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unfadeOutUid() uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    if-nez v1, :cond_28

    .line 219
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    goto :goto_58

    .line 221
    :cond_28
    iget-object v2, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 230
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    .line 231
    :goto_37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_53

    .line 232
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 233
    iget-object v3, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 234
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/audio/FadeConfigurations;->getFadeInVolumeShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v3

    .line 235
    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->fadeInPlayer(Landroid/media/AudioPlaybackConfiguration;Landroid/media/VolumeShaper$Configuration;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_37

    .line 238
    :cond_53
    invoke-virtual {v1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->clear()V

    .line 239
    monitor-exit v0

    return-void

    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_1a .. :try_end_59} :catchall_26

    throw p0
.end method
