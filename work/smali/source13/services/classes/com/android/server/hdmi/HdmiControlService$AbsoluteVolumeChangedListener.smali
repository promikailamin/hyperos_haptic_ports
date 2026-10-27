.class Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AbsoluteVolumeChangedListener"
.end annotation


# instance fields
.field private mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field private mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p3, "systemAudioDevice"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 4086
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4087
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 4088
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 4089
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAudioDeviceVolumeChanged$0$com-android-server-hdmi-HdmiControlService$AbsoluteVolumeChangedListener(Landroid/media/VolumeInfo;II)V
    .registers 6
    .param p1, "volumeInfo"    # Landroid/media/VolumeInfo;
    .param p2, "localDeviceAddress"    # I
    .param p3, "errorCode"    # I

    .line 4110
    if-nez p3, :cond_1f

    .line 4113
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    goto :goto_17

    :cond_11
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 4114
    .local v0, "avcDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :goto_17
    invoke-virtual {p1}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->updateAvcVolume(I)V

    .line 4115
    .end local v0    # "avcDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    goto :goto_2e

    .line 4116
    :cond_1f
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 4118
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 4116
    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 4121
    :goto_2e
    return-void
.end method

.method public onAudioDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .registers 9
    .param p1, "audioDevice"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "volumeInfo"    # Landroid/media/VolumeInfo;
    .param p3, "direction"    # I
    .param p4, "mode"    # I

    .line 4136
    sparse-switch p3, :sswitch_data_2c

    .line 4151
    return-void

    .line 4138
    :sswitch_4
    const/16 v0, 0x18

    .line 4139
    .local v0, "keyCode":I
    goto :goto_d

    .line 4141
    .end local v0    # "keyCode":I
    :sswitch_7
    const/16 v0, 0x19

    .line 4142
    .restart local v0    # "keyCode":I
    goto :goto_d

    .line 4148
    .end local v0    # "keyCode":I
    :sswitch_a
    const/16 v0, 0xa4

    .line 4149
    .restart local v0    # "keyCode":I
    nop

    .line 4153
    :goto_d
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p4, :pswitch_data_42

    .line 4165
    return-void

    .line 4162
    :pswitch_13
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    .line 4163
    goto :goto_2a

    .line 4159
    :pswitch_19
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    .line 4160
    goto :goto_2a

    .line 4155
    :pswitch_1f
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    .line 4156
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    .line 4157
    nop

    .line 4167
    :goto_2a
    return-void

    nop

    :sswitch_data_2c
    .sparse-switch
        -0x64 -> :sswitch_a
        -0x1 -> :sswitch_7
        0x1 -> :sswitch_4
        0x64 -> :sswitch_a
        0x65 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method

.method public onAudioDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .registers 7
    .param p1, "audioDevice"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "volumeInfo"    # Landroid/media/VolumeInfo;

    .line 4100
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4101
    :try_start_5
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 4102
    .local v1, "localDeviceAddress":I
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_29

    .line 4103
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 4105
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    .line 4106
    invoke-virtual {p2}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result v3

    .line 4103
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    new-instance v3, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v1}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;Landroid/media/VolumeInfo;I)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 4122
    return-void

    .line 4102
    .end local v1    # "localDeviceAddress":I
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method
