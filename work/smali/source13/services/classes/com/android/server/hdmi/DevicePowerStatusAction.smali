.class final Lcom/android/server/hdmi/DevicePowerStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DevicePowerStatusAction.java"


# static fields
.field private static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DevicePowerStatusAction"


# instance fields
.field private mRetriesOnTimeout:I

.field private final mTargetAddress:I


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 58
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mRetriesOnTimeout:I

    .line 59
    iput p2, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    .line 60
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/DevicePowerStatusAction;
    .registers 5
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p1, "targetAddress"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 49
    if-eqz p0, :cond_b

    if-nez p2, :cond_5

    goto :goto_b

    .line 53
    :cond_5
    new-instance v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/DevicePowerStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-object v0

    .line 50
    :cond_b
    :goto_b
    const-string v0, "DevicePowerStatusAction"

    const-string v1, "Wrong arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method private queryDevicePowerStatus()V
    .registers 3

    .line 84
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/DevicePowerStatusAction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DevicePowerStatusAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/DevicePowerStatusAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 93
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 4
    .param p1, "state"    # I

    .line 111
    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    if-eq v0, p1, :cond_5

    .line 112
    return-void

    .line 114
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    .line 115
    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mRetriesOnTimeout:I

    if-lez v1, :cond_13

    .line 116
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mRetriesOnTimeout:I

    .line 117
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->start()Z

    .line 118
    return-void

    .line 122
    :cond_13
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->finishWithCallback(I)V

    .line 124
    :cond_17
    return-void
.end method

.method synthetic lambda$queryDevicePowerStatus$0$com-android-server-hdmi-DevicePowerStatusAction(I)V
    .registers 3
    .param p1, "error"    # I

    .line 88
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 90
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->finishWithCallback(I)V

    .line 92
    :cond_7
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 97
    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_22

    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    .line 98
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v0, v3, :cond_f

    goto :goto_22

    .line 101
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_21

    .line 102
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    .line 103
    .local v0, "status":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->finishWithCallback(I)V

    .line 104
    return v1

    .line 106
    .end local v0    # "status":I
    :cond_21
    return v2

    .line 99
    :cond_22
    :goto_22
    return v2
.end method

.method start()Z
    .registers 6

    .line 64
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 65
    .local v0, "service":Lcom/android/server/hdmi/HdmiControlService;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2b

    .line 66
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v1

    iget v4, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    invoke-virtual {v1, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 68
    .local v1, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v1, :cond_2b

    .line 69
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v4

    if-lt v4, v2, :cond_2b

    .line 70
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v2

    .line 71
    .local v2, "powerStatus":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2b

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/DevicePowerStatusAction;->finishWithCallback(I)V

    .line 73
    return v3

    .line 77
    .end local v1    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v2    # "powerStatus":I
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->queryDevicePowerStatus()V

    .line 78
    iput v3, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    .line 79
    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/DevicePowerStatusAction;->addTimer(II)V

    .line 80
    return v3
.end method
