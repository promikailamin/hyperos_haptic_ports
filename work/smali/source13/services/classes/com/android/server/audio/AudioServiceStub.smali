.class public interface abstract Lcom/android/server/audio/AudioServiceStub;
.super Ljava/lang/Object;
.source "AudioServiceStub.java"


# static fields
.field public static final ACTION_KEYCODE_POWER_UP:Ljava/lang/String; = "android.intent.action.KEYCODE_POWER_UP"

.field public static final MAX_VOLUME_LONG_TIME:I = 0x3

.field public static final MUSIC_ACTIVE_CONTINUOUS_POLL_PERIOD_MS:I = 0xea60


# direct methods
.method public static get()Lcom/android/server/audio/AudioServiceStub;
    .registers 1

    .line 30
    const-class v0, Lcom/android/server/audio/AudioServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract adjustDefaultStreamVolumeForMiui([I)V
.end method

.method public abstract createAudioRecordForLoopbackWithClient(Landroid/os/ParcelFileDescriptor;JLandroid/os/IBinder;)Landroid/os/IBinder;
.end method

.method public abstract createMiuiAudioRecord(Landroid/os/ParcelFileDescriptor;J)Landroid/os/IBinder;
.end method

.method public customMinStreamVolume([I)V
    .registers 2
    .param p1, "minStreamVolume"    # [I

    .line 147
    return-void
.end method

.method public abstract enableHifiVolume(IIIILandroid/content/Context;)V
.end method

.method public abstract enableVoiceVolumeBoost(IZIILjava/lang/String;ILandroid/content/Context;)Z
.end method

.method public abstract foldDisable()V
.end method

.method public abstract foldEnable()V
.end method

.method public abstract foldInit()V
.end method

.method public getAbsoluteVolumeIndex(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "indexMax"    # I

    .line 49
    const/4 v0, -0x1

    return v0
.end method

.method public getAudioPolicyMatchUids(Ljava/util/HashMap;)[I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;)[I"
        }
    .end annotation

    .line 142
    .local p1, "policys":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/IBinder;Lcom/android/server/audio/AudioService$AudioPolicyProxy;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getBluetoothHeadset()Z
.end method

.method public getMiAudioService(Landroid/content/Context;)Lcom/android/server/audio/AudioService;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicStreamVolumeStep(I)I
    .registers 3
    .param p1, "maxVolume"    # I

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public getMuteMusicAtSilentKey()Ljava/lang/String;
    .registers 2

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNotificationUri(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getRingerMode(Landroid/content/Context;I)I
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 54
    const/4 v0, -0x1

    return v0
.end method

.method public handleMicrophoneMuteChanged(Z)V
    .registers 2
    .param p1, "muted"    # Z

    .line 171
    return-void
.end method

.method public handleNewRecorderTracked(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 173
    return-void
.end method

.method public handleSpeakerChanged(Landroid/content/Context;IZ)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "speakeron"    # Z

    .line 157
    return-void
.end method

.method public initContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 177
    return-void
.end method

.method public abstract insertPlaybackMsToHealth(Landroid/content/Context;)Z
.end method

.method public isAudioPlaybackTriggerSupported()Z
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSteplessVolume(ILjava/lang/String;)Z
    .registers 4
    .param p1, "stream"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public musicVolumeAdjustmentAllowed(IILandroid/content/ContentResolver;)Z
    .registers 5
    .param p1, "zenMode"    # I
    .param p2, "streamAlias"    # I
    .param p3, "cr"    # Landroid/content/ContentResolver;

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public notifyBtStateToDolbyEffectController(Landroid/content/Context;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "btInfo"    # Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 163
    return-void
.end method

.method public notifyVolumeChangedToDolbyEffectController(Landroid/content/Context;II)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stream"    # I
    .param p3, "newVolumeIndex"    # I

    .line 183
    return-void
.end method

.method public onCheckMusicPlaybackContinuous(Landroid/content/Context;IZLjava/util/Set;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # I
    .param p3, "isHigh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 128
    .local p4, "safeMediaVolumeDevices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onShowHearingProtectionNotification(Landroid/content/Context;I)V
.end method

.method public abstract onTrigger(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)Z"
        }
    .end annotation
.end method

.method public onUpdateAudioMode(ILjava/lang/String;Landroid/content/Context;)V
    .registers 4
    .param p1, "audioMode"    # I
    .param p2, "requesterPackage"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 160
    return-void
.end method

.method public abstract readPlaybackMsSettings(Landroid/content/Context;)V
.end method

.method public abstract registerContentObserverForMiui(Landroid/content/ContentResolver;ZLandroid/database/ContentObserver;)V
.end method

.method public abstract setBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract setHifiVolume(Landroid/content/Context;I)V
.end method

.method public abstract setStreamMusicOrBluetoothScoIndex(Landroid/content/Context;III)V
.end method

.method public abstract showDeviceConnectNotification(Landroid/content/Context;IZ)V
.end method

.method public abstract showVisualEffect(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showVisualEffectNotification(Landroid/content/Context;II)V
.end method

.method public abstract startAudioGameEffect(Landroid/content/Context;)V
.end method

.method public abstract startAudioQueryWeatherService(Landroid/content/Context;)V
.end method

.method public abstract startCameraRecordService(Landroid/content/Context;Landroid/media/AudioRecordingConfiguration;II)V
.end method

.method public startDolbyEffectController(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 180
    return-void
.end method

.method public abstract startMqsServer(Landroid/content/Context;)V
.end method

.method public abstract startPollAudioMicStatus(Landroid/content/Context;)V
.end method

.method public abstract stopCameraRecordService(Landroid/content/Context;Landroid/media/AudioRecordingConfiguration;I)V
.end method

.method public abstract updateAudioParameterClients(Landroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public updateConcurrentVoipInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "clients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public abstract updateCumulativePlaybackTime(Z)V
.end method

.method public abstract updateNotificationMode(Landroid/content/Context;)V
.end method

.method public abstract updatePlaybackTime(Z)V
.end method

.method public abstract updateVolumeBoostState(IILandroid/content/Context;)V
.end method
