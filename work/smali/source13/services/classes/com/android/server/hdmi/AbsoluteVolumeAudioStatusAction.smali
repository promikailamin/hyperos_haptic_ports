.class final Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "AbsoluteVolumeAudioStatusAction.java"


# static fields
.field private static final STATE_MONITOR_AUDIO_STATUS:I = 0x2

.field private static final STATE_WAIT_FOR_INITIAL_AUDIO_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AbsoluteVolumeAudioStatusAction"


# instance fields
.field private mInitialAudioStatusRetriesLeft:I

.field private mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

.field private final mTargetAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .registers 4
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    .line 41
    iput p2, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    .line 42
    return-void
.end method

.method private handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 71
    iget v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    if-ne v0, v1, :cond_6e

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_10

    goto :goto_6e

    .line 75
    :cond_10
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 76
    .local v0, "mute":Z
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v1

    .line 77
    .local v1, "volume":I
    new-instance v2, Lcom/android/server/hdmi/AudioStatus;

    invoke-direct {v2, v1, v0}, Lcom/android/server/hdmi/AudioStatus;-><init>(IZ)V

    .line 78
    .local v2, "audioStatus":Lcom/android/server/hdmi/AudioStatus;
    iget v3, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mState:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_31

    .line 79
    invoke-virtual {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiControlService;->enableAbsoluteVolumeControl(Lcom/android/server/hdmi/AudioStatus;)V

    .line 80
    iput v4, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mState:I

    goto :goto_6b

    .line 81
    :cond_31
    iget v3, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mState:I

    if-ne v3, v4, :cond_6b

    .line 82
    invoke-virtual {v2}, Lcom/android/server/hdmi/AudioStatus;->getVolume()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    invoke-virtual {v4}, Lcom/android/server/hdmi/AudioStatus;->getVolume()I

    move-result v4

    if-eq v3, v4, :cond_50

    .line 83
    invoke-virtual {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/hdmi/AudioStatus;->getVolume()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->notifyAvcVolumeChange(I)V

    .line 85
    :cond_50
    invoke-virtual {v2}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    invoke-virtual {v4}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result v4

    if-eq v3, v4, :cond_6b

    .line 86
    invoke-virtual {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->notifyAvcMuteChange(Z)V

    .line 89
    :cond_6b
    :goto_6b
    iput-object v2, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    .line 91
    return v5

    .line 72
    .end local v0    # "mute":Z
    .end local v1    # "volume":I
    .end local v2    # "audioStatus":Lcom/android/server/hdmi/AudioStatus;
    :cond_6e
    :goto_6e
    const/4 v0, 0x0

    return v0
.end method

.method private sendGiveAudioStatus()V
    .registers 3

    .line 56
    iget v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->addTimer(II)V

    .line 57
    invoke-virtual {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 58
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 3
    .param p1, "state"    # I

    .line 96
    iget v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mState:I

    if-eq v0, p1, :cond_5

    .line 97
    return-void

    .line 98
    :cond_5
    iget v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    if-lez v0, :cond_10

    .line 99
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    .line 100
    invoke-direct {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendGiveAudioStatus()V

    .line 102
    :cond_10
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 62
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 67
    const/4 v0, 0x0

    return v0

    .line 64
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    :pswitch_data_e
    .packed-switch 0x7a
        :pswitch_9
    .end packed-switch
.end method

.method start()Z
    .registers 2

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mState:I

    .line 47
    invoke-direct {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendGiveAudioStatus()V

    .line 48
    return v0
.end method

.method updateVolume(I)V
    .registers 4
    .param p1, "volumeIndex"    # I

    .line 52
    new-instance v0, Lcom/android/server/hdmi/AudioStatus;

    iget-object v1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    invoke-virtual {v1}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/hdmi/AudioStatus;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    .line 53
    return-void
.end method
