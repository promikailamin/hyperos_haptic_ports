.class public final Lcom/android/server/audio/AudioService$AudioServiceInternal;
.super Landroid/media/AudioManagerInternal;
.source "AudioService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 14025
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public addAssistantServiceUid(II)V
    .registers 10

    .line 14063
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPermissionProvider(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioServerPermissionProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioServerPermissionProvider;->setIsolatedServiceUid(II)V

    .line 14064
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x2c

    const/4 v2, 0x2

    const/4 v4, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public getRingerModeInternal()I
    .registers 1

    .line 14039
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result p0

    return p0
.end method

.method public isUserPlayingAudio(I)Z
    .registers 4

    .line 14145
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object p0

    .line 14146
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 14147
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_a

    .line 14148
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public removeAssistantServiceUid(I)V
    .registers 9

    .line 14070
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPermissionProvider(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioServerPermissionProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioServerPermissionProvider;->clearIsolatedServiceUid(I)V

    .line 14071
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x2d

    const/4 v2, 0x2

    const/4 v4, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setAccessibilityServiceUids(Landroid/util/IntArray;)V
    .registers 11

    .line 14103
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 14107
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUidsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 14108
    :try_start_10
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_20

    .line 14109
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;[I)V

    goto :goto_64

    :catchall_1d
    move-exception v0

    move-object p0, v0

    goto :goto_76

    .line 14111
    :cond_20
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v0

    array-length v0, v0

    .line 14112
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v4

    if-eq v0, v4, :cond_38

    goto :goto_3a

    :cond_38
    move v0, v2

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v0, v3

    :goto_3b
    if-nez v0, :cond_58

    .line 14114
    :goto_3d
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_58

    .line 14115
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v5

    aget v5, v5, v2

    if-eq v4, v5, :cond_55

    goto :goto_59

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_58
    move v3, v0

    :goto_59
    if-eqz v3, :cond_64

    .line 14122
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;[I)V

    .line 14125
    :cond_64
    :goto_64
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x23

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 14127
    monitor-exit v1

    return-void

    :goto_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_10 .. :try_end_77} :catchall_1d

    throw p0
.end method

.method public setActiveAssistantServicesUids(Landroid/util/IntArray;)V
    .registers 9

    .line 14077
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAssistantUidLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 14078
    :try_start_7
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 14079
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {}, Lcom/android/server/audio/AudioService;->-$$Nest$sfgetNO_ACTIVE_ASSISTANT_SERVICE_UIDS()[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    goto :goto_5e

    :catchall_17
    move-exception v0

    move-object p0, v0

    goto :goto_70

    .line 14081
    :cond_1a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v0

    array-length v0, v0

    .line 14082
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v4

    if-eq v0, v4, :cond_32

    goto :goto_34

    :cond_32
    move v0, v2

    goto :goto_35

    :cond_34
    :goto_34
    move v0, v3

    :goto_35
    if-nez v0, :cond_52

    .line 14084
    :goto_37
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_52

    .line 14085
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v5

    aget v5, v5, v2

    if-eq v4, v5, :cond_4f

    goto :goto_53

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_52
    move v3, v0

    :goto_53
    if-eqz v3, :cond_5e

    .line 14092
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    .line 14095
    :cond_5e
    :goto_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_17

    .line 14096
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    .line 14095
    :goto_70
    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_17

    throw p0
.end method

.method public setInputMethodServiceUid(I)V
    .registers 4

    .line 14135
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmInputMethodServiceUidLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 14136
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmInputMethodServiceUid(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v1, p1, :cond_20

    .line 14137
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setCurrentImeUid(I)I

    .line 14138
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmInputMethodServiceUid(Lcom/android/server/audio/AudioService;I)V

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_22

    .line 14140
    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_1e

    throw p0
.end method

.method public setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .registers 3

    .line 14028
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmRingerModeDelegate(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 14029
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmRingerModeDelegate(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 14030
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 14031
    :try_start_14
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateRingerAndZenModeAffectedStreams(Lcom/android/server/audio/AudioService;)Z

    .line 14032
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_24

    .line 14033
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result p1

    const-string v0, "AS.AudioService.setRingerModeDelegate"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    return-void

    :catchall_24
    move-exception p0

    .line 14032
    :try_start_25
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .registers 3

    .line 14044
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    return-void
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .registers 2

    .line 14049
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->silenceRingerModeInternal(Ljava/lang/String;)V

    return-void
.end method

.method public updateRingerModeAffectedStreamsInternal()V
    .registers 4

    .line 14054
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 14055
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateRingerAndZenModeAffectedStreams(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 14056
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result p0

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$msetRingerModeInt(Lcom/android/server/audio/AudioService;IZ)V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 14058
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1a

    throw p0
.end method
