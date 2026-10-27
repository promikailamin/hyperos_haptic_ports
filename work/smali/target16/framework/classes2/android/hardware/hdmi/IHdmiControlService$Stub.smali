.class public abstract Landroid/hardware/hdmi/IHdmiControlService$Stub;
.super Landroid/os/Binder;
.source "IHdmiControlService.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiControlService"

.field static final blacklist TRANSACTION_addCecSettingChangeListener:I = 0x32

.field static final greylist-max-o TRANSACTION_addDeviceEventListener:I = 0xd

.field static final blacklist TRANSACTION_addHdmiCecVolumeControlFeatureListener:I = 0x9

.field static final blacklist TRANSACTION_addHdmiControlStatusChangeListener:I = 0x7

.field static final greylist-max-o TRANSACTION_addHdmiMhlVendorCommandListener:I = 0x2c

.field static final greylist-max-o TRANSACTION_addHotplugEventListener:I = 0xb

.field static final greylist-max-o TRANSACTION_addSystemAudioModeChangeListener:I = 0x17

.field static final greylist-max-o TRANSACTION_addVendorCommandListener:I = 0x24

.field static final blacklist TRANSACTION_askRemoteDeviceToBecomeActiveSource:I = 0x22

.field static final greylist-max-o TRANSACTION_canChangeSystemAudioMode:I = 0x13

.field static final greylist-max-o TRANSACTION_clearTimerRecording:I = 0x2a

.field static final greylist-max-o TRANSACTION_deviceSelect:I = 0xe

.field static final greylist-max-o TRANSACTION_getActiveSource:I = 0x2

.field static final blacklist TRANSACTION_getAllowedCecSettingIntValues:I = 0x36

.field static final blacklist TRANSACTION_getAllowedCecSettingStringValues:I = 0x35

.field static final blacklist TRANSACTION_getCecSettingIntValue:I = 0x39

.field static final blacklist TRANSACTION_getCecSettingStringValue:I = 0x37

.field static final greylist-max-o TRANSACTION_getDeviceList:I = 0x1f

.field static final greylist-max-o TRANSACTION_getInputDevices:I = 0x1e

.field static final blacklist TRANSACTION_getMessageHistorySize:I = 0x31

.field static final blacklist TRANSACTION_getPhysicalAddress:I = 0x15

.field static final greylist-max-o TRANSACTION_getPortInfo:I = 0x12

.field static final greylist-max-o TRANSACTION_getSupportedTypes:I = 0x1

.field static final greylist-max-o TRANSACTION_getSystemAudioMode:I = 0x14

.field static final blacklist TRANSACTION_getUserCecSettings:I = 0x34

.field static final greylist-max-o TRANSACTION_oneTouchPlay:I = 0x3

.field static final greylist-max-o TRANSACTION_portSelect:I = 0xf

.field static final blacklist TRANSACTION_powerOffRemoteDevice:I = 0x20

.field static final blacklist TRANSACTION_powerOnRemoteDevice:I = 0x21

.field static final greylist-max-o TRANSACTION_queryDisplayStatus:I = 0x6

.field static final blacklist TRANSACTION_removeCecSettingChangeListener:I = 0x33

.field static final blacklist TRANSACTION_removeHdmiCecVolumeControlFeatureListener:I = 0xa

.field static final blacklist TRANSACTION_removeHdmiControlStatusChangeListener:I = 0x8

.field static final greylist-max-o TRANSACTION_removeHotplugEventListener:I = 0xc

.field static final greylist-max-o TRANSACTION_removeSystemAudioModeChangeListener:I = 0x18

.field static final blacklist TRANSACTION_reportAudioStatus:I = 0x2e

.field static final greylist-max-o TRANSACTION_sendKeyEvent:I = 0x10

.field static final greylist-max-o TRANSACTION_sendMhlVendorCommand:I = 0x2b

.field static final greylist-max-o TRANSACTION_sendStandby:I = 0x25

.field static final greylist-max-o TRANSACTION_sendVendorCommand:I = 0x23

.field static final blacklist TRANSACTION_sendVolumeKeyEvent:I = 0x11

