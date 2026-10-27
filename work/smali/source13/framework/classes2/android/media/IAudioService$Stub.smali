.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final greylist-max-o TRANSACTION_abandonAudioFocus:I = 0x3e

.field static final blacklist TRANSACTION_abandonAudioFocusForTest:I = 0x9c

.field static final blacklist TRANSACTION_addAssistantServicesUids:I = 0xca

.field static final greylist-max-o TRANSACTION_addMixForPolicy:I = 0x56

.field static final blacklist TRANSACTION_addSpatializerCompatibleAudioDevice:I = 0xb2

.field static final greylist-max-o TRANSACTION_adjustStreamVolume:I = 0x9

.field static final blacklist TRANSACTION_adjustStreamVolumeForUid:I = 0x8a

.field static final blacklist TRANSACTION_adjustStreamVolumeWithAttribution:I = 0xa

.field static final blacklist TRANSACTION_adjustSuggestedStreamVolumeForUid:I = 0x8b

.field static final blacklist TRANSACTION_areNavigationRepeatSoundEffectsEnabled:I = 0x94

.field static final blacklist TRANSACTION_cacheParameters:I = 0x84

.field static final blacklist TRANSACTION_canBeSpatialized:I = 0xaa

.field static final blacklist TRANSACTION_cancelMuteAwaitConnection:I = 0xc3

.field static final blacklist TRANSACTION_clearPreferredDevicesForCapturePreset:I = 0x86

.field static final blacklist TRANSACTION_createAudioRecordForLoopback:I = 0x7f

.field static final blacklist TRANSACTION_createAudioRecordForLoopbackWithClient:I = 0x80

.field static final greylist-max-o TRANSACTION_disableSafeMediaVolume:I = 0x50

.field static final greylist-max-o TRANSACTION_dispatchFocusChange:I = 0x62

.field static final greylist-max-o TRANSACTION_forceRemoteSubmixFullVolume:I = 0xf

.field static final greylist-max-o TRANSACTION_forceVolumeControlStream:I = 0x44

.field static final blacklist TRANSACTION_getActiveAssistantServiceUids:I = 0xce

.field static final greylist-max-o TRANSACTION_getActivePlaybackConfigurations:I = 0x60

.field static final greylist-max-o TRANSACTION_getActiveRecordingConfigurations:I = 0x5d

.field static final blacklist TRANSACTION_getActualHeadTrackingMode:I = 0xb7

.field static final blacklist TRANSACTION_getAdditionalOutputDeviceDelay:I = 0x99

.field static final blacklist TRANSACTION_getAllowedCapturePolicy:I = 0x75

.field static final blacklist TRANSACTION_getAssistantServicesUids:I = 0xcd

.field static final blacklist TRANSACTION_getAudioPolicyMatchUids:I = 0x81

.field static final blacklist TRANSACTION_getAudioProductStrategies:I = 0x1d

.field static final blacklist TRANSACTION_getAudioVolumeGroups:I = 0x15

.field static final blacklist TRANSACTION_getAvailableCommunicationDeviceIds:I = 0x8f

.field static final blacklist TRANSACTION_getCommunicationDevice:I = 0x91

.field static final greylist-max-o TRANSACTION_getCurrentAudioFocus:I = 0x40

.field static final blacklist TRANSACTION_getDefaultVolumeInfo:I = 0xc0

.field static final blacklist TRANSACTION_getDesiredHeadTrackingMode:I = 0xb5

.field static final blacklist TRANSACTION_getDeviceMaskForStream:I = 0x8e

.field static final blacklist TRANSACTION_getDeviceStreamVolume:I = 0x7e

.field static final blacklist TRANSACTION_getDeviceVolumeBehavior:I = 0x7a

.field static final blacklist TRANSACTION_getDevicesForAttributes:I = 0x72

.field static final blacklist TRANSACTION_getDevicesForAttributesUnprotected:I = 0x73

.field static final blacklist TRANSACTION_getEncodedSurroundMode:I = 0x36

.field static final blacklist TRANSACTION_getFadeOutDurationOnFocusLossMillis:I = 0x9d

.field static final greylist-max-o TRANSACTION_getFocusRampTimeMs:I = 0x61

.field static final blacklist TRANSACTION_getFocusStack:I = 0xc8

.field static final blacklist TRANSACTION_getHalVersion:I = 0xd0

.field static final greylist-max-o TRANSACTION_getLastAudibleStreamVolume:I = 0x1a

.field static final blacklist TRANSACTION_getMaxAdditionalOutputDeviceDelay:I = 0x9a

.field static final blacklist TRANSACTION_getMaxVolumeIndexForAttributes:I = 0x18

.field static final blacklist TRANSACTION_getMinVolumeIndexForAttributes:I = 0x19

.field static final greylist-max-o TRANSACTION_getMode:I = 0x2b

.field static final blacklist TRANSACTION_getMutingExpectedDevice:I = 0xc4

.field static final blacklist TRANSACTION_getNotificationUri:I = 0x7d

.field static final blacklist TRANSACTION_getPlayerVolume:I = 0x7c

.field static final blacklist TRANSACTION_getPreferredDevicesForCapturePreset:I = 0x87

.field static final blacklist TRANSACTION_getPreferredDevicesForStrategy:I = 0x71

.field static final blacklist TRANSACTION_getReportedSurroundFormats:I = 0x32

.field static final greylist-max-o TRANSACTION_getRingerModeExternal:I = 0x24

.field static final greylist-max-o TRANSACTION_getRingerModeInternal:I = 0x25

.field static final greylist-max-o TRANSACTION_getRingtonePlayer:I = 0x46

.field static final blacklist TRANSACTION_getSpatializerCompatibleAudioDevices:I = 0xb1

.field static final blacklist TRANSACTION_getSpatializerImmersiveAudioLevel:I = 0xa0

.field static final blacklist TRANSACTION_getSpatializerOutput:I = 0xbc

.field static final blacklist TRANSACTION_getSpatializerParameter:I = 0xbb

.field static final greylist-max-o TRANSACTION_getStreamMaxVolume:I = 0x14

.field static final greylist-max-o TRANSACTION_getStreamMinVolume:I = 0x13

.field static final greylist-max-o TRANSACTION_getStreamVolume:I = 0x12

.field static final blacklist TRANSACTION_getSupportedHeadTrackingModes:I = 0xb6

.field static final blacklist TRANSACTION_getSupportedSystemUsages:I = 0x1c

.field static final blacklist TRANSACTION_getSurroundFormats:I = 0x31

.field static final greylist-max-o TRANSACTION_getUiSoundsStreamType:I = 0x47

.field static final greylist-max-o TRANSACTION_getVibrateSetting:I = 0x28

.field static final blacklist TRANSACTION_getVolumeIndexForAttributes:I = 0x17

.field static final blacklist TRANSACTION_handleBluetoothA2dpActiveDeviceChange:I = 0x49

.field static final blacklist TRANSACTION_handleBluetoothActiveDeviceChanged:I = 0x64

.field static final blacklist TRANSACTION_handleVolumeKey:I = 0xd

.field static final blacklist TRANSACTION_hasHapticChannels:I = 0x6d

.field static final blacklist TRANSACTION_hasHeadTracker:I = 0xa4

.field static final blacklist TRANSACTION_hasRegisteredDynamicPolicy:I = 0x5a

.field static final greylist-max-o TRANSACTION_isAudioServerRunning:I = 0x68

.field static final greylist-max-o TRANSACTION_isBluetoothA2dpOn:I = 0x3c

.field static final greylist-max-o TRANSACTION_isBluetoothScoOn:I = 0x3a

.field static final blacklist TRANSACTION_isCallScreeningModeSupported:I = 0x6e

.field static final greylist-max-o TRANSACTION_isCameraSoundForced:I = 0x4b

.field static final greylist-max-o TRANSACTION_isHdmiSystemAudioSupported:I = 0x52

.field static final blacklist TRANSACTION_isHeadTrackerAvailable:I = 0xa7

.field static final blacklist TRANSACTION_isHeadTrackerEnabled:I = 0xa6

.field static final blacklist TRANSACTION_isHomeSoundEffectEnabled:I = 0x96

.field static final greylist-max-o TRANSACTION_isMasterMute:I = 0x10

.field static final blacklist TRANSACTION_isMiBLEConnect:I = 0x82

.field static final blacklist TRANSACTION_isMicrophoneMuted:I = 0x1e

.field static final blacklist TRANSACTION_isMusicActive:I = 0x8d

.field static final blacklist TRANSACTION_isPstnCallAudioInterceptable:I = 0xc1

.field static final blacklist TRANSACTION_isSpatializerAvailable:I = 0xa2

.field static final blacklist TRANSACTION_isSpatializerAvailableForDevice:I = 0xa3

.field static final blacklist TRANSACTION_isSpatializerEnabled:I = 0xa1

.field static final greylist-max-o TRANSACTION_isSpeakerphoneOn:I = 0x38

.field static final greylist-max-o TRANSACTION_isStreamAffectedByMute:I = 0x4f

.field static final greylist-max-o TRANSACTION_isStreamAffectedByRingerMode:I = 0x4e

.field static final greylist-max-o TRANSACTION_isStreamMute:I = 0xe

.field static final blacklist TRANSACTION_isSurroundFormatEnabled:I = 0x34

.field static final blacklist TRANSACTION_isUltrasoundSupported:I = 0x1f

.field static final greylist-max-o TRANSACTION_isValidRingerMode:I = 0x26

.field static final blacklist TRANSACTION_isVolumeFixed:I = 0xbf

.field static final greylist-max-o TRANSACTION_loadSoundEffects:I = 0x2e

.field static final blacklist TRANSACTION_muteAwaitConnection:I = 0xc2

.field static final greylist-max-o TRANSACTION_notifyVolumeControllerVisible:I = 0x4d

.field static final greylist-max-o TRANSACTION_playSoundEffect:I = 0x2c

.field static final greylist-max-o TRANSACTION_playSoundEffectVolume:I = 0x2d

.field static final greylist-max-o TRANSACTION_playerAttributes:I = 0x2

.field static final greylist-max-o TRANSACTION_playerEvent:I = 0x3

.field static final greylist-max-o TRANSACTION_playerHasOpPlayAudio:I = 0x63

.field static final blacklist TRANSACTION_playerSessionId:I = 0x8

.field static final blacklist TRANSACTION_recenterHeadTracker:I = 0xb9

.field static final blacklist TRANSACTION_recorderEvent:I = 0x6

