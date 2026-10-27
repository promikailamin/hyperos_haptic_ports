.class final Lcom/android/server/hdmi/SetArcTransmissionStateAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SetArcTransmissionStateAction.java"


# static fields
.field private static final STATE_WAITING_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SetArcTransmissionStateAction"


# instance fields
.field private final mAvrAddress:I

.field private final mEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$mdisableArc(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->disableArc()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendReportArcInitiated(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendReportArcInitiated()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V
    .registers 6
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "enabled"    # Z

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 51
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 52
    iput p2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    .line 53
    iput-boolean p3, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mEnabled:Z

    .line 54
    return-void
.end method

.method private disableArc()V
    .registers 3

    .line 117
    const-string v0, "SetArcTransmissionStateAction"

    const-string v1, "Disabling ARC"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArc()V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 122
    return-void
.end method

.method private sendReportArcInitiated()V
    .registers 3

    .line 91
    nop

    .line 92
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 93
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v1, Lcom/android/server/hdmi/SetArcTransmissionStateAction$2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction$2;-><init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 114
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 4
    .param p1, "state"    # I

    .line 145
    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    if-ne v0, p1, :cond_e

    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    goto :goto_e

    .line 149
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    .line 150
    return-void

    .line 146
    :cond_e
    :goto_e
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 126
    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    .line 127
    return v2

    .line 130
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 131
    .local v0, "opcode":I
    if-nez v0, :cond_27

    .line 132
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    .line 133
    .local v3, "originalOpcode":I
    const/16 v4, 0xc1

    if-ne v3, v4, :cond_27

    .line 134
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Feature aborted for <Report Arc Initiated>"

    invoke-static {v4, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->disableArc()V

    .line 136
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    .line 137
    return v1

    .line 140
    .end local v3    # "originalOpcode":I
    :cond_27
    return v2
.end method

.method start()Z
    .registers 5

    .line 59
    iget-boolean v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mEnabled:Z

    if-eqz v0, :cond_17

    .line 61
    new-instance v0, Lcom/android/server/hdmi/RequestSadAction;

    .line 62
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    const/4 v2, 0x5

    new-instance v3, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;

    invoke-direct {v3, p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;-><init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/RequestSadAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/RequestSadAction$RequestSadCallback;)V

    .line 82
    .local v0, "action":Lcom/android/server/hdmi/RequestSadAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 83
    .end local v0    # "action":Lcom/android/server/hdmi/RequestSadAction;
    goto :goto_1d

    .line 84
    :cond_17
    invoke-direct {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->disableArc()V

    .line 85
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    .line 87
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method