.field static final greylist-max-o TRANSACTION_setArcMode:I = 0x19

.field static final blacklist TRANSACTION_setCecSettingIntValue:I = 0x3a

.field static final blacklist TRANSACTION_setCecSettingStringValue:I = 0x38

.field static final greylist-max-o TRANSACTION_setHdmiRecordListener:I = 0x26

.field static final greylist-max-o TRANSACTION_setInputChangeListener:I = 0x1d

.field static final blacklist TRANSACTION_setMessageHistorySize:I = 0x30

.field static final greylist-max-o TRANSACTION_setProhibitMode:I = 0x1a

.field static final greylist-max-o TRANSACTION_setStandbyMode:I = 0x2d

.field static final greylist-max-o TRANSACTION_setSystemAudioMode:I = 0x16

.field static final blacklist TRANSACTION_setSystemAudioModeOnForAudioOnlySource:I = 0x2f

.field static final greylist-max-o TRANSACTION_setSystemAudioMute:I = 0x1c

.field static final greylist-max-o TRANSACTION_setSystemAudioVolume:I = 0x1b

.field static final blacklist TRANSACTION_shouldHandleTvPowerKey:I = 0x5

.field static final greylist-max-o TRANSACTION_startOneTouchRecord:I = 0x27

.field static final greylist-max-o TRANSACTION_startTimerRecording:I = 0x29

.field static final greylist-max-o TRANSACTION_stopOneTouchRecord:I = 0x28