.field static final greylist-max-o TRANSACTION_registerAudioPolicy:I = 0x53

.field static final greylist-max-o TRANSACTION_registerAudioServerStateDispatcher:I = 0x66

.field static final blacklist TRANSACTION_registerCapturePresetDevicesRoleDispatcher:I = 0x88

.field static final blacklist TRANSACTION_registerCommunicationDeviceDispatcher:I = 0x92

.field static final blacklist TRANSACTION_registerDeviceVolumeBehaviorDispatcher:I = 0xc7

.field static final blacklist TRANSACTION_registerDeviceVolumeDispatcherForAbsoluteVolume:I = 0xcf

.field static final blacklist TRANSACTION_registerHeadToSoundstagePoseCallback:I = 0xaf

.field static final blacklist TRANSACTION_registerModeDispatcher:I = 0x9e

.field static final blacklist TRANSACTION_registerMuteAwaitConnectionDispatcher:I = 0xc5

.field static final greylist-max-o TRANSACTION_registerPlaybackCallback:I = 0x5e

.field static final greylist-max-o TRANSACTION_registerRecordingCallback:I = 0x5b

.field static final blacklist TRANSACTION_registerSpatializerCallback:I = 0xab

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackerAvailableCallback:I = 0xa8

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackingCallback:I = 0xad

.field static final blacklist TRANSACTION_registerSpatializerOutputCallback:I = 0xbd

.field static final blacklist TRANSACTION_registerStrategyPreferredDevicesDispatcher:I = 0x76

.field static final greylist-max-o TRANSACTION_releasePlayer:I = 0x4

.field static final blacklist TRANSACTION_releaseRecorder:I = 0x7

.field static final greylist-max-o TRANSACTION_reloadAudioSettings:I = 0x30

.field static final blacklist TRANSACTION_removeAssistantServicesUids:I = 0xcb

.field static final greylist-max-o TRANSACTION_removeMixForPolicy:I = 0x57

.field static final blacklist TRANSACTION_removePreferredDevicesForStrategy:I = 0x70

.field static final blacklist TRANSACTION_removeSpatializerCompatibleAudioDevice:I = 0xb3

.field static final blacklist TRANSACTION_removeUidDeviceAffinity:I = 0x6a

.field static final blacklist TRANSACTION_removeUserIdDeviceAffinity:I = 0x6c

.field static final greylist-max-o TRANSACTION_requestAudioFocus:I = 0x3d

.field static final blacklist TRANSACTION_requestAudioFocusForTest:I = 0x9b

.field static final blacklist TRANSACTION_sendFocusLoss:I = 0xc9

.field static final blacklist TRANSACTION_setActiveAssistantServiceUids:I = 0xcc

.field static final blacklist TRANSACTION_setAdditionalOutputDeviceDelay:I = 0x98

.field static final blacklist TRANSACTION_setAllowedCapturePolicy:I = 0x74

.field static final greylist-max-o TRANSACTION_setBluetoothA2dpOn:I = 0x3b

.field static final greylist-max-o TRANSACTION_setBluetoothScoOn:I = 0x39

.field static final blacklist TRANSACTION_setCommunicationDevice:I = 0x90

.field static final blacklist TRANSACTION_setDesiredHeadTrackingMode:I = 0xb4

.field static final blacklist TRANSACTION_setDeviceVolumeBehavior:I = 0x79

.field static final blacklist TRANSACTION_setEncodedSurroundMode:I = 0x35

.field static final greylist-max-o TRANSACTION_setFocusPropertiesForPolicy:I = 0x58

.field static final greylist-max-o TRANSACTION_setFocusRequestResultFromExtPolicy:I = 0x65

.field static final greylist-max-o TRANSACTION_setHdmiSystemAudioSupported:I = 0x51

.field static final blacklist TRANSACTION_setHeadTrackerEnabled:I = 0xa5

.field static final blacklist TRANSACTION_setHomeSoundEffectEnabled:I = 0x97

.field static final greylist-max-o TRANSACTION_setMasterMute:I = 0x11

.field static final greylist-max-o TRANSACTION_setMicrophoneMute:I = 0x20

.field static final blacklist TRANSACTION_setMicrophoneMuteFromSwitch:I = 0x21

.field static final greylist-max-o TRANSACTION_setMode:I = 0x2a

.field static final blacklist TRANSACTION_setMultiAudioFocusEnabled:I = 0x83

.field static final blacklist TRANSACTION_setNavigationRepeatSoundEffectsEnabled:I = 0x95

.field static final blacklist TRANSACTION_setPlayerVolume:I = 0x7b

.field static final blacklist TRANSACTION_setPreferredDevicesForCapturePreset:I = 0x85

.field static final blacklist TRANSACTION_setPreferredDevicesForStrategy:I = 0x6f

.field static final greylist-max-o TRANSACTION_setRingerModeExternal:I = 0x22

.field static final greylist-max-o TRANSACTION_setRingerModeInternal:I = 0x23

.field static final greylist-max-o TRANSACTION_setRingtonePlayer:I = 0x45

.field static final blacklist TRANSACTION_setRttEnabled:I = 0x78

.field static final blacklist TRANSACTION_setSpatializerEnabled:I = 0xa9

.field static final blacklist TRANSACTION_setSpatializerGlobalTransform:I = 0xb8

.field static final blacklist TRANSACTION_setSpatializerParameter:I = 0xba

.field static final greylist-max-o TRANSACTION_setSpeakerphoneOn:I = 0x37

.field static final greylist-max-o TRANSACTION_setStreamVolume:I = 0xb

.field static final blacklist TRANSACTION_setStreamVolumeForUid:I = 0x8c

.field static final blacklist TRANSACTION_setStreamVolumeWithAttribution:I = 0xc

.field static final blacklist TRANSACTION_setSupportedSystemUsages:I = 0x1b

.field static final blacklist TRANSACTION_setSurroundFormatEnabled:I = 0x33

.field static final blacklist TRANSACTION_setTestDeviceConnectionState:I = 0xc6

.field static final blacklist TRANSACTION_setUidDeviceAffinity:I = 0x69

.field static final blacklist TRANSACTION_setUserIdDeviceAffinity:I = 0x6b

.field static final greylist-max-o TRANSACTION_setVibrateSetting:I = 0x27

.field static final greylist-max-o TRANSACTION_setVolumeController:I = 0x4c

.field static final blacklist TRANSACTION_setVolumeIndexForAttributes:I = 0x16

.field static final greylist-max-o TRANSACTION_setVolumePolicy:I = 0x59

.field static final greylist-max-o TRANSACTION_setWiredDeviceConnectionState:I = 0x48

.field static final greylist-max-o TRANSACTION_shouldVibrate:I = 0x29

.field static final greylist-max-o TRANSACTION_startBluetoothSco:I = 0x41

.field static final greylist-max-o TRANSACTION_startBluetoothScoVirtualCall:I = 0x42

.field static final greylist-max-o TRANSACTION_startWatchingRoutes:I = 0x4a

.field static final greylist-max-o TRANSACTION_stopBluetoothSco:I = 0x43

.field static final greylist-max-o TRANSACTION_trackPlayer:I = 0x1

.field static final blacklist TRANSACTION_trackRecorder:I = 0x5

.field static final greylist-max-o TRANSACTION_unloadSoundEffects:I = 0x2f

.field static final greylist-max-o TRANSACTION_unregisterAudioFocusClient:I = 0x3f

.field static final blacklist TRANSACTION_unregisterAudioPolicy:I = 0x55

.field static final greylist-max-o TRANSACTION_unregisterAudioPolicyAsync:I = 0x54

.field static final greylist-max-o TRANSACTION_unregisterAudioServerStateDispatcher:I = 0x67

.field static final blacklist TRANSACTION_unregisterCapturePresetDevicesRoleDispatcher:I = 0x89

.field static final blacklist TRANSACTION_unregisterCommunicationDeviceDispatcher:I = 0x93

.field static final blacklist TRANSACTION_unregisterHeadToSoundstagePoseCallback:I = 0xb0

.field static final blacklist TRANSACTION_unregisterModeDispatcher:I = 0x9f

.field static final greylist-max-o TRANSACTION_unregisterPlaybackCallback:I = 0x5f

.field static final greylist-max-o TRANSACTION_unregisterRecordingCallback:I = 0x5c

.field static final blacklist TRANSACTION_unregisterSpatializerCallback:I = 0xac

.field static final blacklist TRANSACTION_unregisterSpatializerHeadTrackingCallback:I = 0xae

.field static final blacklist TRANSACTION_unregisterSpatializerOutputCallback:I = 0xbe

