.class final Lcom/android/server/hdmi/OneTouchPlayAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "OneTouchPlayAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0xa

.field static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OneTouchPlayAction"


# instance fields
.field private final mIsCec20:Z

.field private mPowerStatusCounter:I

.field private mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

.field private final mTargetAddress:I


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 71
    nop

    .line 72
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_14

    .line 74
    invoke-static {p1, p2}, Lcom/android/server/hdmi/OneTouchPlayAction;->getTargetCecVersion(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)I

    move-result v0

    if-lt v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 71
    :goto_15
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V

    .line 76
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .registers 6
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p4, "isCec20"    # Z

    .line 81
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    .line 82
    iput p2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 83
    iput-boolean p4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mIsCec20:Z

    .line 84
    return-void
.end method

.method private broadcastActiveSource()V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 126
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourcePath()I

    move-result v2

    .line 125
    const-string v3, "OneTouchPlayAction#broadcastActiveSource()"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 132
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 134
    :cond_23
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 135
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 136
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;
    .registers 5
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    .param p1, "targetAddress"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 62
    if-eqz p0, :cond_b

    if-nez p2, :cond_5

    goto :goto_b

    .line 66
    :cond_5
    new-instance v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchPlayAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-object v0

    .line 63
    :cond_b
    :goto_b
    const-string v0, "OneTouchPlayAction"

    const-string v1, "Wrong arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTargetCecVersion(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)I
    .registers 4
    .param p0, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p1, "targetLogicalAddress"    # I

    .line 190
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 192
    .local v0, "targetDevice":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_11

    .line 193
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v1

    return v1

    .line 195
    :cond_11
    const/4 v1, 0x5

    return v1
.end method

.method private static getTargetDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)I
    .registers 5
    .param p0, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p1, "targetLogicalAddress"    # I
    .param p2, "defaultPowerStatus"    # I

    .line 200
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 202
    .local v0, "targetDevice":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_11

    .line 203
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v1

    return v1

    .line 205
    :cond_11
    return p2
.end method

.method private queryDevicePowerStatus()V
    .registers 3

    .line 139
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 141
    return-void
.end method

.method private shouldTurnOnConnectedAudioSystem()Z
    .registers 5

    .line 177
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 178
    .local v0, "service":Lcom/android/server/hdmi/HdmiControlService;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 179
    return v2

    .line 181
    :cond_c
    nop

    .line 182
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v1

    const-string/jumbo v3, "power_control_mode"

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "powerControlMode":Ljava/lang/String;
    const-string/jumbo v3, "to_tv_and_audio_system"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 185
    const-string v3, "broadcast"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_29
    const/4 v2, 0x1

    .line 184
    :cond_2a
    return v2
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 5
    .param p1, "state"    # I

    .line 162
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    if-eq v0, p1, :cond_5

    .line 163
    return-void

    .line 165
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    .line 166
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1d

    .line 167
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    .line 168
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addTimer(II)V

    goto :goto_20

    .line 171
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->finishWithCallback(I)V

    .line 174
    :cond_20
    :goto_20
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 145
    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_27

    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 146
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v0, v3, :cond_f

    goto :goto_27

    .line 149
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_26

    .line 150
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    .line 151
    .local v0, "status":I
    if-nez v0, :cond_25

    .line 152
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    .line 153
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/OneTouchPlayAction;->finishWithCallback(I)V

    .line 155
    :cond_25
    return v1

    .line 157
    .end local v0    # "status":I
    :cond_26
    return v2

    .line 147
    :cond_27
    :goto_27
    return v2
.end method

.method start()Z
    .registers 8

    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 90
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 92
    iget-boolean v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mIsCec20:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget v4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v4, v2}, Lcom/android/server/hdmi/OneTouchPlayAction;->getTargetDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)I

    move-result v0

    if-nez v0, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, v1

    .line 94
    .local v0, "is20TargetOnBefore":Z
    :goto_27
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    .line 97
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->shouldTurnOnConnectedAudioSystem()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 98
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    move-result v4

    const/4 v5, 0x5

    .line 99
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourcePath()I

    move-result v6

    .line 98
    invoke-static {v4, v5, v6, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 102
    :cond_40
    iget-boolean v4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mIsCec20:Z

    if-nez v4, :cond_48

    .line 103
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    goto :goto_61

    .line 105
    :cond_48
    iget-object v4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget v5, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v4, v5, v2}, Lcom/android/server/hdmi/OneTouchPlayAction;->getTargetDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)I

    move-result v4

    .line 107
    .local v4, "targetPowerStatus":I
    if-ne v4, v2, :cond_56

    .line 108
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    goto :goto_61

    .line 109
    :cond_56
    if-nez v4, :cond_61

    .line 110
    if-nez v0, :cond_5d

    .line 113
    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    .line 115
    :cond_5d
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/OneTouchPlayAction;->finishWithCallback(I)V

    .line 116
    return v3

    .line 119
    .end local v4    # "targetPowerStatus":I
    :cond_61
    :goto_61
    iput v3, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    .line 120
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/OneTouchPlayAction;->addTimer(II)V

    .line 121
    return v3
.end method
