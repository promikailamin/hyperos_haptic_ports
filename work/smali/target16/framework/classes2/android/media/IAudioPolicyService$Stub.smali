.class public abstract Landroid/media/IAudioPolicyService$Stub;
.super Landroid/os/Binder;
.source "IAudioPolicyService.java"

# interfaces
.implements Landroid/media/IAudioPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioPolicyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireSoundTriggerSession:I = 0x3d

.field static final blacklist TRANSACTION_addDevicesRoleForCapturePreset:I = 0x64

.field static final blacklist TRANSACTION_addSourceDefaultEffect:I = 0x2b

.field static final blacklist TRANSACTION_addStreamDefaultEffect:I = 0x2c

.field static final blacklist TRANSACTION_canBeSpatialized:I = 0x6a

.field static final blacklist TRANSACTION_clearDevicesRoleForCapturePreset:I = 0x66

.field static final blacklist TRANSACTION_clearDevicesRoleForStrategy:I = 0x61

.field static final blacklist TRANSACTION_clearPreferredMixerAttributes:I = 0x70

.field static final blacklist TRANSACTION_createAudioPatch:I = 0x36

.field static final blacklist TRANSACTION_forceReleaseDirectOutput:I = 0xd

.field static final blacklist TRANSACTION_getAttributesForStreamType:I = 0x57

.field static final blacklist TRANSACTION_getAudioPort:I = 0x35

.field static final blacklist TRANSACTION_getDeviceConnectionState:I = 0x3

.field static final blacklist TRANSACTION_getDevicesForAttributes:I = 0x21

.field static final blacklist TRANSACTION_getDevicesForRoleAndCapturePreset:I = 0x67

.field static final blacklist TRANSACTION_getDevicesForRoleAndStrategy:I = 0x62

.field static final blacklist TRANSACTION_getDirectPlaybackSupport:I = 0x6b

.field static final blacklist TRANSACTION_getDirectProfilesForAttributes:I = 0x6c

.field static final blacklist TRANSACTION_getForceUse:I = 0x7

.field static final blacklist TRANSACTION_getHwOffloadFormatsSupportedForBluetoothMedia:I = 0x4e

.field static final blacklist TRANSACTION_getInputForAttr:I = 0xe

.field static final blacklist TRANSACTION_getMasterMono:I = 0x4a

.field static final blacklist TRANSACTION_getMaxVolumeIndexForAttributes:I = 0x18

.field static final blacklist TRANSACTION_getMaxVolumeIndexForGroup:I = 0x1c

.field static final blacklist TRANSACTION_getMinVolumeIndexForAttributes:I = 0x19

.field static final blacklist TRANSACTION_getMinVolumeIndexForGroup:I = 0x1d

.field static final blacklist TRANSACTION_getMmapPolicyForDevice:I = 0x73

.field static final blacklist TRANSACTION_getMmapPolicyInfos:I = 0x72

.field static final blacklist TRANSACTION_getOffloadSupport:I = 0x31

.field static final blacklist TRANSACTION_getOutput:I = 0x8

.field static final blacklist TRANSACTION_getOutputForAttr:I = 0x9

.field static final blacklist TRANSACTION_getOutputForEffect:I = 0x22

.field static final blacklist TRANSACTION_getPermissionController:I = 0x71

.field static final blacklist TRANSACTION_getPhoneState:I = 0x3f

.field static final blacklist TRANSACTION_getPreferredMixerAttributes:I = 0x6f

.field static final blacklist TRANSACTION_getProductStrategyFromAudioAttributes:I = 0x5a

.field static final blacklist TRANSACTION_getRegisteredPolicyMixes:I = 0x41

.field static final blacklist TRANSACTION_getReportedSurroundFormats:I = 0x4d

.field static final blacklist TRANSACTION_getSpatializer:I = 0x69

.field static final blacklist TRANSACTION_getStrategyForStream:I = 0x20

.field static final blacklist TRANSACTION_getStreamTypeForAttributes:I = 0x58

.field static final blacklist TRANSACTION_getStreamVolumeDB:I = 0x4b

.field static final blacklist TRANSACTION_getStreamVolumeIndex:I = 0x15

.field static final blacklist TRANSACTION_getSupportedMixerAttributes:I = 0x6d

.field static final blacklist TRANSACTION_getSurroundFormats:I = 0x4c

.field static final blacklist TRANSACTION_getVolumeGroupFromAudioAttributes:I = 0x5c

.field static final blacklist TRANSACTION_getVolumeIndexForAttributes:I = 0x17

.field static final blacklist TRANSACTION_getVolumeIndexForGroup:I = 0x1b

.field static final blacklist TRANSACTION_handleDeviceConfigChange:I = 0x4

.field static final blacklist TRANSACTION_initStreamVolume:I = 0x13

.field static final blacklist TRANSACTION_isCallScreenModeSupported:I = 0x5e

.field static final blacklist TRANSACTION_isDirectOutputSupported:I = 0x32

.field static final blacklist TRANSACTION_isHapticPlaybackSupported:I = 0x54

.field static final blacklist TRANSACTION_isHotwordStreamSupported:I = 0x56

.field static final blacklist TRANSACTION_isSourceActive:I = 0x29

.field static final blacklist TRANSACTION_isStreamActive:I = 0x27

.field static final blacklist TRANSACTION_isStreamActiveRemotely:I = 0x28

.field static final blacklist TRANSACTION_isUltrasoundSupported:I = 0x55

.field static final blacklist TRANSACTION_listAudioPatches:I = 0x38

