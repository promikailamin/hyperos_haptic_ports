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

.field static final blacklist PERMISSIONS_addOnDevicesForAttributesChangedListener:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_adjustVolumeForDevice:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getAudioProductStrategies:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getAudioVolumeGroups:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupIdForAttributes:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_notifyAbsoluteVolumeChanged:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setVolumeForDevice:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

.field static final greylist-max-o TRANSACTION_abandonAudioFocus:I = 0x53

.field static final blacklist TRANSACTION_abandonAudioFocusForTest:I = 0xcd

.field static final blacklist TRANSACTION_addAssistantServicesUids:I = 0x103

.field static final blacklist TRANSACTION_addLoudnessCodecInfo:I = 0x115

.field static final greylist-max-o TRANSACTION_addMixForPolicy:I = 0x81

.field static final blacklist TRANSACTION_addOnDevicesForAttributesChangedListener:I = 0xa7

.field static final blacklist TRANSACTION_addSpatializerCompatibleAudioDevice:I = 0xe9

.field static final greylist-max-o TRANSACTION_adjustStreamVolume:I = 0xd

.field static final blacklist TRANSACTION_adjustStreamVolumeForUid:I = 0xb9

.field static final blacklist TRANSACTION_adjustStreamVolumeWithAttribution:I = 0xe

.field static final greylist-max-o TRANSACTION_adjustSuggestedStreamVolume:I = 0xbd

.field static final blacklist TRANSACTION_adjustSuggestedStreamVolumeForUid:I = 0xba

.field static final blacklist TRANSACTION_adjustVolume:I = 0xbc

.field static final blacklist TRANSACTION_adjustVolumeForDevice:I = 0x13

.field static final blacklist TRANSACTION_adjustVolumeGroupVolume:I = 0x26

.field static final blacklist TRANSACTION_areNavigationRepeatSoundEffectsEnabled:I = 0xc5

.field static final blacklist TRANSACTION_canBeSpatialized:I = 0xe0

.field static final blacklist TRANSACTION_cancelMuteAwaitConnection:I = 0xfa

.field static final blacklist TRANSACTION_clearFadeManagerConfigurationForFocusLoss:I = 0x119

.field static final blacklist TRANSACTION_clearPreferredDevicesForCapturePreset:I = 0xb5

.field static final blacklist TRANSACTION_clearPreferredMixerAttributes:I = 0x10b

.field static final greylist-max-o TRANSACTION_disableSafeMediaVolume:I = 0x6c

.field static final greylist-max-o TRANSACTION_dispatchFocusChange:I = 0x8f

.field static final blacklist TRANSACTION_dispatchFocusChangeWithFade:I = 0x90

.field static final blacklist TRANSACTION_enterAudioFocusFreezeForTest:I = 0xd2

.field static final blacklist TRANSACTION_exitAudioFocusFreezeForTest:I = 0xd3

.field static final blacklist TRANSACTION_forceComputeCsdOnAllDevices:I = 0x73

.field static final greylist-max-o TRANSACTION_forceRemoteSubmixFullVolume:I = 0x18

.field static final blacklist TRANSACTION_forceUseFrameworkMel:I = 0x72

.field static final greylist-max-o TRANSACTION_forceVolumeControlStream:I = 0x59

.field static final blacklist TRANSACTION_getActiveAssistantServiceUids:I = 0x107

.field static final greylist-max-o TRANSACTION_getActivePlaybackConfigurations:I = 0x8d

.field static final greylist-max-o TRANSACTION_getActiveRecordingConfigurations:I = 0x8a

.field static final blacklist TRANSACTION_getActualHeadTrackingMode:I = 0xee

.field static final blacklist TRANSACTION_getAdditionalOutputDeviceDelay:I = 0xca

.field static final blacklist TRANSACTION_getAllowedCapturePolicy:I = 0xaa

.field static final blacklist TRANSACTION_getAssistantServicesUids:I = 0x106

.field static final blacklist TRANSACTION_getAudioProductStrategies:I = 0x2a

.field static final blacklist TRANSACTION_getAudioVolumeGroups:I = 0x1e

.field static final blacklist TRANSACTION_getAvailableCommunicationDeviceIds:I = 0xc0

.field static final blacklist TRANSACTION_getBluetoothAudioDeviceCategory:I = 0x79

.field static final blacklist TRANSACTION_getCommunicationDevice:I = 0xc2

.field static final blacklist TRANSACTION_getCsd:I = 0x70

.field static final greylist-max-o TRANSACTION_getCurrentAudioFocus:I = 0x55

.field static final blacklist TRANSACTION_getDefaultVolumeInfo:I = 0xf7

.field static final blacklist TRANSACTION_getDesiredHeadTrackingMode:I = 0xec

.field static final blacklist TRANSACTION_getDeviceMaskForStream:I = 0xbf

.field static final blacklist TRANSACTION_getDeviceVolume:I = 0x15

.field static final blacklist TRANSACTION_getDeviceVolumeBehavior:I = 0xb1

.field static final blacklist TRANSACTION_getDevicesForAttributes:I = 0xa5

.field static final blacklist TRANSACTION_getDevicesForAttributesUnprotected:I = 0xa6

.field static final blacklist TRANSACTION_getEncodedSurroundMode:I = 0x49

.field static final blacklist TRANSACTION_getFadeManagerConfigurationForFocusLoss:I = 0x11a

.field static final blacklist TRANSACTION_getFadeOutDurationOnFocusLossMillis:I = 0xce

.field static final blacklist TRANSACTION_getFocusDuckedUidsForTest:I = 0xcf

.field static final blacklist TRANSACTION_getFocusFadeOutDurationForTest:I = 0xd0

.field static final greylist-max-o TRANSACTION_getFocusRampTimeMs:I = 0x8e

.field static final blacklist TRANSACTION_getFocusStack:I = 0xff

.field static final blacklist TRANSACTION_getFocusUnmuteDelayAfterFadeOutForTest:I = 0xd1

.field static final blacklist TRANSACTION_getHalVersion:I = 0x109

.field static final blacklist TRANSACTION_getIndependentStreamTypes:I = 0x5d

.field static final blacklist TRANSACTION_getInputGainIndex:I = 0x30

.field static final greylist-max-o TRANSACTION_getLastAudibleStreamVolume:I = 0x27

.field static final blacklist TRANSACTION_getLastAudibleVolumeForVolumeGroup:I = 0x24

.field static final blacklist TRANSACTION_getLoudnessParams:I = 0x117

.field static final blacklist TRANSACTION_getMaxAdditionalOutputDeviceDelay:I = 0xcb

.field static final blacklist TRANSACTION_getMaxInputGainIndex:I = 0x31

.field static final blacklist TRANSACTION_getMinInputGainIndex:I = 0x32

.field static final greylist-max-o TRANSACTION_getMode:I = 0x3e

.field static final blacklist TRANSACTION_getMutingExpectedDevice:I = 0xfb

.field static final blacklist TRANSACTION_getNativeInterface:I = 0x1

.field static final blacklist TRANSACTION_getNonDefaultDevicesForStrategy:I = 0xa4

.field static final blacklist TRANSACTION_getOutputRs2UpperBound:I = 0x6e

.field static final blacklist TRANSACTION_getPreferredDevicesForCapturePreset:I = 0xb6

.field static final blacklist TRANSACTION_getPreferredDevicesForStrategy:I = 0xa1

.field static final blacklist TRANSACTION_getRegisteredPolicyMixes:I = 0x7f

.field static final blacklist TRANSACTION_getReportedSurroundFormats:I = 0x45

.field static final greylist-max-o TRANSACTION_getRingerModeExternal:I = 0x37

.field static final greylist-max-o TRANSACTION_getRingerModeInternal:I = 0x38

.field static final greylist-max-o TRANSACTION_getRingtonePlayer:I = 0x5b

.field static final blacklist TRANSACTION_getSpatializedChannelMasks:I = 0xe1

.field static final blacklist TRANSACTION_getSpatializerCompatibleAudioDevices:I = 0xe8

.field static final blacklist TRANSACTION_getSpatializerImmersiveAudioLevel:I = 0xd6

.field static final blacklist TRANSACTION_getSpatializerOutput:I = 0xf3

.field static final blacklist TRANSACTION_getSpatializerParameter:I = 0xf2

.field static final greylist-max-o TRANSACTION_getStreamMaxVolume:I = 0x1d

.field static final greylist-max-o TRANSACTION_getStreamMinVolume:I = 0x1c

.field static final blacklist TRANSACTION_getStreamTypeAlias:I = 0x5e

.field static final greylist-max-o TRANSACTION_getStreamVolume:I = 0x1b

.field static final blacklist TRANSACTION_getSupportedHeadTrackingModes:I = 0xed

.field static final blacklist TRANSACTION_getSupportedSystemUsages:I = 0x29

.field static final blacklist TRANSACTION_getSurroundFormats:I = 0x44

.field static final greylist-max-o TRANSACTION_getUiSoundsStreamType:I = 0x5c

.field static final greylist-max-o TRANSACTION_getVibrateSetting:I = 0x3b

.field static final blacklist TRANSACTION_getVolumeController:I = 0x66

.field static final blacklist TRANSACTION_getVolumeGroupIdForAttributes:I = 0x1f

.field static final blacklist TRANSACTION_getVolumeGroupMaxVolumeIndex:I = 0x22

.field static final blacklist TRANSACTION_getVolumeGroupMinVolumeIndex:I = 0x23

.field static final blacklist TRANSACTION_getVolumeGroupVolumeIndex:I = 0x21

.field static final blacklist TRANSACTION_getVolumePolicy:I = 0x86

.field static final blacklist TRANSACTION_handleBluetoothActiveDeviceChanged:I = 0x92

.field static final blacklist TRANSACTION_handleVolumeKey:I = 0x16

.field static final blacklist TRANSACTION_hasAudioFocus:I = 0x100

.field static final blacklist TRANSACTION_hasHapticChannels:I = 0x9d

.field static final blacklist TRANSACTION_hasHeadTracker:I = 0xda

.field static final blacklist TRANSACTION_hasRegisteredDynamicPolicy:I = 0x87

.field static final greylist-max-o TRANSACTION_isAudioServerRunning:I = 0x96

.field static final greylist-max-o TRANSACTION_isBluetoothA2dpOn:I = 0x51

.field static final blacklist TRANSACTION_isBluetoothAudioDeviceCategoryFixed:I = 0x7a

.field static final greylist-max-o TRANSACTION_isBluetoothScoOn:I = 0x4f

.field static final blacklist TRANSACTION_isBluetoothVariableLatencyEnabled:I = 0x110

.field static final blacklist TRANSACTION_isCallScreeningModeSupported:I = 0x9e

.field static final greylist-max-o TRANSACTION_isCameraSoundForced:I = 0x64

.field static final blacklist TRANSACTION_isCsdAsAFeatureAvailable:I = 0x75

.field static final blacklist TRANSACTION_isCsdAsAFeatureEnabled:I = 0x76

.field static final blacklist TRANSACTION_isCsdEnabled:I = 0x74

.field static final greylist-max-o TRANSACTION_isHdmiSystemAudioSupported:I = 0x7c

.field static final blacklist TRANSACTION_isHeadTrackerAvailable:I = 0xdd

.field static final blacklist TRANSACTION_isHeadTrackerEnabled:I = 0xdc

.field static final blacklist TRANSACTION_isHomeSoundEffectEnabled:I = 0xc7

.field static final blacklist TRANSACTION_isHotwordStreamSupported:I = 0x2d

.field static final blacklist TRANSACTION_isInputGainFixed:I = 0x33

.field static final greylist-max-o TRANSACTION_isMasterMute:I = 0x19

.field static final blacklist TRANSACTION_isMicrophoneMuted:I = 0x2b

.field static final blacklist TRANSACTION_isMultiAudioFocusEnabled:I = 0xb3

.field static final blacklist TRANSACTION_isMusicActive:I = 0xbe

.field static final blacklist TRANSACTION_isPstnCallAudioInterceptable:I = 0xf8

.field static final blacklist TRANSACTION_isScoManagedByAudio:I = 0x11d

.field static final blacklist TRANSACTION_isSpatializerAvailable:I = 0xd8

.field static final blacklist TRANSACTION_isSpatializerAvailableForDevice:I = 0xd9

.field static final blacklist TRANSACTION_isSpatializerEnabled:I = 0xd7

.field static final greylist-max-o TRANSACTION_isSpeakerphoneOn:I = 0x4b

.field static final greylist-max-o TRANSACTION_isStreamAffectedByMute:I = 0x6a

.field static final greylist-max-o TRANSACTION_isStreamAffectedByRingerMode:I = 0x69

.field static final blacklist TRANSACTION_isStreamMutableByUi:I = 0x6b

.field static final greylist-max-o TRANSACTION_isStreamMute:I = 0x17

.field static final blacklist TRANSACTION_isSurroundFormatEnabled:I = 0x47

.field static final blacklist TRANSACTION_isUltrasoundSupported:I = 0x2c

.field static final greylist-max-o TRANSACTION_isValidRingerMode:I = 0x39

.field static final blacklist TRANSACTION_isVolumeControlUsingVolumeGroups:I = 0x5f

.field static final blacklist TRANSACTION_isVolumeFixed:I = 0xf6

.field static final blacklist TRANSACTION_isVolumeGroupMuted:I = 0x25

.field static final greylist-max-o TRANSACTION_loadSoundEffects:I = 0x41

.field static final blacklist TRANSACTION_lowerVolumeToRs1:I = 0x6d

.field static final blacklist TRANSACTION_muteAwaitConnection:I = 0xf9

.field static final blacklist TRANSACTION_notifyAbsoluteVolumeChanged:I = 0x14

.field static final greylist-max-o TRANSACTION_notifyVolumeControllerVisible:I = 0x67

.field static final blacklist TRANSACTION_permissionUpdateBarrier:I = 0xb

.field static final greylist-max-o TRANSACTION_playSoundEffect:I = 0x3f

.field static final greylist-max-o TRANSACTION_playSoundEffectVolume:I = 0x40

.field static final greylist-max-o TRANSACTION_playerAttributes:I = 0x3

.field static final greylist-max-o TRANSACTION_playerEvent:I = 0x4

.field static final greylist-max-o TRANSACTION_playerHasOpPlayAudio:I = 0x91

.field static final blacklist TRANSACTION_playerSessionId:I = 0x9

.field static final blacklist TRANSACTION_portEvent:I = 0xa

.field static final blacklist TRANSACTION_recenterHeadTracker:I = 0xf0

.field static final blacklist TRANSACTION_recorderEvent:I = 0x7

.field static final greylist-max-o TRANSACTION_registerAudioPolicy:I = 0x7d

.field static final greylist-max-o TRANSACTION_registerAudioServerStateDispatcher:I = 0x94

.field static final blacklist TRANSACTION_registerAudioVolumeCallback:I = 0x97

.field static final blacklist TRANSACTION_registerCapturePresetDevicesRoleDispatcher:I = 0xb7

.field static final blacklist TRANSACTION_registerCommunicationDeviceDispatcher:I = 0xc3

.field static final blacklist TRANSACTION_registerDeviceVolumeBehaviorDispatcher:I = 0xfe

.field static final blacklist TRANSACTION_registerDeviceVolumeDispatcherForAbsoluteVolume:I = 0x108

.field static final blacklist TRANSACTION_registerHeadToSoundstagePoseCallback:I = 0xe6

.field static final blacklist TRANSACTION_registerLoudnessCodecUpdatesDispatcher:I = 0x111

.field static final blacklist TRANSACTION_registerModeDispatcher:I = 0xd4

.field static final blacklist TRANSACTION_registerMuteAwaitConnectionDispatcher:I = 0xfc

.field static final greylist-max-o TRANSACTION_registerPlaybackCallback:I = 0x8b

.field static final blacklist TRANSACTION_registerPreferredMixerAttributesDispatcher:I = 0x10c

.field static final greylist-max-o TRANSACTION_registerRecordingCallback:I = 0x88

.field static final blacklist TRANSACTION_registerSpatializerCallback:I = 0xe2

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackerAvailableCallback:I = 0xde

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackingCallback:I = 0xe4

