.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 8705
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 8706
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 8707
    return-void
.end method

.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 8709
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 8710
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8711
    return-void
.end method

.method private onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V
    .registers 4
    .param p1, "apc"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "direction"    # I

    .line 8759
    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 8762
    goto :goto_5

    .line 8760
    :catch_4
    move-exception v0

    .line 8763
    :goto_5
    return-void
.end method

.method private onPersistSafeVolumeState(I)V
    .registers 5
    .param p1, "state"    # I

    .line 8751
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "audio_safe_volume_state"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/audio/SettingsAdapter;->putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8754
    return-void
.end method

.method private persistRingerMode(I)V
    .registers 5
    .param p1, "ringerMode"    # I

    .line 8744
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8745
    return-void

    .line 8747
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mode_ringer"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/audio/SettingsAdapter;->putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8748
    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 8
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .line 8729
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8730
    return-void

    .line 8732
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmIsSingleVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 8733
    return-void

    .line 8735
    :cond_19
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$mhasValidSettingsName(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 8736
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 8737
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v2

    .line 8738
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    const/4 v4, -0x2

    .line 8736
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/audio/SettingsAdapter;->putSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 8741
    :cond_3b
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .registers 6
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 8716
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 8719
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 8720
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_9
    if-ltz v1, :cond_29

    .line 8721
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_26

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_26

    .line 8723
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmStreamStates(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 8720
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 8726
    .end local v1    # "streamType":I
    :cond_29
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 8767
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_4c8

    goto/16 :goto_4c7

    .line 9088
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmRecordMonitor(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    move-result v0

    if-nez v0, :cond_47

    .line 9089
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmMicMuteFromApi(Lcom/android/server/audio/AudioService;Z)V

    .line 9090
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$msetMicrophoneMuteNoCallerCheck(Lcom/android/server/audio/AudioService;I)V

    .line 9091
    const-string v0, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not active, will unmute microphone."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c7

    .line 9093
    :cond_47
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0xbee

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0xea60

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 9101
    goto/16 :goto_4c7

    .line 9106
    :sswitch_5c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->isLeDeviceConnected:Z

    if-eqz v0, :cond_4c7

    .line 9107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9108
    .local v0, "deviceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 9109
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    array-length v3, v1

    :goto_71
    if-ge v2, v3, :cond_a0

    aget-object v10, v1, v2

    .line 9110
    .local v10, "device1":Landroid/media/AudioDeviceInfo;
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v10}, Lcom/android/server/audio/AudioService;->-$$Nest$misValidCommunicationDevice(Lcom/android/server/audio/AudioService;Landroid/media/AudioDeviceInfo;)Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_9d

    .line 9111
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmICallBackstartsco(Lcom/android/server/audio/AudioService;)Landroid/os/IBinder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    const-string/jumbo v9, "startbluetoothsco"

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationDevice(Landroid/os/IBinder;IILandroid/media/AudioDeviceInfo;Ljava/lang/String;)Z

    .line 9112
    return-void

    .line 9109
    .end local v10    # "device1":Landroid/media/AudioDeviceInfo;
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 9115
    .end local v0    # "deviceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "devices":[Landroid/media/AudioDeviceInfo;
    :cond_a0
    goto/16 :goto_4c7

    .line 9038
    :sswitch_a2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mTriggerCallback:Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;

    invoke-interface {v0}, Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;->onInsertPlaybackMsToHealth()V

    .line 9039
    goto/16 :goto_4c7

    .line 9034
    :sswitch_ab
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mTriggerCallback:Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;

    invoke-interface {v0}, Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;->onReadPlaybackMsSettings()V

    .line 9035
    goto/16 :goto_4c7

    .line 9029
    :sswitch_b4
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2, v1}, Lcom/android/server/audio/AudioServiceStub;->onShowHearingProtectionNotification(Landroid/content/Context;I)V

    .line 9031
    goto/16 :goto_4c7

    .line 9023
    :sswitch_c1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 9024
    .local v0, "currentDevice":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mMusicPlaybackTrigger:Lcom/android/server/audio/AudioPlayBackTrigger;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioPlayBackTrigger;->onTrigger(Ljava/util/List;I)V

    .line 9026
    goto/16 :goto_4c7

    .line 9015
    .end local v0    # "currentDevice":I
    :sswitch_d4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 9016
    .local v0, "device":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmStreamStates(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v1, v4, v1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 9017
    .local v1, "index":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v0}, Lcom/android/server/audio/AudioService;->-$$Nest$msafeMediaVolumeIndex(Lcom/android/server/audio/AudioService;I)I

    move-result v4

    if-le v1, v4, :cond_ef

    move v2, v3

    .line 9018
    .local v2, "isHigh":Z
    :cond_ef
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mMusicPlaybackTrigger:Lcom/android/server/audio/AudioPlayBackTrigger;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    invoke-virtual {v3, v4, v0, v2, v5}, Lcom/android/server/audio/AudioPlayBackTrigger;->onCheckMusicPlaybackContinuous(Landroid/content/Context;IZLjava/util/Set;)V

    .line 9020
    goto/16 :goto_4c7

    .line 9010
    .end local v0    # "device":I
    .end local v1    # "index":I
    .end local v2    # "isHigh":Z
    :sswitch_100
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/audio/AudioServiceStub;->showVisualEffectNotification(Landroid/content/Context;II)V

    .line 9012
    goto/16 :goto_4c7

    .line 9002
    :sswitch_111
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitorStub;->get()Lcom/android/server/audio/PlaybackActivityMonitorStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitorStub;->loadAppsVolume(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 9003
    .local v0, "querySuccess":Z
    if-nez v0, :cond_4c7

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmRunLoadAppVolumeCounts(Lcom/android/server/audio/AudioService;)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmRunLoadAppVolumeCounts(Lcom/android/server/audio/AudioService;I)V

    if-lez v2, :cond_4c7

    .line 9004
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xbb9

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x2710

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_4c7

    .line 8923
    .end local v0    # "querySuccess":Z
    :sswitch_141
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$monOutputDeviceChanged(Lcom/android/server/audio/AudioService;II)V

    .line 8924
    goto/16 :goto_4c7

    .line 8857
    :sswitch_14c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onInitSpatializer()V

    .line 8858
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioEventWakeLock(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8859
    goto/16 :goto_4c7

    .line 8852
    :sswitch_15c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$monInitStreamsAndVolumes(Lcom/android/server/audio/AudioService;)V

    .line 8853
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioEventWakeLock(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8854
    goto/16 :goto_4c7

    .line 8846
    :sswitch_16c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPlaybackMonitor(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_177

    move v2, v3

    :cond_177
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(ZI)V

    .line 8848
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioEventWakeLock(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8849
    goto/16 :goto_4c7

    .line 9128
    :sswitch_187
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_4c7

    .line 9073
    :sswitch_196
    const-string v0, "ScoTimeOutCheck"

    .line 9074
    .local v0, "eventSource":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmRecordMonitor(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPlaybackMonitor(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->needCheckBluetoothScoActive(Lcom/android/server/audio/RecordingActivityMonitor;Lcom/android/server/audio/PlaybackActivityMonitor;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 9075
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0xea60

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 9084
    .end local v0    # "eventSource":Ljava/lang/String;
    :cond_1c2
    goto/16 :goto_4c7

    .line 8870
    :sswitch_1c4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSpatializerHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SpatializerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHasSpatializerEffect(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/SpatializerHelper;->reset(Z)V

    .line 8871
    goto/16 :goto_4c7

    .line 9125
    :sswitch_1d5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    .line 9126
    goto/16 :goto_4c7

    .line 9120
    :sswitch_1e4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    .line 9121
    goto/16 :goto_4c7

    .line 9067
    :sswitch_1f3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$mdispatchDeviceVolumeBehavior(Lcom/android/server/audio/AudioService;Landroid/media/AudioDeviceAttributes;I)V

    .line 9068
    goto/16 :goto_4c7

    .line 9063
    :sswitch_200
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)V

    .line 9064
    goto/16 :goto_4c7

    .line 9060
    :sswitch_207
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-array v1, v3, [I

    iget v3, p1, Landroid/os/Message;->arg1:I

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monRemoveAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    .line 9061
    goto/16 :goto_4c7

    .line 9056
    :sswitch_214
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-array v1, v3, [I

    iget v3, p1, Landroid/os/Message;->arg1:I

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monAddAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    .line 9057
    goto/16 :goto_4c7

    .line 8866
    :sswitch_221
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onPersistSpatialAudioDeviceSettings()V

    .line 8867
    goto/16 :goto_4c7

    .line 8862
    :sswitch_228
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSpatializerHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SpatializerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SpatializerHelper;->onInitSensors()V

    .line 8863
    goto/16 :goto_4c7

    .line 9052
    :sswitch_233
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onRoutingUpdatedFromAudioThread()V

    .line 9053
    goto/16 :goto_4c7

    .line 9048
    :sswitch_23a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->dispatchMode(I)V

    .line 9049
    goto/16 :goto_4c7

    .line 9043
    :sswitch_243
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 9045
    goto/16 :goto_4c7

    .line 8947
    :sswitch_252
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monRecordingConfigChange(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    .line 8948
    goto/16 :goto_4c7

    .line 8994
    :sswitch_25d
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8995
    :try_start_266
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(IILjava/lang/String;Z)V

    .line 8996
    monitor-exit v0

    .line 8997
    goto/16 :goto_4c7

    .line 8996
    :catchall_276
    move-exception v1

    monitor-exit v0
    :try_end_278
    .catchall {:try_start_266 .. :try_end_278} :catchall_276

    throw v1

    .line 8990
    :sswitch_279
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)V

    .line 8991
    goto/16 :goto_4c7

    .line 8986
    :sswitch_280
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monReinitVolumes(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 8987
    goto/16 :goto_4c7

    .line 8982
    :sswitch_28b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateVolumeStatesForAudioDevice(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    .line 8983
    goto/16 :goto_4c7

    .line 8976
    :sswitch_298
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 8977
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 8978
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 8976
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBroadcastToAll(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 8979
    goto/16 :goto_4c7

    .line 8955
    :sswitch_2b3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8956
    :try_start_2bc
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_2c3

    .line 8957
    monitor-exit v0

    goto/16 :goto_4c7

    .line 8961
    :cond_2c3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 8962
    .local v1, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2d4

    .line 8963
    monitor-exit v0

    goto/16 :goto_4c7

    .line 8965
    :cond_2d4
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v3

    .line 8966
    .local v3, "wasActive":Z
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPlaybackMonitor(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/audio/PlaybackActivityMonitor;->isPlaybackActiveForUid(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setPlaybackActive(Z)V

    .line 8967
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmRecordMonitor(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setRecordingActive(Z)V

    .line 8968
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v4

    if-eq v3, v4, :cond_312

    .line 8969
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, -0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v7, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 8970
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 8969
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(IILjava/lang/String;Z)V

    .line 8972
    .end local v1    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v3    # "wasActive":Z
    :cond_312
    monitor-exit v0

    .line 8973
    goto/16 :goto_4c7

    .line 8972
    :catchall_315
    move-exception v1

    monitor-exit v0
    :try_end_317
    .catchall {:try_start_2bc .. :try_end_317} :catchall_315

    throw v1

    .line 8951
    :sswitch_318
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSystemServer(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->sendMicrophoneMuteChangedIntent()V

    .line 8952
    goto/16 :goto_4c7

    .line 8944
    :sswitch_323
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monPlaybackConfigChange(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    .line 8945
    goto/16 :goto_4c7

    .line 8940
    :sswitch_32e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$monCheckVolumeCecOnHdmiConnection(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    .line 8941
    goto/16 :goto_4c7

    .line 8936
    :sswitch_33b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monObserveDevicesForAllStreams(Lcom/android/server/audio/AudioService;I)V

    .line 8937
    goto/16 :goto_4c7

    .line 8932
    :sswitch_344
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    .line 8933
    goto/16 :goto_4c7

    .line 8928
    :sswitch_34f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateRingerModeServiceInt(Lcom/android/server/audio/AudioService;)V

    .line 8929
    goto/16 :goto_4c7

    .line 8918
    :sswitch_356
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monEnableSurroundFormats(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    .line 8919
    goto/16 :goto_4c7

    .line 8797
    :sswitch_361
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_368

    move v2, v3

    :cond_368
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$monDispatchAudioServerStateChange(Lcom/android/server/audio/AudioService;Z)V

    .line 8798
    goto/16 :goto_4c7

    .line 8914
    :sswitch_36d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V

    .line 8915
    goto/16 :goto_4c7

    .line 8895
    :sswitch_378
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monAccessoryPlugMediaUnmute(Lcom/android/server/audio/AudioService;I)V

    .line 8896
    goto/16 :goto_4c7

    .line 8891
    :sswitch_381
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 8892
    goto/16 :goto_4c7

    .line 8910
    :sswitch_388
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$monDynPolicyMixStateUpdate(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 8911
    goto/16 :goto_4c7

    .line 8906
    :sswitch_395
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$monUnmuteStream(Lcom/android/server/audio/AudioService;II)V

    .line 8907
    goto/16 :goto_4c7

    .line 8899
    :sswitch_3a0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 8900
    .local v0, "musicActiveMs":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "unsafe_volume_music_active_ms"

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/server/audio/SettingsAdapter;->putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 8903
    goto/16 :goto_4c7

    .line 8887
    .end local v0    # "musicActiveMs":I
    :sswitch_3b7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    .line 8888
    goto/16 :goto_4c7

    .line 8801
    :sswitch_3be
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSfxHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper;->unloadSoundEffects()V

    .line 8802
    goto/16 :goto_4c7

    .line 8883
    :sswitch_3c9
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    .line 8884
    goto/16 :goto_4c7

    .line 8879
    :sswitch_3d0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xd

    if-ne v1, v4, :cond_3d9

    move v2, v3

    :cond_3d9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monConfigureSafeVolume(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    .line 8881
    goto/16 :goto_4c7

    .line 8874
    :sswitch_3e2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monCheckMusicActive(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 8875
    goto/16 :goto_4c7

    .line 8774
    :sswitch_3ed
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 8775
    goto/16 :goto_4c7

    .line 8824
    :sswitch_3f6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 8825
    .local v0, "eventSource":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 8826
    .local v1, "useCase":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 8827
    .local v2, "config":I
    if-ne v1, v3, :cond_41a

    .line 8828
    const-string v3, "AS.AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid force use FOR_MEDIA in AudioService from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8830
    goto/16 :goto_4c7

    .line 8832
    :cond_41a
    new-instance v3, Landroid/media/MediaMetrics$Item;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio.forceUse."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8833
    invoke-static {v1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v5, "setForceUse"

    .line 8834
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v4, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 8835
    invoke-virtual {v3, v4, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v4, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 8837
    invoke-static {v2}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v5

    .line 8836
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    .line 8838
    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 8839
    sget-object v3, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8841
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/audio/AudioSystemAdapter;->setForceUse(II)I

    .line 8843
    .end local v0    # "eventSource":Ljava/lang/String;
    .end local v1    # "useCase":I
    .end local v2    # "config":I
    goto :goto_4c7

    .line 8806
    :sswitch_466
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 8807
    .local v0, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSystemReady(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_47c

    .line 8808
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSfxHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/SoundEffectsHelper;->loadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    goto :goto_488

    .line 8810
    :cond_47c
    const-string v1, "AS.AudioService"

    const-string v3, "[schedule]loadSoundEffects() called before boot complete"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8811
    if-eqz v0, :cond_488

    .line 8812
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->run(Z)V

    .line 8816
    .end local v0    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :cond_488
    :goto_488
    goto :goto_4c7

    .line 8819
    :sswitch_489
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSfxHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/SoundEffectsHelper;->playSoundEffect(II)V

    .line 8820
    goto :goto_4c7

    .line 8793
    :sswitch_497
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    .line 8794
    goto :goto_4c7

    .line 8789
    :sswitch_49d
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    .line 8790
    goto :goto_4c7

    .line 8782
    :sswitch_4a7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 8783
    .local v0, "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->-$$Nest$mpersistVolumeGroup(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V

    .line 8784
    goto :goto_4c7

    .line 8778
    .end local v0    # "vgs":Lcom/android/server/audio/AudioService$VolumeGroupState;
    :sswitch_4b1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 8779
    goto :goto_4c7

    .line 8770
    :sswitch_4bb
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 8771
    nop

    .line 9131
    :cond_4c7
    :goto_4c7
    return-void

    :sswitch_data_4c8
    .sparse-switch
        0x0 -> :sswitch_4bb
        0x1 -> :sswitch_4b1
        0x2 -> :sswitch_4a7
        0x3 -> :sswitch_49d
        0x4 -> :sswitch_497
        0x5 -> :sswitch_489
        0x7 -> :sswitch_466
        0x8 -> :sswitch_3f6
        0xa -> :sswitch_3ed
        0xb -> :sswitch_3e2
        0xc -> :sswitch_3d0
        0xd -> :sswitch_3d0
        0xe -> :sswitch_3c9
        0xf -> :sswitch_3be
        0x10 -> :sswitch_3b7
        0x11 -> :sswitch_3a0
        0x12 -> :sswitch_395
        0x13 -> :sswitch_388
        0x14 -> :sswitch_381
        0x15 -> :sswitch_378
        0x16 -> :sswitch_36d
        0x17 -> :sswitch_361
        0x18 -> :sswitch_356
        0x19 -> :sswitch_34f
        0x1a -> :sswitch_344
        0x1b -> :sswitch_33b
        0x1c -> :sswitch_32e
        0x1d -> :sswitch_323
        0x1e -> :sswitch_318
        0x1f -> :sswitch_2b3
        0x20 -> :sswitch_298
        0x21 -> :sswitch_28b
        0x22 -> :sswitch_280
        0x23 -> :sswitch_279
        0x24 -> :sswitch_25d
        0x25 -> :sswitch_252
        0x26 -> :sswitch_243
        0x28 -> :sswitch_23a
        0x29 -> :sswitch_233
        0x2a -> :sswitch_228
        0x2b -> :sswitch_221
        0x2c -> :sswitch_214
        0x2d -> :sswitch_207
        0x2e -> :sswitch_200
        0x2f -> :sswitch_1f3
        0x30 -> :sswitch_1e4
        0x31 -> :sswitch_1d5
        0x32 -> :sswitch_1c4
        0x33 -> :sswitch_196
        0x34 -> :sswitch_187
        0x64 -> :sswitch_16c
        0x65 -> :sswitch_15c
        0x66 -> :sswitch_14c
        0x6b -> :sswitch_141
        0xbb9 -> :sswitch_111
        0xbba -> :sswitch_100
        0xbbb -> :sswitch_d4
        0xbbc -> :sswitch_c1
        0xbbd -> :sswitch_b4
        0xbbe -> :sswitch_ab
        0xbbf -> :sswitch_a2
        0xbea -> :sswitch_5c
        0xbee -> :sswitch_a
    .end sparse-switch
.end method
