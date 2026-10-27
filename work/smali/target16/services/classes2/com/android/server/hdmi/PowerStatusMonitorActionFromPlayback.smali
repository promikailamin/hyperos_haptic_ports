.class public Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "PowerStatusMonitorActionFromPlayback.java"


# static fields
.field protected static final MONITORING_INTERVAL_MS:I = 0xea60


# instance fields
.field public mConsecutiveStandbyReports:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;->mConsecutiveStandbyReports:I

    return-void
.end method

.method private queryPowerStatus()V
    .registers 3

    .line 123
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 v0, 0x2

    .line 126
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public final handleReportPowerStatusFromTv(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7

    .line 72
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x1

    if-eq p1, v1, :cond_f

    .line 74
    iput v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;->mConsecutiveStandbyReports:I

    goto :goto_14

    .line 76
    :cond_f
    iget p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;->mConsecutiveStandbyReports:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;->mConsecutiveStandbyReports:I

    .line 79
    :goto_14
    iget p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;->mConsecutiveStandbyReports:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_35

    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object p1

    .line 81
    const-string v0, "PowerStatusMonitorActionFromPlayback"

    const-string v2, "TV reported standby, going to sleep."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const v2, 0xffff

    const-string v3, "HdmiCecLocalDevicePlayback#onStandby()"

    const/4 v4, -0x1

    .line 87
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(IILjava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->onActiveSourceLost()V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    .line 93
    :cond_35
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const p1, 0xea60

    .line 94
    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v1
.end method

.method public handleTimerEvent(I)V
    .registers 4

    .line 100
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_5

    goto :goto_b

    :cond_5
    const/4 p1, 0x1

    if-eq v0, p1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    :goto_b
    return-void

    .line 111
    :cond_c
    const-string v0, "PowerStatusMonitorActionFromPlayback"

    const-string v1, "Timeout waiting for <Report Power Status>. Resetting standby counter."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;->mConsecutiveStandbyReports:I

    .line 114
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const v0, 0xea60

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void

    .line 106
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;->queryPowerStatus()V

    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 63
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 64
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_18

    .line 65
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    if-nez v0, :cond_18

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;->handleReportPowerStatusFromTv(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public start()Z
    .registers 3

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const v1, 0xea60

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    const/4 v1, 0x0

    .line 57
    iput v1, p0, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;->mConsecutiveStandbyReports:I

    return v0
.end method
