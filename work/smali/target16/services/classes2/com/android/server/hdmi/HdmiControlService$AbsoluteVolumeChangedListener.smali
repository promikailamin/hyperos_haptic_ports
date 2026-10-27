.class Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;


# instance fields
.field public mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static synthetic $r8$lambda$KAvlIl7BsGr8ey2W1wBKmI7cYpU(Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;Landroid/media/VolumeInfo;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->lambda$onAudioDeviceVolumeChanged$0(Landroid/media/VolumeInfo;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4

    .line 4899
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4900
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 4901
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;Lcom/android/server/hdmi/HdmiControlService-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onAudioDeviceVolumeChanged$0(Landroid/media/VolumeInfo;II)V
    .registers 4

    if-nez p3, :cond_1d

    .line 4943
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result p2

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    if-eqz p2, :cond_11

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    .line 4944
    :goto_15
    invoke-virtual {p1}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->updateAvbVolume(I)V

    return-void

    .line 4946
    :cond_1d
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 4948
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 4946
    invoke-static {p2, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public onAudioDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .registers 5

    const/16 p1, -0x64

    const/4 p2, 0x1

    if-eq p3, p1, :cond_2d

    const/4 p1, -0x1

    if-eq p3, p1, :cond_2a

    if-eqz p3, :cond_18

    if-eq p3, p2, :cond_15

    const/16 p1, 0x64

    if-eq p3, p1, :cond_2d

    const/16 p1, 0x65

    if-eq p3, p1, :cond_2d

    goto :goto_37

    :cond_15
    const/16 p1, 0x18

    goto :goto_2f

    .line 4983
    :cond_18
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 4984
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->requestAndUpdateAvbAudioStatus()V

    return-void

    :cond_2a
    const/16 p1, 0x19

    goto :goto_2f

    :cond_2d
    const/16 p1, 0xa4

    :goto_2f
    const/4 p3, 0x0

    if-eqz p4, :cond_44

    if-eq p4, p2, :cond_3e

    const/4 p2, 0x2

    if-eq p4, p2, :cond_38

    :cond_37
    :goto_37
    return-void

    .line 4999
    :cond_38
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    return-void

    .line 4996
    :cond_3e
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    return-void

    .line 4992
    :cond_44
    iget-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p4, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    .line 4993
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    return-void
.end method

.method public onAudioDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .registers 6

    .line 4912
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    .line 4918
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_43

    .line 4922
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    goto :goto_2c

    :cond_26
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 4923
    :goto_2c
    invoke-virtual {p2}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->updateAvbVolume(I)V

    .line 4925
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 4927
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 4925
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void

    .line 4933
    :cond_43
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 4935
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 4936
    invoke-virtual {p2}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result v2

    .line 4933
    invoke-static {p1, v1, v2}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;Landroid/media/VolumeInfo;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method