.field static final blacklist TRANSACTION_listAudioPorts:I = 0x33

.field static final blacklist TRANSACTION_listAudioProductStrategies:I = 0x59

.field static final blacklist TRANSACTION_listAudioVolumeGroups:I = 0x5b

.field static final blacklist TRANSACTION_listDeclaredDevicePorts:I = 0x34

.field static final blacklist TRANSACTION_moveEffectsToIo:I = 0x26

.field static final blacklist TRANSACTION_onNewAudioModulesAvailable:I = 0x1

.field static final blacklist TRANSACTION_queryDefaultPreProcessing:I = 0x2a

.field static final blacklist TRANSACTION_registerClient:I = 0x3a

.field static final blacklist TRANSACTION_registerEffect:I = 0x23

.field static final blacklist TRANSACTION_registerPolicyMixes:I = 0x40

.field static final blacklist TRANSACTION_registerSoundTriggerCaptureStateListener:I = 0x68

.field static final blacklist TRANSACTION_releaseAudioPatch:I = 0x37

.field static final blacklist TRANSACTION_releaseInput:I = 0x11

.field static final blacklist TRANSACTION_releaseOutput:I = 0xc

.field static final blacklist TRANSACTION_releaseSoundTriggerSession:I = 0x3e

.field static final blacklist TRANSACTION_removeDevicesRoleForCapturePreset:I = 0x65

.field static final blacklist TRANSACTION_removeDevicesRoleForStrategy:I = 0x60

.field static final blacklist TRANSACTION_removeSourceDefaultEffect:I = 0x2d

.field static final blacklist TRANSACTION_removeStreamDefaultEffect:I = 0x2e

.field static final blacklist TRANSACTION_removeUidDeviceAffinities:I = 0x44

.field static final blacklist TRANSACTION_removeUserIdDeviceAffinities:I = 0x46

.field static final blacklist TRANSACTION_setA11yServicesUids:I = 0x52

.field static final blacklist TRANSACTION_setActiveAssistantServicesUids:I = 0x51

.field static final blacklist TRANSACTION_setAllowedCapturePolicy:I = 0x30

.field static final blacklist TRANSACTION_setAssistantServicesUids:I = 0x50

.field static final blacklist TRANSACTION_setAudioPortCallbacksEnabled:I = 0x3b

.field static final blacklist TRANSACTION_setAudioPortConfig:I = 0x39

.field static final blacklist TRANSACTION_setAudioVolumeGroupCallbacksEnabled:I = 0x3c

.field static final blacklist TRANSACTION_setCurrentImeUid:I = 0x53

.field static final blacklist TRANSACTION_setDeviceAbsoluteVolumeEnabled:I = 0x12

.field static final blacklist TRANSACTION_setDeviceConnectionState:I = 0x2

.field static final blacklist TRANSACTION_setDevicesRoleForCapturePreset:I = 0x63

.field static final blacklist TRANSACTION_setDevicesRoleForStrategy:I = 0x5f

.field static final blacklist TRANSACTION_setEffectEnabled:I = 0x25

.field static final blacklist TRANSACTION_setEnableHardening:I = 0x74

.field static final blacklist TRANSACTION_setForceUse:I = 0x6

.field static final blacklist TRANSACTION_setMasterMono:I = 0x49

.field static final blacklist TRANSACTION_setMaxVolumeIndexForGroup:I = 0x1e

.field static final blacklist TRANSACTION_setMinVolumeIndexForGroup:I = 0x1f

.field static final blacklist TRANSACTION_setPhoneState:I = 0x5

.field static final blacklist TRANSACTION_setPreferredMixerAttributes:I = 0x6e

.field static final blacklist TRANSACTION_setRttEnabled:I = 0x5d

.field static final blacklist TRANSACTION_setStreamVolumeIndex:I = 0x14

.field static final blacklist TRANSACTION_setSupportedSystemUsages:I = 0x2f

.field static final blacklist TRANSACTION_setSurroundFormatEnabled:I = 0x4f

.field static final blacklist TRANSACTION_setUidDeviceAffinities:I = 0x43

.field static final blacklist TRANSACTION_setUserIdDeviceAffinities:I = 0x45

.field static final blacklist TRANSACTION_setVolumeIndexForAttributes:I = 0x16

.field static final blacklist TRANSACTION_setVolumeIndexForGroup:I = 0x1a

.field static final blacklist TRANSACTION_startAudioSource:I = 0x47

.field static final blacklist TRANSACTION_startInput:I = 0xf

.field static final blacklist TRANSACTION_startOutput:I = 0xa

.field static final blacklist TRANSACTION_stopAudioSource:I = 0x48

.field static final blacklist TRANSACTION_stopInput:I = 0x10

.field static final blacklist TRANSACTION_stopOutput:I = 0xb

.field static final blacklist TRANSACTION_unregisterEffect:I = 0x24