.field static final blacklist TRANSACTION_registerSpatializerOutputCallback:I = 0xf4

.field static final blacklist TRANSACTION_registerStrategyNonDefaultDevicesDispatcher:I = 0xad

.field static final blacklist TRANSACTION_registerStrategyPreferredDevicesDispatcher:I = 0xab

.field static final blacklist TRANSACTION_registerStreamAliasingDispatcher:I = 0x60

.field static final greylist-max-o TRANSACTION_releasePlayer:I = 0x5

.field static final blacklist TRANSACTION_releaseRecorder:I = 0x8

.field static final greylist-max-o TRANSACTION_reloadAudioSettings:I = 0x43

.field static final blacklist TRANSACTION_removeAssistantServicesUids:I = 0x104

.field static final blacklist TRANSACTION_removeDeviceAsNonDefaultForStrategy:I = 0xa3

.field static final blacklist TRANSACTION_removeLoudnessCodecInfo:I = 0x116

.field static final greylist-max-o TRANSACTION_removeMixForPolicy:I = 0x82

.field static final blacklist TRANSACTION_removeOnDevicesForAttributesChangedListener:I = 0xa8

.field static final blacklist TRANSACTION_removePreferredDevicesForStrategy:I = 0xa0

.field static final blacklist TRANSACTION_removeSpatializerCompatibleAudioDevice:I = 0xea

.field static final blacklist TRANSACTION_removeUidDeviceAffinity:I = 0x9a

.field static final blacklist TRANSACTION_removeUserIdDeviceAffinity:I = 0x9c

.field static final greylist-max-o TRANSACTION_requestAudioFocus:I = 0x52

.field static final blacklist TRANSACTION_requestAudioFocusForTest:I = 0xcc

.field static final blacklist TRANSACTION_sendFocusLoss:I = 0x102

.field static final blacklist TRANSACTION_sendFocusLossAndUpdate:I = 0x101

.field static final blacklist TRANSACTION_setA2dpSuspended:I = 0x4d

.field static final blacklist TRANSACTION_setActiveAssistantServiceUids:I = 0x105

.field static final blacklist TRANSACTION_setAdditionalOutputDeviceDelay:I = 0xc9

.field static final blacklist TRANSACTION_setAllowedCapturePolicy:I = 0xa9

.field static final greylist-max-o TRANSACTION_setBluetoothA2dpOn:I = 0x50

.field static final blacklist TRANSACTION_setBluetoothAudioDeviceCategory:I = 0x78

.field static final greylist-max-o TRANSACTION_setBluetoothScoOn:I = 0x4c

.field static final blacklist TRANSACTION_setBluetoothVariableLatencyEnabled:I = 0x10f

.field static final blacklist TRANSACTION_setCommunicationDevice:I = 0xc1

.field static final blacklist TRANSACTION_setCsd:I = 0x71

.field static final blacklist TRANSACTION_setCsdAsAFeatureEnabled:I = 0x77

.field static final blacklist TRANSACTION_setDesiredHeadTrackingMode:I = 0xeb

.field static final blacklist TRANSACTION_setDeviceAsNonDefaultForStrategy:I = 0xa2

.field static final blacklist TRANSACTION_setDeviceVolume:I = 0x11

.field static final blacklist TRANSACTION_setDeviceVolumeBehavior:I = 0xb0

.field static final blacklist TRANSACTION_setEnableHardening:I = 0x11c

.field static final blacklist TRANSACTION_setEncodedSurroundMode:I = 0x48

.field static final blacklist TRANSACTION_setFadeManagerConfigurationForFocusLoss:I = 0x118

.field static final greylist-max-o TRANSACTION_setFocusPropertiesForPolicy:I = 0x84

.field static final greylist-max-o TRANSACTION_setFocusRequestResultFromExtPolicy:I = 0x93

.field static final greylist-max-o TRANSACTION_setHdmiSystemAudioSupported:I = 0x7b

.field static final blacklist TRANSACTION_setHeadTrackerEnabled:I = 0xdb

.field static final blacklist TRANSACTION_setHomeSoundEffectEnabled:I = 0xc8

.field static final blacklist TRANSACTION_setInputGainIndex:I = 0x2f

.field static final blacklist TRANSACTION_setLeAudioSuspended:I = 0x4e

.field static final greylist-max-o TRANSACTION_setMasterMute:I = 0x1a

.field static final greylist-max-o TRANSACTION_setMicrophoneMute:I = 0x2e

.field static final blacklist TRANSACTION_setMicrophoneMuteFromSwitch:I = 0x34

.field static final greylist-max-o TRANSACTION_setMode:I = 0x3d

.field static final blacklist TRANSACTION_setMultiAudioFocusEnabled:I = 0xb2

.field static final blacklist TRANSACTION_setNavigationRepeatSoundEffectsEnabled:I = 0xc6

.field static final blacklist TRANSACTION_setNotifAliasRingForTest:I = 0x61

.field static final blacklist TRANSACTION_setOutputRs2UpperBound:I = 0x6f

.field static final blacklist TRANSACTION_setPreferredDevicesForCapturePreset:I = 0xb4

.field static final blacklist TRANSACTION_setPreferredDevicesForStrategy:I = 0x9f

.field static final blacklist TRANSACTION_setPreferredMixerAttributes:I = 0x10a

.field static final greylist-max-o TRANSACTION_setRingerModeExternal:I = 0x35

.field static final greylist-max-o TRANSACTION_setRingerModeInternal:I = 0x36

.field static final greylist-max-o TRANSACTION_setRingtonePlayer:I = 0x5a

.field static final blacklist TRANSACTION_setRttEnabled:I = 0xaf

.field static final blacklist TRANSACTION_setSpatializerEnabled:I = 0xdf

.field static final blacklist TRANSACTION_setSpatializerGlobalTransform:I = 0xef

.field static final blacklist TRANSACTION_setSpatializerParameter:I = 0xf1

.field static final greylist-max-o TRANSACTION_setSpeakerphoneOn:I = 0x4a

.field static final greylist-max-o TRANSACTION_setStreamVolume:I = 0xf

.field static final blacklist TRANSACTION_setStreamVolumeForUid:I = 0xbb

.field static final blacklist TRANSACTION_setStreamVolumeWithAttribution:I = 0x10

.field static final blacklist TRANSACTION_setSupportedSystemUsages:I = 0x28

.field static final blacklist TRANSACTION_setSurroundFormatEnabled:I = 0x46

.field static final blacklist TRANSACTION_setTestDeviceConnectionState:I = 0xfd

.field static final blacklist TRANSACTION_setUidDeviceAffinity:I = 0x99

.field static final blacklist TRANSACTION_setUserIdDeviceAffinity:I = 0x9b

.field static final greylist-max-o TRANSACTION_setVibrateSetting:I = 0x3a

.field static final greylist-max-o TRANSACTION_setVolumeController:I = 0x65

.field static final blacklist TRANSACTION_setVolumeControllerLongPressTimeoutEnabled:I = 0x68

.field static final blacklist TRANSACTION_setVolumeForDevice:I = 0x12

.field static final blacklist TRANSACTION_setVolumeGroupVolumeIndex:I = 0x20

.field static final greylist-max-o TRANSACTION_setVolumePolicy:I = 0x85

.field static final greylist-max-o TRANSACTION_setWiredDeviceConnectionState:I = 0x62

.field static final blacklist TRANSACTION_shouldNotificationSoundPlay:I = 0x11b

.field static final greylist-max-o TRANSACTION_shouldVibrate:I = 0x3c

.field static final greylist-max-o TRANSACTION_startBluetoothSco:I = 0x56

.field static final greylist-max-o TRANSACTION_startBluetoothScoVirtualCall:I = 0x57

.field static final blacklist TRANSACTION_startLoudnessCodecUpdates:I = 0x113

.field static final greylist-max-o TRANSACTION_startWatchingRoutes:I = 0x63

.field static final greylist-max-o TRANSACTION_stopBluetoothSco:I = 0x58

.field static final blacklist TRANSACTION_stopLoudnessCodecUpdates:I = 0x114

.field static final blacklist TRANSACTION_supportsBluetoothVariableLatency:I = 0x10e

.field static final greylist-max-o TRANSACTION_trackPlayer:I = 0x2

.field static final blacklist TRANSACTION_trackRecorder:I = 0x6

.field static final greylist-max-o TRANSACTION_unloadSoundEffects:I = 0x42

.field static final greylist-max-o TRANSACTION_unregisterAudioFocusClient:I = 0x54

.field static final blacklist TRANSACTION_unregisterAudioPolicy:I = 0x80

.field static final greylist-max-o TRANSACTION_unregisterAudioPolicyAsync:I = 0x7e

.field static final greylist-max-o TRANSACTION_unregisterAudioServerStateDispatcher:I = 0x95

.field static final blacklist TRANSACTION_unregisterAudioVolumeCallback:I = 0x98

.field static final blacklist TRANSACTION_unregisterCapturePresetDevicesRoleDispatcher:I = 0xb8

.field static final blacklist TRANSACTION_unregisterCommunicationDeviceDispatcher:I = 0xc4

.field static final blacklist TRANSACTION_unregisterHeadToSoundstagePoseCallback:I = 0xe7

.field static final blacklist TRANSACTION_unregisterLoudnessCodecUpdatesDispatcher:I = 0x112

.field static final blacklist TRANSACTION_unregisterModeDispatcher:I = 0xd5

.field static final greylist-max-o TRANSACTION_unregisterPlaybackCallback:I = 0x8c

.field static final blacklist TRANSACTION_unregisterPreferredMixerAttributesDispatcher:I = 0x10d

.field static final greylist-max-o TRANSACTION_unregisterRecordingCallback:I = 0x89

.field static final blacklist TRANSACTION_unregisterSpatializerCallback:I = 0xe3

.field static final blacklist TRANSACTION_unregisterSpatializerHeadTrackingCallback:I = 0xe5

.field static final blacklist TRANSACTION_unregisterSpatializerOutputCallback:I = 0xf5

.field static final blacklist TRANSACTION_unregisterStrategyNonDefaultDevicesDispatcher:I = 0xae

.field static final blacklist TRANSACTION_unregisterStrategyPreferredDevicesDispatcher:I = 0xac

.field static final blacklist TRANSACTION_updateMixingRulesForPolicy:I = 0x83

