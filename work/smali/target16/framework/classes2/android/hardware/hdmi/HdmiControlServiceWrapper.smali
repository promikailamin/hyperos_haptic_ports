.class public final Landroid/hardware/hdmi/HdmiControlServiceWrapper;
.super Ljava/lang/Object;
.source "HdmiControlServiceWrapper.java"


# static fields
.field public static final blacklist DEVICE_PURE_CEC_SWITCH:I = 0x6


# instance fields
.field private blacklist mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInterface:Landroid/hardware/hdmi/IHdmiControlService;

.field private blacklist mTypes:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mInfoList:Ljava/util/List;

    .line 40
    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mTypes:[I

    .line 52
    new-instance v0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;-><init>(Landroid/hardware/hdmi/HdmiControlServiceWrapper;)V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mInterface:Landroid/hardware/hdmi/IHdmiControlService;

    return-void
.end method


# virtual methods
.method public blacklist addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 3

    .line 547
    return-void
.end method

.method public blacklist addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 2

    .line 407
    return-void
.end method

.method public blacklist addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 2

    .line 529
    return-void
.end method

.method public blacklist addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 2

    .line 395
    return-void
.end method

.method public blacklist addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 2

    .line 508
    return-void
.end method

.method public blacklist addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 2

    .line 401
    return-void
.end method

.method public blacklist addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 2

    .line 440
    return-void
.end method

.method public blacklist addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 3

    .line 484
    return-void
.end method

.method public blacklist askRemoteDeviceToBecomeActiveSource(I)V
    .registers 2

    .line 477
    return-void
.end method

.method public blacklist canChangeSystemAudioMode()Z
    .registers 2

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist clearTimerRecording(II[B)V
    .registers 4

    .line 502
    return-void
.end method

.method public blacklist createHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;
    .registers 3

    .line 49
    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mInterface:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiControlManager;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    return-object v0
.end method

.method public blacklist deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 3

    .line 410
    return-void
.end method

.method public blacklist getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllowedCecSettingIntValues(Ljava/lang/String;)[I
    .registers 2

    .line 565
    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public blacklist getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 560
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public blacklist getCecSettingIntValue(Ljava/lang/String;)I
    .registers 2

    .line 579
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 570
    const-string p1, ""

    return-object p1
.end method

.method public blacklist getDeviceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 467
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInputDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 462
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMessageHistorySize()I
    .registers 2

    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPhysicalAddress()I
    .registers 2

    .line 433
    const v0, 0xffff

    return v0
.end method

.method public blacklist getPortInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mInfoList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSupportedTypes()[I
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mTypes:[I

    return-object v0
.end method

.method public blacklist getSystemAudioMode()Z
    .registers 2

    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getUserCecSettings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist isHdmiCecVolumeControlEnabled()Z
    .registers 2

    .line 518
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 381
    return-void
.end method

.method public blacklist portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 3

    .line 413
    return-void
.end method

.method public blacklist powerOffRemoteDevice(II)V
    .registers 3

    .line 471
    return-void
.end method

.method public blacklist powerOnRemoteDevice(II)V
    .registers 3

    .line 474
    return-void
.end method

.method public blacklist queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 392
    return-void
.end method

.method public blacklist removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 3

    .line 551
    return-void
.end method

.method public blacklist removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 2

    .line 533
    return-void
.end method

.method public blacklist removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 2

    .line 398
    return-void
.end method

.method public blacklist removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 2

    .line 404
    return-void
.end method

.method public blacklist removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 2

    .line 443
    return-void
.end method

.method public blacklist reportAudioStatus(IIIZ)V
    .registers 5

    .line 522
    return-void
.end method

.method public blacklist sendKeyEvent(IIZ)V
    .registers 4

    .line 416
    return-void
.end method

.method public blacklist sendMhlVendorCommand(III[B)V
    .registers 5

    .line 505
    return-void
.end method

.method public blacklist sendStandby(II)V
    .registers 3

    .line 487
    return-void
.end method

.method public blacklist sendVendorCommand(II[BZ)V
    .registers 5

    .line 481
    return-void
.end method

.method public blacklist sendVolumeKeyEvent(IIZ)V
    .registers 4

    .line 419
    return-void
.end method

.method public blacklist setArcMode(Z)V
    .registers 2

    .line 446
    return-void
.end method

.method public blacklist setCecSettingIntValue(Ljava/lang/String;I)V
    .registers 3

    .line 584
    return-void
.end method

.method public blacklist setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 575
    return-void
.end method

.method public blacklist setDeviceTypes([I)V
    .registers 2

    .line 362
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mTypes:[I

    .line 363
    return-void
.end method

.method public blacklist setHdmiCecVolumeControlEnabled(Z)V
    .registers 2

    .line 514
    return-void
.end method

.method public blacklist setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 2

    .line 490
    return-void
.end method

.method public blacklist setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 2

    .line 458
    return-void
.end method

.method public blacklist setMessageHistorySize(I)Z
    .registers 2

    .line 542
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist setPortInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;)V"
        }
    .end annotation

    .line 357
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mInfoList:Ljava/util/List;

    .line 358
    return-void
.end method

.method public blacklist setProhibitMode(Z)V
    .registers 2

    .line 449
    return-void
.end method

.method public blacklist setStandbyMode(Z)V
    .registers 2

    .line 511
    return-void
.end method

.method public blacklist setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 3

    .line 437
    return-void
.end method

.method public blacklist setSystemAudioModeOnForAudioOnlySource()V
    .registers 1

    .line 525
    return-void
.end method

.method public blacklist setSystemAudioMute(Z)V
    .registers 2

    .line 455
    return-void
.end method

.method public blacklist setSystemAudioVolume(III)V
    .registers 4

    .line 452
    return-void
.end method

.method public blacklist shouldHandleTvPowerKey()Z
    .registers 2

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist startOneTouchRecord(I[B)V
    .registers 3

    .line 493
    return-void
.end method

.method public blacklist startTimerRecording(II[B)V
    .registers 4

    .line 499
    return-void
.end method

.method public blacklist stopOneTouchRecord(I)V
    .registers 2

    .line 496
    return-void
.end method

.method public blacklist toggleAndFollowTvPower()V
    .registers 1

    .line 384
    return-void
.end method