.field static final blacklist TRANSACTION_updatePolicyMixes:I = 0x42


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 582
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 583
    const-string v0, "android.media.IAudioPolicyService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IAudioPolicyService;
    .registers 3

    .line 591
    if-nez p0, :cond_4

    .line 592
    const/4 p0, 0x0

    return-object p0

    .line 594
    :cond_4
    const-string v0, "android.media.IAudioPolicyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IAudioPolicyService;

    if-eqz v1, :cond_13

    .line 596
    check-cast v0, Landroid/media/IAudioPolicyService;

    return-object v0

    .line 598
    :cond_13
    new-instance v0, Landroid/media/IAudioPolicyService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IAudioPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 602
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    nop

    .line 607
    const-string v0, "android.media.IAudioPolicyService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 608
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 611
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 612
    return v1

    .line 614
    :cond_17
    const/4 v0, 0x0

    const-string v2, "Array too large: "

    const v3, 0xf4240

    packed-switch p1, :pswitch_data_b12

    .line 1927
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1919
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1920
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1921
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->setEnableHardening(Z)V

    .line 1922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1923
    goto/16 :goto_b10

    .line 1907
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1909
    sget-object p4, Landroid/media/audio/common/AudioMMapPolicyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/AudioMMapPolicyInfo;

    .line 1910
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1911
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->getMmapPolicyForDevice(ILandroid/media/audio/common/AudioMMapPolicyInfo;)V

    .line 1912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1913
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1914
    goto/16 :goto_b10

    .line 1897
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1898
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1899
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getMmapPolicyInfos(I)[Landroid/media/audio/common/AudioMMapPolicyInfo;

    move-result-object p1

    .line 1900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1901
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1902
    goto/16 :goto_b10

    .line 1889
    :pswitch_62
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->getPermissionController()Lcom/android/media/permission/INativePermissionController;

    move-result-object p1

    .line 1890
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1891
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1892
    goto/16 :goto_b10

    .line 1877
    :pswitch_6e
    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 1879
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1881
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1882
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1883
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IAudioPolicyService$Stub;->clearPreferredMixerAttributes(Landroid/media/audio/common/AudioAttributes;II)V

    .line 1884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1885
    goto/16 :goto_b10

    .line 1865
    :pswitch_89
    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 1867
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1868
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1869
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->getPreferredMixerAttributes(Landroid/media/audio/common/AudioAttributes;I)Landroid/media/AudioMixerAttributesInternal;

    move-result-object p1

    .line 1870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1871
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1872
    goto/16 :goto_b10

    .line 1850
    :pswitch_a4
    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 1852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1854
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1856
    sget-object v2, Landroid/media/AudioMixerAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioMixerAttributesInternal;

    .line 1857
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1858
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/media/IAudioPolicyService$Stub;->setPreferredMixerAttributes(Landroid/media/audio/common/AudioAttributes;IILandroid/media/AudioMixerAttributesInternal;)V

    .line 1859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1860
    goto/16 :goto_b10

    .line 1840
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1841
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1842
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getSupportedMixerAttributes(I)[Landroid/media/AudioMixerAttributesInternal;

    move-result-object p1

    .line 1843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1844
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1845
    goto/16 :goto_b10

    .line 1830
    :pswitch_da
    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 1831
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1832
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getDirectProfilesForAttributes(Landroid/media/audio/common/AudioAttributes;)[Landroid/media/audio/common/AudioProfile;

    move-result-object p1

    .line 1833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1834
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1835
    goto/16 :goto_b10

    .line 1818
    :pswitch_f1
    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 1820
    sget-object p4, Landroid/media/audio/common/AudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/AudioConfig;

    .line 1821
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1822
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->getDirectPlaybackSupport(Landroid/media/audio/common/AudioAttributes;Landroid/media/audio/common/AudioConfig;)I

    move-result p1

    .line 1823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1824
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1825
    goto/16 :goto_b10

    .line 1804
    :pswitch_110
    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 1806
    sget-object p4, Landroid/media/audio/common/AudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/AudioConfig;

    .line 1808
    sget-object v0, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audio/common/AudioDevice;

    .line 1809
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1810
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IAudioPolicyService$Stub;->canBeSpatialized(Landroid/media/audio/common/AudioAttributes;Landroid/media/audio/common/AudioConfig;[Landroid/media/audio/common/AudioDevice;)Z

    move-result p1

    .line 1811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1812
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1813
    goto/16 :goto_b10

    .line 1794
    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/INativeSpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INativeSpatializerCallback;

    move-result-object p1

    .line 1795
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1796
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/GetSpatializerResponse;

    move-result-object p1

    .line 1797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1799
    goto/16 :goto_b10

    .line 1784
    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/ICaptureStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICaptureStateListener;

    move-result-object p1

    .line 1785
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1786
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->registerSoundTriggerCaptureStateListener(Landroid/media/ICaptureStateListener;)Z

    move-result p1

    .line 1787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1788
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1789
    goto/16 :goto_b10

    .line 1772
    :pswitch_165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1775
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1776
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->getDevicesForRoleAndCapturePreset(II)[Landroid/media/audio/common/AudioDevice;

    move-result-object p1

    .line 1777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1779
    goto/16 :goto_b10

    .line 1761
    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1764
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1765
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->clearDevicesRoleForCapturePreset(II)V

    .line 1766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    goto/16 :goto_b10

    .line 1748
    :pswitch_18f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1750
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1752
    sget-object v0, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audio/common/AudioDevice;

    .line 1753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1754
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IAudioPolicyService$Stub;->removeDevicesRoleForCapturePreset(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    goto/16 :goto_b10

    .line 1735
    :pswitch_1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1737
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1739
    sget-object v0, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audio/common/AudioDevice;

    .line 1740
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1741
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IAudioPolicyService$Stub;->addDevicesRoleForCapturePreset(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1742
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    goto/16 :goto_b10

    .line 1722
    :pswitch_1c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1724
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1726
    sget-object v0, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audio/common/AudioDevice;

    .line 1727
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1728
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IAudioPolicyService$Stub;->setDevicesRoleForCapturePreset(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1730
    goto/16 :goto_b10

    .line 1710
    :pswitch_1e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1713
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1714
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->getDevicesForRoleAndStrategy(II)[Landroid/media/audio/common/AudioDevice;

    move-result-object p1

    .line 1715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1716
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1717
    goto/16 :goto_b10

    .line 1699
    :pswitch_1f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1703
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->clearDevicesRoleForStrategy(II)V

    .line 1704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    goto/16 :goto_b10

    .line 1686
    :pswitch_20a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1690
    sget-object v0, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audio/common/AudioDevice;

    .line 1691
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1692
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IAudioPolicyService$Stub;->removeDevicesRoleForStrategy(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1694
    goto/16 :goto_b10

    .line 1673
    :pswitch_225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1675
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1677
    sget-object v0, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audio/common/AudioDevice;

    .line 1678
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1679
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IAudioPolicyService$Stub;->setDevicesRoleForStrategy(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1681
    goto/16 :goto_b10

    .line 1665
    :pswitch_240
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->isCallScreenModeSupported()Z

    move-result p1

    .line 1666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1667
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1668
    goto/16 :goto_b10

    .line 1657
    :pswitch_24c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1658
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1659
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->setRttEnabled(Z)V

    .line 1660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    goto/16 :goto_b10

    .line 1645
    :pswitch_25b
    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 1647
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1648
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1649
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->getVolumeGroupFromAudioAttributes(Landroid/media/audio/common/AudioAttributes;Z)I

    move-result p1

    .line 1650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1652
    goto/16 :goto_b10

    .line 1637
    :pswitch_276
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->listAudioVolumeGroups()[Landroid/media/AudioVolumeGroup;

    move-result-object p1

    .line 1638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1640
    goto/16 :goto_b10

    .line 1626
    :pswitch_282
    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 1628
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1629
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1630
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->getProductStrategyFromAudioAttributes(Landroid/media/audio/common/AudioAttributes;Z)I

    move-result p1

    .line 1631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1633
    goto/16 :goto_b10

    .line 1618
    :pswitch_29d
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->listAudioProductStrategies()[Landroid/media/AudioProductStrategy;

    move-result-object p1

    .line 1619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1621
    goto/16 :goto_b10

    .line 1609
    :pswitch_2a9
    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 1610
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1611
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getStreamTypeForAttributes(Landroid/media/audio/common/AudioAttributes;)I

    move-result p1

    .line 1612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    goto/16 :goto_b10

    .line 1599
    :pswitch_2c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1600
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1601
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getAttributesForStreamType(I)Landroid/media/audio/common/AudioAttributes;

    move-result-object p1

    .line 1602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1603
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1604
    goto/16 :goto_b10

    .line 1589
    :pswitch_2d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1590
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1591
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->isHotwordStreamSupported(Z)Z

    move-result p1

    .line 1592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1594
    goto/16 :goto_b10

    .line 1581
    :pswitch_2e6
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->isUltrasoundSupported()Z

    move-result p1

    .line 1582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1583
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1584
    goto/16 :goto_b10

    .line 1574
    :pswitch_2f2
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->isHapticPlaybackSupported()Z

    move-result p1

    .line 1575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1576
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1577
    goto/16 :goto_b10

    .line 1566
    :pswitch_2fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1567
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1568
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->setCurrentImeUid(I)V

    .line 1569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    goto/16 :goto_b10

    .line 1557
    :pswitch_30d
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1558
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1559
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->setA11yServicesUids([I)V

    .line 1560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    goto/16 :goto_b10

    .line 1548
    :pswitch_31c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1549
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1550
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->setActiveAssistantServicesUids([I)V

    .line 1551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    goto/16 :goto_b10

    .line 1539
    :pswitch_32b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1540
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1541
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->setAssistantServicesUids([I)V

    .line 1542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    goto/16 :goto_b10

    .line 1528
    :pswitch_33a
    sget-object p1, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioFormatDescription;

    .line 1530
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1531
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1532
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->setSurroundFormatEnabled(Landroid/media/audio/common/AudioFormatDescription;Z)V

    .line 1533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    goto/16 :goto_b10

    .line 1518
    :pswitch_351
    sget-object p1, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioDeviceDescription;

    .line 1519
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1520
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getHwOffloadFormatsSupportedForBluetoothMedia(Landroid/media/audio/common/AudioDeviceDescription;)[Landroid/media/audio/common/AudioFormatDescription;

    move-result-object p1

    .line 1521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1523
    goto/16 :goto_b10

    .line 1498
    :pswitch_368
    sget-object p1, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/Int;

    .line 1500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1501
    if-gt p4, v3, :cond_38c

    .line 1503
    if-gez p4, :cond_379

    .line 1504
    goto :goto_37b

    .line 1506
    :cond_379
    new-array v0, p4, [Landroid/media/audio/common/AudioFormatDescription;

    .line 1508
    :goto_37b
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1509
    invoke-virtual {p0, p1, v0}, Landroid/media/IAudioPolicyService$Stub;->getReportedSurroundFormats(Landroid/media/audio/common/Int;[Landroid/media/audio/common/AudioFormatDescription;)V

    .line 1510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1512
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1513
    goto/16 :goto_b10

    .line 1502
    :cond_38c
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1468
    :pswitch_3a3
    sget-object p1, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/Int;

    .line 1470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1471
    if-gt p4, v3, :cond_3ed

    .line 1473
    if-gez p4, :cond_3b5

    .line 1474
    move-object p4, v0

    goto :goto_3b7

    .line 1476
    :cond_3b5
    new-array p4, p4, [Landroid/media/audio/common/AudioFormatDescription;

    .line 1479
    :goto_3b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1480
    if-gt v4, v3, :cond_3d6

    .line 1482
    if-gez v4, :cond_3c0

    .line 1483
    goto :goto_3c2

    .line 1485
    :cond_3c0
    new-array v0, v4, [Z

    .line 1487
    :goto_3c2
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1488
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IAudioPolicyService$Stub;->getSurroundFormats(Landroid/media/audio/common/Int;[Landroid/media/audio/common/AudioFormatDescription;[Z)V

    .line 1489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1491
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1492
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 1493
    goto/16 :goto_b10

    .line 1481
    :cond_3d6
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1472
    :cond_3ed
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1454
    :pswitch_404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1458
    sget-object v0, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audio/common/AudioDeviceDescription;

    .line 1459
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1460
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IAudioPolicyService$Stub;->getStreamVolumeDB(IILandroid/media/audio/common/AudioDeviceDescription;)F

    move-result p1

    .line 1461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1463
    goto/16 :goto_b10

    .line 1446
    :pswitch_423
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->getMasterMono()Z

    move-result p1

    .line 1447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1449
    goto/16 :goto_b10

    .line 1438
    :pswitch_42f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1439
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1440
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->setMasterMono(Z)V

    .line 1441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    goto/16 :goto_b10

    .line 1429
    :pswitch_43e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1430
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1431
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->stopAudioSource(I)V

    .line 1432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    goto/16 :goto_b10

    .line 1417
    :pswitch_44d
    sget-object p1, Landroid/media/AudioPortConfigFw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioPortConfigFw;

    .line 1419
    sget-object p4, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/AudioAttributes;

    .line 1420
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1421
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->startAudioSource(Landroid/media/AudioPortConfigFw;Landroid/media/audio/common/AudioAttributes;)I

    move-result p1

    .line 1422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1423
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1424
    goto/16 :goto_b10

    .line 1408
    :pswitch_46c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1409
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1410
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->removeUserIdDeviceAffinities(I)V

    .line 1411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    goto/16 :goto_b10

    .line 1397
    :pswitch_47b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1399
    sget-object p4, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/media/audio/common/AudioDevice;

    .line 1400
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1401
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->setUserIdDeviceAffinities(I[Landroid/media/audio/common/AudioDevice;)V

    .line 1402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    goto/16 :goto_b10

    .line 1388
    :pswitch_492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1389
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1390
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->removeUidDeviceAffinities(I)V

    .line 1391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    goto/16 :goto_b10

    .line 1377
    :pswitch_4a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1379
    sget-object p4, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/media/audio/common/AudioDevice;

    .line 1380
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1381
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->setUidDeviceAffinities(I[Landroid/media/audio/common/AudioDevice;)V

    .line 1382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    goto/16 :goto_b10

    .line 1368
    :pswitch_4b8
    sget-object p1, Landroid/media/AudioMixUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/AudioMixUpdate;

    .line 1369
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1370
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->updatePolicyMixes([Landroid/media/AudioMixUpdate;)V

    .line 1371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    goto/16 :goto_b10

    .line 1360
    :pswitch_4cb
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->getRegisteredPolicyMixes()Ljava/util/List;

    move-result-object p1

    .line 1361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1363
    goto/16 :goto_b10

    .line 1350
    :pswitch_4d7
    sget-object p1, Landroid/media/AudioMix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/AudioMix;

    .line 1352
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->registerPolicyMixes([Landroid/media/AudioMix;Z)V

    .line 1355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    goto/16 :goto_b10

    .line 1342
    :pswitch_4ee
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->getPhoneState()I

    move-result p1

    .line 1343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    goto/16 :goto_b10

    .line 1334
    :pswitch_4fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1335
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1336
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->releaseSoundTriggerSession(I)V

    .line 1337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    goto/16 :goto_b10

    .line 1326
    :pswitch_509
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->acquireSoundTriggerSession()Landroid/media/SoundTriggerSession;

    move-result-object p1

    .line 1327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1329
    goto/16 :goto_b10

    .line 1318
    :pswitch_515
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1319
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1320
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->setAudioVolumeGroupCallbacksEnabled(Z)V

    .line 1321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    goto/16 :goto_b10

    .line 1309
    :pswitch_524
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1311
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->setAudioPortCallbacksEnabled(Z)V

    .line 1312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    goto/16 :goto_b10

    .line 1300
    :pswitch_533
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/IAudioPolicyServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioPolicyServiceClient;

    move-result-object p1

    .line 1301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1302
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->registerClient(Landroid/media/IAudioPolicyServiceClient;)V

    .line 1303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    goto/16 :goto_b10

    .line 1291
    :pswitch_546
    sget-object p1, Landroid/media/AudioPortConfigFw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioPortConfigFw;

    .line 1292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1293
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->setAudioPortConfig(Landroid/media/AudioPortConfigFw;)V

    .line 1294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    goto/16 :goto_b10

    .line 1270
    :pswitch_559
    sget-object p1, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/Int;

    .line 1272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1273
    if-gt p4, v3, :cond_581

    .line 1275
    if-gez p4, :cond_56a

    .line 1276
    goto :goto_56c

    .line 1278
    :cond_56a
    new-array v0, p4, [Landroid/media/AudioPatchFw;

    .line 1280
    :goto_56c
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1281
    invoke-virtual {p0, p1, v0}, Landroid/media/IAudioPolicyService$Stub;->listAudioPatches(Landroid/media/audio/common/Int;[Landroid/media/AudioPatchFw;)I

    move-result p2

    .line 1282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1285
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1286
    goto/16 :goto_b10

    .line 1274
    :cond_581
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1261
    :pswitch_598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1263
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->releaseAudioPatch(I)V

    .line 1264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    goto/16 :goto_b10

    .line 1249
    :pswitch_5a7
    sget-object p1, Landroid/media/AudioPatchFw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioPatchFw;

    .line 1251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1253
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->createAudioPatch(Landroid/media/AudioPatchFw;I)I

    move-result p1

    .line 1254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    goto/16 :goto_b10

    .line 1239
    :pswitch_5c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1241
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getAudioPort(I)Landroid/media/AudioPortFw;

    move-result-object p1

    .line 1242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1244
    goto/16 :goto_b10

    .line 1229
    :pswitch_5d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1231
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->listDeclaredDevicePorts(I)[Landroid/media/AudioPortFw;

    move-result-object p1

    .line 1232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1234
    goto/16 :goto_b10

    .line 1204
    :pswitch_5e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1208
    sget-object v4, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audio/common/Int;

    .line 1210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1211
    if-gt v5, v3, :cond_618

    .line 1213
    if-gez v5, :cond_601

    .line 1214
    goto :goto_603

    .line 1216
    :cond_601
    new-array v0, v5, [Landroid/media/AudioPortFw;

    .line 1218
    :goto_603
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1219
    invoke-virtual {p0, p1, p4, v4, v0}, Landroid/media/IAudioPolicyService$Stub;->listAudioPorts(IILandroid/media/audio/common/Int;[Landroid/media/AudioPortFw;)I

    move-result p1

    .line 1220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1223
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1224
    goto/16 :goto_b10

    .line 1212
    :cond_618
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1192
    :pswitch_62f
    sget-object p1, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioConfigBase;

    .line 1194
    sget-object p4, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/AudioAttributes;

    .line 1195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->isDirectOutputSupported(Landroid/media/audio/common/AudioConfigBase;Landroid/media/audio/common/AudioAttributes;)Z

    move-result p1

    .line 1197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1199
    goto/16 :goto_b10

    .line 1182
    :pswitch_64e
    sget-object p1, Landroid/media/audio/common/AudioOffloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioOffloadInfo;

    .line 1183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1184
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getOffloadSupport(Landroid/media/audio/common/AudioOffloadInfo;)I

    move-result p1

    .line 1185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    goto/16 :goto_b10

    .line 1171
    :pswitch_665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->setAllowedCapturePolicy(II)V

    .line 1176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    goto/16 :goto_b10

    .line 1162
    :pswitch_678
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1164
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->setSupportedSystemUsages([I)V

    .line 1165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    goto/16 :goto_b10

    .line 1153
    :pswitch_687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->removeStreamDefaultEffect(I)V

    .line 1156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    goto/16 :goto_b10

    .line 1144
    :pswitch_696
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->removeSourceDefaultEffect(I)V

    .line 1147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    goto/16 :goto_b10

    .line 1126
    :pswitch_6a5
    sget-object p1, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/media/audio/common/AudioUuid;

    .line 1128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1130
    sget-object p1, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/media/audio/common/AudioUuid;

    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1136
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/media/IAudioPolicyService$Stub;->addStreamDefaultEffect(Landroid/media/audio/common/AudioUuid;Ljava/lang/String;Landroid/media/audio/common/AudioUuid;II)I

    move-result p1

    .line 1137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    goto/16 :goto_b10

    .line 1108
    :pswitch_6d3
    sget-object p1, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/media/audio/common/AudioUuid;

    .line 1110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1112
    sget-object p1, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/media/audio/common/AudioUuid;

    .line 1114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1118
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/media/IAudioPolicyService$Stub;->addSourceDefaultEffect(Landroid/media/audio/common/AudioUuid;Ljava/lang/String;Landroid/media/audio/common/AudioUuid;II)I

    move-result p1

    .line 1119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    goto/16 :goto_b10

    .line 1095
    :pswitch_701
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1097
    sget-object p4, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/Int;

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->queryDefaultPreProcessing(ILandroid/media/audio/common/Int;)[Landroid/media/EffectDescriptor;

    move-result-object p1

    .line 1100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1102
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1103
    goto/16 :goto_b10

    .line 1085
    :pswitch_720
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1086
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->isSourceActive(I)Z

    move-result p1

    .line 1088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1090
    goto/16 :goto_b10

    .line 1073
    :pswitch_734
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1076
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->isStreamActiveRemotely(II)Z

    move-result p1

    .line 1078
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1080
    goto/16 :goto_b10

    .line 1061
    :pswitch_74c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1063
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1064
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->isStreamActive(II)Z

    move-result p1

    .line 1066
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1068
    goto/16 :goto_b10

    .line 1050
    :pswitch_764
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1052
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->moveEffectsToIo([II)V

    .line 1055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    goto/16 :goto_b10

    .line 1039
    :pswitch_778
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1041
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1042
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->setEffectEnabled(IZ)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    goto/16 :goto_b10

    .line 1030
    :pswitch_78c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->unregisterEffect(I)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    goto/16 :goto_b10

    .line 1013
    :pswitch_79c
    move-object v2, p0

    sget-object p1, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/media/EffectDescriptor;

    .line 1015
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1021
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    invoke-virtual/range {v2 .. v7}, Landroid/media/IAudioPolicyService$Stub;->registerEffect(Landroid/media/EffectDescriptor;IIII)V

    .line 1024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    goto/16 :goto_b10

    .line 1003
    :pswitch_7c1
    move-object v2, p0

    sget-object p1, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/EffectDescriptor;

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getOutputForEffect(Landroid/media/EffectDescriptor;)I

    move-result p1

    .line 1006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    goto/16 :goto_b10

    .line 991
    :pswitch_7d9
    move-object v2, p0

    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 994
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->getDevicesForAttributes(Landroid/media/audio/common/AudioAttributes;Z)[Landroid/media/audio/common/AudioDevice;

    move-result-object p1

    .line 996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 998
    goto/16 :goto_b10

    .line 981
    :pswitch_7f5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getStrategyForStream(I)I

    move-result p1

    .line 984
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    goto/16 :goto_b10

    .line 970
    :pswitch_809
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->setMinVolumeIndexForGroup(II)V

    .line 975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    goto/16 :goto_b10

    .line 959
    :pswitch_81d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->setMaxVolumeIndexForGroup(II)V

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    goto/16 :goto_b10

    .line 949
    :pswitch_831
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 950
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 951
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getMinVolumeIndexForGroup(I)I

    move-result p1

    .line 952
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    goto/16 :goto_b10

    .line 939
    :pswitch_845
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getMaxVolumeIndexForGroup(I)I

    move-result p1

    .line 942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    goto/16 :goto_b10

    .line 927
    :pswitch_859
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 929
    sget-object p4, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/AudioDeviceDescription;

    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->getVolumeIndexForGroup(ILandroid/media/audio/common/AudioDeviceDescription;)I

    move-result p1

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    goto/16 :goto_b10

    .line 912
    :pswitch_875
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 914
    sget-object p4, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/AudioDeviceDescription;

    .line 916
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 920
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/media/IAudioPolicyService$Stub;->setVolumeIndexForGroup(ILandroid/media/audio/common/AudioDeviceDescription;IZ)V

    .line 921
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    goto/16 :goto_b10

    .line 902
    :pswitch_895
    move-object v2, p0

    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getMinVolumeIndexForAttributes(Landroid/media/audio/common/AudioAttributes;)I

    move-result p1

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    goto/16 :goto_b10

    .line 892
    :pswitch_8ad
    move-object v2, p0

    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getMaxVolumeIndexForAttributes(Landroid/media/audio/common/AudioAttributes;)I

    move-result p1

    .line 895
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    goto/16 :goto_b10

    .line 880
    :pswitch_8c5
    move-object v2, p0

    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 882
    sget-object p4, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/AudioDeviceDescription;

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->getVolumeIndexForAttributes(Landroid/media/audio/common/AudioAttributes;Landroid/media/audio/common/AudioDeviceDescription;)I

    move-result p1

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    goto/16 :goto_b10

    .line 865
    :pswitch_8e5
    move-object v2, p0

    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioAttributes;

    .line 867
    sget-object p4, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/AudioDeviceDescription;

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/media/IAudioPolicyService$Stub;->setVolumeIndexForAttributes(Landroid/media/audio/common/AudioAttributes;Landroid/media/audio/common/AudioDeviceDescription;IZ)V

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    goto/16 :goto_b10

    .line 853
    :pswitch_909
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 855
    sget-object p4, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/AudioDeviceDescription;

    .line 856
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->getStreamVolumeIndex(ILandroid/media/audio/common/AudioDeviceDescription;)I

    move-result p1

    .line 858
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    goto/16 :goto_b10

    .line 838
    :pswitch_925
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 840
    sget-object p4, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/AudioDeviceDescription;

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/media/IAudioPolicyService$Stub;->setStreamVolumeIndex(ILandroid/media/audio/common/AudioDeviceDescription;IZ)V

    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    goto/16 :goto_b10

    .line 825
    :pswitch_945
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 831
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IAudioPolicyService$Stub;->initStreamVolume(III)V

    .line 832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    goto/16 :goto_b10

    .line 812
    :pswitch_95d
    move-object v2, p0

    sget-object p1, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioDevice;

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IAudioPolicyService$Stub;->setDeviceAbsoluteVolumeEnabled(Landroid/media/audio/common/AudioDevice;ZI)V

    .line 819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    goto/16 :goto_b10

    .line 803
    :pswitch_979
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->releaseInput(I)V

    .line 806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    goto/16 :goto_b10

    .line 794
    :pswitch_989
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->stopInput(I)V

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    goto/16 :goto_b10

    .line 785
    :pswitch_999
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->startInput(I)V

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    goto/16 :goto_b10

    .line 761
    :pswitch_9a9
    move-object v2, p0

    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/media/audio/common/AudioAttributes;

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 769
    sget-object p1, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/content/AttributionSourceState;

    .line 771
    sget-object p1, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/media/audio/common/AudioConfigBase;

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual/range {v2 .. v10}, Landroid/media/IAudioPolicyService$Stub;->getInputForAttr(Landroid/media/audio/common/AudioAttributes;IIILandroid/content/AttributionSourceState;Landroid/media/audio/common/AudioConfigBase;II)Landroid/media/GetInputForAttrResponse;

    move-result-object p1

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 780
    goto/16 :goto_b10

    .line 752
    :pswitch_9e8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->forceReleaseDirectOutput(I)V

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    goto/16 :goto_b10

    .line 743
    :pswitch_9f8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->releaseOutput(I)V

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    goto/16 :goto_b10

    .line 734
    :pswitch_a08
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->stopOutput(I)V

    .line 737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    goto/16 :goto_b10

    .line 724
    :pswitch_a18
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->startOutput(I)Landroid/media/StartOutputResponse;

    move-result-object p1

    .line 727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 729
    goto/16 :goto_b10

    .line 704
    :pswitch_a2c
    move-object v2, p0

    sget-object p1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/media/audio/common/AudioAttributes;

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 708
    sget-object p1, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/content/AttributionSourceState;

    .line 710
    sget-object p1, Landroid/media/audio/common/AudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/media/audio/common/AudioConfig;

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual/range {v2 .. v8}, Landroid/media/IAudioPolicyService$Stub;->getOutputForAttr(Landroid/media/audio/common/AudioAttributes;ILandroid/content/AttributionSourceState;Landroid/media/audio/common/AudioConfig;I[I)Landroid/media/GetOutputForAttrResponse;

    move-result-object p1

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 719
    goto/16 :goto_b10

    .line 694
    :pswitch_a63
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getOutput(I)I

    move-result p1

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    goto/16 :goto_b10

    .line 684
    :pswitch_a77
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getForceUse(I)I

    move-result p1

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    goto/16 :goto_b10

    .line 673
    :pswitch_a8b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->setForceUse(II)V

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    goto/16 :goto_b10

    .line 662
    :pswitch_a9f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, p1, p4}, Landroid/media/IAudioPolicyService$Stub;->setPhoneState(II)V

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    goto :goto_b10

    .line 649
    :pswitch_ab2
    move-object v2, p0

    sget-object p1, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioDevice;

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 653
    sget-object v0, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audio/common/AudioFormatDescription;

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IAudioPolicyService$Stub;->handleDeviceConfigChange(Landroid/media/audio/common/AudioDevice;Ljava/lang/String;Landroid/media/audio/common/AudioFormatDescription;)V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    goto :goto_b10

    .line 639
    :pswitch_ad1
    move-object v2, p0

    sget-object p1, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/audio/common/AudioDevice;

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {p0, p1}, Landroid/media/IAudioPolicyService$Stub;->getDeviceConnectionState(Landroid/media/audio/common/AudioDevice;)I

    move-result p1

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    goto :goto_b10

    .line 624
    :pswitch_ae8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 626
    sget-object p4, Landroid/media/audio/common/AudioPort;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/audio/common/AudioPort;

    .line 628
    sget-object v0, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audio/common/AudioFormatDescription;

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/media/IAudioPolicyService$Stub;->setDeviceConnectionState(ILandroid/media/audio/common/AudioPort;Landroid/media/audio/common/AudioFormatDescription;Z)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto :goto_b10

    .line 618
    :pswitch_b0b
    move-object v2, p0

    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->onNewAudioModulesAvailable()V

    .line 619
    nop

    .line 1930
    :goto_b10
    return v1

    nop

    :pswitch_data_b12
    .packed-switch 0x1
        :pswitch_b0b
        :pswitch_ae8
        :pswitch_ad1
        :pswitch_ab2
        :pswitch_a9f
        :pswitch_a8b
        :pswitch_a77
        :pswitch_a63
        :pswitch_a2c
        :pswitch_a18
        :pswitch_a08
        :pswitch_9f8
        :pswitch_9e8
        :pswitch_9a9
        :pswitch_999
        :pswitch_989
        :pswitch_979
        :pswitch_95d
        :pswitch_945
        :pswitch_925
        :pswitch_909
        :pswitch_8e5
        :pswitch_8c5
        :pswitch_8ad
        :pswitch_895
        :pswitch_875
        :pswitch_859
        :pswitch_845
        :pswitch_831
        :pswitch_81d
        :pswitch_809
        :pswitch_7f5
        :pswitch_7d9
        :pswitch_7c1
        :pswitch_79c
        :pswitch_78c
        :pswitch_778
        :pswitch_764
        :pswitch_74c
        :pswitch_734
        :pswitch_720
        :pswitch_701
        :pswitch_6d3
        :pswitch_6a5
        :pswitch_696
        :pswitch_687
        :pswitch_678
        :pswitch_665
        :pswitch_64e
        :pswitch_62f
        :pswitch_5e8
        :pswitch_5d5
        :pswitch_5c2
        :pswitch_5a7
        :pswitch_598
        :pswitch_559
        :pswitch_546
        :pswitch_533
        :pswitch_524
        :pswitch_515
        :pswitch_509
        :pswitch_4fa
        :pswitch_4ee
        :pswitch_4d7
        :pswitch_4cb
        :pswitch_4b8
        :pswitch_4a1
        :pswitch_492
        :pswitch_47b
        :pswitch_46c
        :pswitch_44d
        :pswitch_43e
        :pswitch_42f
        :pswitch_423
        :pswitch_404
        :pswitch_3a3
        :pswitch_368
        :pswitch_351
        :pswitch_33a
        :pswitch_32b
        :pswitch_31c
        :pswitch_30d
        :pswitch_2fe
        :pswitch_2f2
        :pswitch_2e6
        :pswitch_2d3
        :pswitch_2c0
        :pswitch_2a9
        :pswitch_29d
        :pswitch_282
        :pswitch_276
        :pswitch_25b
        :pswitch_24c
        :pswitch_240
        :pswitch_225
        :pswitch_20a
        :pswitch_1f7
        :pswitch_1e0
        :pswitch_1c5
        :pswitch_1aa
        :pswitch_18f
        :pswitch_17c
        :pswitch_165
        :pswitch_14e
        :pswitch_137
        :pswitch_110
        :pswitch_f1
        :pswitch_da
        :pswitch_c7
        :pswitch_a4
        :pswitch_89
        :pswitch_6e
        :pswitch_62
        :pswitch_4f
        :pswitch_35
        :pswitch_26
    .end packed-switch
.end method