.field static final blacklist TRANSACTION_waitForAudioHandlerBarrier:I = 0xc


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 9657
    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

    .line 9663
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_setVolumeForDevice:[Ljava/lang/String;

    .line 9669
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_adjustVolumeForDevice:[Ljava/lang/String;

    .line 9675
    const-string v2, "android.permission.BLUETOOTH_PRIVILEGED"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_notifyAbsoluteVolumeChanged:[Ljava/lang/String;

    .line 9681
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

    .line 9716
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getAudioVolumeGroups:[Ljava/lang/String;

    .line 9722
    const-string v2, "android.permission.QUERY_AUDIO_STATE"

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupIdForAttributes:[Ljava/lang/String;

    .line 9745
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/IAudioService$Stub;->PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

    .line 9751
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

    .line 9757
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

    .line 9763
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

    .line 9791
    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/IAudioService$Stub;->PERMISSIONS_getAudioProductStrategies:[Ljava/lang/String;

    .line 10151
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/IAudioService$Stub;->PERMISSIONS_addOnDevicesForAttributesChangedListener:[Ljava/lang/String;

    .line 10165
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

    .line 10171
    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1057
    nop

    .line 1058
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1057
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/IAudioService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 1059
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 1047
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1048
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1049
    if-eqz p1, :cond_d

    .line 1052
    iput-object p1, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 1053
    return-void

    .line 1050
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .registers 3

    .line 1066
    if-nez p0, :cond_4

    .line 1067
    const/4 p0, 0x0

    return-object p0

    .line 1069
    :cond_4
    const-string v0, "android.media.IAudioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1070
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_13

    .line 1071
    check-cast v0, Landroid/media/IAudioService;

    return-object v0

    .line 1073
    :cond_13
    new-instance v0, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 1082
    packed-switch p0, :pswitch_data_35c

    .line 2226
    const/4 p0, 0x0

    return-object p0

    .line 2222
    :pswitch_5
    const-string p0, "isScoManagedByAudio"

    return-object p0

    .line 2218
    :pswitch_8
    const-string p0, "setEnableHardening"

    return-object p0

    .line 2214
    :pswitch_b
    const-string p0, "shouldNotificationSoundPlay"

    return-object p0

    .line 2210
    :pswitch_e
    const-string p0, "getFadeManagerConfigurationForFocusLoss"

    return-object p0

    .line 2206
    :pswitch_11
    const-string p0, "clearFadeManagerConfigurationForFocusLoss"

    return-object p0

    .line 2202
    :pswitch_14
    const-string p0, "setFadeManagerConfigurationForFocusLoss"

    return-object p0

    .line 2198
    :pswitch_17
    const-string p0, "getLoudnessParams"

    return-object p0

    .line 2194
    :pswitch_1a
    const-string p0, "removeLoudnessCodecInfo"

    return-object p0

    .line 2190
    :pswitch_1d
    const-string p0, "addLoudnessCodecInfo"

    return-object p0

    .line 2186
    :pswitch_20
    const-string p0, "stopLoudnessCodecUpdates"

    return-object p0

    .line 2182
    :pswitch_23
    const-string p0, "startLoudnessCodecUpdates"

    return-object p0

    .line 2178
    :pswitch_26
    const-string p0, "unregisterLoudnessCodecUpdatesDispatcher"

    return-object p0

    .line 2174
    :pswitch_29
    const-string p0, "registerLoudnessCodecUpdatesDispatcher"

    return-object p0

    .line 2170
    :pswitch_2c
    const-string p0, "isBluetoothVariableLatencyEnabled"

    return-object p0

    .line 2166
    :pswitch_2f
    const-string p0, "setBluetoothVariableLatencyEnabled"

    return-object p0

    .line 2162
    :pswitch_32
    const-string p0, "supportsBluetoothVariableLatency"

    return-object p0

    .line 2158
    :pswitch_35
    const-string p0, "unregisterPreferredMixerAttributesDispatcher"

    return-object p0

    .line 2154
    :pswitch_38
    const-string p0, "registerPreferredMixerAttributesDispatcher"

    return-object p0

    .line 2150
    :pswitch_3b
    const-string p0, "clearPreferredMixerAttributes"

    return-object p0

    .line 2146
    :pswitch_3e
    const-string p0, "setPreferredMixerAttributes"

    return-object p0

    .line 2142
    :pswitch_41
    const-string p0, "getHalVersion"

    return-object p0

    .line 2138
    :pswitch_44
    const-string p0, "registerDeviceVolumeDispatcherForAbsoluteVolume"

    return-object p0

    .line 2134
    :pswitch_47
    const-string p0, "getActiveAssistantServiceUids"

    return-object p0

    .line 2130
    :pswitch_4a
    const-string p0, "getAssistantServicesUids"

    return-object p0

    .line 2126
    :pswitch_4d
    const-string p0, "setActiveAssistantServiceUids"

    return-object p0

    .line 2122
    :pswitch_50
    const-string p0, "removeAssistantServicesUids"

    return-object p0

    .line 2118
    :pswitch_53
    const-string p0, "addAssistantServicesUids"

    return-object p0

    .line 2114
    :pswitch_56
    const-string p0, "sendFocusLoss"

    return-object p0

    .line 2110
    :pswitch_59
    const-string p0, "sendFocusLossAndUpdate"

    return-object p0

    .line 2106
    :pswitch_5c
    const-string p0, "hasAudioFocus"

    return-object p0

    .line 2102
    :pswitch_5f
    const-string p0, "getFocusStack"

    return-object p0

    .line 2098
    :pswitch_62
    const-string p0, "registerDeviceVolumeBehaviorDispatcher"

    return-object p0

    .line 2094
    :pswitch_65
    const-string p0, "setTestDeviceConnectionState"

    return-object p0

    .line 2090
    :pswitch_68
    const-string p0, "registerMuteAwaitConnectionDispatcher"

    return-object p0

    .line 2086
    :pswitch_6b
    const-string p0, "getMutingExpectedDevice"

    return-object p0

    .line 2082
    :pswitch_6e
    const-string p0, "cancelMuteAwaitConnection"

    return-object p0

    .line 2078
    :pswitch_71
    const-string p0, "muteAwaitConnection"

    return-object p0

    .line 2074
    :pswitch_74
    const-string p0, "isPstnCallAudioInterceptable"

    return-object p0

    .line 2070
    :pswitch_77
    const-string p0, "getDefaultVolumeInfo"

    return-object p0

    .line 2066
    :pswitch_7a
    const-string p0, "isVolumeFixed"

    return-object p0

    .line 2062
    :pswitch_7d
    const-string p0, "unregisterSpatializerOutputCallback"

    return-object p0

    .line 2058
    :pswitch_80
    const-string p0, "registerSpatializerOutputCallback"

    return-object p0

    .line 2054
    :pswitch_83
    const-string p0, "getSpatializerOutput"

    return-object p0

    .line 2050
    :pswitch_86
    const-string p0, "getSpatializerParameter"

    return-object p0

    .line 2046
    :pswitch_89
    const-string p0, "setSpatializerParameter"

    return-object p0

    .line 2042
    :pswitch_8c
    const-string p0, "recenterHeadTracker"

    return-object p0

    .line 2038
    :pswitch_8f
    const-string p0, "setSpatializerGlobalTransform"

    return-object p0

    .line 2034
    :pswitch_92
    const-string p0, "getActualHeadTrackingMode"

    return-object p0

    .line 2030
    :pswitch_95
    const-string p0, "getSupportedHeadTrackingModes"

    return-object p0

    .line 2026
    :pswitch_98
    const-string p0, "getDesiredHeadTrackingMode"

    return-object p0

    .line 2022
    :pswitch_9b
    const-string p0, "setDesiredHeadTrackingMode"

    return-object p0

    .line 2018
    :pswitch_9e
    const-string p0, "removeSpatializerCompatibleAudioDevice"

    return-object p0

    .line 2014
    :pswitch_a1
    const-string p0, "addSpatializerCompatibleAudioDevice"

    return-object p0

    .line 2010
    :pswitch_a4
    const-string p0, "getSpatializerCompatibleAudioDevices"

    return-object p0

    .line 2006
    :pswitch_a7
    const-string p0, "unregisterHeadToSoundstagePoseCallback"

    return-object p0

    .line 2002
    :pswitch_aa
    const-string p0, "registerHeadToSoundstagePoseCallback"

    return-object p0

    .line 1998
    :pswitch_ad
    const-string p0, "unregisterSpatializerHeadTrackingCallback"

    return-object p0

    .line 1994
    :pswitch_b0
    const-string p0, "registerSpatializerHeadTrackingCallback"

    return-object p0

    .line 1990
    :pswitch_b3
    const-string p0, "unregisterSpatializerCallback"

    return-object p0

    .line 1986
    :pswitch_b6
    const-string p0, "registerSpatializerCallback"

    return-object p0

    .line 1982
    :pswitch_b9
    const-string p0, "getSpatializedChannelMasks"

    return-object p0

    .line 1978
    :pswitch_bc
    const-string p0, "canBeSpatialized"

    return-object p0

    .line 1974
    :pswitch_bf
    const-string p0, "setSpatializerEnabled"

    return-object p0

    .line 1970
    :pswitch_c2
    const-string p0, "registerSpatializerHeadTrackerAvailableCallback"

    return-object p0

    .line 1966
    :pswitch_c5
    const-string p0, "isHeadTrackerAvailable"

    return-object p0

    .line 1962
    :pswitch_c8
    const-string p0, "isHeadTrackerEnabled"

    return-object p0

    .line 1958
    :pswitch_cb
    const-string p0, "setHeadTrackerEnabled"

    return-object p0

    .line 1954
    :pswitch_ce
    const-string p0, "hasHeadTracker"

    return-object p0

    .line 1950
    :pswitch_d1
    const-string p0, "isSpatializerAvailableForDevice"

    return-object p0

    .line 1946
    :pswitch_d4
    const-string p0, "isSpatializerAvailable"

    return-object p0

    .line 1942
    :pswitch_d7
    const-string p0, "isSpatializerEnabled"

    return-object p0

    .line 1938
    :pswitch_da
    const-string p0, "getSpatializerImmersiveAudioLevel"

    return-object p0

    .line 1934
    :pswitch_dd
    const-string p0, "unregisterModeDispatcher"

    return-object p0

    .line 1930
    :pswitch_e0
    const-string p0, "registerModeDispatcher"

    return-object p0

    .line 1926
    :pswitch_e3
    const-string p0, "exitAudioFocusFreezeForTest"

    return-object p0

    .line 1922
    :pswitch_e6
    const-string p0, "enterAudioFocusFreezeForTest"

    return-object p0

    .line 1918
    :pswitch_e9
    const-string p0, "getFocusUnmuteDelayAfterFadeOutForTest"

    return-object p0

    .line 1914
    :pswitch_ec
    const-string p0, "getFocusFadeOutDurationForTest"

    return-object p0

    .line 1910
    :pswitch_ef
    const-string p0, "getFocusDuckedUidsForTest"

    return-object p0

    .line 1906
    :pswitch_f2
    const-string p0, "getFadeOutDurationOnFocusLossMillis"

    return-object p0

    .line 1902
    :pswitch_f5
    const-string p0, "abandonAudioFocusForTest"

    return-object p0

    .line 1898
    :pswitch_f8
    const-string p0, "requestAudioFocusForTest"

    return-object p0

    .line 1894
    :pswitch_fb
    const-string p0, "getMaxAdditionalOutputDeviceDelay"

    return-object p0

    .line 1890
    :pswitch_fe
    const-string p0, "getAdditionalOutputDeviceDelay"

    return-object p0

    .line 1886
    :pswitch_101
    const-string p0, "setAdditionalOutputDeviceDelay"

    return-object p0

    .line 1882
    :pswitch_104
    const-string p0, "setHomeSoundEffectEnabled"

    return-object p0

    .line 1878
    :pswitch_107
    const-string p0, "isHomeSoundEffectEnabled"

    return-object p0

    .line 1874
    :pswitch_10a
    const-string p0, "setNavigationRepeatSoundEffectsEnabled"

    return-object p0

    .line 1870
    :pswitch_10d
    const-string p0, "areNavigationRepeatSoundEffectsEnabled"

    return-object p0

    .line 1866
    :pswitch_110
    const-string p0, "unregisterCommunicationDeviceDispatcher"

    return-object p0

    .line 1862
    :pswitch_113
    const-string p0, "registerCommunicationDeviceDispatcher"

    return-object p0

    .line 1858
    :pswitch_116
    const-string p0, "getCommunicationDevice"

    return-object p0

    .line 1854
    :pswitch_119
    const-string p0, "setCommunicationDevice"

    return-object p0

    .line 1850
    :pswitch_11c
    const-string p0, "getAvailableCommunicationDeviceIds"

    return-object p0

    .line 1846
    :pswitch_11f
    const-string p0, "getDeviceMaskForStream"

    return-object p0

    .line 1842
    :pswitch_122
    const-string p0, "isMusicActive"

    return-object p0

    .line 1838
    :pswitch_125
    const-string p0, "adjustSuggestedStreamVolume"

    return-object p0

    .line 1834
    :pswitch_128
    const-string p0, "adjustVolume"

    return-object p0

    .line 1830
    :pswitch_12b
    const-string p0, "setStreamVolumeForUid"

    return-object p0

    .line 1826
    :pswitch_12e
    const-string p0, "adjustSuggestedStreamVolumeForUid"

    return-object p0

    .line 1822
    :pswitch_131
    const-string p0, "adjustStreamVolumeForUid"

    return-object p0

    .line 1818
    :pswitch_134
    const-string p0, "unregisterCapturePresetDevicesRoleDispatcher"

    return-object p0

    .line 1814
    :pswitch_137
    const-string p0, "registerCapturePresetDevicesRoleDispatcher"

    return-object p0

    .line 1810
    :pswitch_13a
    const-string p0, "getPreferredDevicesForCapturePreset"

    return-object p0

    .line 1806
    :pswitch_13d
    const-string p0, "clearPreferredDevicesForCapturePreset"

    return-object p0

    .line 1802
    :pswitch_140
    const-string p0, "setPreferredDevicesForCapturePreset"

    return-object p0

    .line 1798
    :pswitch_143
    const-string p0, "isMultiAudioFocusEnabled"

    return-object p0

    .line 1794
    :pswitch_146
    const-string p0, "setMultiAudioFocusEnabled"

    return-object p0

    .line 1790
    :pswitch_149
    const-string p0, "getDeviceVolumeBehavior"

    return-object p0

    .line 1786
    :pswitch_14c
    const-string p0, "setDeviceVolumeBehavior"

    return-object p0

    .line 1782
    :pswitch_14f
    const-string p0, "setRttEnabled"

    return-object p0

    .line 1778
    :pswitch_152
    const-string p0, "unregisterStrategyNonDefaultDevicesDispatcher"

    return-object p0

    .line 1774
    :pswitch_155
    const-string p0, "registerStrategyNonDefaultDevicesDispatcher"

    return-object p0

    .line 1770
    :pswitch_158
    const-string p0, "unregisterStrategyPreferredDevicesDispatcher"

    return-object p0

    .line 1766
    :pswitch_15b
    const-string p0, "registerStrategyPreferredDevicesDispatcher"

    return-object p0

    .line 1762
    :pswitch_15e
    const-string p0, "getAllowedCapturePolicy"

    return-object p0

    .line 1758
    :pswitch_161
    const-string p0, "setAllowedCapturePolicy"

    return-object p0

    .line 1754
    :pswitch_164
    const-string p0, "removeOnDevicesForAttributesChangedListener"

    return-object p0

    .line 1750
    :pswitch_167
    const-string p0, "addOnDevicesForAttributesChangedListener"

    return-object p0

    .line 1746
    :pswitch_16a
    const-string p0, "getDevicesForAttributesUnprotected"

    return-object p0

    .line 1742
    :pswitch_16d
    const-string p0, "getDevicesForAttributes"

    return-object p0

    .line 1738
    :pswitch_170
    const-string p0, "getNonDefaultDevicesForStrategy"

    return-object p0

    .line 1734
    :pswitch_173
    const-string p0, "removeDeviceAsNonDefaultForStrategy"

    return-object p0

    .line 1730
    :pswitch_176
    const-string p0, "setDeviceAsNonDefaultForStrategy"

    return-object p0

    .line 1726
    :pswitch_179
    const-string p0, "getPreferredDevicesForStrategy"

    return-object p0

    .line 1722
    :pswitch_17c
    const-string p0, "removePreferredDevicesForStrategy"

    return-object p0

    .line 1718
    :pswitch_17f
    const-string p0, "setPreferredDevicesForStrategy"

    return-object p0

    .line 1714
    :pswitch_182
    const-string p0, "isCallScreeningModeSupported"

    return-object p0

    .line 1710
    :pswitch_185
    const-string p0, "hasHapticChannels"

    return-object p0

    .line 1706
    :pswitch_188
    const-string p0, "removeUserIdDeviceAffinity"

    return-object p0

    .line 1702
    :pswitch_18b
    const-string p0, "setUserIdDeviceAffinity"

    return-object p0

    .line 1698
    :pswitch_18e
    const-string p0, "removeUidDeviceAffinity"

    return-object p0

    .line 1694
    :pswitch_191
    const-string p0, "setUidDeviceAffinity"

    return-object p0

    .line 1690
    :pswitch_194
    const-string p0, "unregisterAudioVolumeCallback"

    return-object p0

    .line 1686
    :pswitch_197
    const-string p0, "registerAudioVolumeCallback"

    return-object p0

    .line 1682
    :pswitch_19a
    const-string p0, "isAudioServerRunning"

    return-object p0

    .line 1678
    :pswitch_19d
    const-string p0, "unregisterAudioServerStateDispatcher"

    return-object p0

    .line 1674
    :pswitch_1a0
    const-string p0, "registerAudioServerStateDispatcher"

    return-object p0

    .line 1670
    :pswitch_1a3
    const-string p0, "setFocusRequestResultFromExtPolicy"

    return-object p0

    .line 1666
    :pswitch_1a6
    const-string p0, "handleBluetoothActiveDeviceChanged"

    return-object p0

    .line 1662
    :pswitch_1a9
    const-string p0, "playerHasOpPlayAudio"

    return-object p0

    .line 1658
    :pswitch_1ac
    const-string p0, "dispatchFocusChangeWithFade"

    return-object p0

    .line 1654
    :pswitch_1af
    const-string p0, "dispatchFocusChange"

    return-object p0

    .line 1650
    :pswitch_1b2
    const-string p0, "getFocusRampTimeMs"

    return-object p0

    .line 1646
    :pswitch_1b5
    const-string p0, "getActivePlaybackConfigurations"

    return-object p0

    .line 1642
    :pswitch_1b8
    const-string p0, "unregisterPlaybackCallback"

    return-object p0

    .line 1638
    :pswitch_1bb
    const-string p0, "registerPlaybackCallback"

    return-object p0

    .line 1634
    :pswitch_1be
    const-string p0, "getActiveRecordingConfigurations"

    return-object p0

    .line 1630
    :pswitch_1c1
    const-string p0, "unregisterRecordingCallback"

    return-object p0

    .line 1626
    :pswitch_1c4
    const-string p0, "registerRecordingCallback"

    return-object p0

    .line 1622
    :pswitch_1c7
    const-string p0, "hasRegisteredDynamicPolicy"

    return-object p0

    .line 1618
    :pswitch_1ca
    const-string p0, "getVolumePolicy"

    return-object p0

    .line 1614
    :pswitch_1cd
    const-string p0, "setVolumePolicy"

    return-object p0

    .line 1610
    :pswitch_1d0
    const-string p0, "setFocusPropertiesForPolicy"

    return-object p0

    .line 1606
    :pswitch_1d3
    const-string p0, "updateMixingRulesForPolicy"

    return-object p0

    .line 1602
    :pswitch_1d6
    const-string p0, "removeMixForPolicy"

    return-object p0

    .line 1598
    :pswitch_1d9
    const-string p0, "addMixForPolicy"

    return-object p0

    .line 1594
    :pswitch_1dc
    const-string p0, "unregisterAudioPolicy"

    return-object p0

    .line 1590
    :pswitch_1df
    const-string p0, "getRegisteredPolicyMixes"

    return-object p0

    .line 1586
    :pswitch_1e2
    const-string p0, "unregisterAudioPolicyAsync"

    return-object p0

    .line 1582
    :pswitch_1e5
    const-string p0, "registerAudioPolicy"

    return-object p0

    .line 1578
    :pswitch_1e8
    const-string p0, "isHdmiSystemAudioSupported"

    return-object p0

    .line 1574
    :pswitch_1eb
    const-string p0, "setHdmiSystemAudioSupported"

    return-object p0

    .line 1570
    :pswitch_1ee
    const-string p0, "isBluetoothAudioDeviceCategoryFixed"

    return-object p0

    .line 1566
    :pswitch_1f1
    const-string p0, "getBluetoothAudioDeviceCategory"

    return-object p0

    .line 1562
    :pswitch_1f4
    const-string p0, "setBluetoothAudioDeviceCategory"

    return-object p0

    .line 1558
    :pswitch_1f7
    const-string p0, "setCsdAsAFeatureEnabled"

    return-object p0

    .line 1554
    :pswitch_1fa
    const-string p0, "isCsdAsAFeatureEnabled"

    return-object p0

    .line 1550
    :pswitch_1fd
    const-string p0, "isCsdAsAFeatureAvailable"

    return-object p0

    .line 1546
    :pswitch_200
    const-string p0, "isCsdEnabled"

    return-object p0

    .line 1542
    :pswitch_203
    const-string p0, "forceComputeCsdOnAllDevices"

    return-object p0

    .line 1538
    :pswitch_206
    const-string p0, "forceUseFrameworkMel"

    return-object p0

    .line 1534
    :pswitch_209
    const-string p0, "setCsd"

    return-object p0

    .line 1530
    :pswitch_20c
    const-string p0, "getCsd"

    return-object p0

    .line 1526
    :pswitch_20f
    const-string p0, "setOutputRs2UpperBound"

    return-object p0

    .line 1522
    :pswitch_212
    const-string p0, "getOutputRs2UpperBound"

    return-object p0

    .line 1518
    :pswitch_215
    const-string p0, "lowerVolumeToRs1"

    return-object p0

    .line 1514
    :pswitch_218
    const-string p0, "disableSafeMediaVolume"

    return-object p0

    .line 1510
    :pswitch_21b
    const-string p0, "isStreamMutableByUi"

    return-object p0

    .line 1506
    :pswitch_21e
    const-string p0, "isStreamAffectedByMute"

    return-object p0

    .line 1502
    :pswitch_221
    const-string p0, "isStreamAffectedByRingerMode"

    return-object p0

    .line 1498
    :pswitch_224
    const-string p0, "setVolumeControllerLongPressTimeoutEnabled"

    return-object p0

    .line 1494
    :pswitch_227
    const-string p0, "notifyVolumeControllerVisible"

    return-object p0

    .line 1490
    :pswitch_22a
    const-string p0, "getVolumeController"

    return-object p0

    .line 1486
    :pswitch_22d
    const-string p0, "setVolumeController"

    return-object p0

    .line 1482
    :pswitch_230
    const-string p0, "isCameraSoundForced"

    return-object p0

    .line 1478
    :pswitch_233
    const-string p0, "startWatchingRoutes"

    return-object p0

    .line 1474
    :pswitch_236
    const-string p0, "setWiredDeviceConnectionState"

    return-object p0

    .line 1470
    :pswitch_239
    const-string p0, "setNotifAliasRingForTest"

    return-object p0

    .line 1466
    :pswitch_23c
    const-string p0, "registerStreamAliasingDispatcher"

    return-object p0

    .line 1462
    :pswitch_23f
    const-string p0, "isVolumeControlUsingVolumeGroups"

    return-object p0

    .line 1458
    :pswitch_242
    const-string p0, "getStreamTypeAlias"

    return-object p0

    .line 1454
    :pswitch_245
    const-string p0, "getIndependentStreamTypes"

    return-object p0

    .line 1450
    :pswitch_248
    const-string p0, "getUiSoundsStreamType"

    return-object p0

    .line 1446
    :pswitch_24b
    const-string p0, "getRingtonePlayer"

    return-object p0

    .line 1442
    :pswitch_24e
    const-string p0, "setRingtonePlayer"

    return-object p0

    .line 1438
    :pswitch_251
    const-string p0, "forceVolumeControlStream"

    return-object p0

    .line 1434
    :pswitch_254
    const-string p0, "stopBluetoothSco"

    return-object p0

    .line 1430
    :pswitch_257
    const-string p0, "startBluetoothScoVirtualCall"

    return-object p0

    .line 1426
    :pswitch_25a
    const-string p0, "startBluetoothSco"

    return-object p0

    .line 1422
    :pswitch_25d
    const-string p0, "getCurrentAudioFocus"

    return-object p0

    .line 1418
    :pswitch_260
    const-string p0, "unregisterAudioFocusClient"

    return-object p0

    .line 1414
    :pswitch_263
    const-string p0, "abandonAudioFocus"

    return-object p0

    .line 1410
    :pswitch_266
    const-string p0, "requestAudioFocus"

    return-object p0

    .line 1406
    :pswitch_269
    const-string p0, "isBluetoothA2dpOn"

    return-object p0

    .line 1402
    :pswitch_26c
    const-string p0, "setBluetoothA2dpOn"

    return-object p0

    .line 1398
    :pswitch_26f
    const-string p0, "isBluetoothScoOn"

    return-object p0

    .line 1394
    :pswitch_272
    const-string p0, "setLeAudioSuspended"

    return-object p0

    .line 1390
    :pswitch_275
    const-string p0, "setA2dpSuspended"

    return-object p0

    .line 1386
    :pswitch_278
    const-string p0, "setBluetoothScoOn"

    return-object p0

    .line 1382
    :pswitch_27b
    const-string p0, "isSpeakerphoneOn"

    return-object p0

    .line 1378
    :pswitch_27e
    const-string p0, "setSpeakerphoneOn"

    return-object p0

    .line 1374
    :pswitch_281
    const-string p0, "getEncodedSurroundMode"

    return-object p0

    .line 1370
    :pswitch_284
    const-string p0, "setEncodedSurroundMode"

    return-object p0

    .line 1366
    :pswitch_287
    const-string p0, "isSurroundFormatEnabled"

    return-object p0

    .line 1362
    :pswitch_28a
    const-string p0, "setSurroundFormatEnabled"

    return-object p0

    .line 1358
    :pswitch_28d
    const-string p0, "getReportedSurroundFormats"

    return-object p0

    .line 1354
    :pswitch_290
    const-string p0, "getSurroundFormats"

    return-object p0

    .line 1350
    :pswitch_293
    const-string p0, "reloadAudioSettings"

    return-object p0

    .line 1346
    :pswitch_296
    const-string p0, "unloadSoundEffects"

    return-object p0

    .line 1342
    :pswitch_299
    const-string p0, "loadSoundEffects"

    return-object p0

    .line 1338
    :pswitch_29c
    const-string p0, "playSoundEffectVolume"

    return-object p0

    .line 1334
    :pswitch_29f
    const-string p0, "playSoundEffect"

    return-object p0

    .line 1330
    :pswitch_2a2
    const-string p0, "getMode"

    return-object p0

    .line 1326
    :pswitch_2a5
    const-string p0, "setMode"

    return-object p0

    .line 1322
    :pswitch_2a8
    const-string p0, "shouldVibrate"

    return-object p0

    .line 1318
    :pswitch_2ab
    const-string p0, "getVibrateSetting"

    return-object p0

    .line 1314
    :pswitch_2ae
    const-string p0, "setVibrateSetting"

    return-object p0

    .line 1310
    :pswitch_2b1
    const-string p0, "isValidRingerMode"

    return-object p0

    .line 1306
    :pswitch_2b4
    const-string p0, "getRingerModeInternal"

    return-object p0

    .line 1302
    :pswitch_2b7
    const-string p0, "getRingerModeExternal"

    return-object p0

    .line 1298
    :pswitch_2ba
    const-string p0, "setRingerModeInternal"

    return-object p0

    .line 1294
    :pswitch_2bd
    const-string p0, "setRingerModeExternal"

    return-object p0

    .line 1290
    :pswitch_2c0
    const-string p0, "setMicrophoneMuteFromSwitch"

    return-object p0

    .line 1286
    :pswitch_2c3
    const-string p0, "isInputGainFixed"

    return-object p0

    .line 1282
    :pswitch_2c6
    const-string p0, "getMinInputGainIndex"

    return-object p0

    .line 1278
    :pswitch_2c9
    const-string p0, "getMaxInputGainIndex"

    return-object p0

    .line 1274
    :pswitch_2cc
    const-string p0, "getInputGainIndex"

    return-object p0

    .line 1270
    :pswitch_2cf
    const-string p0, "setInputGainIndex"

    return-object p0

    .line 1266
    :pswitch_2d2
    const-string p0, "setMicrophoneMute"

    return-object p0

    .line 1262
    :pswitch_2d5
    const-string p0, "isHotwordStreamSupported"

    return-object p0

    .line 1258
    :pswitch_2d8
    const-string p0, "isUltrasoundSupported"

    return-object p0

    .line 1254
    :pswitch_2db
    const-string p0, "isMicrophoneMuted"

    return-object p0

    .line 1250
    :pswitch_2de
    const-string p0, "getAudioProductStrategies"

    return-object p0

    .line 1246
    :pswitch_2e1
    const-string p0, "getSupportedSystemUsages"

    return-object p0

    .line 1242
    :pswitch_2e4
    const-string p0, "setSupportedSystemUsages"

    return-object p0

    .line 1238
    :pswitch_2e7
    const-string p0, "getLastAudibleStreamVolume"

    return-object p0

    .line 1234
    :pswitch_2ea
    const-string p0, "adjustVolumeGroupVolume"

    return-object p0

    .line 1230
    :pswitch_2ed
    const-string p0, "isVolumeGroupMuted"

    return-object p0

    .line 1226
    :pswitch_2f0
    const-string p0, "getLastAudibleVolumeForVolumeGroup"

    return-object p0

    .line 1222
    :pswitch_2f3
    const-string p0, "getVolumeGroupMinVolumeIndex"

    return-object p0

    .line 1218
    :pswitch_2f6
    const-string p0, "getVolumeGroupMaxVolumeIndex"

    return-object p0

    .line 1214
    :pswitch_2f9
    const-string p0, "getVolumeGroupVolumeIndex"

    return-object p0

    .line 1210
    :pswitch_2fc
    const-string p0, "setVolumeGroupVolumeIndex"

    return-object p0

    .line 1206
    :pswitch_2ff
    const-string p0, "getVolumeGroupIdForAttributes"

    return-object p0

    .line 1202
    :pswitch_302
    const-string p0, "getAudioVolumeGroups"

    return-object p0

    .line 1198
    :pswitch_305
    const-string p0, "getStreamMaxVolume"

    return-object p0

    .line 1194
    :pswitch_308
    const-string p0, "getStreamMinVolume"

    return-object p0

    .line 1190
    :pswitch_30b
    const-string p0, "getStreamVolume"

    return-object p0

    .line 1186
    :pswitch_30e
    const-string p0, "setMasterMute"

    return-object p0

    .line 1182
    :pswitch_311
    const-string p0, "isMasterMute"

    return-object p0

    .line 1178
    :pswitch_314
    const-string p0, "forceRemoteSubmixFullVolume"

    return-object p0

    .line 1174
    :pswitch_317
    const-string p0, "isStreamMute"

    return-object p0

    .line 1170
    :pswitch_31a
    const-string p0, "handleVolumeKey"

    return-object p0

    .line 1166
    :pswitch_31d
    const-string p0, "getDeviceVolume"

    return-object p0

    .line 1162
    :pswitch_320
    const-string p0, "notifyAbsoluteVolumeChanged"

    return-object p0

    .line 1158
    :pswitch_323
    const-string p0, "adjustVolumeForDevice"

    return-object p0

    .line 1154
    :pswitch_326
    const-string p0, "setVolumeForDevice"

    return-object p0

    .line 1150
    :pswitch_329
    const-string p0, "setDeviceVolume"

    return-object p0

    .line 1146
    :pswitch_32c
    const-string p0, "setStreamVolumeWithAttribution"

    return-object p0

    .line 1142
    :pswitch_32f
    const-string p0, "setStreamVolume"

    return-object p0

    .line 1138
    :pswitch_332
    const-string p0, "adjustStreamVolumeWithAttribution"

    return-object p0

    .line 1134
    :pswitch_335
    const-string p0, "adjustStreamVolume"

    return-object p0

    .line 1130
    :pswitch_338
    const-string p0, "waitForAudioHandlerBarrier"

    return-object p0

    .line 1126
    :pswitch_33b
    const-string p0, "permissionUpdateBarrier"

    return-object p0

    .line 1122
    :pswitch_33e
    const-string p0, "portEvent"

    return-object p0

    .line 1118
    :pswitch_341
    const-string p0, "playerSessionId"

    return-object p0

    .line 1114
    :pswitch_344
    const-string p0, "releaseRecorder"

    return-object p0

    .line 1110
    :pswitch_347
    const-string p0, "recorderEvent"

    return-object p0

    .line 1106
    :pswitch_34a
    const-string p0, "trackRecorder"

    return-object p0

    .line 1102
    :pswitch_34d
    const-string p0, "releasePlayer"

    return-object p0

    .line 1098
    :pswitch_350
    const-string p0, "playerEvent"

    return-object p0

    .line 1094
    :pswitch_353
    const-string p0, "playerAttributes"

    return-object p0

    .line 1090
    :pswitch_356
    const-string p0, "trackPlayer"

    return-object p0

    .line 1086
    :pswitch_359
    const-string p0, "getNativeInterface"

    return-object p0

    :pswitch_data_35c
    .packed-switch 0x1
        :pswitch_359
        :pswitch_356
        :pswitch_353
        :pswitch_350
        :pswitch_34d
        :pswitch_34a
        :pswitch_347
        :pswitch_344
        :pswitch_341
        :pswitch_33e
        :pswitch_33b
        :pswitch_338
        :pswitch_335
        :pswitch_332
        :pswitch_32f
        :pswitch_32c
        :pswitch_329
        :pswitch_326
        :pswitch_323
        :pswitch_320
        :pswitch_31d
        :pswitch_31a
        :pswitch_317
        :pswitch_314
        :pswitch_311
        :pswitch_30e
        :pswitch_30b
        :pswitch_308
        :pswitch_305
        :pswitch_302
        :pswitch_2ff
        :pswitch_2fc
        :pswitch_2f9
        :pswitch_2f6
        :pswitch_2f3
        :pswitch_2f0
        :pswitch_2ed
        :pswitch_2ea
        :pswitch_2e7
        :pswitch_2e4
        :pswitch_2e1
        :pswitch_2de
        :pswitch_2db
        :pswitch_2d8
        :pswitch_2d5
        :pswitch_2d2
        :pswitch_2cf
        :pswitch_2cc
        :pswitch_2c9
        :pswitch_2c6
        :pswitch_2c3
        :pswitch_2c0
        :pswitch_2bd
        :pswitch_2ba
        :pswitch_2b7
        :pswitch_2b4
        :pswitch_2b1
        :pswitch_2ae
        :pswitch_2ab
        :pswitch_2a8
        :pswitch_2a5
        :pswitch_2a2
        :pswitch_29f
        :pswitch_29c
        :pswitch_299
        :pswitch_296
        :pswitch_293
        :pswitch_290
        :pswitch_28d
        :pswitch_28a
        :pswitch_287
        :pswitch_284
        :pswitch_281
        :pswitch_27e
        :pswitch_27b
        :pswitch_278
        :pswitch_275
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

.method private blacklist onTransact$adjustStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 10203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 10205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 10209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 10211
    sget-object p2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroid/os/UserHandle;

    .line 10213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10214
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10215
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 10216
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$adjustSuggestedStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 10226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 10228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 10232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 10234
    sget-object p2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroid/os/UserHandle;

    .line 10236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10237
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10238
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 10239
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$dispatchFocusChangeWithFade$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10081
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/AudioFocusInfo;

    .line 10083
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 10085
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    .line 10087
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 10089
    sget-object v0, Landroid/media/FadeManagerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/FadeManagerConfiguration;

    .line 10090
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10091
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/media/IAudioService$Stub;->dispatchFocusChangeWithFade(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;Ljava/util/List;Landroid/media/FadeManagerConfiguration;)I

    move-result p1

    .line 10092
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10093
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10094
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$registerAudioPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10034
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 10036
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 10038
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 10040
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 10042
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 10044
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 10046
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v8

    .line 10048
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/AttributionSource;

    .line 10049
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10050
    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object p1

    .line 10051
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10052
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10053
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$registerDeviceVolumeDispatcherForAbsoluteVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10530
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 10532
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioDeviceVolumeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioDeviceVolumeDispatcher;

    move-result-object v2

    .line 10534
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10536
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    .line 10538
    sget-object v0, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 10540
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 10542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 10543
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10544
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZI)V

    .line 10545
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10546
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$requestAudioFocus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9879
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/AudioAttributes;

    .line 9881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 9883
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 9885
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v5

    .line 9887
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 9889
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 9891
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 9893
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 9895
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v10

    .line 9897
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 9898
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9899
    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result p1

    .line 9900
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 9901
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9902
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$requestAudioFocusForTest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10284
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/AudioAttributes;

    .line 10286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 10288
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 10290
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v5

    .line 10292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 10294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 10296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 10301
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10302
    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Landroid/media/IAudioService$Stub;->requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;III)I

    move-result p1

    .line 10303
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10304
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10305
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setMasterMute$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9694
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 9696
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9698
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9700
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 9702
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 9703
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9704
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;ILjava/lang/String;)V

    .line 9705
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 9706
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 10249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 10251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 10255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 10257
    sget-object p2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroid/os/UserHandle;

    .line 10259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10260
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10261
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 10262
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setVolumeGroupVolumeIndex$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9731
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 9733
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9735
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 9737
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9739
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 9740
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9741
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setVolumeGroupVolumeIndex(IIILjava/lang/String;Ljava/lang/String;)V

    .line 9742
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 9743
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected blacklist addAssistantServicesUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10504
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10505
    return-void
.end method

.method protected blacklist addOnDevicesForAttributesChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10154
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_addOnDevicesForAttributesChangedListener:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 10155
    return-void
.end method

.method protected blacklist addSpatializerCompatibleAudioDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10398
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10399
    return-void
.end method

.method protected blacklist adjustVolumeForDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9672
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_adjustVolumeForDevice:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9673
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1077
    return-object p0
.end method

.method protected blacklist clearFadeManagerConfigurationForFocusLoss_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10583
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10584
    return-void
.end method

.method protected blacklist clearPreferredDevicesForCapturePreset_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10186
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10187
    return-void
.end method

.method protected blacklist dispatchFocusChangeWithFade_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10098
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10099
    return-void
.end method

.method protected blacklist enterAudioFocusFreezeForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10327
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10328
    return-void
.end method

.method protected blacklist exitAudioFocusFreezeForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10332
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10333
    return-void
.end method

.method protected blacklist forceComputeCsdOnAllDevices_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9991
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9992
    return-void
.end method

.method protected blacklist forceUseFrameworkMel_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9986
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9987
    return-void
.end method

.method protected blacklist getActiveAssistantServiceUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10524
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10525
    return-void
.end method

.method protected blacklist getActualHeadTrackingMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10423
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10424
    return-void
.end method

.method protected blacklist getAssistantServicesUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10519
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10520
    return-void
.end method

.method protected blacklist getAudioProductStrategies_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9794
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getAudioProductStrategies:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9795
    return-void
.end method

.method protected blacklist getAudioVolumeGroups_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9719
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getAudioVolumeGroups:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9720
    return-void
.end method

.method protected blacklist getBluetoothAudioDeviceCategory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10021
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10022
    return-void
.end method

.method protected blacklist getCsd_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9976
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9977
    return-void
.end method

.method protected blacklist getDesiredHeadTrackingMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10413
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10414
    return-void
.end method

.method protected blacklist getDeviceVolumeBehavior_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10174
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 10175
    return-void
.end method

.method protected blacklist getDeviceVolume_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9684
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9685
    return-void
.end method

.method protected blacklist getFadeManagerConfigurationForFocusLoss_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10588
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10589
    return-void
.end method

.method protected blacklist getFocusDuckedUidsForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10312
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10313
    return-void
.end method

.method protected blacklist getFocusFadeOutDurationForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10317
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10318
    return-void
.end method

.method protected blacklist getFocusStack_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10484
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10485
    return-void
.end method

.method protected blacklist getFocusUnmuteDelayAfterFadeOutForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10322
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10323
    return-void
.end method

.method protected blacklist getIndependentStreamTypes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9921
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9922
    return-void
.end method

.method protected blacklist getInputGainIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9816
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9817
    return-void
.end method

.method protected blacklist getLastAudibleStreamVolume_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9778
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9779
    return-void
.end method

.method protected blacklist getLastAudibleVolumeForVolumeGroup_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9771
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9772
    return-void
.end method

.method protected blacklist getMaxInputGainIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9821
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9822
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 10608
    const/16 v0, 0x11c

    return v0
.end method

.method protected blacklist getMinInputGainIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9826
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9827
    return-void
.end method

.method protected blacklist getMutingExpectedDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10472
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10473
    return-void
.end method

.method protected blacklist getNonDefaultDevicesForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10146
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10147
    return-void
.end method

.method protected blacklist getOutputRs2UpperBound_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9966
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9967
    return-void
.end method

.method protected blacklist getPreferredDevicesForCapturePreset_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10191
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10192
    return-void
.end method

.method protected blacklist getPreferredDevicesForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10131
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10132
    return-void
.end method

.method protected blacklist getSpatializerCompatibleAudioDevices_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10393
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10394
    return-void
.end method

.method protected blacklist getSpatializerOutput_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10448
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10449
    return-void
.end method

.method protected blacklist getSpatializerParameter_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10443
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10444
    return-void
.end method

.method protected blacklist getStreamTypeAlias_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9926
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9927
    return-void
.end method

.method protected blacklist getSupportedHeadTrackingModes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10418
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10419
    return-void
.end method

.method protected blacklist getSupportedSystemUsages_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9788
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9789
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 2233
    invoke-static {p1}, Landroid/media/IAudioService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getVolumeGroupIdForAttributes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9725
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupIdForAttributes:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9726
    return-void
.end method

.method protected blacklist getVolumeGroupMaxVolumeIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9760
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9761
    return-void
.end method

.method protected blacklist getVolumeGroupMinVolumeIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9766
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9767
    return-void
.end method

.method protected blacklist getVolumeGroupVolumeIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9754
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9755
    return-void
.end method

.method protected blacklist handleBluetoothActiveDeviceChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10104
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10105
    return-void
.end method

.method protected blacklist hasAudioFocus_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10489
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10490
    return-void
.end method

.method protected blacklist hasHeadTracker_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10347
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10348
    return-void
.end method

.method protected blacklist isBluetoothAudioDeviceCategoryFixed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10026
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10027
    return-void
.end method

.method protected blacklist isBluetoothVariableLatencyEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10566
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10567
    return-void
.end method

.method protected blacklist isCsdAsAFeatureAvailable_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10001
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10002
    return-void
.end method

.method protected blacklist isCsdAsAFeatureEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10006
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10007
    return-void
.end method

.method protected blacklist isCsdEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9996
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9997
    return-void
.end method

.method protected blacklist isHeadTrackerEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10357
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10358
    return-void
.end method

.method protected blacklist isHotwordStreamSupported_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9805
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9806
    return-void
.end method

.method protected blacklist isInputGainFixed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9831
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9832
    return-void
.end method

.method protected blacklist isPstnCallAudioInterceptable_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10465
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CALL_AUDIO_INTERCEPTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10466
    return-void
.end method

.method protected blacklist isScoManagedByAudio_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10603
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10604
    return-void
.end method

.method protected blacklist isSpatializerAvailableForDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10342
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10343
    return-void
.end method

.method protected blacklist isUltrasoundSupported_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9800
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_ULTRASOUND"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9801
    return-void
.end method

.method protected blacklist isVolumeControlUsingVolumeGroups_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9931
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9932
    return-void
.end method

.method protected blacklist notifyAbsoluteVolumeChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9678
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_notifyAbsoluteVolumeChanged:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9679
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2237
    nop

    .line 2238
    const-string v3, "android.media.IAudioService"

    const/4 v6, 0x1

    if-lt p1, v6, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 2239
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2241
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 2242
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2243
    return v6

    .line 2245
    :cond_17
    packed-switch p1, :pswitch_data_1420

    .line 4894
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 4887
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isScoManagedByAudio()Z

    move-result v0

    .line 4888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4889
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4890
    goto/16 :goto_141e

    .line 4879
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4880
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4881
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setEnableHardening(Z)V

    .line 4882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4883
    goto/16 :goto_141e

    .line 4869
    :pswitch_3a
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4870
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4871
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->shouldNotificationSoundPlay(Landroid/media/AudioAttributes;)Z

    move-result v0

    .line 4872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4873
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4874
    goto/16 :goto_141e

    .line 4861
    :pswitch_51
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFadeManagerConfigurationForFocusLoss()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    .line 4862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4863
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4864
    goto/16 :goto_141e

    .line 4854
    :pswitch_5d
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->clearFadeManagerConfigurationForFocusLoss()I

    move-result v0

    .line 4855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4856
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4857
    goto/16 :goto_141e

    .line 4845
    :pswitch_69
    sget-object v1, Landroid/media/FadeManagerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FadeManagerConfiguration;

    .line 4846
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4847
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setFadeManagerConfigurationForFocusLoss(Landroid/media/FadeManagerConfiguration;)I

    move-result v0

    .line 4848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4849
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4850
    goto/16 :goto_141e

    .line 4835
    :pswitch_80
    sget-object v1, Landroid/media/LoudnessCodecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/LoudnessCodecInfo;

    .line 4836
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4837
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 4838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4839
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4840
    goto/16 :goto_141e

    .line 4824
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4826
    sget-object v3, Landroid/media/LoudnessCodecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/LoudnessCodecInfo;

    .line 4827
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4828
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V

    .line 4829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4830
    goto/16 :goto_141e

    .line 4811
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4813
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4815
    sget-object v4, Landroid/media/LoudnessCodecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/LoudnessCodecInfo;

    .line 4816
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4817
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V

    .line 4818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4819
    goto/16 :goto_141e

    .line 4802
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4803
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4804
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->stopLoudnessCodecUpdates(I)V

    .line 4805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4806
    goto/16 :goto_141e

    .line 4793
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4794
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4795
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startLoudnessCodecUpdates(I)V

    .line 4796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4797
    goto/16 :goto_141e

    .line 4784
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ILoudnessCodecUpdatesDispatcher;

    move-result-object v1

    .line 4785
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4786
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V

    .line 4787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4788
    goto/16 :goto_141e

    .line 4775
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ILoudnessCodecUpdatesDispatcher;

    move-result-object v1

    .line 4776
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4777
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V

    .line 4778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4779
    goto/16 :goto_141e

    .line 4767
    :pswitch_10d
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothVariableLatencyEnabled()Z

    move-result v0

    .line 4768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4769
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4770
    goto/16 :goto_141e

    .line 4759
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4760
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4761
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothVariableLatencyEnabled(Z)V

    .line 4762
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4763
    goto/16 :goto_141e

    .line 4751
    :pswitch_128
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->supportsBluetoothVariableLatency()Z

    move-result v0

    .line 4752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4753
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4754
    goto/16 :goto_141e

    .line 4744
    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPreferredMixerAttributesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPreferredMixerAttributesDispatcher;

    move-result-object v1

    .line 4745
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4746
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterPreferredMixerAttributesDispatcher(Landroid/media/IPreferredMixerAttributesDispatcher;)V

    .line 4747
    goto/16 :goto_141e

    .line 4735
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPreferredMixerAttributesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPreferredMixerAttributesDispatcher;

    move-result-object v1

    .line 4736
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4737
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerPreferredMixerAttributesDispatcher(Landroid/media/IPreferredMixerAttributesDispatcher;)V

    .line 4738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4739
    goto/16 :goto_141e

    .line 4723
    :pswitch_157
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4726
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4727
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->clearPreferredMixerAttributes(Landroid/media/AudioAttributes;I)I

    move-result v0

    .line 4728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4729
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4730
    goto/16 :goto_141e

    .line 4709
    :pswitch_172
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4711
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4713
    sget-object v4, Landroid/media/AudioMixerAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioMixerAttributes;

    .line 4714
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4715
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->setPreferredMixerAttributes(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)I

    move-result v0

    .line 4716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4717
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4718
    goto/16 :goto_141e

    .line 4701
    :pswitch_195
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getHalVersion()Landroid/media/AudioHalVersionInfo;

    move-result-object v0

    .line 4702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4703
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4704
    goto/16 :goto_141e

    .line 4697
    :pswitch_1a1
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$registerDeviceVolumeDispatcherForAbsoluteVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 4690
    :pswitch_1a6
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getActiveAssistantServiceUids()[I

    move-result-object v0

    .line 4691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4692
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4693
    goto/16 :goto_141e

    .line 4683
    :pswitch_1b2
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAssistantServicesUids()[I

    move-result-object v0

    .line 4684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4685
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4686
    goto/16 :goto_141e

    .line 4675
    :pswitch_1be
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4676
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4677
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setActiveAssistantServiceUids([I)V

    .line 4678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4679
    goto/16 :goto_141e

    .line 4666
    :pswitch_1cd
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4667
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4668
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->removeAssistantServicesUids([I)V

    .line 4669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4670
    goto/16 :goto_141e

    .line 4657
    :pswitch_1dc
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4658
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4659
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->addAssistantServicesUids([I)V

    .line 4660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4661
    goto/16 :goto_141e

    .line 4645
    :pswitch_1eb
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 4647
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 4648
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4649
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z

    move-result v0

    .line 4650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4651
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4652
    goto/16 :goto_141e

    .line 4635
    :pswitch_20a
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 4637
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 4638
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4639
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->sendFocusLossAndUpdate(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 4640
    goto/16 :goto_141e

    .line 4625
    :pswitch_222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4626
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4627
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->hasAudioFocus(Ljava/lang/String;)Z

    move-result v0

    .line 4628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4629
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4630
    goto/16 :goto_141e

    .line 4617
    :pswitch_235
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFocusStack()Ljava/util/List;

    move-result-object v0

    .line 4618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4619
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4620
    goto/16 :goto_141e

    .line 4607
    :pswitch_241
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4609
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDeviceVolumeBehaviorDispatcher;

    move-result-object v3

    .line 4610
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4611
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V

    .line 4612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4613
    goto/16 :goto_141e

    .line 4596
    :pswitch_258
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4598
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4599
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4600
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V

    .line 4601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4602
    goto/16 :goto_141e

    .line 4585
    :pswitch_26f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMuteAwaitConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMuteAwaitConnectionCallback;

    move-result-object v1

    .line 4587
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4589
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->registerMuteAwaitConnectionDispatcher(Landroid/media/IMuteAwaitConnectionCallback;Z)V

    .line 4590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4591
    goto/16 :goto_141e

    .line 4577
    :pswitch_286
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 4578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4579
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4580
    goto/16 :goto_141e

    .line 4570
    :pswitch_292
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4571
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4572
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V

    .line 4573
    goto/16 :goto_141e

    .line 4558
    :pswitch_2a2
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4560
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 4562
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 4563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4564
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/IAudioService$Stub;->muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V

    .line 4565
    goto/16 :goto_141e

    .line 4550
    :pswitch_2ba
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isPstnCallAudioInterceptable()Z

    move-result v0

    .line 4551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4552
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4553
    goto/16 :goto_141e

    .line 4543
    :pswitch_2c6
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v0

    .line 4544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4545
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4546
    goto/16 :goto_141e

    .line 4536
    :pswitch_2d2
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isVolumeFixed()Z

    move-result v0

    .line 4537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4538
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4539
    goto/16 :goto_141e

    .line 4528
    :pswitch_2de
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v1

    .line 4529
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4530
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 4531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4532
    goto/16 :goto_141e

    .line 4519
    :pswitch_2f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v1

    .line 4520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4521
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 4522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4523
    goto/16 :goto_141e

    .line 4511
    :pswitch_304
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSpatializerOutput()I

    move-result v0

    .line 4512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4513
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4514
    goto/16 :goto_141e

    .line 4500
    :pswitch_310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4502
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 4503
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4504
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->getSpatializerParameter(I[B)V

    .line 4505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4506
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4507
    goto/16 :goto_141e

    .line 4489
    :pswitch_326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4491
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 4492
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4493
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setSpatializerParameter(I[B)V

    .line 4494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4495
    goto/16 :goto_141e

    .line 4483
    :pswitch_339
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->recenterHeadTracker()V

    .line 4484
    goto/16 :goto_141e

    .line 4476
    :pswitch_33e
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 4477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4478
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpatializerGlobalTransform([F)V

    .line 4479
    goto/16 :goto_141e

    .line 4468
    :pswitch_34a
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getActualHeadTrackingMode()I

    move-result v0

    .line 4469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4470
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4471
    goto/16 :goto_141e

    .line 4461
    :pswitch_356
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSupportedHeadTrackingModes()[I

    move-result-object v0

    .line 4462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4463
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4464
    goto/16 :goto_141e

    .line 4454
    :pswitch_362
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getDesiredHeadTrackingMode()I

    move-result v0

    .line 4455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4456
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4457
    goto/16 :goto_141e

    .line 4446
    :pswitch_36e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4447
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4448
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setDesiredHeadTrackingMode(I)V

    .line 4449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4450
    goto/16 :goto_141e

    .line 4437
    :pswitch_37d
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4438
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4439
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 4440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4441
    goto/16 :goto_141e

    .line 4428
    :pswitch_390
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4429
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4430
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 4431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4432
    goto/16 :goto_141e

    .line 4420
    :pswitch_3a3
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object v0

    .line 4421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4422
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4423
    goto/16 :goto_141e

    .line 4412
    :pswitch_3af
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v1

    .line 4413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4414
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 4415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4416
    goto/16 :goto_141e

    .line 4403
    :pswitch_3c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v1

    .line 4404
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4405
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 4406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4407
    goto/16 :goto_141e

    .line 4394
    :pswitch_3d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v1

    .line 4395
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4396
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 4397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4398
    goto/16 :goto_141e

    .line 4385
    :pswitch_3e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v1

    .line 4386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4387
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 4388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4389
    goto/16 :goto_141e

    .line 4376
    :pswitch_3fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v1

    .line 4377
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4378
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 4379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4380
    goto/16 :goto_141e

    .line 4367
    :pswitch_40e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v1

    .line 4368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4369
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 4370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4371
    goto/16 :goto_141e

    .line 4359
    :pswitch_421
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSpatializedChannelMasks()Ljava/util/List;

    move-result-object v0

    .line 4360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4361
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4362
    goto/16 :goto_141e

    .line 4348
    :pswitch_42d
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4350
    sget-object v3, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioFormat;

    .line 4351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4352
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v0

    .line 4353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4354
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4355
    goto/16 :goto_141e

    .line 4339
    :pswitch_44c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4340
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4341
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpatializerEnabled(Z)V

    .line 4342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4343
    goto/16 :goto_141e

    .line 4328
    :pswitch_45b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    move-result-object v1

    .line 4330
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4331
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4332
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V

    .line 4333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4334
    goto/16 :goto_141e

    .line 4320
    :pswitch_472
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isHeadTrackerAvailable()Z

    move-result v0

    .line 4321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4322
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4323
    goto/16 :goto_141e

    .line 4311
    :pswitch_47e
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4313
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    .line 4314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4315
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4316
    goto/16 :goto_141e

    .line 4300
    :pswitch_495
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4302
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 4303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4304
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V

    .line 4305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4306
    goto/16 :goto_141e

    .line 4290
    :pswitch_4ac
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4292
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    .line 4293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4294
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4295
    goto/16 :goto_141e

    .line 4280
    :pswitch_4c3
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4281
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4282
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    .line 4283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4284
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4285
    goto/16 :goto_141e

    .line 4272
    :pswitch_4da
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailable()Z

    move-result v0

    .line 4273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4274
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4275
    goto/16 :goto_141e

    .line 4265
    :pswitch_4e6
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpatializerEnabled()Z

    move-result v0

    .line 4266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4267
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4268
    goto/16 :goto_141e

    .line 4258
    :pswitch_4f2
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSpatializerImmersiveAudioLevel()I

    move-result v0

    .line 4259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4260
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4261
    goto/16 :goto_141e

    .line 4251
    :pswitch_4fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v1

    .line 4252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4253
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 4254
    goto/16 :goto_141e

    .line 4242
    :pswitch_50e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v1

    .line 4243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4244
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 4245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4246
    goto/16 :goto_141e

    .line 4232
    :pswitch_521
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4234
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->exitAudioFocusFreezeForTest(Landroid/os/IBinder;)Z

    move-result v0

    .line 4235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4236
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4237
    goto/16 :goto_141e

    .line 4220
    :pswitch_534
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4222
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 4223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4224
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->enterAudioFocusFreezeForTest(Landroid/os/IBinder;[I)Z

    move-result v0

    .line 4225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4226
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4227
    goto/16 :goto_141e

    .line 4212
    :pswitch_54b
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFocusUnmuteDelayAfterFadeOutForTest()J

    move-result-wide v0

    .line 4213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4214
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4215
    goto/16 :goto_141e

    .line 4205
    :pswitch_557
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFocusFadeOutDurationForTest()J

    move-result-wide v0

    .line 4206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4207
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4208
    goto/16 :goto_141e

    .line 4198
    :pswitch_563
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFocusDuckedUidsForTest()Ljava/util/List;

    move-result-object v0

    .line 4199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4200
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4201
    goto/16 :goto_141e

    .line 4189
    :pswitch_56f
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4190
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4191
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v0

    .line 4192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4193
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4194
    goto/16 :goto_141e

    .line 4173
    :pswitch_586
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 4175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4177
    sget-object v4, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioAttributes;

    .line 4179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4181
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/IAudioService$Stub;->abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v0

    .line 4182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4183
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4184
    goto/16 :goto_141e

    .line 4168
    :pswitch_5ad
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$requestAudioFocusForTest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 4159
    :pswitch_5b2
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4161
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v0

    .line 4162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4163
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4164
    goto/16 :goto_141e

    .line 4149
    :pswitch_5c9
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4151
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v0

    .line 4152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4153
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4154
    goto/16 :goto_141e

    .line 4137
    :pswitch_5e0
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4139
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 4140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4141
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z

    move-result v0

    .line 4142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4143
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4144
    goto/16 :goto_141e

    .line 4129
    :pswitch_5fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4131
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setHomeSoundEffectEnabled(Z)V

    .line 4132
    goto/16 :goto_141e

    .line 4121
    :pswitch_607
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isHomeSoundEffectEnabled()Z

    move-result v0

    .line 4122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4123
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4124
    goto/16 :goto_141e

    .line 4114
    :pswitch_613
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4116
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setNavigationRepeatSoundEffectsEnabled(Z)V

    .line 4117
    goto/16 :goto_141e

    .line 4106
    :pswitch_61f
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v0

    .line 4107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4108
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4109
    goto/16 :goto_141e

    .line 4099
    :pswitch_62b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v1

    .line 4100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4101
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 4102
    goto/16 :goto_141e

    .line 4090
    :pswitch_63b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v1

    .line 4091
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4092
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 4093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4094
    goto/16 :goto_141e

    .line 4082
    :pswitch_64e
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCommunicationDevice()I

    move-result v0

    .line 4083
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4084
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4085
    goto/16 :goto_141e

    .line 4069
    :pswitch_65a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4071
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4073
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 4074
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4075
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->setCommunicationDevice(Landroid/os/IBinder;ILandroid/content/AttributionSource;)Z

    move-result v0

    .line 4076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4077
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4078
    goto/16 :goto_141e

    .line 4061
    :pswitch_679
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAvailableCommunicationDeviceIds()[I

    move-result-object v0

    .line 4062
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4063
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4064
    goto/16 :goto_141e

    .line 4052
    :pswitch_685
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4053
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4054
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getDeviceMaskForStream(I)I

    move-result v0

    .line 4055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4056
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4057
    goto/16 :goto_141e

    .line 4042
    :pswitch_698
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4043
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4044
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isMusicActive(Z)Z

    move-result v0

    .line 4045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4046
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4047
    goto/16 :goto_141e

    .line 4030
    :pswitch_6ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4032
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4034
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4035
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4036
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    .line 4037
    goto/16 :goto_141e

    .line 4020
    :pswitch_6bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4022
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4023
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4024
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    .line 4025
    goto/16 :goto_141e

    .line 4015
    :pswitch_6cf
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 4011
    :pswitch_6d4
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$adjustSuggestedStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 4007
    :pswitch_6d9
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$adjustStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 4000
    :pswitch_6de
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v1

    .line 4001
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4002
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 4003
    goto/16 :goto_141e

    .line 3991
    :pswitch_6ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v1

    .line 3992
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3993
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3995
    goto/16 :goto_141e

    .line 3981
    :pswitch_701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3982
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3983
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForCapturePreset(I)Ljava/util/List;

    move-result-object v0

    .line 3984
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3985
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3986
    goto/16 :goto_141e

    .line 3971
    :pswitch_714
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3972
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3973
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->clearPreferredDevicesForCapturePreset(I)I

    move-result v0

    .line 3974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3975
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3976
    goto/16 :goto_141e

    .line 3959
    :pswitch_727
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3961
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3962
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3963
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v0

    .line 3964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3965
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3966
    goto/16 :goto_141e

    .line 3951
    :pswitch_740
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMultiAudioFocusEnabled()Z

    move-result v0

    .line 3952
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3953
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3954
    goto/16 :goto_141e

    .line 3944
    :pswitch_74c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3945
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3946
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setMultiAudioFocusEnabled(Z)V

    .line 3947
    goto/16 :goto_141e

    .line 3934
    :pswitch_758
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3935
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3936
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v0

    .line 3937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3938
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3939
    goto/16 :goto_141e

    .line 3921
    :pswitch_76f
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3923
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3925
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3926
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3927
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 3928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3929
    goto/16 :goto_141e

    .line 3913
    :pswitch_78a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3914
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3915
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRttEnabled(Z)V

    .line 3916
    goto/16 :goto_141e

    .line 3905
    :pswitch_796
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    move-result-object v1

    .line 3906
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3907
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    .line 3908
    goto/16 :goto_141e

    .line 3896
    :pswitch_7a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    move-result-object v1

    .line 3897
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3898
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    .line 3899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3900
    goto/16 :goto_141e

    .line 3888
    :pswitch_7b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v1

    .line 3889
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3890
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 3891
    goto/16 :goto_141e

    .line 3879
    :pswitch_7c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v1

    .line 3880
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3881
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 3882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3883
    goto/16 :goto_141e

    .line 3871
    :pswitch_7dc
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAllowedCapturePolicy()I

    move-result v0

    .line 3872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3873
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3874
    goto/16 :goto_141e

    .line 3862
    :pswitch_7e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3863
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3864
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setAllowedCapturePolicy(I)I

    move-result v0

    .line 3865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3866
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3867
    goto/16 :goto_141e

    .line 3854
    :pswitch_7fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IDevicesForAttributesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDevicesForAttributesCallback;

    move-result-object v1

    .line 3855
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3856
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->removeOnDevicesForAttributesChangedListener(Landroid/media/IDevicesForAttributesCallback;)V

    .line 3857
    goto/16 :goto_141e

    .line 3843
    :pswitch_80b
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 3845
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IDevicesForAttributesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDevicesForAttributesCallback;

    move-result-object v3

    .line 3846
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3847
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Landroid/media/IDevicesForAttributesCallback;)V

    .line 3848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3849
    goto/16 :goto_141e

    .line 3833
    :pswitch_826
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 3834
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3835
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getDevicesForAttributesUnprotected(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    .line 3836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3837
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3838
    goto/16 :goto_141e

    .line 3823
    :pswitch_83d
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 3824
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3825
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    .line 3826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3827
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3828
    goto/16 :goto_141e

    .line 3813
    :pswitch_854
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3814
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3815
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getNonDefaultDevicesForStrategy(I)Ljava/util/List;

    move-result-object v0

    .line 3816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3817
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3818
    goto/16 :goto_141e

    .line 3801
    :pswitch_867
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3803
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 3804
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3805
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->removeDeviceAsNonDefaultForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v0

    .line 3806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3807
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3808
    goto/16 :goto_141e

    .line 3789
    :pswitch_882
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3791
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 3792
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3793
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setDeviceAsNonDefaultForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v0

    .line 3794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3795
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3796
    goto/16 :goto_141e

    .line 3779
    :pswitch_89d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3780
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3781
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object v0

    .line 3782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3783
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3784
    goto/16 :goto_141e

    .line 3769
    :pswitch_8b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3770
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3771
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->removePreferredDevicesForStrategy(I)I

    move-result v0

    .line 3772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3773
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3774
    goto/16 :goto_141e

    .line 3757
    :pswitch_8c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3759
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3760
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3761
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v0

    .line 3762
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3763
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3764
    goto/16 :goto_141e

    .line 3749
    :pswitch_8dc
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCallScreeningModeSupported()Z

    move-result v0

    .line 3750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3751
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3752
    goto/16 :goto_141e

    .line 3740
    :pswitch_8e8
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 3741
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3742
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v0

    .line 3743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3744
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3745
    goto/16 :goto_141e

    .line 3728
    :pswitch_8ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3731
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3732
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v0

    .line 3733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3734
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3735
    goto/16 :goto_141e

    .line 3712
    :pswitch_91a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3714
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3716
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 3718
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 3719
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3720
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/IAudioService$Stub;->setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v0

    .line 3721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3722
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3723
    goto/16 :goto_141e

    .line 3700
    :pswitch_93d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3702
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3703
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3704
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v0

    .line 3705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3706
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3707
    goto/16 :goto_141e

    .line 3684
    :pswitch_958
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3688
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 3690
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 3691
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3692
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/IAudioService$Stub;->setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v0

    .line 3693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3694
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3695
    goto/16 :goto_141e

    .line 3676
    :pswitch_97b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;

    move-result-object v1

    .line 3677
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3678
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioVolumeCallback(Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;)V

    .line 3679
    goto/16 :goto_141e

    .line 3667
    :pswitch_98b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;

    move-result-object v1

    .line 3668
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3669
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerAudioVolumeCallback(Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;)V

    .line 3670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3671
    goto/16 :goto_141e

    .line 3659
    :pswitch_99e
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isAudioServerRunning()Z

    move-result v0

    .line 3660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3661
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3662
    goto/16 :goto_141e

    .line 3652
    :pswitch_9aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v1

    .line 3653
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3654
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 3655
    goto/16 :goto_141e

    .line 3643
    :pswitch_9ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v1

    .line 3644
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3645
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 3646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3647
    goto/16 :goto_141e

    .line 3631
    :pswitch_9cd
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 3633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3635
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    .line 3636
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3637
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3638
    goto/16 :goto_141e

    .line 3618
    :pswitch_9e9
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 3620
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 3622
    sget-object v4, Landroid/media/BluetoothProfileConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/BluetoothProfileConnectionInfo;

    .line 3623
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3624
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    .line 3625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3626
    goto/16 :goto_141e

    .line 3608
    :pswitch_a0c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3610
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3611
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3612
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->playerHasOpPlayAudio(IZ)V

    .line 3613
    goto/16 :goto_141e

    .line 3603
    :pswitch_a1c
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$dispatchFocusChangeWithFade$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 3590
    :pswitch_a21
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 3592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3594
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    .line 3595
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3596
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v0

    .line 3597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3598
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3599
    goto/16 :goto_141e

    .line 3578
    :pswitch_a44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3580
    sget-object v3, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioAttributes;

    .line 3581
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3582
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    .line 3583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3584
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3585
    goto/16 :goto_141e

    .line 3570
    :pswitch_a5f
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    .line 3571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3572
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3573
    goto/16 :goto_141e

    .line 3563
    :pswitch_a6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v1

    .line 3564
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3565
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 3566
    goto/16 :goto_141e

    .line 3554
    :pswitch_a7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v1

    .line 3555
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3556
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 3557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3558
    goto/16 :goto_141e

    .line 3546
    :pswitch_a8e
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v0

    .line 3547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3548
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3549
    goto/16 :goto_141e

    .line 3539
    :pswitch_a9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v1

    .line 3540
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3541
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 3542
    goto/16 :goto_141e

    .line 3530
    :pswitch_aaa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v1

    .line 3531
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3532
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 3533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3534
    goto/16 :goto_141e

    .line 3522
    :pswitch_abd
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->hasRegisteredDynamicPolicy()Z

    move-result v0

    .line 3523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3524
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3525
    goto/16 :goto_141e

    .line 3515
    :pswitch_ac9
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getVolumePolicy()Landroid/media/VolumePolicy;

    move-result-object v0

    .line 3516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3517
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3518
    goto/16 :goto_141e

    .line 3507
    :pswitch_ad5
    sget-object v1, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumePolicy;

    .line 3508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3509
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 3510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3511
    goto/16 :goto_141e

    .line 3495
    :pswitch_ae8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3497
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 3498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3499
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v0

    .line 3500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3501
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3502
    goto/16 :goto_141e

    .line 3481
    :pswitch_b03
    sget-object v1, Landroid/media/audiopolicy/AudioMix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/audiopolicy/AudioMix;

    .line 3483
    sget-object v3, Landroid/media/audiopolicy/AudioMixingRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/audiopolicy/AudioMixingRule;

    .line 3485
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    .line 3486
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3487
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->updateMixingRulesForPolicy([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v0

    .line 3488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3489
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3490
    goto/16 :goto_141e

    .line 3469
    :pswitch_b2a
    sget-object v1, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 3471
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 3472
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3473
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v0

    .line 3474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3475
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3476
    goto/16 :goto_141e

    .line 3457
    :pswitch_b49
    sget-object v1, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 3459
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 3460
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3461
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v0

    .line 3462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3463
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3464
    goto/16 :goto_141e

    .line 3448
    :pswitch_b68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3449
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3450
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3452
    goto/16 :goto_141e

    .line 3440
    :pswitch_b7b
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRegisteredPolicyMixes()Ljava/util/List;

    move-result-object v0

    .line 3441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3442
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3443
    goto/16 :goto_141e

    .line 3433
    :pswitch_b87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3435
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3436
    goto/16 :goto_141e

    .line 3428
    :pswitch_b97
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$registerAudioPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 3421
    :pswitch_b9c
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v0

    .line 3422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3423
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3424
    goto/16 :goto_141e

    .line 3412
    :pswitch_ba8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3414
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v0

    .line 3415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3416
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3417
    goto/16 :goto_141e

    .line 3402
    :pswitch_bbb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3403
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3404
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z

    move-result v0

    .line 3405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3406
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3407
    goto/16 :goto_141e

    .line 3392
    :pswitch_bce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3393
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3394
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getBluetoothAudioDeviceCategory(Ljava/lang/String;)I

    move-result v0

    .line 3395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3396
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3397
    goto/16 :goto_141e

    .line 3380
    :pswitch_be1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3384
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setBluetoothAudioDeviceCategory(Ljava/lang/String;I)Z

    move-result v0

    .line 3385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3386
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3387
    goto/16 :goto_141e

    .line 3372
    :pswitch_bf8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3373
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3374
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setCsdAsAFeatureEnabled(Z)V

    .line 3375
    goto/16 :goto_141e

    .line 3364
    :pswitch_c04
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCsdAsAFeatureEnabled()Z

    move-result v0

    .line 3365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3366
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3367
    goto/16 :goto_141e

    .line 3357
    :pswitch_c10
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCsdAsAFeatureAvailable()Z

    move-result v0

    .line 3358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3359
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3360
    goto/16 :goto_141e

    .line 3350
    :pswitch_c1c
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCsdEnabled()Z

    move-result v0

    .line 3351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3352
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3353
    goto/16 :goto_141e

    .line 3342
    :pswitch_c28
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3343
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3344
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->forceComputeCsdOnAllDevices(Z)V

    .line 3345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3346
    goto/16 :goto_141e

    .line 3333
    :pswitch_c37
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3334
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3335
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->forceUseFrameworkMel(Z)V

    .line 3336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3337
    goto/16 :goto_141e

    .line 3325
    :pswitch_c46
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 3326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3327
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setCsd(F)V

    .line 3328
    goto/16 :goto_141e

    .line 3317
    :pswitch_c52
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCsd()F

    move-result v0

    .line 3318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3319
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3320
    goto/16 :goto_141e

    .line 3310
    :pswitch_c5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 3311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3312
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setOutputRs2UpperBound(F)V

    .line 3313
    goto/16 :goto_141e

    .line 3302
    :pswitch_c6a
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getOutputRs2UpperBound()F

    move-result v0

    .line 3303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3304
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3305
    goto/16 :goto_141e

    .line 3295
    :pswitch_c76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3296
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3297
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->lowerVolumeToRs1(Ljava/lang/String;)V

    .line 3298
    goto/16 :goto_141e

    .line 3286
    :pswitch_c82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3288
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    .line 3289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3290
    goto/16 :goto_141e

    .line 3276
    :pswitch_c91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3278
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamMutableByUi(I)Z

    move-result v0

    .line 3279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3280
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3281
    goto/16 :goto_141e

    .line 3266
    :pswitch_ca4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3268
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v0

    .line 3269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3270
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3271
    goto/16 :goto_141e

    .line 3256
    :pswitch_cb7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3258
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    .line 3259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3260
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3261
    goto/16 :goto_141e

    .line 3248
    :pswitch_cca
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3250
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setVolumeControllerLongPressTimeoutEnabled(Z)V

    .line 3251
    goto/16 :goto_141e

    .line 3237
    :pswitch_cd6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v1

    .line 3239
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3241
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 3242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3243
    goto/16 :goto_141e

    .line 3229
    :pswitch_ced
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getVolumeController()Landroid/media/IVolumeController;

    move-result-object v0

    .line 3230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3231
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3232
    goto/16 :goto_141e

    .line 3221
    :pswitch_cf9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v1

    .line 3222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3223
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 3224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3225
    goto/16 :goto_141e

    .line 3213
    :pswitch_d0c
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v0

    .line 3214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3215
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3216
    goto/16 :goto_141e

    .line 3204
    :pswitch_d18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v1

    .line 3205
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3206
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v0

    .line 3207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3208
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3209
    goto/16 :goto_141e

    .line 3191
    :pswitch_d2f
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3197
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 3198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3199
    goto/16 :goto_141e

    .line 3182
    :pswitch_d4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3184
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setNotifAliasRingForTest(Z)V

    .line 3185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3186
    goto/16 :goto_141e

    .line 3171
    :pswitch_d59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStreamAliasingDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStreamAliasingDispatcher;

    move-result-object v1

    .line 3173
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3175
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->registerStreamAliasingDispatcher(Landroid/media/IStreamAliasingDispatcher;Z)V

    .line 3176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3177
    goto/16 :goto_141e

    .line 3163
    :pswitch_d70
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isVolumeControlUsingVolumeGroups()Z

    move-result v0

    .line 3164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3165
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3166
    goto/16 :goto_141e

    .line 3154
    :pswitch_d7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3156
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamTypeAlias(I)I

    move-result v0

    .line 3157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3158
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3159
    goto/16 :goto_141e

    .line 3146
    :pswitch_d8f
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getIndependentStreamTypes()Ljava/util/List;

    move-result-object v0

    .line 3147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3148
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3149
    goto/16 :goto_141e

    .line 3139
    :pswitch_d9b
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v0

    .line 3140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3141
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3142
    goto/16 :goto_141e

    .line 3132
    :pswitch_da7
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 3133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3134
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3135
    goto/16 :goto_141e

    .line 3124
    :pswitch_db3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 3125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3126
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 3127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3128
    goto/16 :goto_141e

    .line 3113
    :pswitch_dc6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3117
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 3118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3119
    goto/16 :goto_141e

    .line 3102
    :pswitch_dd9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3104
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 3105
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3106
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;Landroid/content/AttributionSource;)V

    .line 3107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3108
    goto/16 :goto_141e

    .line 3091
    :pswitch_df0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3093
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 3094
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3095
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;Landroid/content/AttributionSource;)V

    .line 3096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3097
    goto/16 :goto_141e

    .line 3078
    :pswitch_e07
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3080
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3082
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 3083
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3084
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;ILandroid/content/AttributionSource;)V

    .line 3085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3086
    goto/16 :goto_141e

    .line 3070
    :pswitch_e22
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v0

    .line 3071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3072
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3073
    goto/16 :goto_141e

    .line 3062
    :pswitch_e2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3063
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3064
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3066
    goto/16 :goto_141e

    .line 3046
    :pswitch_e3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 3048
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3050
    sget-object v4, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioAttributes;

    .line 3052
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3053
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3054
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v0

    .line 3055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3056
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3057
    goto/16 :goto_141e

    .line 3041
    :pswitch_e64
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$requestAudioFocus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 3034
    :pswitch_e69
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v0

    .line 3035
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3036
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3037
    goto/16 :goto_141e

    .line 3026
    :pswitch_e75
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3027
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3028
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 3029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3030
    goto/16 :goto_141e

    .line 3018
    :pswitch_e84
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v0

    .line 3019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3020
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3021
    goto/16 :goto_141e

    .line 3010
    :pswitch_e90
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3011
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3012
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setLeAudioSuspended(Z)V

    .line 3013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3014
    goto/16 :goto_141e

    .line 3001
    :pswitch_e9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3002
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3003
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setA2dpSuspended(Z)V

    .line 3004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3005
    goto/16 :goto_141e

    .line 2992
    :pswitch_eae
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2993
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2994
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 2995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2996
    goto/16 :goto_141e

    .line 2984
    :pswitch_ebd
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v0

    .line 2985
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2986
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2987
    goto/16 :goto_141e

    .line 2972
    :pswitch_ec9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2974
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2976
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 2977
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2978
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Landroid/os/IBinder;ZLandroid/content/AttributionSource;)V

    .line 2979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2980
    goto/16 :goto_141e

    .line 2962
    :pswitch_ee4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2963
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2964
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getEncodedSurroundMode(I)I

    move-result v0

    .line 2965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2966
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2967
    goto/16 :goto_141e

    .line 2952
    :pswitch_ef7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2953
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2954
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setEncodedSurroundMode(I)Z

    move-result v0

    .line 2955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2956
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2957
    goto/16 :goto_141e

    .line 2942
    :pswitch_f0a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2943
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2944
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isSurroundFormatEnabled(I)Z

    move-result v0

    .line 2945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2946
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2947
    goto/16 :goto_141e

    .line 2930
    :pswitch_f1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2932
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2933
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2934
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setSurroundFormatEnabled(IZ)Z

    move-result v0

    .line 2935
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2936
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2937
    goto/16 :goto_141e

    .line 2922
    :pswitch_f34
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v0

    .line 2923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2924
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2925
    goto/16 :goto_141e

    .line 2915
    :pswitch_f40
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSurroundFormats()Ljava/util/Map;

    move-result-object v0

    .line 2916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2917
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2918
    goto/16 :goto_141e

    .line 2910
    :pswitch_f4c
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 2911
    goto/16 :goto_141e

    .line 2905
    :pswitch_f51
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 2906
    goto/16 :goto_141e

    .line 2898
    :pswitch_f56
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v0

    .line 2899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2900
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2901
    goto/16 :goto_141e

    .line 2889
    :pswitch_f62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2891
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 2892
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2893
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 2894
    goto/16 :goto_141e

    .line 2879
    :pswitch_f72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2881
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2882
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2883
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->playSoundEffect(II)V

    .line 2884
    goto/16 :goto_141e

    .line 2871
    :pswitch_f82
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v0

    .line 2872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2873
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2874
    goto/16 :goto_141e

    .line 2859
    :pswitch_f8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2861
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2863
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2864
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2865
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 2866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2867
    goto/16 :goto_141e

    .line 2849
    :pswitch_fa5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2850
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2851
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v0

    .line 2852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2853
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2854
    goto/16 :goto_141e

    .line 2839
    :pswitch_fb8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2840
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2841
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v0

    .line 2842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2843
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2844
    goto/16 :goto_141e

    .line 2828
    :pswitch_fcb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2830
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2831
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2832
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 2833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2834
    goto/16 :goto_141e

    .line 2818
    :pswitch_fde
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2819
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2820
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v0

    .line 2821
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2822
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2823
    goto/16 :goto_141e

    .line 2810
    :pswitch_ff1
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v0

    .line 2811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2812
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2813
    goto/16 :goto_141e

    .line 2803
    :pswitch_ffd
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v0

    .line 2804
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2805
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2806
    goto/16 :goto_141e

    .line 2793
    :pswitch_1009
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2795
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2796
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2797
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    .line 2798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2799
    goto/16 :goto_141e

    .line 2782
    :pswitch_101c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2784
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2785
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2786
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    .line 2787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2788
    goto/16 :goto_141e

    .line 2774
    :pswitch_102f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2775
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2776
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setMicrophoneMuteFromSwitch(Z)V

    .line 2777
    goto/16 :goto_141e

    .line 2764
    :pswitch_103b
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 2765
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2766
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isInputGainFixed(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    .line 2767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2768
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2769
    goto/16 :goto_141e

    .line 2756
    :pswitch_1052
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMinInputGainIndex()I

    move-result v0

    .line 2757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2758
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2759
    goto/16 :goto_141e

    .line 2749
    :pswitch_105e
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMaxInputGainIndex()I

    move-result v0

    .line 2750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2751
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2752
    goto/16 :goto_141e

    .line 2740
    :pswitch_106a
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 2741
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2742
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I

    move-result v0

    .line 2743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2744
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2745
    goto/16 :goto_141e

    .line 2729
    :pswitch_1081
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 2731
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2732
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2733
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->setInputGainIndex(Landroid/media/AudioDeviceAttributes;I)V

    .line 2734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2735
    goto/16 :goto_141e

    .line 2714
    :pswitch_1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2716
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2720
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2721
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2722
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;ILjava/lang/String;)V

    .line 2723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2724
    goto/16 :goto_141e

    .line 2704
    :pswitch_10b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2705
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2706
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isHotwordStreamSupported(Z)Z

    move-result v0

    .line 2707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2708
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2709
    goto/16 :goto_141e

    .line 2696
    :pswitch_10c6
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isUltrasoundSupported()Z

    move-result v0

    .line 2697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2698
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2699
    goto/16 :goto_141e

    .line 2689
    :pswitch_10d2
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMicrophoneMuted()Z

    move-result v0

    .line 2690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2691
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2692
    goto/16 :goto_141e

    .line 2680
    :pswitch_10de
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2681
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2682
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getAudioProductStrategies(Z)Ljava/util/List;

    move-result-object v0

    .line 2683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2684
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2685
    goto/16 :goto_141e

    .line 2672
    :pswitch_10f1
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSupportedSystemUsages()[I

    move-result-object v0

    .line 2673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2674
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2675
    goto/16 :goto_141e

    .line 2664
    :pswitch_10fd
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 2665
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2666
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSupportedSystemUsages([I)V

    .line 2667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2668
    goto/16 :goto_141e

    .line 2654
    :pswitch_110c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2655
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2656
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 2657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2658
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2659
    goto/16 :goto_141e

    .line 2639
    :pswitch_111f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2641
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2645
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2646
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2647
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/IAudioService$Stub;->adjustVolumeGroupVolume(IIILjava/lang/String;)V

    .line 2648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    goto/16 :goto_141e

    .line 2629
    :pswitch_113a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2630
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2631
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isVolumeGroupMuted(I)Z

    move-result v0

    .line 2632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2633
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2634
    goto/16 :goto_141e

    .line 2619
    :pswitch_114d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2620
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2621
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getLastAudibleVolumeForVolumeGroup(I)I

    move-result v0

    .line 2622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2623
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2624
    goto/16 :goto_141e

    .line 2609
    :pswitch_1160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2610
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2611
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVolumeGroupMinVolumeIndex(I)I

    move-result v0

    .line 2612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2613
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    goto/16 :goto_141e

    .line 2599
    :pswitch_1173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2600
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2601
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVolumeGroupMaxVolumeIndex(I)I

    move-result v0

    .line 2602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2603
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2604
    goto/16 :goto_141e

    .line 2589
    :pswitch_1186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2590
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2591
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVolumeGroupVolumeIndex(I)I

    move-result v0

    .line 2592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2593
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2594
    goto/16 :goto_141e

    .line 2584
    :pswitch_1199
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setVolumeGroupVolumeIndex$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2573
    :pswitch_119e
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 2575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2576
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2577
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;I)I

    move-result v0

    .line 2578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2579
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2580
    goto/16 :goto_141e

    .line 2565
    :pswitch_11b9
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    .line 2566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2567
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2568
    goto/16 :goto_141e

    .line 2556
    :pswitch_11c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2558
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v0

    .line 2559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2560
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2561
    goto/16 :goto_141e

    .line 2546
    :pswitch_11d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2548
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v0

    .line 2549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2550
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2551
    goto/16 :goto_141e

    .line 2536
    :pswitch_11eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2537
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2538
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v0

    .line 2539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2540
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2541
    goto/16 :goto_141e

    .line 2531
    :pswitch_11fe
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setMasterMute$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2524
    :pswitch_1203
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v0

    .line 2525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2526
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2527
    goto/16 :goto_141e

    .line 2514
    :pswitch_120f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2516
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2517
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2518
    invoke-virtual {p0, v1, v3}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 2519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2520
    goto/16 :goto_141e

    .line 2504
    :pswitch_1222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2506
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v0

    .line 2507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2508
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2509
    goto/16 :goto_141e

    .line 2490
    :pswitch_1235
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 2492
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2494
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2496
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2497
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2498
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/IAudioService$Stub;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2499
    goto/16 :goto_141e

    .line 2476
    :pswitch_1251
    sget-object v1, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumeInfo;

    .line 2478
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 2480
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2481
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2482
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->getDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)Landroid/media/VolumeInfo;

    move-result-object v0

    .line 2483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2484
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2485
    goto/16 :goto_141e

    .line 2464
    :pswitch_1274
    sget-object v1, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumeInfo;

    .line 2466
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 2468
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2469
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2470
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->notifyAbsoluteVolumeChanged(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)V

    .line 2471
    goto/16 :goto_141e

    .line 2449
    :pswitch_1290
    sget-object v1, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumeInfo;

    .line 2451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2453
    sget-object v4, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    .line 2455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2457
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/IAudioService$Stub;->adjustVolumeForDevice(Landroid/media/VolumeInfo;ILandroid/media/AudioDeviceAttributes;Ljava/lang/String;)V

    .line 2458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2459
    goto/16 :goto_141e

    .line 2436
    :pswitch_12b3
    sget-object v1, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumeInfo;

    .line 2438
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 2440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2441
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2442
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->setVolumeForDevice(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)V

    .line 2443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2444
    goto/16 :goto_141e

    .line 2423
    :pswitch_12d2
    sget-object v1, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumeInfo;

    .line 2425
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 2427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2428
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2429
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/IAudioService$Stub;->setDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)V

    .line 2430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2431
    goto/16 :goto_141e

    .line 2406
    :pswitch_12f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2412
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2414
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2415
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2416
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2418
    goto/16 :goto_141e

    .line 2391
    :pswitch_1311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2397
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2399
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 2400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2401
    goto/16 :goto_141e

    .line 2374
    :pswitch_132c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2382
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2384
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2386
    goto/16 :goto_141e

    .line 2359
    :pswitch_134c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2365
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2366
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2367
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 2368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2369
    goto/16 :goto_141e

    .line 2352
    :pswitch_1367
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->waitForAudioHandlerBarrier()V

    .line 2353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2354
    goto/16 :goto_141e

    .line 2346
    :pswitch_136f
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->permissionUpdateBarrier()V

    .line 2347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2348
    goto/16 :goto_141e

    .line 2335
    :pswitch_1377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2339
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 2340
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2341
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->portEvent(IILandroid/os/PersistableBundle;)V

    .line 2342
    goto/16 :goto_141e

    .line 2325
    :pswitch_138f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2328
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2329
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playerSessionId(II)V

    .line 2330
    goto/16 :goto_141e

    .line 2317
    :pswitch_139f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2318
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2319
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->releaseRecorder(I)V

    .line 2320
    goto/16 :goto_141e

    .line 2307
    :pswitch_13ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2311
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->recorderEvent(II)V

    .line 2312
    goto :goto_141e

    .line 2297
    :pswitch_13ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2298
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2299
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->trackRecorder(Landroid/os/IBinder;)I

    move-result v0

    .line 2300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2301
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2302
    goto :goto_141e

    .line 2289
    :pswitch_13cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2291
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->releasePlayer(I)V

    .line 2292
    goto :goto_141e

    .line 2277
    :pswitch_13d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2281
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 2282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2283
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->playerEvent(II[I)V

    .line 2284
    goto :goto_141e

    .line 2267
    :pswitch_13ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2269
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 2270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2271
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playerAttributes(ILandroid/media/AudioAttributes;)V

    .line 2272
    goto :goto_141e

    .line 2257
    :pswitch_13fd
    sget-object v1, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerBase$PlayerIdCard;

    .line 2258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2259
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v0

    .line 2260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2261
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2262
    goto :goto_141e

    .line 2249
    :pswitch_1413
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getNativeInterface()Landroid/media/IAudioManagerNative;

    move-result-object v0

    .line 2250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2251
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2252
    nop

    .line 4897
    :goto_141e
    return v6

    nop

    :pswitch_data_1420
    .packed-switch 0x1
        :pswitch_1413
        :pswitch_13fd
        :pswitch_13ea
        :pswitch_13d7
        :pswitch_13cc
        :pswitch_13ba
        :pswitch_13ab
        :pswitch_139f
        :pswitch_138f
        :pswitch_1377
        :pswitch_136f
        :pswitch_1367
        :pswitch_134c
        :pswitch_132c
        :pswitch_1311
        :pswitch_12f1
        :pswitch_12d2
        :pswitch_12b3
        :pswitch_1290
        :pswitch_1274
        :pswitch_1251
        :pswitch_1235
        :pswitch_1222
        :pswitch_120f
        :pswitch_1203
        :pswitch_11fe
        :pswitch_11eb
        :pswitch_11d8
        :pswitch_11c5
        :pswitch_11b9
        :pswitch_119e
        :pswitch_1199
        :pswitch_1186
        :pswitch_1173
        :pswitch_1160
        :pswitch_114d
        :pswitch_113a
        :pswitch_111f
        :pswitch_110c
        :pswitch_10fd
        :pswitch_10f1
        :pswitch_10de
        :pswitch_10d2
        :pswitch_10c6
        :pswitch_10b3
        :pswitch_1098
        :pswitch_1081
        :pswitch_106a
        :pswitch_105e
        :pswitch_1052
        :pswitch_103b
        :pswitch_102f
        :pswitch_101c
        :pswitch_1009
        :pswitch_ffd
        :pswitch_ff1
        :pswitch_fde
        :pswitch_fcb
        :pswitch_fb8
        :pswitch_fa5
        :pswitch_f8e
        :pswitch_f82
        :pswitch_f72
        :pswitch_f62
        :pswitch_f56
        :pswitch_f51
        :pswitch_f4c
        :pswitch_f40
        :pswitch_f34
        :pswitch_f1d
        :pswitch_f0a
        :pswitch_ef7
        :pswitch_ee4
        :pswitch_ec9
        :pswitch_ebd
        :pswitch_eae
        :pswitch_e9f
        :pswitch_e90
        :pswitch_e84
        :pswitch_e75
        :pswitch_e69
        :pswitch_e64
        :pswitch_e3d
        :pswitch_e2e
        :pswitch_e22
        :pswitch_e07
        :pswitch_df0
        :pswitch_dd9
        :pswitch_dc6
        :pswitch_db3
        :pswitch_da7
        :pswitch_d9b
        :pswitch_d8f
        :pswitch_d7c
        :pswitch_d70
        :pswitch_d59
        :pswitch_d4a
        :pswitch_d2f
        :pswitch_d18
        :pswitch_d0c
        :pswitch_cf9
        :pswitch_ced
        :pswitch_cd6
        :pswitch_cca
        :pswitch_cb7
        :pswitch_ca4
        :pswitch_c91
        :pswitch_c82
        :pswitch_c76
        :pswitch_c6a
        :pswitch_c5e
        :pswitch_c52
        :pswitch_c46
        :pswitch_c37
        :pswitch_c28
        :pswitch_c1c
        :pswitch_c10
        :pswitch_c04
        :pswitch_bf8
        :pswitch_be1
        :pswitch_bce
        :pswitch_bbb
        :pswitch_ba8
        :pswitch_b9c
        :pswitch_b97
        :pswitch_b87
        :pswitch_b7b
        :pswitch_b68
        :pswitch_b49
        :pswitch_b2a
        :pswitch_b03
        :pswitch_ae8
        :pswitch_ad5
        :pswitch_ac9
        :pswitch_abd
        :pswitch_aaa
        :pswitch_a9a
        :pswitch_a8e
        :pswitch_a7b
        :pswitch_a6b
        :pswitch_a5f
        :pswitch_a44
        :pswitch_a21
        :pswitch_a1c
        :pswitch_a0c
        :pswitch_9e9
        :pswitch_9cd
        :pswitch_9ba
        :pswitch_9aa
        :pswitch_99e
        :pswitch_98b
        :pswitch_97b
        :pswitch_958
        :pswitch_93d
        :pswitch_91a
        :pswitch_8ff
        :pswitch_8e8
        :pswitch_8dc
        :pswitch_8c3
        :pswitch_8b0
        :pswitch_89d
        :pswitch_882
        :pswitch_867
        :pswitch_854
        :pswitch_83d
        :pswitch_826
        :pswitch_80b
        :pswitch_7fb
        :pswitch_7e8
        :pswitch_7dc
        :pswitch_7c9
        :pswitch_7b9
        :pswitch_7a6
        :pswitch_796
        :pswitch_78a
        :pswitch_76f
        :pswitch_758
        :pswitch_74c
        :pswitch_740
        :pswitch_727
        :pswitch_714
        :pswitch_701
        :pswitch_6ee
        :pswitch_6de
        :pswitch_6d9
        :pswitch_6d4
        :pswitch_6cf
        :pswitch_6bf
        :pswitch_6ab
        :pswitch_698
        :pswitch_685
        :pswitch_679
        :pswitch_65a
        :pswitch_64e
        :pswitch_63b
        :pswitch_62b
        :pswitch_61f
        :pswitch_613
        :pswitch_607
        :pswitch_5fb
        :pswitch_5e0
        :pswitch_5c9
        :pswitch_5b2
        :pswitch_5ad
        :pswitch_586
        :pswitch_56f
        :pswitch_563
        :pswitch_557
        :pswitch_54b
        :pswitch_534
        :pswitch_521
        :pswitch_50e
        :pswitch_4fe
        :pswitch_4f2
        :pswitch_4e6
        :pswitch_4da
        :pswitch_4c3
        :pswitch_4ac
        :pswitch_495
        :pswitch_47e
        :pswitch_472
        :pswitch_45b
        :pswitch_44c
        :pswitch_42d
        :pswitch_421
        :pswitch_40e
        :pswitch_3fb
        :pswitch_3e8
        :pswitch_3d5
        :pswitch_3c2
        :pswitch_3af
        :pswitch_3a3
        :pswitch_390
        :pswitch_37d
        :pswitch_36e
        :pswitch_362
        :pswitch_356
        :pswitch_34a
        :pswitch_33e
        :pswitch_339
        :pswitch_326
        :pswitch_310
        :pswitch_304
        :pswitch_2f1
        :pswitch_2de
        :pswitch_2d2
        :pswitch_2c6
        :pswitch_2ba
        :pswitch_2a2
        :pswitch_292
        :pswitch_286
        :pswitch_26f
        :pswitch_258
        :pswitch_241
        :pswitch_235
        :pswitch_222
        :pswitch_20a
        :pswitch_1eb
        :pswitch_1dc
        :pswitch_1cd
        :pswitch_1be
        :pswitch_1b2
        :pswitch_1a6
        :pswitch_1a1
        :pswitch_195
        :pswitch_172
        :pswitch_157
        :pswitch_144
        :pswitch_134
        :pswitch_128
        :pswitch_119
        :pswitch_10d
        :pswitch_fa
        :pswitch_e7
        :pswitch_d8
        :pswitch_c9
        :pswitch_ae
        :pswitch_97
        :pswitch_80
        :pswitch_69
        :pswitch_5d
        :pswitch_51
        :pswitch_3a
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist recenterHeadTracker_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10433
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10434
    return-void
.end method

.method protected blacklist registerHeadToSoundstagePoseCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10383
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10384
    return-void
.end method

.method protected blacklist registerMuteAwaitConnectionDispatcher_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10477
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10478
    return-void
.end method

.method protected blacklist registerSpatializerHeadTrackingCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10373
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10374
    return-void
.end method

.method protected blacklist registerSpatializerOutputCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10453
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10454
    return-void
.end method

.method protected blacklist registerStreamAliasingDispatcher_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9936
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9937
    return-void
.end method

.method protected blacklist removeAssistantServicesUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10509
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10510
    return-void
.end method

.method protected blacklist removeDeviceAsNonDefaultForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10141
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10142
    return-void
.end method

.method protected blacklist removePreferredDevicesForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10126
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10127
    return-void
.end method

.method protected blacklist removeSpatializerCompatibleAudioDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10403
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10404
    return-void
.end method

.method protected blacklist sendFocusLossAndUpdate_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10494
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10495
    return-void
.end method

.method protected blacklist sendFocusLoss_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10499
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10500
    return-void
.end method

.method protected blacklist setA2dpSuspended_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9865
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9866
    return-void
.end method

.method protected blacklist setActiveAssistantServiceUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10514
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10515
    return-void
.end method

.method protected blacklist setBluetoothAudioDeviceCategory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10016
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10017
    return-void
.end method

.method protected blacklist setBluetoothVariableLatencyEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10561
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10562
    return-void
.end method

.method protected blacklist setCsdAsAFeatureEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10011
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10012
    return-void
.end method

.method protected blacklist setCsd_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9981
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9982
    return-void
.end method

.method protected blacklist setDesiredHeadTrackingMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10408
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10409
    return-void
.end method

.method protected blacklist setDeviceAsNonDefaultForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10136
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10137
    return-void
.end method

.method protected blacklist setDeviceVolumeBehavior_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10168
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 10169
    return-void
.end method

.method protected blacklist setDeviceVolume_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9660
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9661
    return-void
.end method

.method protected blacklist setEnableHardening_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10598
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10599
    return-void
.end method

.method protected blacklist setEncodedSurroundMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9856
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9857
    return-void
.end method

.method protected blacklist setFadeManagerConfigurationForFocusLoss_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10578
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10579
    return-void
.end method

.method protected blacklist setHeadTrackerEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10352
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10353
    return-void
.end method

.method protected blacklist setInputGainIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9811
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9812
    return-void
.end method

.method protected blacklist setLeAudioSuspended_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9870
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9871
    return-void
.end method

.method protected blacklist setMasterMute_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9710
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9711
    return-void
.end method

.method protected blacklist setMultiAudioFocusEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10179
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10180
    return-void
.end method

.method protected blacklist setNotifAliasRingForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9941
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9942
    return-void
.end method

.method protected blacklist setOutputRs2UpperBound_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9971
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9972
    return-void
.end method

.method protected blacklist setPreferredDevicesForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10121
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10122
    return-void
.end method

.method protected blacklist setRingtonePlayer_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9914
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMOTE_AUDIO_PLAYBACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9915
    return-void
.end method

.method protected blacklist setSpatializerEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10364
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10365
    return-void
.end method

.method protected blacklist setSpatializerGlobalTransform_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10428
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10429
    return-void
.end method

.method protected blacklist setSpatializerParameter_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10438
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10439
    return-void
.end method

.method protected blacklist setSupportedSystemUsages_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9783
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9784
    return-void
.end method

.method protected blacklist setVolumeControllerLongPressTimeoutEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9956
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9957
    return-void
.end method

.method protected blacklist setVolumeForDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9666
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setVolumeForDevice:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9667
    return-void
.end method

.method protected blacklist setVolumeGroupVolumeIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9748
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9749
    return-void
.end method

.method protected blacklist setWiredDeviceConnectionState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9946
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9947
    return-void
.end method

.method protected blacklist shouldNotificationSoundPlay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10593
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10594
    return-void
.end method

.method protected blacklist supportsBluetoothVariableLatency_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10556
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10557
    return-void
.end method

.method protected blacklist unregisterHeadToSoundstagePoseCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10388
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10389
    return-void
.end method

.method protected blacklist unregisterSpatializerHeadTrackingCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10378
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10379
    return-void
.end method

.method protected blacklist unregisterSpatializerOutputCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10458
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10459
    return-void
.end method

.method protected blacklist updateMixingRulesForPolicy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10063
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10064
    return-void
.end method