.field static final blacklist TRANSACTION_unregisterStrategyPreferredDevicesDispatcher:I = 0x77


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 769
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 770
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 778
    if-nez p0, :cond_4

    .line 779
    const/4 v0, 0x0

    return-object v0

    .line 781
    :cond_4
    const-string v0, "android.media.IAudioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 782
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_14

    .line 783
    move-object v1, v0

    check-cast v1, Landroid/media/IAudioService;

    return-object v1

    .line 785
    :cond_14
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 794
    packed-switch p0, :pswitch_data_276

    .line 1630
    const/4 v0, 0x0

    return-object v0

    .line 1626
    :pswitch_5
    const-string v0, "getHalVersion"

    return-object v0

    .line 1622
    :pswitch_8
    const-string v0, "registerDeviceVolumeDispatcherForAbsoluteVolume"

    return-object v0

    .line 1618
    :pswitch_b
    const-string v0, "getActiveAssistantServiceUids"

    return-object v0

    .line 1614
    :pswitch_e
    const-string v0, "getAssistantServicesUids"

    return-object v0

    .line 1610
    :pswitch_11
    const-string v0, "setActiveAssistantServiceUids"

    return-object v0

    .line 1606
    :pswitch_14
    const-string v0, "removeAssistantServicesUids"

    return-object v0

    .line 1602
    :pswitch_17
    const-string v0, "addAssistantServicesUids"

    return-object v0

    .line 1598
    :pswitch_1a
    const-string v0, "sendFocusLoss"

    return-object v0

    .line 1594
    :pswitch_1d
    const-string v0, "getFocusStack"

    return-object v0

    .line 1590
    :pswitch_20
    const-string v0, "registerDeviceVolumeBehaviorDispatcher"

    return-object v0

    .line 1586
    :pswitch_23
    const-string v0, "setTestDeviceConnectionState"

    return-object v0

    .line 1582
    :pswitch_26
    const-string v0, "registerMuteAwaitConnectionDispatcher"

    return-object v0

    .line 1578
    :pswitch_29
    const-string v0, "getMutingExpectedDevice"

    return-object v0

    .line 1574
    :pswitch_2c
    const-string v0, "cancelMuteAwaitConnection"

    return-object v0

    .line 1570
    :pswitch_2f
    const-string v0, "muteAwaitConnection"

    return-object v0

    .line 1566
    :pswitch_32
    const-string v0, "isPstnCallAudioInterceptable"

    return-object v0

    .line 1562
    :pswitch_35
    const-string v0, "getDefaultVolumeInfo"

    return-object v0

    .line 1558
    :pswitch_38
    const-string v0, "isVolumeFixed"

    return-object v0

    .line 1554
    :pswitch_3b
    const-string v0, "unregisterSpatializerOutputCallback"

    return-object v0

    .line 1550
    :pswitch_3e
    const-string v0, "registerSpatializerOutputCallback"

    return-object v0

    .line 1546
    :pswitch_41
    const-string v0, "getSpatializerOutput"

    return-object v0

    .line 1542
    :pswitch_44
    const-string v0, "getSpatializerParameter"

    return-object v0

    .line 1538
    :pswitch_47
    const-string v0, "setSpatializerParameter"

    return-object v0

    .line 1534
    :pswitch_4a
    const-string v0, "recenterHeadTracker"

    return-object v0

    .line 1530
    :pswitch_4d
    const-string v0, "setSpatializerGlobalTransform"

    return-object v0

    .line 1526
    :pswitch_50
    const-string v0, "getActualHeadTrackingMode"

    return-object v0

    .line 1522
    :pswitch_53
    const-string v0, "getSupportedHeadTrackingModes"

    return-object v0

    .line 1518
    :pswitch_56
    const-string v0, "getDesiredHeadTrackingMode"

    return-object v0

    .line 1514
    :pswitch_59
    const-string v0, "setDesiredHeadTrackingMode"

    return-object v0

    .line 1510
    :pswitch_5c
    const-string v0, "removeSpatializerCompatibleAudioDevice"

    return-object v0

    .line 1506
    :pswitch_5f
    const-string v0, "addSpatializerCompatibleAudioDevice"

    return-object v0

    .line 1502
    :pswitch_62
    const-string v0, "getSpatializerCompatibleAudioDevices"

    return-object v0

    .line 1498
    :pswitch_65
    const-string v0, "unregisterHeadToSoundstagePoseCallback"

    return-object v0

    .line 1494
    :pswitch_68
    const-string v0, "registerHeadToSoundstagePoseCallback"

    return-object v0

    .line 1490
    :pswitch_6b
    const-string v0, "unregisterSpatializerHeadTrackingCallback"

    return-object v0

    .line 1486
    :pswitch_6e
    const-string v0, "registerSpatializerHeadTrackingCallback"

    return-object v0

    .line 1482
    :pswitch_71
    const-string v0, "unregisterSpatializerCallback"

    return-object v0

    .line 1478
    :pswitch_74
    const-string v0, "registerSpatializerCallback"

    return-object v0

    .line 1474
    :pswitch_77
    const-string v0, "canBeSpatialized"

    return-object v0

    .line 1470
    :pswitch_7a
    const-string v0, "setSpatializerEnabled"

    return-object v0

    .line 1466
    :pswitch_7d
    const-string v0, "registerSpatializerHeadTrackerAvailableCallback"

    return-object v0

    .line 1462
    :pswitch_80
    const-string v0, "isHeadTrackerAvailable"

    return-object v0

    .line 1458
    :pswitch_83
    const-string v0, "isHeadTrackerEnabled"

    return-object v0

    .line 1454
    :pswitch_86
    const-string v0, "setHeadTrackerEnabled"

    return-object v0

    .line 1450
    :pswitch_89
    const-string v0, "hasHeadTracker"

    return-object v0

    .line 1446
    :pswitch_8c
    const-string v0, "isSpatializerAvailableForDevice"

    return-object v0

    .line 1442
    :pswitch_8f
    const-string v0, "isSpatializerAvailable"

    return-object v0

    .line 1438
    :pswitch_92
    const-string v0, "isSpatializerEnabled"

    return-object v0

    .line 1434
    :pswitch_95
    const-string v0, "getSpatializerImmersiveAudioLevel"

    return-object v0

    .line 1430
    :pswitch_98
    const-string v0, "unregisterModeDispatcher"

    return-object v0

    .line 1426
    :pswitch_9b
    const-string v0, "registerModeDispatcher"

    return-object v0

    .line 1422
    :pswitch_9e
    const-string v0, "getFadeOutDurationOnFocusLossMillis"

    return-object v0

    .line 1418
    :pswitch_a1
    const-string v0, "abandonAudioFocusForTest"

    return-object v0

    .line 1414
    :pswitch_a4
    const-string v0, "requestAudioFocusForTest"

    return-object v0

    .line 1410
    :pswitch_a7
    const-string v0, "getMaxAdditionalOutputDeviceDelay"

    return-object v0

    .line 1406
    :pswitch_aa
    const-string v0, "getAdditionalOutputDeviceDelay"

    return-object v0

    .line 1402
    :pswitch_ad
    const-string v0, "setAdditionalOutputDeviceDelay"

    return-object v0

    .line 1398
    :pswitch_b0
    const-string v0, "setHomeSoundEffectEnabled"

    return-object v0

    .line 1394
    :pswitch_b3
    const-string v0, "isHomeSoundEffectEnabled"

    return-object v0

    .line 1390
    :pswitch_b6
    const-string v0, "setNavigationRepeatSoundEffectsEnabled"

    return-object v0

    .line 1386
    :pswitch_b9
    const-string v0, "areNavigationRepeatSoundEffectsEnabled"

    return-object v0

    .line 1382
    :pswitch_bc
    const-string v0, "unregisterCommunicationDeviceDispatcher"

    return-object v0

    .line 1378
    :pswitch_bf
    const-string v0, "registerCommunicationDeviceDispatcher"

    return-object v0

    .line 1374
    :pswitch_c2
    const-string v0, "getCommunicationDevice"

    return-object v0

    .line 1370
    :pswitch_c5
    const-string v0, "setCommunicationDevice"

    return-object v0

    .line 1366
    :pswitch_c8
    const-string v0, "getAvailableCommunicationDeviceIds"

    return-object v0

    .line 1362
    :pswitch_cb
    const-string v0, "getDeviceMaskForStream"

    return-object v0

    .line 1358
    :pswitch_ce
    const-string v0, "isMusicActive"

    return-object v0

    .line 1354
    :pswitch_d1
    const-string v0, "setStreamVolumeForUid"

    return-object v0

    .line 1350
    :pswitch_d4
    const-string v0, "adjustSuggestedStreamVolumeForUid"

    return-object v0

    .line 1346
    :pswitch_d7
    const-string v0, "adjustStreamVolumeForUid"

    return-object v0

    .line 1342
    :pswitch_da
    const-string v0, "unregisterCapturePresetDevicesRoleDispatcher"

    return-object v0

    .line 1338
    :pswitch_dd
    const-string v0, "registerCapturePresetDevicesRoleDispatcher"

    return-object v0

    .line 1334
    :pswitch_e0
    const-string v0, "getPreferredDevicesForCapturePreset"

    return-object v0

    .line 1330
    :pswitch_e3
    const-string v0, "clearPreferredDevicesForCapturePreset"

    return-object v0

    .line 1326
    :pswitch_e6
    const-string v0, "setPreferredDevicesForCapturePreset"

    return-object v0

    .line 1322
    :pswitch_e9
    const-string v0, "cacheParameters"

    return-object v0

    .line 1318
    :pswitch_ec
    const-string v0, "setMultiAudioFocusEnabled"

    return-object v0

    .line 1314
    :pswitch_ef
    const-string v0, "isMiBLEConnect"

    return-object v0

    .line 1310
    :pswitch_f2
    const-string v0, "getAudioPolicyMatchUids"

    return-object v0

    .line 1306
    :pswitch_f5
    const-string v0, "createAudioRecordForLoopbackWithClient"

    return-object v0

    .line 1302
    :pswitch_f8
    const-string v0, "createAudioRecordForLoopback"

    return-object v0

    .line 1298
    :pswitch_fb
    const-string v0, "getDeviceStreamVolume"

    return-object v0

    .line 1294
    :pswitch_fe
    const-string v0, "getNotificationUri"

    return-object v0

    .line 1290
    :pswitch_101
    const-string v0, "getPlayerVolume"

    return-object v0

    .line 1286
    :pswitch_104
    const-string v0, "setPlayerVolume"

    return-object v0

    .line 1282
    :pswitch_107
    const-string v0, "getDeviceVolumeBehavior"

    return-object v0

    .line 1278
    :pswitch_10a
    const-string v0, "setDeviceVolumeBehavior"

    return-object v0

    .line 1274
    :pswitch_10d
    const-string v0, "setRttEnabled"

    return-object v0

    .line 1270
    :pswitch_110
    const-string v0, "unregisterStrategyPreferredDevicesDispatcher"

    return-object v0

    .line 1266
    :pswitch_113
    const-string v0, "registerStrategyPreferredDevicesDispatcher"

    return-object v0

    .line 1262
    :pswitch_116
    const-string v0, "getAllowedCapturePolicy"

    return-object v0

    .line 1258
    :pswitch_119
    const-string v0, "setAllowedCapturePolicy"

    return-object v0

    .line 1254
    :pswitch_11c
    const-string v0, "getDevicesForAttributesUnprotected"

    return-object v0

    .line 1250
    :pswitch_11f
    const-string v0, "getDevicesForAttributes"

    return-object v0

    .line 1246
    :pswitch_122
    const-string v0, "getPreferredDevicesForStrategy"

    return-object v0

    .line 1242
    :pswitch_125
    const-string v0, "removePreferredDevicesForStrategy"

    return-object v0

    .line 1238
    :pswitch_128
    const-string v0, "setPreferredDevicesForStrategy"

    return-object v0

    .line 1234
    :pswitch_12b
    const-string v0, "isCallScreeningModeSupported"

    return-object v0

    .line 1230
    :pswitch_12e
    const-string v0, "hasHapticChannels"

    return-object v0

    .line 1226
    :pswitch_131
    const-string v0, "removeUserIdDeviceAffinity"

    return-object v0

    .line 1222
    :pswitch_134
    const-string v0, "setUserIdDeviceAffinity"

    return-object v0

    .line 1218
    :pswitch_137
    const-string v0, "removeUidDeviceAffinity"

    return-object v0

    .line 1214
    :pswitch_13a
    const-string v0, "setUidDeviceAffinity"

    return-object v0

    .line 1210
    :pswitch_13d
    const-string v0, "isAudioServerRunning"

    return-object v0

    .line 1206
    :pswitch_140
    const-string v0, "unregisterAudioServerStateDispatcher"

    return-object v0

    .line 1202
    :pswitch_143
    const-string v0, "registerAudioServerStateDispatcher"

    return-object v0

    .line 1198
    :pswitch_146
    const-string v0, "setFocusRequestResultFromExtPolicy"

    return-object v0

    .line 1194
    :pswitch_149
    const-string v0, "handleBluetoothActiveDeviceChanged"

    return-object v0

    .line 1190
    :pswitch_14c
    const-string v0, "playerHasOpPlayAudio"

    return-object v0

    .line 1186
    :pswitch_14f
    const-string v0, "dispatchFocusChange"

    return-object v0

    .line 1182
    :pswitch_152
    const-string v0, "getFocusRampTimeMs"

    return-object v0

    .line 1178
    :pswitch_155
    const-string v0, "getActivePlaybackConfigurations"

    return-object v0

    .line 1174
    :pswitch_158
    const-string v0, "unregisterPlaybackCallback"

    return-object v0

    .line 1170
    :pswitch_15b
    const-string v0, "registerPlaybackCallback"

    return-object v0

    .line 1166
    :pswitch_15e
    const-string v0, "getActiveRecordingConfigurations"

    return-object v0

    .line 1162
    :pswitch_161
    const-string v0, "unregisterRecordingCallback"

    return-object v0

    .line 1158
    :pswitch_164
    const-string v0, "registerRecordingCallback"

    return-object v0

    .line 1154
    :pswitch_167
    const-string v0, "hasRegisteredDynamicPolicy"

    return-object v0

    .line 1150
    :pswitch_16a
    const-string v0, "setVolumePolicy"

    return-object v0

    .line 1146
    :pswitch_16d
    const-string v0, "setFocusPropertiesForPolicy"

    return-object v0

    .line 1142
    :pswitch_170
    const-string v0, "removeMixForPolicy"

    return-object v0

    .line 1138
    :pswitch_173
    const-string v0, "addMixForPolicy"

    return-object v0

    .line 1134
    :pswitch_176
    const-string v0, "unregisterAudioPolicy"

    return-object v0

    .line 1130
    :pswitch_179
    const-string v0, "unregisterAudioPolicyAsync"

    return-object v0

    .line 1126
    :pswitch_17c
    const-string v0, "registerAudioPolicy"

    return-object v0

    .line 1122
    :pswitch_17f
    const-string v0, "isHdmiSystemAudioSupported"

    return-object v0

    .line 1118
    :pswitch_182
    const-string v0, "setHdmiSystemAudioSupported"

    return-object v0

    .line 1114
    :pswitch_185
    const-string v0, "disableSafeMediaVolume"

    return-object v0

    .line 1110
    :pswitch_188
    const-string v0, "isStreamAffectedByMute"

    return-object v0

    .line 1106
    :pswitch_18b
    const-string v0, "isStreamAffectedByRingerMode"

    return-object v0

    .line 1102
    :pswitch_18e
    const-string v0, "notifyVolumeControllerVisible"

    return-object v0

    .line 1098
    :pswitch_191
    const-string v0, "setVolumeController"

    return-object v0

    .line 1094
    :pswitch_194
    const-string v0, "isCameraSoundForced"

    return-object v0

    .line 1090
    :pswitch_197
    const-string v0, "startWatchingRoutes"

    return-object v0

    .line 1086
    :pswitch_19a
    const-string v0, "handleBluetoothA2dpActiveDeviceChange"

    return-object v0

    .line 1082
    :pswitch_19d
    const-string v0, "setWiredDeviceConnectionState"

    return-object v0

    .line 1078
    :pswitch_1a0
    const-string v0, "getUiSoundsStreamType"

    return-object v0

    .line 1074
    :pswitch_1a3
    const-string v0, "getRingtonePlayer"

    return-object v0

    .line 1070
    :pswitch_1a6
    const-string v0, "setRingtonePlayer"

    return-object v0

    .line 1066
    :pswitch_1a9
    const-string v0, "forceVolumeControlStream"

    return-object v0

    .line 1062
    :pswitch_1ac
    const-string v0, "stopBluetoothSco"

    return-object v0

    .line 1058
    :pswitch_1af
    const-string v0, "startBluetoothScoVirtualCall"

    return-object v0

    .line 1054
    :pswitch_1b2
    const-string v0, "startBluetoothSco"

    return-object v0

    .line 1050
    :pswitch_1b5
    const-string v0, "getCurrentAudioFocus"

    return-object v0

    .line 1046
    :pswitch_1b8
    const-string v0, "unregisterAudioFocusClient"

    return-object v0

    .line 1042
    :pswitch_1bb
    const-string v0, "abandonAudioFocus"

    return-object v0

    .line 1038
    :pswitch_1be
    const-string v0, "requestAudioFocus"

    return-object v0

    .line 1034
    :pswitch_1c1
    const-string v0, "isBluetoothA2dpOn"

    return-object v0

    .line 1030
    :pswitch_1c4
    const-string v0, "setBluetoothA2dpOn"

    return-object v0

    .line 1026
    :pswitch_1c7
    const-string v0, "isBluetoothScoOn"

    return-object v0

    .line 1022
    :pswitch_1ca
    const-string v0, "setBluetoothScoOn"

    return-object v0

    .line 1018
    :pswitch_1cd
    const-string v0, "isSpeakerphoneOn"

    return-object v0

    .line 1014
    :pswitch_1d0
    const-string v0, "setSpeakerphoneOn"

    return-object v0

    .line 1010
    :pswitch_1d3
    const-string v0, "getEncodedSurroundMode"

    return-object v0

    .line 1006
    :pswitch_1d6
    const-string v0, "setEncodedSurroundMode"

    return-object v0

    .line 1002
    :pswitch_1d9
    const-string v0, "isSurroundFormatEnabled"

    return-object v0

    .line 998
    :pswitch_1dc
    const-string v0, "setSurroundFormatEnabled"

    return-object v0

    .line 994
    :pswitch_1df
    const-string v0, "getReportedSurroundFormats"

    return-object v0

    .line 990
    :pswitch_1e2
    const-string v0, "getSurroundFormats"

    return-object v0

    .line 986
    :pswitch_1e5
    const-string v0, "reloadAudioSettings"

    return-object v0

    .line 982
    :pswitch_1e8
    const-string v0, "unloadSoundEffects"

    return-object v0

    .line 978
    :pswitch_1eb
    const-string v0, "loadSoundEffects"

    return-object v0

    .line 974
    :pswitch_1ee
    const-string v0, "playSoundEffectVolume"

    return-object v0

    .line 970
    :pswitch_1f1
    const-string v0, "playSoundEffect"

    return-object v0

    .line 966
    :pswitch_1f4
    const-string v0, "getMode"

    return-object v0

    .line 962
    :pswitch_1f7
    const-string v0, "setMode"

    return-object v0

    .line 958
    :pswitch_1fa
    const-string v0, "shouldVibrate"

    return-object v0

    .line 954
    :pswitch_1fd
    const-string v0, "getVibrateSetting"

    return-object v0

    .line 950
    :pswitch_200
    const-string v0, "setVibrateSetting"

    return-object v0

    .line 946
    :pswitch_203
    const-string v0, "isValidRingerMode"

    return-object v0

    .line 942
    :pswitch_206
    const-string v0, "getRingerModeInternal"

    return-object v0

    .line 938
    :pswitch_209
    const-string v0, "getRingerModeExternal"

    return-object v0

    .line 934
    :pswitch_20c
    const-string v0, "setRingerModeInternal"

    return-object v0

    .line 930
    :pswitch_20f
    const-string v0, "setRingerModeExternal"

    return-object v0

    .line 926
    :pswitch_212
    const-string v0, "setMicrophoneMuteFromSwitch"

    return-object v0

    .line 922
    :pswitch_215
    const-string v0, "setMicrophoneMute"

    return-object v0

    .line 918
    :pswitch_218
    const-string v0, "isUltrasoundSupported"

    return-object v0

    .line 914
    :pswitch_21b
    const-string v0, "isMicrophoneMuted"

    return-object v0

    .line 910
    :pswitch_21e
    const-string v0, "getAudioProductStrategies"

    return-object v0

    .line 906
    :pswitch_221
    const-string v0, "getSupportedSystemUsages"

    return-object v0

    .line 902
    :pswitch_224
    const-string v0, "setSupportedSystemUsages"

    return-object v0

    .line 898
    :pswitch_227
    const-string v0, "getLastAudibleStreamVolume"

    return-object v0

    .line 894
    :pswitch_22a
    const-string v0, "getMinVolumeIndexForAttributes"

    return-object v0

    .line 890
    :pswitch_22d
    const-string v0, "getMaxVolumeIndexForAttributes"

    return-object v0

    .line 886
    :pswitch_230
    const-string v0, "getVolumeIndexForAttributes"

    return-object v0

    .line 882
    :pswitch_233
    const-string v0, "setVolumeIndexForAttributes"

    return-object v0

    .line 878
    :pswitch_236
    const-string v0, "getAudioVolumeGroups"

    return-object v0

    .line 874
    :pswitch_239
    const-string v0, "getStreamMaxVolume"

    return-object v0

    .line 870
    :pswitch_23c
    const-string v0, "getStreamMinVolume"

    return-object v0

    .line 866
    :pswitch_23f
    const-string v0, "getStreamVolume"

    return-object v0

    .line 862
    :pswitch_242
    const-string v0, "setMasterMute"

    return-object v0

    .line 858
    :pswitch_245
    const-string v0, "isMasterMute"

    return-object v0

    .line 854
    :pswitch_248
    const-string v0, "forceRemoteSubmixFullVolume"

    return-object v0

    .line 850
    :pswitch_24b
    const-string v0, "isStreamMute"

    return-object v0

    .line 846
    :pswitch_24e
    const-string v0, "handleVolumeKey"

    return-object v0

    .line 842
    :pswitch_251
    const-string v0, "setStreamVolumeWithAttribution"

    return-object v0

    .line 838
    :pswitch_254
    const-string v0, "setStreamVolume"

    return-object v0

    .line 834
    :pswitch_257
    const-string v0, "adjustStreamVolumeWithAttribution"

    return-object v0

    .line 830
    :pswitch_25a
    const-string v0, "adjustStreamVolume"

    return-object v0

    .line 826
    :pswitch_25d
    const-string v0, "playerSessionId"

    return-object v0

    .line 822
    :pswitch_260
    const-string v0, "releaseRecorder"

    return-object v0

    .line 818
    :pswitch_263
    const-string v0, "recorderEvent"

    return-object v0

    .line 814
    :pswitch_266
    const-string v0, "trackRecorder"

    return-object v0

    .line 810
    :pswitch_269
    const-string v0, "releasePlayer"

    return-object v0

    .line 806
    :pswitch_26c
    const-string v0, "playerEvent"

    return-object v0

    .line 802
    :pswitch_26f
    const-string v0, "playerAttributes"

    return-object v0

    .line 798
    :pswitch_272
    const-string v0, "trackPlayer"

    return-object v0

    nop

    :pswitch_data_276
    .packed-switch 0x1
        :pswitch_272
        :pswitch_26f
        :pswitch_26c
        :pswitch_269
        :pswitch_266
        :pswitch_263
        :pswitch_260
        :pswitch_25d
        :pswitch_25a
        :pswitch_257
        :pswitch_254
        :pswitch_251
        :pswitch_24e
        :pswitch_24b
        :pswitch_248
        :pswitch_245
        :pswitch_242
        :pswitch_23f
        :pswitch_23c
        :pswitch_239
        :pswitch_236
        :pswitch_233
        :pswitch_230
        :pswitch_22d
        :pswitch_22a
        :pswitch_227
        :pswitch_224
        :pswitch_221
        :pswitch_21e
        :pswitch_21b
        :pswitch_218
        :pswitch_215
        :pswitch_212
        :pswitch_20f
        :pswitch_20c
        :pswitch_209
        :pswitch_206
        :pswitch_203
        :pswitch_200
        :pswitch_1fd
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f4
        :pswitch_1f1
        :pswitch_1ee
        :pswitch_1eb
        :pswitch_1e8
        :pswitch_1e5
        :pswitch_1e2
        :pswitch_1df
        :pswitch_1dc
        :pswitch_1d9
        :pswitch_1d6
        :pswitch_1d3
        :pswitch_1d0
        :pswitch_1cd
        :pswitch_1ca
        :pswitch_1c7
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_1be
        :pswitch_1bb
        :pswitch_1b8
        :pswitch_1b5
        :pswitch_1b2
        :pswitch_1af
        :pswitch_1ac
        :pswitch_1a9
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19a
        :pswitch_197
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_185
        :pswitch_182
        :pswitch_17f
        :pswitch_17c
        :pswitch_179
        :pswitch_176
        :pswitch_173
        :pswitch_170
        :pswitch_16d
        :pswitch_16a
        :pswitch_167
        :pswitch_164
        :pswitch_161
        :pswitch_15e
        :pswitch_15b
        :pswitch_158
        :pswitch_155
        :pswitch_152
        :pswitch_14f
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
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

    .line 789
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 7453
    const/16 v0, 0xcf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 1637
    invoke-static {p1}, Landroid/media/IAudioService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 32
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1641
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "android.media.IAudioService"

    .line 1642
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v12, v10, :cond_15

    const v0, 0xffffff

    if-gt v12, v0, :cond_15

    .line 1643
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    :cond_15
    packed-switch v12, :pswitch_data_1276

    .line 1653
    packed-switch v12, :pswitch_data_127c

    .line 3751
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1649
    :pswitch_20
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1650
    return v10

    .line 3744
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getHalVersion()Ljava/lang/String;

    move-result-object v0

    .line 3745
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3746
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3747
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3726
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 3728
    .local v7, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioDeviceVolumeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioDeviceVolumeDispatcher;

    move-result-object v8

    .line 3730
    .local v8, "_arg1":Landroid/media/IAudioDeviceVolumeDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3732
    .local v9, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/AudioDeviceAttributes;

    .line 3734
    .local v16, "_arg3":Landroid/media/AudioDeviceAttributes;
    sget-object v0, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 3736
    .local v17, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 3737
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3738
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;Z)V

    .line 3739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3740
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3718
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Landroid/media/IAudioDeviceVolumeDispatcher;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Landroid/media/AudioDeviceAttributes;
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .end local v18    # "_arg5":Z
    :pswitch_6e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveAssistantServiceUids()[I

    move-result-object v0

    .line 3719
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3720
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3721
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3711
    .end local v0    # "_result":[I
    :pswitch_7c
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAssistantServicesUids()[I

    move-result-object v0

    .line 3712
    .restart local v0    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3713
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3714
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3703
    .end local v0    # "_result":[I
    :pswitch_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3704
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3705
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setActiveAssistantServiceUids([I)V

    .line 3706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3707
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3694
    .end local v0    # "_arg0":[I
    :pswitch_9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3695
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3696
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removeAssistantServicesUids([I)V

    .line 3697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3698
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3685
    .end local v0    # "_arg0":[I
    :pswitch_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3686
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3687
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->addAssistantServicesUids([I)V

    .line 3688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3689
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3673
    .end local v0    # "_arg0":[I
    :pswitch_bd
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    .line 3675
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3676
    .local v1, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3677
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z

    move-result v2

    .line 3678
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3679
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3680
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3665
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":Z
    :pswitch_de
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getFocusStack()Ljava/util/List;

    move-result-object v0

    .line 3666
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3667
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3668
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3655
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    :pswitch_ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3657
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDeviceVolumeBehaviorDispatcher;

    move-result-object v1

    .line 3658
    .local v1, "_arg1":Landroid/media/IDeviceVolumeBehaviorDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3659
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V

    .line 3660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3661
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3644
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/media/IDeviceVolumeBehaviorDispatcher;
    :pswitch_105
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3646
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3647
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3648
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V

    .line 3649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3650
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3633
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":Z
    :pswitch_11e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMuteAwaitConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMuteAwaitConnectionCallback;

    move-result-object v0

    .line 3635
    .local v0, "_arg0":Landroid/media/IMuteAwaitConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3636
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3637
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerMuteAwaitConnectionDispatcher(Landroid/media/IMuteAwaitConnectionCallback;Z)V

    .line 3638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3639
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3625
    .end local v0    # "_arg0":Landroid/media/IMuteAwaitConnectionCallback;
    .end local v1    # "_arg1":Z
    :pswitch_137
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 3626
    .local v0, "_result":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3627
    invoke-virtual {v14, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3628
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3618
    .end local v0    # "_result":Landroid/media/AudioDeviceAttributes;
    :pswitch_145
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3619
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3620
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V

    .line 3621
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3606
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3608
    .local v0, "_arg0":[I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3610
    .local v1, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3611
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3612
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V

    .line 3613
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3598
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg2":J
    :pswitch_171
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isPstnCallAudioInterceptable()Z

    move-result v0

    .line 3599
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3600
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3601
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3591
    .end local v0    # "_result":Z
    :pswitch_17f
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v0

    .line 3592
    .local v0, "_result":Landroid/media/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3593
    invoke-virtual {v14, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3594
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3584
    .end local v0    # "_result":Landroid/media/VolumeInfo;
    :pswitch_18d
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isVolumeFixed()Z

    move-result v0

    .line 3585
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3586
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3587
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3576
    .end local v0    # "_result":Z
    :pswitch_19b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v0

    .line 3577
    .local v0, "_arg0":Landroid/media/ISpatializerOutputCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3578
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 3579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3580
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3567
    .end local v0    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    :pswitch_1b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v0

    .line 3568
    .restart local v0    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3569
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 3570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3571
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3559
    .end local v0    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    :pswitch_1c5
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerOutput()I

    move-result v0

    .line 3560
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3561
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3562
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3548
    .end local v0    # "_result":I
    :pswitch_1d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3550
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3551
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3552
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getSpatializerParameter(I[B)V

    .line 3553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3554
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3555
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3537
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :pswitch_1eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3539
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3540
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3541
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSpatializerParameter(I[B)V

    .line 3542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3543
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3531
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :pswitch_200
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->recenterHeadTracker()V

    .line 3532
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3524
    :pswitch_207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 3525
    .local v0, "_arg0":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3526
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setSpatializerGlobalTransform([F)V

    .line 3527
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3516
    .end local v0    # "_arg0":[F
    :pswitch_215
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActualHeadTrackingMode()I

    move-result v0

    .line 3517
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3518
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3519
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3509
    .end local v0    # "_result":I
    :pswitch_223
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSupportedHeadTrackingModes()[I

    move-result-object v0

    .line 3510
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3511
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3512
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3502
    .end local v0    # "_result":[I
    :pswitch_231
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getDesiredHeadTrackingMode()I

    move-result v0

    .line 3503
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3504
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3505
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3494
    .end local v0    # "_result":I
    :pswitch_23f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3495
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3496
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setDesiredHeadTrackingMode(I)V

    .line 3497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3498
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3485
    .end local v0    # "_arg0":I
    :pswitch_250
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3486
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3487
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 3488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3489
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3476
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_265
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3477
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3478
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 3479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3480
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3468
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_27a
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object v0

    .line 3469
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3470
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3471
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3460
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v0

    .line 3461
    .local v0, "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3462
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 3463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3464
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3451
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :pswitch_29d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v0

    .line 3452
    .restart local v0    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3453
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 3454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3455
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3442
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :pswitch_2b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v0

    .line 3443
    .local v0, "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3444
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 3445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3446
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3433
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :pswitch_2c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v0

    .line 3434
    .restart local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3435
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 3436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3437
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3424
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :pswitch_2dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v0

    .line 3425
    .local v0, "_arg0":Landroid/media/ISpatializerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3426
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 3427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3428
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3415
    .end local v0    # "_arg0":Landroid/media/ISpatializerCallback;
    :pswitch_2f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v0

    .line 3416
    .restart local v0    # "_arg0":Landroid/media/ISpatializerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3417
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 3418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3419
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3403
    .end local v0    # "_arg0":Landroid/media/ISpatializerCallback;
    :pswitch_306
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 3405
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    sget-object v1, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFormat;

    .line 3406
    .local v1, "_arg1":Landroid/media/AudioFormat;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3407
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v2

    .line 3408
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3409
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3410
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3394
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_arg1":Landroid/media/AudioFormat;
    .end local v2    # "_result":Z
    :pswitch_327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3395
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3396
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setSpatializerEnabled(Z)V

    .line 3397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3398
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3383
    .end local v0    # "_arg0":Z
    :pswitch_338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    move-result-object v0

    .line 3385
    .local v0, "_arg0":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3386
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3387
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V

    .line 3388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3389
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3375
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    .end local v1    # "_arg1":Z
    :pswitch_351
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHeadTrackerAvailable()Z

    move-result v0

    .line 3376
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3377
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3378
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3366
    .end local v0    # "_result":Z
    :pswitch_35f
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3367
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3368
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 3369
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3370
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3371
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3355
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":Z
    :pswitch_378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3357
    .local v0, "_arg0":Z
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3358
    .local v1, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3359
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V

    .line 3360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3361
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3345
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    :pswitch_391
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3346
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3347
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 3348
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3349
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3350
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3335
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":Z
    :pswitch_3aa
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3336
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3337
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 3338
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3339
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3340
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3327
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":Z
    :pswitch_3c3
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailable()Z

    move-result v0

    .line 3328
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3329
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3330
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3320
    .end local v0    # "_result":Z
    :pswitch_3d1
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpatializerEnabled()Z

    move-result v0

    .line 3321
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3322
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3323
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3313
    .end local v0    # "_result":Z
    :pswitch_3df
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerImmersiveAudioLevel()I

    move-result v0

    .line 3314
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3315
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3316
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3306
    .end local v0    # "_result":I
    :pswitch_3ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v0

    .line 3307
    .local v0, "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3308
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 3309
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3297
    .end local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_3ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v0

    .line 3298
    .restart local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3299
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 3300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3301
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3287
    .end local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_414
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 3288
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3289
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v1

    .line 3290
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3291
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3292
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3271
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":J
    :pswitch_42d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    .line 3273
    .local v0, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3275
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 3277
    .local v2, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3278
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3279
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    .line 3280
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3281
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3282
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3245
    .end local v0    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/media/AudioAttributes;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_456
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/AudioAttributes;

    .line 3247
    .local v16, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3249
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 3251
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v19

    .line 3253
    .local v19, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 3255
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 3257
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3259
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 3261
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 3262
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3263
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/media/IAudioService$Stub;->requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    .line 3264
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3265
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3266
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3235
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/media/AudioAttributes;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_4a9
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3236
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3237
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v1

    .line 3238
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3239
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3240
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3225
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":J
    :pswitch_4c2
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3226
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3227
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v1

    .line 3228
    .restart local v1    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3229
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3230
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3213
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":J
    :pswitch_4db
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3215
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 3216
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3217
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z

    move-result v3

    .line 3218
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3219
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3220
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3205
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Z
    :pswitch_4f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3206
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3207
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setHomeSoundEffectEnabled(Z)V

    .line 3208
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3197
    .end local v0    # "_arg0":Z
    :pswitch_506
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHomeSoundEffectEnabled()Z

    move-result v0

    .line 3198
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3199
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3200
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3190
    .end local v0    # "_result":Z
    :pswitch_514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3191
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3192
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setNavigationRepeatSoundEffectsEnabled(Z)V

    .line 3193
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3182
    .end local v0    # "_arg0":Z
    :pswitch_522
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v0

    .line 3183
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3184
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3185
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3175
    .end local v0    # "_result":Z
    :pswitch_530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v0

    .line 3176
    .local v0, "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3177
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 3178
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3166
    .end local v0    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    :pswitch_542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v0

    .line 3167
    .restart local v0    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3168
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 3169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3170
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3158
    .end local v0    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    :pswitch_557
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCommunicationDevice()I

    move-result v0

    .line 3159
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3160
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3161
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3147
    .end local v0    # "_result":I
    :pswitch_565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3149
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3150
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3151
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setCommunicationDevice(Landroid/os/IBinder;I)Z

    move-result v2

    .line 3152
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3153
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3154
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3139
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_57e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAvailableCommunicationDeviceIds()[I

    move-result-object v0

    .line 3140
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3141
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3142
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3130
    .end local v0    # "_result":[I
    :pswitch_58c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3131
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3132
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDeviceMaskForStream(I)I

    move-result v1

    .line 3133
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3134
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3135
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3120
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3121
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3122
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isMusicActive(Z)Z

    move-result v1

    .line 3123
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3124
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3125
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3098
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_5b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3100
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3102
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3104
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3106
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3108
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3110
    .local v20, "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/UserHandle;

    .line 3112
    .local v21, "_arg6":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3113
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3114
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3115
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3076
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/os/UserHandle;
    .end local v22    # "_arg7":I
    :pswitch_5f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3078
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3080
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3082
    .restart local v17    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3084
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3086
    .restart local v19    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3088
    .restart local v20    # "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/UserHandle;

    .line 3090
    .restart local v21    # "_arg6":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3091
    .restart local v22    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3092
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3093
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3054
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/os/UserHandle;
    .end local v22    # "_arg7":I
    :pswitch_638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3056
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3058
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3060
    .restart local v17    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3062
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3064
    .restart local v19    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3066
    .restart local v20    # "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/UserHandle;

    .line 3068
    .restart local v21    # "_arg6":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3069
    .restart local v22    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3070
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3071
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3046
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/os/UserHandle;
    .end local v22    # "_arg7":I
    :pswitch_679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v0

    .line 3047
    .local v0, "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3048
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3049
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3037
    .end local v0    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    :pswitch_68b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v0

    .line 3038
    .restart local v0    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3039
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3041
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3027
    .end local v0    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    :pswitch_6a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3028
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3029
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForCapturePreset(I)Ljava/util/List;

    move-result-object v1

    .line 3030
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3031
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3032
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3017
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_6b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3018
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3019
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->clearPreferredDevicesForCapturePreset(I)I

    move-result v1

    .line 3020
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3021
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3022
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 3005
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_6ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3007
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3008
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3009
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v2

    .line 3010
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3011
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3012
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2994
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v2    # "_result":I
    :pswitch_6e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2996
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2997
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2998
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->cacheParameters(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2999
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3000
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2986
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2987
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2988
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setMultiAudioFocusEnabled(Z)V

    .line 2989
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2978
    .end local v0    # "_arg0":Z
    :pswitch_708
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMiBLEConnect()Z

    move-result v0

    .line 2979
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2980
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2981
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2971
    .end local v0    # "_result":Z
    :pswitch_716
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAudioPolicyMatchUids()[I

    move-result-object v0

    .line 2972
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2973
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2974
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2958
    .end local v0    # "_result":[I
    :pswitch_724
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 2960
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2962
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2963
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2964
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->createAudioRecordForLoopbackWithClient(Landroid/os/ParcelFileDescriptor;JLandroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v4

    .line 2965
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2966
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2967
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2946
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/os/IBinder;
    :pswitch_745
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 2948
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2949
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2950
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->createAudioRecordForLoopback(Landroid/os/ParcelFileDescriptor;J)Landroid/os/IBinder;

    move-result-object v3

    .line 2951
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2952
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2953
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2934
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2936
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2937
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2938
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getDeviceStreamVolume(II)I

    move-result v2

    .line 2939
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2940
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2941
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2924
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_77b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2925
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2926
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getNotificationUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2927
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2928
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2929
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2914
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2915
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2916
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getPlayerVolume(Ljava/lang/String;)F

    move-result v1

    .line 2917
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2918
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2919
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2903
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":F
    :pswitch_7a5
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 2905
    .local v0, "_arg0":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 2906
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2907
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setPlayerVolume(Landroid/media/AudioPlaybackConfiguration;F)V

    .line 2908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2909
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2893
    .end local v0    # "_arg0":Landroid/media/AudioPlaybackConfiguration;
    .end local v1    # "_arg1":F
    :pswitch_7be
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 2894
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2895
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v1

    .line 2896
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2897
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2898
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2880
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":I
    :pswitch_7d7
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 2882
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2884
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2885
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2886
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 2887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2888
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2872
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_7f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2873
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2874
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setRttEnabled(Z)V

    .line 2875
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2864
    .end local v0    # "_arg0":Z
    :pswitch_802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v0

    .line 2865
    .local v0, "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2866
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 2867
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2855
    .end local v0    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    :pswitch_814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v0

    .line 2856
    .restart local v0    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2857
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 2858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2859
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2847
    .end local v0    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    :pswitch_829
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAllowedCapturePolicy()I

    move-result v0

    .line 2848
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2849
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2850
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2838
    .end local v0    # "_result":I
    :pswitch_837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2839
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2840
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setAllowedCapturePolicy(I)I

    move-result v1

    .line 2841
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2842
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2843
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2828
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_84c
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 2829
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2830
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDevicesForAttributesUnprotected(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1

    .line 2831
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2832
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2833
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2818
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_865
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 2819
    .restart local v0    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2820
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1

    .line 2821
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2822
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2823
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2808
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_87e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2809
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2810
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object v1

    .line 2811
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2812
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2813
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2798
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2799
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2800
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removePreferredDevicesForStrategy(I)I

    move-result v1

    .line 2801
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2802
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2803
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2786
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_8a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2788
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2789
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2790
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v2

    .line 2791
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2792
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2793
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2778
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v2    # "_result":I
    :pswitch_8c3
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCallScreeningModeSupported()Z

    move-result v0

    .line 2779
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2780
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2781
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2769
    .end local v0    # "_result":Z
    :pswitch_8d1
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2770
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2771
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v1

    .line 2772
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2773
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2774
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2757
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_result":Z
    :pswitch_8ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2759
    .local v0, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2760
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2761
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v2

    .line 2762
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2763
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2764
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2741
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2743
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2745
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 2747
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 2748
    .local v3, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2749
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v4

    .line 2750
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2751
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2752
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2729
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_92c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2731
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2732
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2733
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v2

    .line 2734
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2735
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2736
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2713
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2715
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2717
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 2719
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 2720
    .restart local v3    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2721
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v4

    .line 2722
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2723
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2724
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2705
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_96e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isAudioServerRunning()Z

    move-result v0

    .line 2706
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2707
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2708
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2698
    .end local v0    # "_result":Z
    :pswitch_97c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v0

    .line 2699
    .local v0, "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2700
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 2701
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2689
    .end local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_98e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v0

    .line 2690
    .restart local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2691
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 2692
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2693
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2677
    .end local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_9a3
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    .line 2679
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2681
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 2682
    .local v2, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2683
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 2684
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2664
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_9c1
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2666
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2668
    .local v1, "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/media/BluetoothProfileConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/BluetoothProfileConnectionInfo;

    .line 2669
    .local v2, "_arg2":Landroid/media/BluetoothProfileConnectionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2670
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    .line 2671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2672
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2654
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg2":Landroid/media/BluetoothProfileConnectionInfo;
    :pswitch_9e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2656
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2657
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2658
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playerHasOpPlayAudio(IZ)V

    .line 2659
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2640
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_9f8
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    .line 2642
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2644
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 2645
    .local v2, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2646
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    .line 2647
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2648
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2649
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2628
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":I
    :pswitch_a1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2630
    .local v0, "_arg0":I
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 2631
    .local v1, "_arg1":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2632
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v2

    .line 2633
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2634
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2635
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2620
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/AudioAttributes;
    .end local v2    # "_result":I
    :pswitch_a3a
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    .line 2621
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2622
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2623
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2613
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :pswitch_a48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    .line 2614
    .local v0, "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2615
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 2616
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2604
    .end local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_a5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    .line 2605
    .restart local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2606
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 2607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2608
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2596
    .end local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_a6f
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v0

    .line 2597
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2598
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2599
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2589
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :pswitch_a7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v0

    .line 2590
    .local v0, "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2591
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 2592
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2580
    .end local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_a8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v0

    .line 2581
    .restart local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2582
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 2583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2584
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2572
    .end local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_aa4
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->hasRegisteredDynamicPolicy()Z

    move-result v0

    .line 2573
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2574
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2575
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2564
    .end local v0    # "_result":Z
    :pswitch_ab2
    sget-object v0, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumePolicy;

    .line 2565
    .local v0, "_arg0":Landroid/media/VolumePolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2566
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 2567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2568
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2552
    .end local v0    # "_arg0":Landroid/media/VolumePolicy;
    :pswitch_ac7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2554
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 2555
    .local v1, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2556
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 2557
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2558
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2559
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2540
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_ae4
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 2542
    .local v0, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 2543
    .restart local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2544
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 2545
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2546
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2547
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2528
    .end local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_b05
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 2530
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 2531
    .restart local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2532
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 2533
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2534
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2535
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2519
    .end local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_b26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2520
    .local v0, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2521
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 2522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2523
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2511
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_b3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2512
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2513
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 2514
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2489
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_b4d
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 2491
    .local v8, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v9

    .line 2493
    .local v9, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 2495
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 2497
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 2499
    .local v18, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 2501
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v20

    .line 2502
    .local v20, "_arg6":Landroid/media/projection/IMediaProjection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2503
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;

    move-result-object v0

    .line 2504
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2505
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2506
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2481
    .end local v0    # "_result":Ljava/lang/String;
    .end local v8    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v9    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":Z
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":Landroid/media/projection/IMediaProjection;
    :pswitch_b95
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v0

    .line 2482
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2483
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2484
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2472
    .end local v0    # "_result":Z
    :pswitch_ba3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2473
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2474
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v1

    .line 2475
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2476
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2477
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2463
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_bb8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2464
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2465
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    .line 2466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2467
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2453
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_bc9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2454
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2455
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v1

    .line 2456
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2457
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2458
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2443
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_bde
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2444
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2445
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    .line 2446
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2447
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2448
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2432
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_bf3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    .line 2434
    .local v0, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2435
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2436
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 2437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2438
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2423
    .end local v0    # "_arg0":Landroid/media/IVolumeController;
    .end local v1    # "_arg1":Z
    :pswitch_c0c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    .line 2424
    .restart local v0    # "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2425
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 2426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2427
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2415
    .end local v0    # "_arg0":Landroid/media/IVolumeController;
    :pswitch_c21
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v0

    .line 2416
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2417
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2418
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2406
    .end local v0    # "_result":Z
    :pswitch_c2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v0

    .line 2407
    .local v0, "_arg0":Landroid/media/IAudioRoutesObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2408
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1

    .line 2409
    .local v1, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2410
    invoke-virtual {v14, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2411
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2389
    .end local v0    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v1    # "_result":Landroid/media/AudioRoutesInfo;
    :pswitch_c48
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 2391
    .local v6, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2393
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2395
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 2397
    .local v9, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2398
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2399
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->handleBluetoothA2dpActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 2400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2401
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2376
    .end local v6    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Z
    .end local v16    # "_arg4":I
    :pswitch_c76
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 2378
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2380
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2381
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2382
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 2383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2384
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2368
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_c93
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v0

    .line 2369
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2370
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2371
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2361
    .end local v0    # "_result":I
    :pswitch_ca1
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 2362
    .local v0, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2363
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2364
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2353
    .end local v0    # "_result":Landroid/media/IRingtonePlayer;
    :pswitch_caf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 2354
    .local v0, "_arg0":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2355
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 2356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2357
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2342
    .end local v0    # "_arg0":Landroid/media/IRingtonePlayer;
    :pswitch_cc4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2344
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2345
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2346
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 2347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2348
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2333
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_cd9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2334
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2335
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 2336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2337
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2324
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_cea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2325
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2326
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    .line 2327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2328
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2313
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_cfb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2315
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2316
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2317
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 2318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2319
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2305
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_d10
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v0

    .line 2306
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2307
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2308
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2297
    .end local v0    # "_result":I
    :pswitch_d1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2298
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2299
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 2300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2301
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2281
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    .line 2283
    .local v0, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2285
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 2287
    .local v2, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2288
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2289
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    .line 2290
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2291
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2292
    move/from16 v26, v10

    goto/16 :goto_1275

    .line 2253
    .end local v0    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/media/AudioAttributes;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_d58
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/AudioAttributes;

    .line 2255
    .local v16, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2257
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 2259
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v19

    .line 2261
    .local v19, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2263
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2265
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 2267
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 2269
    .restart local v23    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v24

    .line 2271
    .local v24, "_arg8":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 2272
    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2273
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v26, v10

    move/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v0

    .line 2274
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2275
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2276
    goto/16 :goto_1275

    .line 2245
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/media/AudioAttributes;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v25    # "_arg9":I
    :pswitch_db5
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v0

    .line 2246
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2247
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2248
    goto/16 :goto_1275

    .line 2237
    .end local v0    # "_result":Z
    :pswitch_dc3
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2238
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2239
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 2240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2241
    goto/16 :goto_1275

    .line 2229
    .end local v0    # "_arg0":Z
    :pswitch_dd4
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v0

    .line 2230
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2231
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2232
    goto/16 :goto_1275

    .line 2221
    .end local v0    # "_result":Z
    :pswitch_de2
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2222
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2223
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 2224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2225
    goto/16 :goto_1275

    .line 2213
    .end local v0    # "_arg0":Z
    :pswitch_df3
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v0

    .line 2214
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2215
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2216
    goto/16 :goto_1275

    .line 2203
    .end local v0    # "_result":Z
    :pswitch_e01
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2205
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2206
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2207
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Landroid/os/IBinder;Z)V

    .line 2208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2209
    goto/16 :goto_1275

    .line 2193
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_e16
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2194
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2195
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getEncodedSurroundMode(I)I

    move-result v1

    .line 2196
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2197
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2198
    goto/16 :goto_1275

    .line 2183
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e2b
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2184
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2185
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setEncodedSurroundMode(I)Z

    move-result v1

    .line 2186
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2187
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2188
    goto/16 :goto_1275

    .line 2173
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_e40
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2174
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2175
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isSurroundFormatEnabled(I)Z

    move-result v1

    .line 2176
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2177
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2178
    goto/16 :goto_1275

    .line 2161
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_e55
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2163
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2164
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2165
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSurroundFormatEnabled(IZ)Z

    move-result v2

    .line 2166
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2167
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2168
    goto/16 :goto_1275

    .line 2153
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_e6e
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v0

    .line 2154
    .local v0, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2155
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2156
    goto/16 :goto_1275

    .line 2146
    .end local v0    # "_result":Ljava/util/List;
    :pswitch_e7c
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSurroundFormats()Ljava/util/Map;

    move-result-object v0

    .line 2147
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2148
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2149
    goto/16 :goto_1275

    .line 2141
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_e8a
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 2142
    goto/16 :goto_1275

    .line 2136
    :pswitch_e91
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 2137
    goto/16 :goto_1275

    .line 2129
    :pswitch_e98
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v0

    .line 2130
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2131
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2132
    goto/16 :goto_1275

    .line 2120
    .end local v0    # "_result":Z
    :pswitch_ea6
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2122
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 2123
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2124
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 2125
    goto/16 :goto_1275

    .line 2110
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_eb8
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2112
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2113
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2114
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(II)V

    .line 2115
    goto/16 :goto_1275

    .line 2102
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_eca
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v0

    .line 2103
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2104
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2105
    goto/16 :goto_1275

    .line 2090
    .end local v0    # "_result":I
    :pswitch_ed8
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2092
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2094
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2095
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2096
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 2097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    goto/16 :goto_1275

    .line 2080
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_ef1
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2081
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2082
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v1

    .line 2083
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2084
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2085
    goto/16 :goto_1275

    .line 2070
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f06
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2071
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2072
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v1

    .line 2073
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2074
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    goto/16 :goto_1275

    .line 2059
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_f1b
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2061
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2062
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2063
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 2064
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2065
    goto/16 :goto_1275

    .line 2049
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f30
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2050
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2051
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v1

    .line 2052
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2053
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2054
    goto/16 :goto_1275

    .line 2041
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f45
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v0

    .line 2042
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2043
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2044
    goto/16 :goto_1275

    .line 2034
    .end local v0    # "_result":I
    :pswitch_f53
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v0

    .line 2035
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2036
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2037
    goto/16 :goto_1275

    .line 2024
    .end local v0    # "_result":I
    :pswitch_f61
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2026
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2027
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2028
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    .line 2029
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2030
    goto/16 :goto_1275

    .line 2013
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_f76
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2015
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2016
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2017
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    .line 2018
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2019
    goto/16 :goto_1275

    .line 2005
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_f8b
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2006
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2007
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setMicrophoneMuteFromSwitch(Z)V

    .line 2008
    goto/16 :goto_1275

    .line 1990
    .end local v0    # "_arg0":Z
    :pswitch_f99
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1992
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1994
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1996
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1997
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1998
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;ILjava/lang/String;)V

    .line 1999
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2000
    goto/16 :goto_1275

    .line 1982
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_fb6
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isUltrasoundSupported()Z

    move-result v0

    .line 1983
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1984
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1985
    goto/16 :goto_1275

    .line 1975
    .end local v0    # "_result":Z
    :pswitch_fc4
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMicrophoneMuted()Z

    move-result v0

    .line 1976
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1977
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1978
    goto/16 :goto_1275

    .line 1968
    .end local v0    # "_result":Z
    :pswitch_fd2
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    .line 1969
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1970
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1971
    goto/16 :goto_1275

    .line 1961
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    :pswitch_fe0
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSupportedSystemUsages()[I

    move-result-object v0

    .line 1962
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1963
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1964
    goto/16 :goto_1275

    .line 1953
    .end local v0    # "_result":[I
    :pswitch_fee
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1954
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1955
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setSupportedSystemUsages([I)V

    .line 1956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    goto/16 :goto_1275

    .line 1943
    .end local v0    # "_arg0":[I
    :pswitch_fff
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1944
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1945
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v1

    .line 1946
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1947
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1948
    goto/16 :goto_1275

    .line 1933
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1014
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 1934
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1935
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 1936
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1937
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    goto/16 :goto_1275

    .line 1923
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":I
    :pswitch_102d
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 1924
    .restart local v0    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1925
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 1926
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1927
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1928
    goto/16 :goto_1275

    .line 1913
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":I
    :pswitch_1046
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 1914
    .restart local v0    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1915
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 1916
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1917
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1918
    goto/16 :goto_1275

    .line 1896
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":I
    :pswitch_105f
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/AudioAttributes;

    .line 1898
    .local v6, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1900
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1902
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1904
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1905
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1906
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 1907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    goto/16 :goto_1275

    .line 1888
    .end local v6    # "_arg0":Landroid/media/AudioAttributes;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_108c
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    .line 1889
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1890
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1891
    goto/16 :goto_1275

    .line 1879
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    :pswitch_109a
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1880
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1881
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v1

    .line 1882
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1883
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1884
    goto/16 :goto_1275

    .line 1869
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_10af
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1870
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1871
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v1

    .line 1872
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1873
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    goto/16 :goto_1275

    .line 1859
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_10c4
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1860
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1861
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v1

    .line 1862
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    goto/16 :goto_1275

    .line 1842
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_10d9
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1844
    .local v6, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1846
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1848
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1850
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1851
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1852
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;ILjava/lang/String;)V

    .line 1853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1854
    goto/16 :goto_1275

    .line 1834
    .end local v6    # "_arg0":Z
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_1101
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v0

    .line 1835
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1836
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1837
    goto/16 :goto_1275

    .line 1824
    .end local v0    # "_result":Z
    :pswitch_110f
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1826
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1827
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1828
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 1829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1830
    goto/16 :goto_1275

    .line 1814
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_1124
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1815
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1816
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v1

    .line 1817
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1819
    goto/16 :goto_1275

    .line 1800
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1139
    move/from16 v26, v10

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 1802
    .local v0, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1804
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1806
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1807
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1808
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1809
    goto/16 :goto_1275

    .line 1783
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_1157
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1785
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1787
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1789
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1791
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1792
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1793
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1795
    goto/16 :goto_1275

    .line 1768
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_117f
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1770
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1772
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1774
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1775
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1776
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 1777
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    goto/16 :goto_1275

    .line 1751
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_119c
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1753
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1755
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1757
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1759
    .restart local v9    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1760
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1761
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    goto/16 :goto_1275

    .line 1736
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_11c4
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1738
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1740
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1742
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1743
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1744
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 1745
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    goto/16 :goto_1275

    .line 1726
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_11e1
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1728
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1729
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1730
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playerSessionId(II)V

    .line 1731
    goto/16 :goto_1275

    .line 1718
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_11f3
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1719
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1720
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->releaseRecorder(I)V

    .line 1721
    goto/16 :goto_1275

    .line 1708
    .end local v0    # "_arg0":I
    :pswitch_1201
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1710
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1711
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1712
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->recorderEvent(II)V

    .line 1713
    goto :goto_1275

    .line 1698
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1212
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1699
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1700
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->trackRecorder(Landroid/os/IBinder;)I

    move-result v1

    .line 1701
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1703
    goto :goto_1275

    .line 1690
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_1226
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1691
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1692
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->releasePlayer(I)V

    .line 1693
    goto :goto_1275

    .line 1678
    .end local v0    # "_arg0":I
    :pswitch_1233
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1680
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1682
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1683
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1684
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->playerEvent(III)V

    .line 1685
    goto :goto_1275

    .line 1668
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_1248
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1670
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 1671
    .local v1, "_arg1":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1672
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playerAttributes(ILandroid/media/AudioAttributes;)V

    .line 1673
    goto :goto_1275

    .line 1658
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/AudioAttributes;
    :pswitch_125d
    move/from16 v26, v10

    sget-object v0, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase$PlayerIdCard;

    .line 1659
    .local v0, "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1660
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v1

    .line 1661
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1662
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1663
    nop

    .line 3754
    .end local v0    # "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    .end local v1    # "_result":I
    :goto_1275
    return v26

    :pswitch_data_1276
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_127c
    .packed-switch 0x1
        :pswitch_125d
        :pswitch_1248
        :pswitch_1233
        :pswitch_1226
        :pswitch_1212
        :pswitch_1201
        :pswitch_11f3
        :pswitch_11e1
        :pswitch_11c4
        :pswitch_119c
        :pswitch_117f
        :pswitch_1157
        :pswitch_1139
        :pswitch_1124
        :pswitch_110f
        :pswitch_1101
        :pswitch_10d9
        :pswitch_10c4
        :pswitch_10af
        :pswitch_109a
        :pswitch_108c
        :pswitch_105f
        :pswitch_1046
        :pswitch_102d
        :pswitch_1014
        :pswitch_fff
        :pswitch_fee
        :pswitch_fe0
        :pswitch_fd2
        :pswitch_fc4
        :pswitch_fb6
        :pswitch_f99
        :pswitch_f8b
        :pswitch_f76
        :pswitch_f61
        :pswitch_f53
        :pswitch_f45
        :pswitch_f30
        :pswitch_f1b
        :pswitch_f06
        :pswitch_ef1
        :pswitch_ed8
        :pswitch_eca
        :pswitch_eb8
        :pswitch_ea6
        :pswitch_e98
        :pswitch_e91
        :pswitch_e8a
        :pswitch_e7c
        :pswitch_e6e
        :pswitch_e55
        :pswitch_e40
        :pswitch_e2b
        :pswitch_e16
        :pswitch_e01
        :pswitch_df3
        :pswitch_de2
        :pswitch_dd4
        :pswitch_dc3
        :pswitch_db5
        :pswitch_d58
        :pswitch_d2f
        :pswitch_d1e
        :pswitch_d10
        :pswitch_cfb
        :pswitch_cea
        :pswitch_cd9
        :pswitch_cc4
        :pswitch_caf
        :pswitch_ca1
        :pswitch_c93
        :pswitch_c76
        :pswitch_c48
        :pswitch_c2f
        :pswitch_c21
        :pswitch_c0c
        :pswitch_bf3
        :pswitch_bde
        :pswitch_bc9
        :pswitch_bb8
        :pswitch_ba3
        :pswitch_b95
        :pswitch_b4d
        :pswitch_b3b
        :pswitch_b26
        :pswitch_b05
        :pswitch_ae4
        :pswitch_ac7
        :pswitch_ab2
        :pswitch_aa4
        :pswitch_a8f
        :pswitch_a7d
        :pswitch_a6f
        :pswitch_a5a
        :pswitch_a48
        :pswitch_a3a
        :pswitch_a1d
        :pswitch_9f8
        :pswitch_9e6
        :pswitch_9c1
        :pswitch_9a3
        :pswitch_98e
        :pswitch_97c
        :pswitch_96e
        :pswitch_949
        :pswitch_92c
        :pswitch_907
        :pswitch_8ea
        :pswitch_8d1
        :pswitch_8c3
        :pswitch_8a8
        :pswitch_893
        :pswitch_87e
        :pswitch_865
        :pswitch_84c
        :pswitch_837
        :pswitch_829
        :pswitch_814
        :pswitch_802
        :pswitch_7f4
        :pswitch_7d7
        :pswitch_7be
        :pswitch_7a5
        :pswitch_790
        :pswitch_77b
        :pswitch_762
        :pswitch_745
        :pswitch_724
        :pswitch_716
        :pswitch_708
        :pswitch_6fa
        :pswitch_6e5
        :pswitch_6ca
        :pswitch_6b5
        :pswitch_6a0
        :pswitch_68b
        :pswitch_679
        :pswitch_638
        :pswitch_5f7
        :pswitch_5b6
        :pswitch_5a1
        :pswitch_58c
        :pswitch_57e
        :pswitch_565
        :pswitch_557
        :pswitch_542
        :pswitch_530
        :pswitch_522
        :pswitch_514
        :pswitch_506
        :pswitch_4f8
        :pswitch_4db
        :pswitch_4c2
        :pswitch_4a9
        :pswitch_456
        :pswitch_42d
        :pswitch_414
        :pswitch_3ff
        :pswitch_3ed
        :pswitch_3df
        :pswitch_3d1
        :pswitch_3c3
        :pswitch_3aa
        :pswitch_391
        :pswitch_378
        :pswitch_35f
        :pswitch_351
        :pswitch_338
        :pswitch_327
        :pswitch_306
        :pswitch_2f1
        :pswitch_2dc
        :pswitch_2c7
        :pswitch_2b2
        :pswitch_29d
        :pswitch_288
        :pswitch_27a
        :pswitch_265
        :pswitch_250
        :pswitch_23f
        :pswitch_231
        :pswitch_223
        :pswitch_215
        :pswitch_207
        :pswitch_200
        :pswitch_1eb
        :pswitch_1d3
        :pswitch_1c5
        :pswitch_1b0
        :pswitch_19b
        :pswitch_18d
        :pswitch_17f
        :pswitch_171
        :pswitch_157
        :pswitch_145
        :pswitch_137
        :pswitch_11e
        :pswitch_105
        :pswitch_ec
        :pswitch_de
        :pswitch_bd
        :pswitch_ac
        :pswitch_9b
        :pswitch_8a
        :pswitch_7c
        :pswitch_6e
        :pswitch_32
        :pswitch_24
    .end packed-switch
.end method