.field static final blacklist TRANSACTION_toggleAndFollowTvPower:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 223
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 224
    const-string v0, "android.hardware.hdmi.IHdmiControlService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;
    .registers 3

    .line 232
    if-nez p0, :cond_4

    .line 233
    const/4 p0, 0x0

    return-object p0

    .line 235
    :cond_4
    const-string v0, "android.hardware.hdmi.IHdmiControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v1, :cond_13

    .line 237
    check-cast v0, Landroid/hardware/hdmi/IHdmiControlService;

    return-object v0

    .line 239
    :cond_13
    new-instance v0, Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 248
    packed-switch p0, :pswitch_data_b4

    .line 484
    const/4 p0, 0x0

    return-object p0

    .line 480
    :pswitch_5
    const-string p0, "setCecSettingIntValue"

    return-object p0

    .line 476
    :pswitch_8
    const-string p0, "getCecSettingIntValue"

    return-object p0

    .line 472
    :pswitch_b
    const-string p0, "setCecSettingStringValue"

    return-object p0

    .line 468
    :pswitch_e
    const-string p0, "getCecSettingStringValue"

    return-object p0

    .line 464
    :pswitch_11
    const-string p0, "getAllowedCecSettingIntValues"

    return-object p0

    .line 460
    :pswitch_14
    const-string p0, "getAllowedCecSettingStringValues"

    return-object p0

    .line 456
    :pswitch_17
    const-string p0, "getUserCecSettings"

    return-object p0

    .line 452
    :pswitch_1a
    const-string p0, "removeCecSettingChangeListener"

    return-object p0

    .line 448
    :pswitch_1d
    const-string p0, "addCecSettingChangeListener"

    return-object p0

    .line 444
    :pswitch_20
    const-string p0, "getMessageHistorySize"

    return-object p0

    .line 440
    :pswitch_23
    const-string p0, "setMessageHistorySize"

    return-object p0

    .line 436
    :pswitch_26
    const-string p0, "setSystemAudioModeOnForAudioOnlySource"

    return-object p0

    .line 432
    :pswitch_29
    const-string p0, "reportAudioStatus"

    return-object p0

    .line 428
    :pswitch_2c
    const-string p0, "setStandbyMode"

    return-object p0

    .line 424
    :pswitch_2f
    const-string p0, "addHdmiMhlVendorCommandListener"

    return-object p0

    .line 420
    :pswitch_32
    const-string p0, "sendMhlVendorCommand"

    return-object p0

    .line 416
    :pswitch_35
    const-string p0, "clearTimerRecording"

    return-object p0

    .line 412
    :pswitch_38
    const-string p0, "startTimerRecording"

    return-object p0

    .line 408
    :pswitch_3b
    const-string p0, "stopOneTouchRecord"

    return-object p0

    .line 404
    :pswitch_3e
    const-string p0, "startOneTouchRecord"

    return-object p0

    .line 400
    :pswitch_41
    const-string p0, "setHdmiRecordListener"

    return-object p0

    .line 396
    :pswitch_44
    const-string p0, "sendStandby"

    return-object p0

    .line 392
    :pswitch_47
    const-string p0, "addVendorCommandListener"

    return-object p0

    .line 388
    :pswitch_4a
    const-string p0, "sendVendorCommand"

    return-object p0

    .line 384
    :pswitch_4d
    const-string p0, "askRemoteDeviceToBecomeActiveSource"

    return-object p0

    .line 380
    :pswitch_50
    const-string p0, "powerOnRemoteDevice"

    return-object p0

    .line 376
    :pswitch_53
    const-string p0, "powerOffRemoteDevice"

    return-object p0

    .line 372
    :pswitch_56
    const-string p0, "getDeviceList"

    return-object p0

    .line 368
    :pswitch_59
    const-string p0, "getInputDevices"

    return-object p0

    .line 364
    :pswitch_5c
    const-string p0, "setInputChangeListener"

    return-object p0

    .line 360
    :pswitch_5f
    const-string p0, "setSystemAudioMute"

    return-object p0

    .line 356
    :pswitch_62
    const-string p0, "setSystemAudioVolume"

    return-object p0

    .line 352
    :pswitch_65
    const-string p0, "setProhibitMode"

    return-object p0

    .line 348
    :pswitch_68
    const-string p0, "setArcMode"

    return-object p0

    .line 344
    :pswitch_6b
    const-string p0, "removeSystemAudioModeChangeListener"

    return-object p0

    .line 340
    :pswitch_6e
    const-string p0, "addSystemAudioModeChangeListener"

    return-object p0

    .line 336
    :pswitch_71
    const-string p0, "setSystemAudioMode"

    return-object p0

    .line 332
    :pswitch_74
    const-string p0, "getPhysicalAddress"

    return-object p0

    .line 328
    :pswitch_77
    const-string p0, "getSystemAudioMode"

    return-object p0

    .line 324
    :pswitch_7a
    const-string p0, "canChangeSystemAudioMode"

    return-object p0

    .line 320
    :pswitch_7d
    const-string p0, "getPortInfo"

    return-object p0

    .line 316
    :pswitch_80
    const-string p0, "sendVolumeKeyEvent"

    return-object p0

    .line 312
    :pswitch_83
    const-string p0, "sendKeyEvent"

    return-object p0

    .line 308
    :pswitch_86
    const-string p0, "portSelect"

    return-object p0

    .line 304
    :pswitch_89
    const-string p0, "deviceSelect"

    return-object p0

    .line 300
    :pswitch_8c
    const-string p0, "addDeviceEventListener"

    return-object p0

    .line 296
    :pswitch_8f
    const-string p0, "removeHotplugEventListener"

    return-object p0

    .line 292
    :pswitch_92
    const-string p0, "addHotplugEventListener"

    return-object p0

    .line 288
    :pswitch_95
    const-string p0, "removeHdmiCecVolumeControlFeatureListener"

    return-object p0

    .line 284
    :pswitch_98
    const-string p0, "addHdmiCecVolumeControlFeatureListener"

    return-object p0

    .line 280
    :pswitch_9b
    const-string p0, "removeHdmiControlStatusChangeListener"

    return-object p0

    .line 276
    :pswitch_9e
    const-string p0, "addHdmiControlStatusChangeListener"

    return-object p0

    .line 272
    :pswitch_a1
    const-string p0, "queryDisplayStatus"

    return-object p0

    .line 268
    :pswitch_a4
    const-string p0, "shouldHandleTvPowerKey"

    return-object p0

    .line 264
    :pswitch_a7
    const-string p0, "toggleAndFollowTvPower"

    return-object p0

    .line 260
    :pswitch_aa
    const-string p0, "oneTouchPlay"

    return-object p0

    .line 256
    :pswitch_ad
    const-string p0, "getActiveSource"

    return-object p0

    .line 252
    :pswitch_b0
    const-string p0, "getSupportedTypes"

    return-object p0

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 243
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2088
    const/16 v0, 0x39

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 491
    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    nop

    .line 496
    const-string v0, "android.hardware.hdmi.IHdmiControlService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 497
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 500
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 501
    return v1

    .line 503
    :cond_17
    packed-switch p1, :pswitch_data_430

    .line 1068
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1058
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1060
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1061
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingIntValue(Ljava/lang/String;I)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    goto/16 :goto_42e

    .line 1048
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1049
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result p1

    .line 1051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1053
    goto/16 :goto_42e

    .line 1037
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1039
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1040
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    goto/16 :goto_42e

    .line 1027
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    goto/16 :goto_42e

    .line 1017
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getAllowedCecSettingIntValues(Ljava/lang/String;)[I

    move-result-object p1

    .line 1020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1022
    goto/16 :goto_42e

    .line 1007
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1008
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1012
    goto/16 :goto_42e

    .line 999
    :pswitch_91
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getUserCecSettings()Ljava/util/List;

    move-result-object p1

    .line 1000
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1002
    goto/16 :goto_42e

    .line 989
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    move-result-object p4

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    goto/16 :goto_42e

    .line 978
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    move-result-object p4

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    .line 983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    goto/16 :goto_42e

    .line 970
    :pswitch_cb
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getMessageHistorySize()I

    move-result p1

    .line 971
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 973
    goto/16 :goto_42e

    .line 961
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setMessageHistorySize(I)Z

    move-result p1

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 966
    goto/16 :goto_42e

    .line 954
    :pswitch_ea
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioModeOnForAudioOnlySource()V

    .line 955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    goto/16 :goto_42e

    .line 940
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 942
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 944
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 946
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 947
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->reportAudioStatus(IIIZ)V

    .line 949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    goto/16 :goto_42e

    .line 931
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 932
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 933
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setStandbyMode(Z)V

    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    goto/16 :goto_42e

    .line 922
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object p1

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    goto/16 :goto_42e

    .line 907
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 909
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 913
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendMhlVendorCommand(III[B)V

    .line 916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    goto/16 :goto_42e

    .line 894
    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 898
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 899
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->clearTimerRecording(II[B)V

    .line 901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    goto/16 :goto_42e

    .line 881
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 886
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->startTimerRecording(II[B)V

    .line 888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    goto/16 :goto_42e

    .line 872
    :pswitch_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 873
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->stopOneTouchRecord(I)V

    .line 875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    goto/16 :goto_42e

    .line 861
    :pswitch_187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->startOneTouchRecord(I[B)V

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    goto/16 :goto_42e

    .line 852
    :pswitch_19a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object p1

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_42e

    .line 841
    :pswitch_1ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 843
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendStandby(II)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    goto/16 :goto_42e

    .line 830
    :pswitch_1c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object p1

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    goto/16 :goto_42e

    .line 815
    :pswitch_1d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVendorCommand(II[BZ)V

    .line 824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    goto/16 :goto_42e

    .line 806
    :pswitch_1f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->askRemoteDeviceToBecomeActiveSource(I)V

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    goto/16 :goto_42e

    .line 795
    :pswitch_201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->powerOnRemoteDevice(II)V

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    goto/16 :goto_42e

    .line 784
    :pswitch_214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 787
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->powerOffRemoteDevice(II)V

    .line 789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    goto/16 :goto_42e

    .line 776
    :pswitch_227
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getDeviceList()Ljava/util/List;

    move-result-object p1

    .line 777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 779
    goto/16 :goto_42e

    .line 769
    :pswitch_233
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getInputDevices()Ljava/util/List;

    move-result-object p1

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 772
    goto/16 :goto_42e

    .line 761
    :pswitch_23f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object p1

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    goto/16 :goto_42e

    .line 752
    :pswitch_252
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMute(Z)V

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    goto/16 :goto_42e

    .line 739
    :pswitch_261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioVolume(III)V

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    goto/16 :goto_42e

    .line 730
    :pswitch_278
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setProhibitMode(Z)V

    .line 733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    goto/16 :goto_42e

    .line 721
    :pswitch_287
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    goto/16 :goto_42e

    .line 712
    :pswitch_296
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object p1

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    goto/16 :goto_42e

    .line 703
    :pswitch_2a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object p1

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    goto/16 :goto_42e

    .line 692
    :pswitch_2bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p4

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_42e

    .line 684
    :pswitch_2d3
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getPhysicalAddress()I

    move-result p1

    .line 685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    goto/16 :goto_42e

    .line 677
    :pswitch_2df
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getSystemAudioMode()Z

    move-result p1

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 680
    goto/16 :goto_42e

    .line 670
    :pswitch_2eb
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->canChangeSystemAudioMode()Z

    move-result p1

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 673
    goto/16 :goto_42e

    .line 663
    :pswitch_2f7
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getPortInfo()Ljava/util/List;

    move-result-object p1

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 666
    goto/16 :goto_42e

    .line 651
    :pswitch_303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVolumeKeyEvent(IIZ)V

    .line 658
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    goto/16 :goto_42e

    .line 638
    :pswitch_31a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendKeyEvent(IIZ)V

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    goto/16 :goto_42e

    .line 627
    :pswitch_331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p4

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    goto/16 :goto_42e

    .line 616
    :pswitch_348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p4

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {p0, p1, p4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_42e

    .line 607
    :pswitch_35f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    move-result-object p1

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    goto/16 :goto_42e

    .line 598
    :pswitch_372
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object p1

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    goto/16 :goto_42e

    .line 589
    :pswitch_385
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object p1

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    goto/16 :goto_42e

    .line 580
    :pswitch_398
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    move-result-object p1

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    goto/16 :goto_42e

    .line 571
    :pswitch_3ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    move-result-object p1

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    .line 574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    goto/16 :goto_42e

    .line 562
    :pswitch_3be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object p1

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    goto :goto_42e

    .line 553
    :pswitch_3d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object p1

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    goto :goto_42e

    .line 544
    :pswitch_3e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p1

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    goto :goto_42e

    .line 536
    :pswitch_3f4
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->shouldHandleTvPowerKey()Z

    move-result p1

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 539
    goto :goto_42e

    .line 530
    :pswitch_3ff
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->toggleAndFollowTvPower()V

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    goto :goto_42e

    .line 522
    :pswitch_406
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p1

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    goto :goto_42e

    .line 514
    :pswitch_418
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 517
    goto :goto_42e

    .line 507
    :pswitch_423
    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getSupportedTypes()[I

    move-result-object p1

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 510
    nop

    .line 1071
    :goto_42e
    return v1

    nop

    :pswitch_data_430
    .packed-switch 0x1
        :pswitch_423
        :pswitch_418
        :pswitch_406
        :pswitch_3ff
        :pswitch_3f4
        :pswitch_3e2
        :pswitch_3d0
        :pswitch_3be
        :pswitch_3ab
        :pswitch_398
        :pswitch_385
        :pswitch_372
        :pswitch_35f
        :pswitch_348
        :pswitch_331
        :pswitch_31a
        :pswitch_303
        :pswitch_2f7
        :pswitch_2eb
        :pswitch_2df
        :pswitch_2d3
        :pswitch_2bc
        :pswitch_2a9
        :pswitch_296
        :pswitch_287
        :pswitch_278
        :pswitch_261
        :pswitch_252
        :pswitch_23f
        :pswitch_233
        :pswitch_227
        :pswitch_214
        :pswitch_201
        :pswitch_1f2
        :pswitch_1d7
        :pswitch_1c0
        :pswitch_1ad
        :pswitch_19a
        :pswitch_187
        :pswitch_178
        :pswitch_161
        :pswitch_14a
        :pswitch_12f
        :pswitch_11c
        :pswitch_10d
        :pswitch_f2
        :pswitch_ea
        :pswitch_d7
        :pswitch_cb
        :pswitch_b4
        :pswitch_9d
        :pswitch_91
        :pswitch_7e
        :pswitch_6b
        :pswitch_58
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
