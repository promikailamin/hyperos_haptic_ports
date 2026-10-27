.class public Lcom/android/server/hdmi/HdmiControlService;
.super Lcom/android/server/SystemService;
.source "HdmiControlService.java"


# static fields
.field public static final ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

.field static final AUDIO_OUTPUT_DEVICE_HDMI:Landroid/media/AudioDeviceAttributes;

.field static final AUDIO_OUTPUT_DEVICE_HDMI_ARC:Landroid/media/AudioDeviceAttributes;

.field public static final AUDIO_OUTPUT_DEVICE_HDMI_EARC:Landroid/media/AudioDeviceAttributes;

.field public static final AUDIO_OUTPUT_DEVICE_LINE_DIGITAL:Landroid/media/AudioDeviceAttributes;

.field public static final AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

.field public static final FULL_AND_ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

.field public static final HONG_KONG:Ljava/util/Locale;

.field public static final MACAU:Ljava/util/Locale;

.field public static final PLAYBACK_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

.field static final STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final TV_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

.field public static final sTerminologyToBibliographicMap:Ljava/util/Map;


# instance fields
.field public mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

.field public mActivePortId:I

.field public final mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

.field public mAddressAllocated:Z

.field public mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

.field public mAudioDeviceVolumeBehaviors:Ljava/util/Map;

.field public mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

.field public mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

.field public mAvbDisabled:Z

.field public mCecController:Lcom/android/server/hdmi/HdmiCecController;

.field public final mCecLocalDevices:Ljava/util/List;

.field public mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

.field public mCecVersion:I

.field public mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

.field public final mDeviceEventListenerRecords:Ljava/util/ArrayList;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field public mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field public mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

.field public mEarcEnabled:Z

.field public mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

.field public mEarcPortId:I

.field private mEarcSupported:Z

.field public mEarcTxFeatureFlagEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

.field public mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

.field public final mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

.field public mHdmiCecVolumeControl:I

.field public final mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

.field public final mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

.field public mHdmiControlEnabled:I

.field public final mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

.field public final mHotplugEventListenerRecords:Ljava/util/ArrayList;

.field public mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

.field public mIoLooper:Landroid/os/Looper;

.field public final mIoThread:Landroid/os/HandlerThread;

.field public mIsCecAvailable:Z

.field public mLastInputMhl:I

.field public final mLastUpdateSourceCallerRecord:Ljava/util/LinkedList;

.field public final mLock:Ljava/lang/Object;

.field public final mMaxUpdateSourceCallerRecordNum:I

.field public mMenuLanguage:Ljava/lang/String;

.field public mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

.field public mMhlDevices:Ljava/util/List;

.field public mMhlInputChangeEnabled:Z

.field public final mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

.field public mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

.field public mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

.field public mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

.field public mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

.field protected mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

.field public mProhibitMode:Z

.field public mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

.field public final mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

.field public final mServiceThreadExecutor:Ljava/util/concurrent/Executor;

.field public mSettingChangeListener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

.field public final mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

.field public mSoundbarModeFeatureFlagEnabled:Z

.field public mStandbyMessageReceived:Z

.field public mStreamMusicMaxVolume:I

.field public mSystemAudioActivated:Z

.field public final mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

.field public mTransitionFromArcToEarcTxEnabled:Z

.field public mTvInputManager:Landroid/media/tv/TvInputManager;

.field public final mVendorCommandListenerRecords:Ljava/util/ArrayList;

.field public mWakeLock:Lcom/android/server/hdmi/WakeLockWrapper;

.field public mWakeUpMessageReceived:Z


# direct methods
.method public static synthetic $r8$lambda$4TGpcTfQ-0nycahPYw9eIU6kZAU(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->lambda$updatePowerStatusOnInitializeCecComplete$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$IvTeXB55Gkwf58evruAI2Pj8MUI(ILandroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 3

    .line 3730
    :try_start_0
    invoke-interface {p1, p0}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;->onHdmiCecVolumeControlFeature(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    .line 3732
    :catch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to report HdmiControlVolumeControlStatusChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiControlService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$P3HIkbYfYUGmhPTvOuww1u-33dU(Landroid/sysprop/HdmiProperties$cec_device_types_values;)Ljava/lang/Integer;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->enumToIntDeviceType(Landroid/sysprop/HdmiProperties$cec_device_types_values;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SFmjLm0i6A5mR2wKcIywsBrI9P4(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->bootCompleted()V

    return-void
.end method

.method public static synthetic $r8$lambda$rlSLA0-1wAjlGPGxvWXu0mxoFC4(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->lambda$updatePowerStatusOnInitializeCecComplete$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivePortId(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCecLocalDevices(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCecMessageBuffer(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/CecMessageBuffer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCecVersion(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecVersion:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceEventListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEarcController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiEarcController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEarcLocalDevice(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiEarcLocalDevice;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEarcPortId(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEarcTxFeatureFlagEnabled(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiCecConfig(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecConfig;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiCecSettingChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiCecVolumeControl(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiControlEnabled(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiControlStatusChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHotplugEventListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputChangeListenerRecord(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsCecAvailable(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastUpdateSourceCallerRecord(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/LinkedList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastUpdateSourceCallerRecord:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMenuLanguage(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMhlController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMhlVendorCommandListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/PowerManagerWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProhibitMode(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecordListenerRecord(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSelectRequestBuffer(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/SelectRequestBuffer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoundbarModeFeatureFlagEnabled(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemAudioModeChangeListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVendorCommandListenerRecords(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEarcTxFeatureFlagEnabled(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInputChangeListenerRecord(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsCecAvailable(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNumericSoundbarVolumeUiOnTvFeatureFlagEnabled(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRecordListenerRecord(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSoundbarModeFeatureFlagEnabled(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTransitionFromArcToEarcTxEnabled(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mTransitionFromArcToEarcTxEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddCecSettingChangeListener(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddDeviceEventListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddHdmiMhlVendorCommandListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddHotplugEventListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddSystemAudioModeChangeListner(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mannounceHdmiControlStatusChange(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceHdmiControlStatusChange(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$massertRunOnServiceThread(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateDeviceInfo(Lcom/android/server/hdmi/HdmiControlService;IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiControlService;->createDeviceInfo(IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$menforceAccessPermission(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMhlDevicesLocked(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getMhlDevicesLocked()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRemoteControlSourceAddress(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getRemoteControlSourceAddress()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetSwitchDevice(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getSwitchDevice()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->initBinderCall()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeCec(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvokeCallback(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvokeCecSettingChangeListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeCecSettingChangeListenerLocked(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvokeHdmiControlStatusChangeListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvokeHdmiControlStatusChangeListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;IZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvokeHotplugEventListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDisableCec(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->onDisableCec()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDisableEarc(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->onDisableEarc()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInitializeCecComplete(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onInitializeCecComplete(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monLanguageChanged(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onLanguageChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveCecSettingChangeListener(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveHdmiControlStatusChangeListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveHotplugEventListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveSystemAudioModeChangeListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportFeatures(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->reportFeatures(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayName(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetHdmiRecordListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInputChangeListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLastActiveSourceCall(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->updateLastActiveSourceCall(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smtoInt(Z)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 151
    new-instance v0, Ljava/util/Locale;

    const-string v1, "HK"

    const-string/jumbo v2, "zh"

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    .line 152
    new-instance v0, Ljava/util/Locale;

    const-string v1, "MO"

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    .line 159
    invoke-static {}, Lcom/android/server/hdmi/HdmiControlService;->createsTerminologyToBibliographicMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->sTerminologyToBibliographicMap:Ljava/util/Map;

    .line 249
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x2

    const/16 v2, 0x9

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_HDMI:Landroid/media/AudioDeviceAttributes;

    .line 252
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    const/16 v4, 0xa

    invoke-direct {v2, v1, v4, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_HDMI_ARC:Landroid/media/AudioDeviceAttributes;

    .line 255
    new-instance v4, Landroid/media/AudioDeviceAttributes;

    const/16 v5, 0x1d

    invoke-direct {v4, v1, v5, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    sput-object v4, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_HDMI_EARC:Landroid/media/AudioDeviceAttributes;

    .line 258
    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/4 v6, 0x6

    invoke-direct {v5, v1, v6, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    sput-object v5, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_LINE_DIGITAL:Landroid/media/AudioDeviceAttributes;

    .line 264
    invoke-static {v0, v2, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/hdmi/HdmiControlService;->AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 271
    invoke-static {v2, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/hdmi/HdmiControlService;->TV_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    .line 277
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->PLAYBACK_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    const/4 v0, 0x3

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    .line 281
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 280
    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/android/server/hdmi/HdmiControlService;->ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    const/4 v3, 0x1

    .line 284
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/hdmi/HdmiControlService;->FULL_AND_ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    .line 290
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 291
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService;->STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 618
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 293
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    .line 305
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    .line 318
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    .line 397
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Hdmi Control Io Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 400
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 411
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    .line 416
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 421
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 431
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    .line 458
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAvbDisabled:Z

    const/4 v1, -0x1

    .line 460
    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 469
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 473
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 477
    new-instance v3, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService-IA;)V

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    .line 480
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 485
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 503
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 505
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 508
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 511
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    .line 514
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    .line 517
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    .line 520
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTransitionFromArcToEarcTxEnabled:Z

    .line 523
    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    .line 531
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 574
    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    .line 578
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 581
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 584
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastUpdateSourceCallerRecord:Ljava/util/LinkedList;

    const/4 v0, 0x3

    .line 585
    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMaxUpdateSourceCallerRecordNum:I

    .line 589
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 593
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-direct {v0}, Lcom/android/server/hdmi/SelectRequestBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 4570
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$34;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$34;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingChangeListener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    .line 619
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->readDeviceTypes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    .line 620
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 621
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 622
    new-instance p1, Lcom/android/server/hdmi/DeviceConfigWrapper;

    invoke-direct {p1}, Lcom/android/server/hdmi/DeviceConfigWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/server/hdmi/AudioManagerWrapper;Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/hdmi/AudioManagerWrapper;",
            "Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;",
            ")V"
        }
    .end annotation

    .line 608
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 293
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    .line 305
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    .line 318
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    .line 397
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Hdmi Control Io Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 400
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 411
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    .line 416
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 421
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 431
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    .line 458
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAvbDisabled:Z

    const/4 v1, -0x1

    .line 460
    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 469
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 473
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 477
    new-instance v3, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService-IA;)V

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    .line 480
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 485
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 503
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 505
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 508
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 511
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    .line 514
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    .line 517
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    .line 520
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTransitionFromArcToEarcTxEnabled:Z

    .line 523
    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    .line 531
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 574
    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    .line 578
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 581
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 584
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastUpdateSourceCallerRecord:Ljava/util/LinkedList;

    const/4 v0, 0x3

    .line 585
    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMaxUpdateSourceCallerRecordNum:I

    .line 589
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 593
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-direct {v0}, Lcom/android/server/hdmi/SelectRequestBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 4570
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$34;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$34;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingChangeListener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    .line 609
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    .line 610
    new-instance p2, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    invoke-direct {p2, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 611
    new-instance p2, Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {p2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 612
    new-instance p1, Lcom/android/server/hdmi/DeviceConfigWrapper;

    invoke-direct {p1}, Lcom/android/server/hdmi/DeviceConfigWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    .line 613
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 614
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    return-void
.end method

.method private bootCompleted()V
    .registers 3

    .line 1077
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    invoke-virtual {v0}, Lcom/android/server/hdmi/PowerManagerWrapper;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1078
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    .line 1080
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    if-eqz v0, :cond_30

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1082
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->startQueuedActions()V

    goto :goto_20

    :cond_30
    return-void
.end method

.method public static createsTerminologyToBibliographicMap()Ljava/util/Map;
    .registers 3

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    const-string/jumbo v1, "sqi"

    const-string v2, "alb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "hye"

    const-string v2, "arm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "eus"

    const-string v2, "baq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v1, "mya"

    const-string v2, "bur"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "ces"

    const-string v2, "cze"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v1, "nld"

    const-string v2, "dut"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "kat"

    const-string v2, "geo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "deu"

    const-string v2, "ger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "ell"

    const-string v2, "gre"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "fra"

    const-string v2, "fre"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "isl"

    const-string v2, "ice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v1, "mkd"

    const-string v2, "mac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v1, "mri"

    const-string v2, "mao"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v1, "msa"

    const-string/jumbo v2, "may"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "fas"

    const-string/jumbo v2, "per"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v1, "ron"

    const-string/jumbo v2, "rum"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v1, "slk"

    const-string/jumbo v2, "slo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "bod"

    const-string/jumbo v2, "tib"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "cym"

    const-string/jumbo v2, "wel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static enumToIntDeviceType(Landroid/sysprop/HdmiProperties$cec_device_types_values;)Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 675
    :cond_4
    sget-object v1, Lcom/android/server/hdmi/HdmiControlService$38;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    invoke-virtual {p0}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5a

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized device type in ro.hdmi.cec_device_types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {p0}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->getPropValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 693
    const-string v1, "HdmiControlService"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_2a
    const/4 p0, 0x7

    .line 691
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_30
    const/4 p0, 0x6

    .line 689
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_36
    const/4 p0, 0x5

    .line 687
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3c
    const/4 p0, 0x4

    .line 685
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_42
    const/4 p0, 0x3

    .line 683
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_48
    const/4 p0, 0x2

    .line 681
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4e
    const/4 p0, 0x1

    .line 679
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_54
    const/4 p0, 0x0

    .line 677
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4e
        :pswitch_48
        :pswitch_42
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
    .end packed-switch
.end method

.method public static localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 187
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 188
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh-Hant-TW"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 189
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh-Hant-HK"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 190
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yue-Hant-HK"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 191
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh-Hant-MO"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_60

    .line 197
    :cond_4d
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p0

    .line 204
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->sTerminologyToBibliographicMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 205
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_5f
    return-object p0

    .line 195
    :cond_60
    :goto_60
    const-string p0, "chi"

    return-object p0
.end method

.method public static toInt(Z)I
    .registers 1

    .line 0
    return p0
.end method


# virtual methods
.method public acquireWakeLock()V
    .registers 4

    .line 4141
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->releaseWakeLock()V

    .line 4142
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    const/4 v1, 0x1

    const-string v2, "HdmiControlService"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/PowerManagerWrapper;->newWakeLock(ILjava/lang/String;)Lcom/android/server/hdmi/WakeLockWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeLock:Lcom/android/server/hdmi/WakeLockWrapper;

    const-wide/16 v1, 0x1388

    .line 4144
    invoke-interface {v0, v1, v2}, Lcom/android/server/hdmi/WakeLockWrapper;->acquire(J)V

    return-void
.end method

.method public final addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 6

    .line 4587
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4588
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 4589
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4590
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingChangeListener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;)V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_2c

    .line 4592
    :cond_1f
    :goto_1f
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 4593
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_1d

    throw p0
.end method

.method public final addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 4

    .line 3478
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 3480
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1a

    .line 3485
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3486
    :try_start_10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3487
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0

    .line 3482
    :catch_1a
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addEarcLocalDevice(Lcom/android/server/hdmi/HdmiEarcLocalDevice;)V
    .registers 2

    .line 5141
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 5142
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    return-void
.end method

.method public addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 3

    .line 3410
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3412
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$25;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$25;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 5

    .line 3364
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 3367
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_22

    .line 3372
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3373
    :try_start_10
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3374
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1f

    .line 3378
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$24;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$24;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1f
    move-exception p0

    .line 3374
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    .line 3369
    :catch_22
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 4

    .line 4223
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    .line 4226
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1a

    .line 4232
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4233
    :try_start_10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4234
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0

    .line 4228
    :catch_1a
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 5

    .line 3435
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 3437
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_22

    .line 3442
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3443
    :try_start_10
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3444
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1f

    .line 3448
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$26;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$26;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1f
    move-exception p0

    .line 3444
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    .line 3439
    :catch_22
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 4

    .line 3503
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 3506
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1a

    .line 3511
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3512
    :try_start_10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3513
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0

    .line 3508
    :catch_1a
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 4

    .line 4166
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 4168
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1a

    .line 4173
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4174
    :try_start_10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4175
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0

    .line 4170
    :catch_1a
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public allocateLogicalAddress(Ljava/util/ArrayList;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .line 1458
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1459
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    .line 1460
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 1461
    new-array v6, v0, [I

    .line 1462
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 1468
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SelectRequestBuffer;->clear()V

    .line 1470
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_42

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v8, v1, 0x1

    move-object v3, v2

    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1471
    iget-object v9, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getType()I

    move-result v10

    .line 1472
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    move-result v11

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$22;

    move-object v2, p0

    move-object v5, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/hdmi/HdmiControlService$22;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V

    .line 1471
    invoke-virtual {v9, v10, v11, v1}, Lcom/android/server/hdmi/HdmiCecController;->allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    move v1, v8

    goto :goto_20

    :cond_42
    return-void
.end method

.method public final announceHdmiCecVolumeControlFeatureChange(I)V
    .registers 4

    .line 3726
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3727
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3728
    :try_start_6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 3737
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final announceHdmiControlStatusChange(I)V
    .registers 8

    .line 3670
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3671
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3672
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 3673
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3675
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_2c

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 3676
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :catchall_2a
    move-exception p0

    goto :goto_31

    .line 3678
    :cond_2c
    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;I)V

    .line 3679
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_2a

    throw p0
.end method

.method public final announceHotplugEvent(IZ)V
    .registers 7

    .line 3652
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-direct {v0, p1, p2}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .line 3653
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3654
    :try_start_8
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_23

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 3655
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    goto :goto_f

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 3657
    :cond_23
    monitor-exit p1

    return-void

    :goto_25
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public announceSystemAudioModeChange(Z)V
    .registers 7

    .line 2073
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2075
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1e

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 2076
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V

    goto :goto_a

    :catchall_1c
    move-exception p0

    goto :goto_20

    .line 2078
    :cond_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1c

    throw p0
.end method

.method public final assertRunOnServiceThread()V
    .registers 2

    .line 1705
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_d

    return-void

    .line 1706
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should run on service thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    .registers 2

    .line 3770
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    return-object p0
.end method

.method public canGoToStandby()Z
    .registers 2

    .line 4019
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 4020
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->canGoToStandby()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public checkAndUpdateAbsoluteVolumeBehavior()V
    .registers 7

    .line 4703
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4706
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Lcom/android/server/hdmi/AudioManagerWrapper;

    move-result-object v0

    if-nez v0, :cond_b

    goto/16 :goto_e5

    .line 4711
    :cond_b
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4712
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    return-void

    .line 4717
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 4718
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 4722
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v1

    if-nez v1, :cond_43

    .line 4723
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    return-void

    .line 4726
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-eqz v0, :cond_e5

    .line 4727
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 4734
    :cond_43
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    move-result v1

    .line 4733
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 4740
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v2

    .line 4741
    sget-object v3, Lcom/android/server/hdmi/HdmiControlService;->FULL_AND_ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    .line 4742
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 4746
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e2

    if-nez v3, :cond_6f

    goto/16 :goto_e2

    :cond_6f
    if-nez v1, :cond_75

    .line 4756
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    return-void

    .line 4764
    :cond_75
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mAvbDisabled:Z

    if-eqz v3, :cond_83

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v3

    if-nez v3, :cond_83

    .line 4765
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    return-void

    .line 4770
    :cond_83
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_ab

    if-eq v3, v5, :cond_a1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_94

    goto :goto_e5

    :cond_94
    if-ne v2, v4, :cond_99

    .line 4809
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    .line 4812
    :cond_99
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 4811
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->querySetAudioVolumeLevelSupport(I)V

    return-void

    :cond_a1
    if-eq v2, v4, :cond_e5

    .line 4778
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 4777
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->startNewAvbAudioStatusAction(I)V

    return-void

    .line 4784
    :cond_ab
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    if-eqz v3, :cond_de

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    if-eqz v3, :cond_de

    const/4 v3, 0x5

    if-eq v2, v3, :cond_e5

    if-ne v2, v4, :cond_d6

    .line 4792
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 4793
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioDeviceVolumeManager()Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

    goto :goto_c2

    .line 4800
    :cond_d6
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 4799
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->startNewAvbAudioStatusAction(I)V

    return-void

    .line 4803
    :cond_de
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    return-void

    .line 4749
    :cond_e2
    :goto_e2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->switchToFullVolumeBehavior()V

    :cond_e5
    :goto_e5
    return-void
.end method

.method public checkLogicalAddressConflictAndReallocate(II)V
    .registers 5

    .line 2026
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    if-ne p2, v0, :cond_7

    goto :goto_4c

    .line 2029
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2030
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    if-ne v1, p1, :cond_f

    .line 2031
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "allocate logical address for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2032
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2033
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x4

    .line 2034
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public final checkPollStrategy(I)I
    .registers 4

    and-int/lit8 p0, p1, 0x3

    if-eqz p0, :cond_25

    const/high16 p0, 0x30000

    and-int/2addr p0, p1

    if-eqz p0, :cond_e

    const p0, 0x30003

    and-int/2addr p0, p1

    return p0

    .line 2001
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid iteration strategy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1997
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid poll strategy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearCecLocalDevices()V
    .registers 2

    .line 4064
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4065
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-nez v0, :cond_8

    return-void

    .line 4068
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    .line 4069
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearLocalDevices()V

    return-void
.end method

.method public clearEarcLocalDevice()V
    .registers 2

    .line 5134
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    .line 5135
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    return-void
.end method

.method public final createDeviceInfo(IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 7

    .line 2083
    const-string v0, "device_name"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->readStringSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2084
    invoke-static {}, Landroid/hardware/hdmi/HdmiDeviceInfo;->cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v1

    .line 2085
    invoke-virtual {v1, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 2086
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 2087
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 2088
    invoke-virtual {p1, p2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 2089
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p0

    .line 2090
    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p0

    .line 2091
    invoke-virtual {p0, p3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDevicePowerStatus(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p0

    .line 2092
    invoke-virtual {p0, p4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setCecVersion(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p0

    .line 2093
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public disableCecLocalDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 5

    .line 4053
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v0, :cond_20

    .line 4054
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 4055
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    goto :goto_e

    .line 4058
    :cond_20
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->clearAllLocalDevices()V

    return-void
.end method

.method public final disableEarcLocalDevice()V
    .registers 1

    .line 5164
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    if-nez p0, :cond_5

    return-void

    .line 5167
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->disableDevice()V

    return-void
.end method

.method public dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 5

    .line 1924
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1925
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0xf

    const/4 v2, -0x2

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1926
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    if-eq v0, v2, :cond_d

    .line 1928
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    if-eq v2, v1, :cond_d

    return v0

    .line 1934
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result p0

    if-ne p0, v1, :cond_31

    const/4 p0, -0x1

    return p0

    .line 1937
    :cond_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled cec command:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public displayOsd(I)V
    .registers 4

    .line 4540
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4541
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4542
    const-string v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4543
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendBroadcastAsUser(Landroid/content/Intent;)V

    return-void
.end method

.method public displayOsd(II)V
    .registers 5

    .line 4548
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4549
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4550
    const-string v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4551
    const-string p1, "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4552
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendBroadcastAsUser(Landroid/content/Intent;)V

    return-void
.end method

.method public earcBlocksArcConnection()Z
    .registers 4

    .line 5267
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 5270
    :cond_6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5271
    :try_start_9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    iget p0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    const/4 v2, 0x2

    if-eq p0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    monitor-exit v0

    return v1

    :catchall_13
    move-exception p0

    .line 5272
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public enableAbsoluteVolumeBehavior(Lcom/android/server/hdmi/AudioStatus;)V
    .registers 11

    .line 4845
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 4846
    :goto_f
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 4847
    new-instance v2, Landroid/media/VolumeInfo$Builder;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    .line 4848
    invoke-virtual {p1}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/VolumeInfo$Builder;->setMuted(Z)Landroid/media/VolumeInfo$Builder;

    move-result-object v2

    .line 4849
    invoke-virtual {p1}, Lcom/android/server/hdmi/AudioStatus;->getVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/VolumeInfo$Builder;->setVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    move-result-object v2

    const/16 v3, 0x64

    .line 4850
    invoke-virtual {v2, v3}, Landroid/media/VolumeInfo$Builder;->setMaxVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 4851
    invoke-virtual {v2, v3}, Landroid/media/VolumeInfo$Builder;->setMinVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    move-result-object v2

    .line 4852
    invoke-virtual {v2}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    move-result-object v5

    .line 4853
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;Lcom/android/server/hdmi/HdmiControlService-IA;)V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    .line 4858
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "HdmiControlService"

    if-ne v0, v1, :cond_78

    .line 4860
    const-string v0, "Enabling absolute volume behavior"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4861
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    .line 4862
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioDeviceVolumeManager()Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v8}, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;->setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    goto :goto_5e

    .line 4866
    :cond_78
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 4867
    const-string v0, "Enabling adjust-only absolute volume behavior"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    .line 4869
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioDeviceVolumeManager()Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v8}, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;->setDeviceAbsoluteVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    goto :goto_8b

    .line 4877
    :cond_a5
    invoke-virtual {p1}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->notifyAvbMuteChange(Z)V

    return-void
.end method

.method public enableAudioReturnChannel(IZ)V
    .registers 4

    .line 1912
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTransitionFromArcToEarcTxEnabled:Z

    if-nez v0, :cond_e

    if-eqz p2, :cond_e

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 1915
    invoke-virtual {p0, v0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 1917
    :cond_e
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->enableAudioReturnChannel(IZ)V

    return-void
.end method

.method public final enforceAccessPermission()V
    .registers 3

    .line 2348
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.HDMI_CEC"

    const-string v1, "HdmiControlService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAbsoluteVolumeChangedListener()Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;
    .registers 1

    .line 4885
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    return-object p0
.end method

.method public getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4

    .line 3331
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3332
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0

    .line 3336
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    .line 3338
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 3339
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    iget v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_2e

    return-object v1

    .line 3345
    :cond_2e
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 3346
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p0

    .line 3345
    invoke-static {v0, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0

    .line 3349
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 3350
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_62

    .line 3352
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_55

    return-object v1

    .line 3354
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result p0

    .line 3353
    invoke-static {v0, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0

    :cond_62
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllCecLocalDevices()Ljava/util/List;
    .registers 1

    .line 2007
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2008
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;
    .registers 1

    .line 4529
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    return-object p0
.end method

.method public final getAudioDeviceVolumeManager()Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;
    .registers 1

    .line 3787
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    return-object p0
.end method

.method public getAudioManager()Lcom/android/server/hdmi/AudioManagerWrapper;
    .registers 1

    .line 3779
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    return-object p0
.end method

.method public final getAvbCapableAudioOutputDevices()Ljava/util/List;
    .registers 2

    .line 4671
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4672
    sget-object p0, Lcom/android/server/hdmi/HdmiControlService;->TV_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    return-object p0

    .line 4673
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 4674
    sget-object p0, Lcom/android/server/hdmi/HdmiControlService;->PLAYBACK_AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    return-object p0

    .line 4676
    :cond_12
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getCecDeviceTypes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/sysprop/HdmiProperties$cec_device_types_values;",
            ">;"
        }
    .end annotation

    .line 627
    invoke-static {}, Landroid/sysprop/HdmiProperties;->cec_device_types()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getCecLocalDeviceTypes()Ljava/util/List;
    .registers 4

    const/4 v0, 0x5

    .line 1429
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1427
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1428
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isDsmEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1429
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1430
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isArcSupported()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    if-eqz p0, :cond_2b

    .line 1431
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    return-object v1
.end method

.method public getCecMessageWithOpcode(I)Ljava/util/List;
    .registers 5

    .line 1619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1620
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    invoke-virtual {p0}, Lcom/android/server/hdmi/CecMessageBuffer;->getBuffer()Ljava/util/List;

    move-result-object p0

    .line 1621
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 1622
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-ne v2, p1, :cond_f

    .line 1623
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_25
    return-object v0
.end method

.method public getCecVersion()I
    .registers 1

    .line 1674
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecVersion:I

    return p0
.end method

.method public getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    .line 1654
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1655
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    .line 1660
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1661
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceTypes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 632
    invoke-static {}, Landroid/sysprop/HdmiProperties;->device_type()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .registers 4

    .line 4641
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4642
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4643
    :try_start_b
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4644
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 4646
    :cond_23
    monitor-exit v0

    goto :goto_27

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_21

    throw p0

    .line 4648
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioDeviceVolumeManager()Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result p0

    return p0
.end method

.method public getDisableCecOnStandbyByLowEnergyMode()Z
    .registers 2

    .line 5329
    const-string/jumbo p0, "persist.sys.hdmi.property_disable_cec_on_standby_in_low_energy_mode"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getEarcLocalDevice()Lcom/android/server/hdmi/HdmiEarcLocalDevice;
    .registers 1

    .line 5159
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 5160
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    return-object p0
.end method

.method public final getEarcStatus()I
    .registers 2

    .line 5147
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 5148
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    if-eqz v0, :cond_13

    .line 5149
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5150
    :try_start_a
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    iget p0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 5151
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_10

    throw p0

    :cond_13
    const/4 p0, -0x1

    return p0
.end method

.method public getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;
    .registers 1

    .line 4567
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    return-object p0
.end method

.method public getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;
    .registers 1

    .line 1143
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    return-object p0
.end method

.method public getHdmiCecVolumeControl()I
    .registers 2

    .line 4275
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4276
    :try_start_3
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4277
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getInitialPowerStatus()I
    .registers 1

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public getIoLooper()Landroid/os/Looper;
    .registers 1

    .line 1605
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 1

    .line 4047
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4048
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .registers 2

    .line 4378
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4379
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 4380
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getMhlDevicesLocked()Ljava/util/List;
    .registers 1

    .line 2195
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    return-object p0
.end method

.method public getPhysicalAddress()I
    .registers 1

    .line 1641
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result p0

    return p0
.end method

.method public getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 2

    .line 1567
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPortInfo()Ljava/util/List;
    .registers 2

    .line 1561
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1562
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 1563
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getPowerManager()Lcom/android/server/hdmi/PowerManagerWrapper;
    .registers 1

    .line 1208
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    return-object p0
.end method

.method public getPowerManagerInternal()Lcom/android/server/hdmi/PowerManagerInternalWrapper;
    .registers 1

    .line 1212
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    return-object p0
.end method

.method public getPowerStatus()I
    .registers 1

    .line 3826
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3827
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->getPowerStatus()I

    move-result p0

    return p0
.end method

.method public final getRemoteControlSourceAddress()I
    .registers 2

    .line 3213
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3214
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    return p0

    .line 3215
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3216
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    return p0

    :cond_26
    const/16 p0, 0xf

    return p0
.end method

.method public getServiceLock()Ljava/lang/Object;
    .registers 1

    .line 2041
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getServiceLooper()Landroid/os/Looper;
    .registers 1

    .line 1634
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public final getSwitchDevice()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    .registers 2

    .line 3224
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3225
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p0

    return-object p0

    .line 3227
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3228
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTvInputManager()Landroid/media/tv/TvInputManager;
    .registers 1

    .line 1175
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    return-object p0
.end method

.method public getVendorId()I
    .registers 1

    .line 1648
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->getVendorId()I

    move-result p0

    return p0
.end method

.method public getWasCecDisabledOnStandbyByLowEnergyMode()Z
    .registers 2

    .line 5338
    const-string/jumbo p0, "persist.sys.hdmi.property_was_cec_disabled_on_standby_by_low_energy_mode"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 5

    .line 1884
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1887
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getValidationResult()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    const/4 v2, 0x5

    if-eq v0, v2, :cond_37

    .line 1890
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddresses(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_37

    :cond_14
    const/4 v1, -0x1

    if-nez v0, :cond_37

    .line 1893
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sourceAddressIsLocal(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_37

    .line 1897
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleCecMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1900
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    .line 1903
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    if-nez v2, :cond_36

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 1904
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    if-eqz p0, :cond_36

    return v1

    :cond_36
    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public handleEarcCapabilitiesReported([BI)V
    .registers 3

    .line 5253
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 5254
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiPortInfo;->isEarcSupported()Z

    move-result p2

    if-nez p2, :cond_15

    .line 5255
    const-string p0, "HdmiControlService"

    const-string p1, "Tried to process eARC capabilities from a port that doesn\'t support eARC."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5261
    :cond_15
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    if-eqz p0, :cond_1c

    .line 5262
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->handleEarcCapabilitiesReported([B)V

    :cond_1c
    return-void
.end method

.method public handleEarcStateChange(II)V
    .registers 9

    .line 5203
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 5204
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getEarcStatus()I

    move-result v3

    .line 5205
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiPortInfo;->isEarcSupported()Z

    move-result p2

    if-nez p2, :cond_2a

    .line 5206
    const-string p2, "HdmiControlService"

    const-string v0, "Tried to update eARC status on a port that doesn\'t support eARC."

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5207
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    move-result v2

    const/4 v5, 0x3

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(ZZIII)V

    return-void

    :cond_2a
    move v4, p1

    .line 5211
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    if-eqz p1, :cond_43

    .line 5212
    invoke-virtual {p1, v4}, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->handleEarcStateChange(I)V

    .line 5213
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    move-result v2

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(ZZIII)V

    return-void

    :cond_43
    const/4 p1, 0x2

    if-ne v4, p1, :cond_73

    .line 5218
    const-string p1, "eARC state change [new: HDMI_EARC_STATUS_ARC_PENDING(2)]"

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5219
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(ZLjava/util/List;)V

    .line 5220
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/hdmi/HdmiControlService$37;

    invoke-direct {p2, p0}, Lcom/android/server/hdmi/HdmiControlService$37;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5226
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    move-result v2

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(ZZIII)V

    return-void

    .line 5229
    :cond_73
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    move-result v2

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(ZZIII)V

    return-void
.end method

.method public final initBinderCall()V
    .registers 1

    .line 2352
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    .line 2353
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->setWorkSourceUidToCallingUid()V

    return-void
.end method

.method public initService()V
    .registers 8

    .line 742
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    if-nez v0, :cond_11

    .line 743
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 744
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    .line 747
    :cond_11
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    if-nez v0, :cond_1c

    .line 748
    new-instance v0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 750
    :cond_1c
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getInitialPowerStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    const/4 v0, 0x0

    .line 751
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setProhibitMode(Z)V

    .line 752
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getWasCecDisabledOnStandbyByLowEnergyMode()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 753
    const-string v1, "HdmiControlService"

    const-string v3, "Re-enable CEC on boot-up since it was disabled due to low energy  mode."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string v3, "hdmi_cec_enabled"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->setIntValue(Ljava/lang/String;I)V

    .line 757
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setWasCecDisabledOnStandbyByLowEnergyMode(Z)V

    .line 759
    :cond_47
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string v3, "hdmi_cec_enabled"

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    .line 762
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    const-string v3, "enable_soundbar_mode"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/hdmi/DeviceConfigWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    .line 764
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    const-string v3, "enable_earc_tx"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/hdmi/DeviceConfigWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    .line 766
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    const-string/jumbo v3, "transition_arc_to_earc_tx"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/hdmi/DeviceConfigWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mTransitionFromArcToEarcTxEnabled:Z

    .line 768
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    const-string v3, "enable_numeric_soundbar_volume_ui_on_tv"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/hdmi/DeviceConfigWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mNumericSoundbarVolumeUiOnTvFeatureFlagEnabled:Z

    .line 771
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 772
    :try_start_7d
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string v4, "earc_enabled"

    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_89

    move v3, v2

    goto :goto_8a

    :cond_89
    move v3, v0

    :goto_8a
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    .line 774
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 775
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    iget-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    and-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    goto :goto_9d

    :catchall_9a
    move-exception p0

    goto/16 :goto_2c5

    .line 777
    :cond_9d
    :goto_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_7d .. :try_end_9e} :catchall_9a

    .line 778
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v1

    const-string/jumbo v3, "volume_control_enabled"

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiCecVolumeControlEnabledInternal(I)V

    .line 780
    const-string/jumbo v1, "mhl_input_switching_enabled"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    .line 782
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    if-nez v1, :cond_c0

    .line 783
    new-instance v1, Lcom/android/server/hdmi/CecMessageBuffer;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/CecMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 785
    :cond_c0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-nez v1, :cond_ce

    .line 786
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/hdmi/HdmiCecController;->create(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 788
    :cond_ce
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-nez v1, :cond_da

    .line 789
    const-string p0, "HdmiControlService"

    const-string v0, "Device does not support HDMI-CEC."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 792
    :cond_da
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    if-nez v1, :cond_e4

    .line 793
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 795
    :cond_e4
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->isReady()Z

    move-result v1

    if-nez v1, :cond_f3

    .line 796
    const-string v1, "HdmiControlService"

    const-string v3, "Device does not support MHL-control."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_f3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    if-nez v1, :cond_fd

    .line 799
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiEarcController;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiEarcController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 801
    :cond_fd
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    if-nez v1, :cond_108

    .line 802
    const-string v1, "HdmiControlService"

    const-string v3, "Device does not support eARC."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_108
    new-instance v1, Lcom/android/server/hdmi/HdmiCecNetwork;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-direct {v1, p0, v3, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiMhlControllerStub;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 805
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 806
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    goto :goto_122

    .line 808
    :cond_11d
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecController;->enableCec(Z)V

    .line 811
    :goto_122
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 812
    :try_start_125
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    .line 813
    monitor-exit v3
    :try_end_12a
    .catchall {:try_start_125 .. :try_end_12a} :catchall_2c2

    .line 815
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->initPortInfo()V

    .line 816
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v1

    .line 817
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 818
    :try_start_136
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 819
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13c
    :goto_13c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 820
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiPortInfo;->isEarcSupported()Z

    move-result v5

    if-eqz v5, :cond_162

    .line 821
    iget-boolean v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    if-eqz v6, :cond_162

    .line 826
    const-string v1, "HdmiControlService"

    const-string v3, "HDMI eARC supported on more than 1 port."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    const/4 v1, -0x1

    .line 828
    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    goto :goto_16d

    :catchall_15f
    move-exception p0

    goto/16 :goto_2c0

    :cond_162
    if-eqz v5, :cond_13c

    .line 831
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v3

    iput v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 832
    iput-boolean v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    goto :goto_13c

    .line 835
    :cond_16d
    :goto_16d
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    if-eqz v3, :cond_175

    move v3, v2

    goto :goto_176

    :cond_175
    move v3, v0

    :goto_176
    and-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 836
    monitor-exit v4
    :try_end_17a
    .catchall {:try_start_136 .. :try_end_17a} :catchall_15f

    .line 837
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    move-result v1

    if-eqz v1, :cond_18d

    .line 838
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 839
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->initializeEarc(I)V

    goto :goto_18d

    .line 841
    :cond_18a
    invoke-virtual {p0, v0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 845
    :cond_18d
    :goto_18d
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string v1, "hdmi_cec_enabled"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$2;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 854
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string v1, "hdmi_cec_version"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$3;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 861
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v1, "routing_control"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$4;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$4;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 878
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v1, "system_audio_control"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$5;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$5;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 899
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v1, "volume_control_enabled"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$6;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$6;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 908
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v1, "tv_wake_on_one_touch_play"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$7;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$7;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 918
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v1, "rc_profile_tv"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$8;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$8;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 926
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v1, "rc_profile_source_handles_root_menu"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$9;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$9;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 935
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v1, "rc_profile_source_handles_setup_menu"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$10;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$10;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 944
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v1, "rc_profile_source_handles_contents_menu"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$11;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$11;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 953
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v1, "rc_profile_source_handles_top_menu"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$12;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$12;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 962
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v1, "rc_profile_source_handles_media_context_sensitive_menu"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$13;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$13;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 973
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_257

    .line 974
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$14;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/DeviceConfigWrapper;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 990
    :cond_257
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string v1, "earc_enabled"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$15;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$15;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 1008
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$16;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$16;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/DeviceConfigWrapper;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1022
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v1, "soundbar_mode"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$17;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$17;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_29b

    .line 1035
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v1, "power_state_change_on_active_source_lost"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$18;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$18;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 1049
    :cond_29b
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$19;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$19;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/DeviceConfigWrapper;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1059
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$20;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiControlService$20;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/DeviceConfigWrapper;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void

    .line 836
    :goto_2c0
    :try_start_2c0
    monitor-exit v4
    :try_end_2c1
    .catchall {:try_start_2c0 .. :try_end_2c1} :catchall_15f

    throw p0

    :catchall_2c2
    move-exception p0

    .line 813
    :try_start_2c3
    monitor-exit v3
    :try_end_2c4
    .catchall {:try_start_2c3 .. :try_end_2c4} :catchall_2c2

    throw p0

    .line 777
    :goto_2c5
    :try_start_2c5
    monitor-exit v1
    :try_end_2c6
    .catchall {:try_start_2c5 .. :try_end_2c6} :catchall_9a

    throw p0
.end method

.method public final initializeCec(I)V
    .registers 5

    const/4 v0, 0x0

    .line 1404
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 1405
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v0

    const-string v1, "hdmi_cec_version"

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 1407
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecController;->getVersion()I

    move-result v1

    const/4 v2, 0x5

    .line 1412
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1411
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecVersion:I

    .line 1414
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    .line 1415
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->setLanguage(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeCecLocalDevices(I)V

    return-void
.end method

.method public initializeCecLocalDevices(I)V
    .registers 6

    .line 1439
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getCecLocalDeviceTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1443
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 1445
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    .line 1447
    :cond_2c
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    .line 1448
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1450
    :cond_33
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearDeviceList()V

    .line 1451
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public final initializeEarc(I)V
    .registers 4

    .line 5060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eARC initialized, reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeEarcLocalDevice(I)V

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne p1, v0, :cond_21

    .line 5066
    invoke-virtual {p0, v1, v1}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    return-void

    :cond_21
    const/4 p1, 0x0

    .line 5070
    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    return-void
.end method

.method public initializeEarcLocalDevice(I)V
    .registers 2

    .line 5078
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 5079
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    if-nez p1, :cond_e

    const/4 p1, 0x0

    .line 5080
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    :cond_e
    return-void
.end method

.method public final invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 3636
    :cond_3
    :try_start_3
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    .line 3638
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invoking callback failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiControlService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final invokeCecSettingChangeListenerLocked(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 3

    .line 4613
    :try_start_0
    invoke-interface {p2, p1}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;->onChange(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 4615
    const-string p1, "HdmiControlService"

    const-string p2, "Failed to report setting change"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public invokeClearTimerRecordingResult(II)V
    .registers 4

    .line 3619
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3620
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f

    if-eqz p0, :cond_19

    .line 3622
    :try_start_7
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onClearTimerRecordingResult(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_11
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_19

    :catchall_f
    move-exception p0

    goto :goto_1b

    :catch_11
    move-exception p0

    .line 3625
    :try_start_12
    const-string p1, "HdmiControlService"

    const-string p2, "Failed to call onClearTimerRecordingResult."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3628
    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_f

    throw p0
.end method

.method public invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .registers 10

    .line 3491
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3492
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_36

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1c

    .line 3494
    :try_start_14
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_1e
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1c

    goto :goto_a

    :catchall_1c
    move-exception p0

    goto :goto_38

    :catch_1e
    move-exception v3

    .line 3496
    :try_start_1f
    const-string v4, "HdmiControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to report device event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 3499
    :cond_36
    monitor-exit v0

    return-void

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_1c

    throw p0
.end method

.method public final invokeHdmiControlStatusChangeListenerLocked(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;I)V
    .registers 3

    .line 3685
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;I)V

    return-void
.end method

.method public final invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 3692
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$27;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$27;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 3702
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 3703
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3704
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;IZ)V

    :cond_1a
    return-void
.end method

.method public final invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;IZ)V
    .registers 6

    .line 3713
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 3715
    :try_start_10
    invoke-interface {p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->onStatusChange(IZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception p1

    .line 3717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to report HdmiControlStatusChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiControlService"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_34
    return-void
.end method

.method public final invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 4

    .line 3663
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 3665
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to report hotplug event:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HdmiControlService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 5

    .line 3559
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3560
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f

    if-eqz p0, :cond_28

    .line 3562
    :try_start_7
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_11
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_28

    :catchall_f
    move-exception p0

    goto :goto_2a

    :catch_11
    move-exception p0

    .line 3564
    :try_start_12
    const-string p1, "HdmiControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown by IHdmiInputChangeListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    throw p0
.end method

.method public invokeOneTouchRecordResult(II)V
    .registers 4

    .line 3595
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3596
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f

    if-eqz p0, :cond_19

    .line 3598
    :try_start_7
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onOneTouchRecordResult(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_11
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_19

    :catchall_f
    move-exception p0

    goto :goto_1b

    :catch_11
    move-exception p0

    .line 3600
    :try_start_12
    const-string p1, "HdmiControlService"

    const-string p2, "Failed to call onOneTouchRecordResult."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3603
    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_f

    throw p0
.end method

.method public invokeRecordRequestListener(I)[B
    .registers 4

    .line 3582
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3583
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eqz p0, :cond_1b

    .line 3585
    :try_start_7
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->getOneTouchRecordSource(I)[B

    move-result-object p0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_13
    .catchall {:try_start_7 .. :try_end_f} :catchall_11

    :try_start_f
    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    goto :goto_1f

    :catch_13
    move-exception p0

    .line 3587
    const-string p1, "HdmiControlService"

    const-string v1, "Failed to start record."

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3590
    :cond_1b
    sget-object p0, Llibcore/util/EmptyArray;->BYTE:[B

    monitor-exit v0

    return-object p0

    .line 3591
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_11

    throw p0
.end method

.method public final invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V
    .registers 3

    .line 3645
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->onStatusChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 3647
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invoking callback failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiControlService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public invokeTimerRecordingResult(II)V
    .registers 4

    .line 3607
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3608
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f

    if-eqz p0, :cond_19

    .line 3610
    :try_start_7
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onTimerRecordingResult(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_11
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_19

    :catchall_f
    move-exception p0

    goto :goto_1b

    :catch_11
    move-exception p0

    .line 3612
    :try_start_12
    const-string p1, "HdmiControlService"

    const-string p2, "Failed to call onTimerRecordingResult."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3615
    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_f

    throw p0
.end method

.method public invokeVendorCommandListenersOnControlStateChanged(ZI)Z
    .registers 9

    .line 4207
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4208
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 4209
    monitor-exit v0

    return v2

    :catchall_e
    move-exception p0

    goto :goto_34

    .line 4211
    :cond_10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_16
    if-ge v2, v1, :cond_31

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_e

    .line 4213
    :try_start_20
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onControlStateChanged(ZI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_e

    goto :goto_16

    :catch_28
    move-exception v3

    .line 4215
    :try_start_29
    const-string v4, "HdmiControlService"

    const-string v5, "Failed to notify control-state-changed to vendor handler"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 4218
    :cond_31
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 4219
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_e

    throw p0
.end method

.method public invokeVendorCommandListenersOnReceived(III[BZ)Z
    .registers 14

    .line 4180
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4181
    :try_start_3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 4182
    monitor-exit p1

    return v1

    :catchall_e
    move-exception p0

    goto :goto_53

    .line 4185
    :cond_10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_18
    if-ge v3, v0, :cond_51

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    const/4 v5, 0x1

    if-eqz p5, :cond_3f

    .line 4187
    aget-byte v6, p4, v1

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    aget-byte v7, p4, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, p4, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    .line 4191
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-$$Nest$fgetmVendorId(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)I

    move-result v7
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_e

    if-eq v7, v6, :cond_3f

    goto :goto_18

    .line 4196
    :cond_3f
    :try_start_3f
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v4

    invoke-interface {v4, p2, p3, p4, p5}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onReceived(II[BZ)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_46} :catch_48
    .catchall {:try_start_3f .. :try_end_46} :catchall_e

    move v2, v5

    goto :goto_18

    :catch_48
    move-exception v4

    .line 4199
    :try_start_49
    const-string v5, "HdmiControlService"

    const-string v6, "Failed to notify vendor command reception"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 4202
    :cond_51
    monitor-exit p1

    return v2

    .line 4203
    :goto_53
    monitor-exit p1
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_e

    throw p0
.end method

.method public isAbsoluteVolumeBehaviorEnabled()Z
    .registers 5

    .line 4656
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 4659
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 4660
    sget-object v3, Lcom/android/server/hdmi/HdmiControlService;->ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_34
    return v1
.end method

.method public isAddressAllocated()Z
    .registers 1

    .line 1557
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return p0
.end method

.method public isArcSupported()Z
    .registers 2

    .line 3816
    const-string/jumbo p0, "persist.sys.hdmi.property_arc_support"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAudioSystemDevice()Z
    .registers 2

    .line 3749
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCecControlEnabled()Z
    .registers 3

    .line 3791
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3792
    :try_start_3
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception p0

    .line 3793
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isConnected(I)Z
    .registers 2

    .line 1686
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1687
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    move-result p0

    return p0
.end method

.method public isConnectedToArcPort(I)Z
    .registers 2

    .line 1681
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->isConnectedToArcPort(I)Z

    move-result p0

    return p0
.end method

.method public isDeviceDiscoveryHandledByPlayback()Z
    .registers 2

    .line 1264
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1265
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_16

    const-class v0, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 1266
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final isDsmEnabled()Z
    .registers 2

    .line 3810
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v0, "soundbar_mode"

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    return v0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isEarcEnabled()Z
    .registers 2

    .line 3797
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3798
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 3799
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isEarcSupported()Z
    .registers 2

    .line 3804
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3805
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 3806
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isHdmiControlEnhancedBehaviorFlagEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isMhlInputChangeEnabled()Z
    .registers 2

    .line 4533
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4534
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4535
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isPlaybackDevice()Z
    .registers 2

    .line 3753
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPowerOnOrTransient()Z
    .registers 2

    .line 3839
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3840
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusOn()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 3841
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusTransientToOn()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method public isPowerStandby()Z
    .registers 1

    .line 3853
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3854
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusStandby()Z

    move-result p0

    return p0
.end method

.method public isPowerStandbyOrTransient()Z
    .registers 2

    .line 3846
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3847
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusStandby()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 3848
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusTransientToStandby()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method public isProhibitMode()Z
    .registers 2

    .line 4281
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4282
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4283
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isScreenOff()Z
    .registers 3

    .line 1072
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    return v1

    :cond_f
    return v0
.end method

.method public isStandbyMessageReceived()Z
    .registers 1

    .line 3888
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    return p0
.end method

.method public isSystemAudioActivated()Z
    .registers 2

    .line 4293
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4294
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4295
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isTvDevice()Z
    .registers 2

    .line 3745
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isTvDeviceEnabled()Z
    .registers 2

    .line 3761
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isValidPortId(I)Z
    .registers 2

    .line 1596
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isWakeUpMessageReceived()Z
    .registers 1

    .line 3880
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    return p0
.end method

.method public final synthetic lambda$updatePowerStatusOnInitializeCecComplete$0()V
    .registers 2

    .line 1312
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    return-void
.end method

.method public final synthetic lambda$updatePowerStatusOnInitializeCecComplete$1()V
    .registers 2

    .line 1315
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    return-void
.end method

.method public maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .registers 3

    .line 1797
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1798
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    return-void
.end method

.method public notifyAddressAllocated(Ljava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .line 1541
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    if-eqz p1, :cond_3d

    .line 1542
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3d

    .line 1546
    :cond_c
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    invoke-virtual {v0}, Lcom/android/server/hdmi/CecMessageBuffer;->getBuffer()Ljava/util/List;

    move-result-object v0

    .line 1547
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_2d

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1548
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v4

    .line 1549
    invoke-virtual {v3, v4, v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleAddressAllocated(ILjava/util/List;I)V

    goto :goto_17

    .line 1551
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 1552
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V

    :cond_3c
    return-void

    .line 1543
    :cond_3d
    :goto_3d
    const-string p0, "HdmiControlService"

    const-string p1, "No local device to notify."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyAvbMuteChange(Z)V
    .registers 5

    .line 5033
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeBehaviorEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_45

    .line 5035
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Lcom/android/server/hdmi/AudioManagerWrapper;

    move-result-object v0

    sget-object v1, Lcom/android/server/hdmi/HdmiControlService;->STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-interface {v0, v1}, Lcom/android/server/hdmi/AudioManagerWrapper;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    .line 5036
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 5037
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz p1, :cond_30

    const/16 p1, -0x64

    goto :goto_32

    :cond_30
    const/16 p1, 0x64

    .line 5041
    :goto_32
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, 0x2101

    goto :goto_3d

    :cond_3b
    const/16 v0, 0x2100

    .line 5044
    :goto_3d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Lcom/android/server/hdmi/AudioManagerWrapper;

    move-result-object p0

    const/4 v1, 0x3

    invoke-interface {p0, v1, p1, v0}, Lcom/android/server/hdmi/AudioManagerWrapper;->adjustStreamVolume(III)V

    :cond_45
    :goto_45
    return-void
.end method

.method public notifyAvbVolumeChange(I)V
    .registers 5

    .line 5012
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeBehaviorEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_39

    .line 5014
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Lcom/android/server/hdmi/AudioManagerWrapper;

    move-result-object v0

    sget-object v1, Lcom/android/server/hdmi/HdmiControlService;->STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-interface {v0, v1}, Lcom/android/server/hdmi/AudioManagerWrapper;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    .line 5015
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 5016
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5019
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v0, 0x2101

    goto :goto_36

    :cond_34
    const/16 v0, 0x2100

    .line 5022
    :goto_36
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->setStreamMusicVolume(II)V

    :cond_39
    :goto_39
    return-void
.end method

.method public notifyEarcStatusToAudioService(ZLjava/util/List;)V
    .registers 10

    .line 5237
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    const/16 v2, 0x1d

    const-string v3, ""

    const-string v4, ""

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 5242
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    move-result p2

    if-nez p2, :cond_1d

    const/4 p2, 0x1

    .line 5243
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    goto :goto_35

    .line 5244
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    if-nez p2, :cond_35

    .line 5246
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 5248
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Lcom/android/server/hdmi/AudioManagerWrapper;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/android/server/hdmi/AudioManagerWrapper;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_6b

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "tv_input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/TvInputManager;

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 1157
    new-instance p1, Lcom/android/server/hdmi/PowerManagerWrapper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/hdmi/PowerManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 1158
    new-instance p1, Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    invoke-direct {p1}, Lcom/android/server/hdmi/PowerManagerInternalWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    .line 1159
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    if-nez p1, :cond_42

    .line 1160
    new-instance p1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 1162
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Lcom/android/server/hdmi/AudioManagerWrapper;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/android/server/hdmi/AudioManagerWrapper;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mStreamMusicMaxVolume:I

    .line 1163
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    if-nez p1, :cond_5c

    .line 1164
    new-instance p1, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    .line 1167
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioDeviceVolumeManager()Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-interface {p1, v0, v1}, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;->addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V

    return-void

    :cond_6b
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_77

    .line 1170
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    :cond_77
    return-void
.end method

.method public onDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V
    .registers 5

    .line 4626
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4627
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->AVB_AUDIO_OUTPUT_DEVICES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4628
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4629
    :try_start_e
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeBehaviors:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4630
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1c

    .line 4631
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    return-void

    :catchall_1c
    move-exception p0

    .line 4630
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    return-void
.end method

.method public final onDisableCec()V
    .registers 2

    .line 4348
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$32;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$32;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->disableCecLocalDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    return-void
.end method

.method public final onDisableEarc()V
    .registers 2

    .line 5126
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->disableEarcLocalDevice()V

    const/4 v0, 0x0

    .line 5127
    invoke-virtual {p0, v0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 5128
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearEarcLocalDevice()V

    return-void
.end method

.method public final onEnableCec()V
    .registers 4

    .line 4339
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableCec(Z)V

    .line 4340
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    .line 4341
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    const/4 v0, 0x0

    .line 4343
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    return-void
.end method

.method public final onEnableEarc()V
    .registers 2

    const/4 v0, 0x6

    .line 5121
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeEarc(I)V

    return-void
.end method

.method public onHotplug(IZ)V
    .registers 7

    .line 1950
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1952
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->initPortInfo()V

    .line 1954
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    if-eqz p2, :cond_51

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v1

    if-nez v1, :cond_51

    if-eqz v0, :cond_51

    .line 1956
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    .line 1957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1958
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getCecLocalDeviceTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1959
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    if-nez v3, :cond_49

    .line 1961
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v3

    .line 1962
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    .line 1964
    :cond_49
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_4d
    const/4 v1, 0x4

    .line 1966
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 1969
    :cond_51
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1970
    invoke-virtual {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onHotplug(IZ)V

    goto :goto_5b

    .line 1973
    :cond_6b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    return-void
.end method

.method public final onInitializeCecComplete(I)V
    .registers 7

    .line 1276
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->updatePowerStatusOnInitializeCecComplete()V

    const/4 v0, 0x0

    .line 1277
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 1279
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1280
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->enableWakeupByOtp(Z)V

    :cond_19
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p1, :cond_3f

    if-eq p1, v2, :cond_40

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v3, 0x3

    if-eq p1, v3, :cond_40

    move v0, v1

    goto :goto_40

    .line 1292
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object v3

    .line 1293
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1294
    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onInitializeCecComplete(I)V

    goto :goto_2f

    :cond_3f
    move v0, v2

    :cond_40
    :goto_40
    if-eq v0, v1, :cond_48

    .line 1302
    invoke-virtual {p0, v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 1303
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->announceHdmiControlStatusChange(I)V

    :cond_48
    return-void
.end method

.method public final onLanguageChanged(Ljava/lang/String;)V
    .registers 3

    .line 4027
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4028
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 4030
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4031
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    .line 4032
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->setLanguage(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public onPendingActionsCleared(I)V
    .registers 6

    .line 4082
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4083
    const-string v0, "HdmiControlService"

    const-string/jumbo v1, "onPendingActionsCleared"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    .line 4085
    new-array v2, v1, [I

    .line 4086
    new-instance v3, Lcom/android/server/hdmi/HdmiControlService$29;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/hdmi/HdmiControlService$29;-><init>(Lcom/android/server/hdmi/HdmiControlService;I[I)V

    .line 4111
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusTransientToStandby()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 4112
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    .line 4113
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 4114
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZILcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    goto :goto_32

    :cond_44
    const/4 p1, 0x0

    .line 4118
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    return-void
.end method

.method public onStandby(I)V
    .registers 5

    .line 3978
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->shouldAcquireWakeLockOnStandby()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3979
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->acquireWakeLock()V

    :cond_9
    const/4 v0, 0x0

    .line 3981
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 3982
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3983
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 3985
    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 3988
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object v0

    .line 3990
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isStandbyMessageReceived()Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    move-result v1

    if-nez v1, :cond_45

    .line 3991
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    .line 3992
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3993
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZI)V

    goto :goto_32

    :cond_44
    return-void

    .line 3998
    :cond_45
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$28;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$28;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->disableCecLocalDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 4015
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 715
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->initService()V

    .line 716
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService-IA;)V

    const-string v1, "hdmi_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 718
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v0, :cond_4a

    .line 720
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 721
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 724
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 725
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 728
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 729
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 733
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->registerContentObserver()V

    .line 735
    :cond_4a
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    if-eqz p0, :cond_54

    const/16 v0, 0x68

    const/4 v1, 0x1

    .line 736
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    :cond_54
    return-void
.end method

.method public onWakeUp(I)V
    .registers 10

    .line 3894
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3895
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    .line 3897
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const-string v3, " not defined."

    const-string/jumbo v4, "wakeUpAction "

    const-string v5, "HdmiControlService"

    const/4 v6, 0x1

    if-eqz v0, :cond_81

    .line 3898
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getWasCecDisabledOnStandbyByLowEnergyMode()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 3899
    const-string v0, "Re-enable CEC on wake-up since it was disabled due to low energy  mode."

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v0

    const-string v7, "hdmi_cec_enabled"

    invoke-virtual {v0, v7, v6}, Lcom/android/server/hdmi/HdmiCecConfig;->setIntValue(Ljava/lang/String;I)V

    .line 3903
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->setWasCecDisabledOnStandbyByLowEnergyMode(Z)V

    if-eqz p1, :cond_4f

    if-eq p1, v6, :cond_4d

    .line 3915
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4d
    move v0, v2

    goto :goto_50

    :cond_4f
    move v0, v1

    .line 3921
    :goto_50
    invoke-virtual {p0, v6, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    goto :goto_86

    .line 3923
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_86

    if-eqz p1, :cond_76

    if-eq p1, v6, :cond_74

    .line 3936
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_74
    move v0, v6

    goto :goto_7d

    .line 3928
    :cond_76
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    if-eqz v0, :cond_7c

    const/4 v0, 0x3

    goto :goto_7d

    :cond_7c
    move v0, v1

    .line 3940
    :goto_7d
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    goto :goto_86

    .line 3943
    :cond_81
    const-string v0, "Device does not support HDMI-CEC."

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    :cond_86
    :goto_86
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 3946
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    move-result v0

    if-eqz v0, :cond_b1

    if-eqz p1, :cond_ad

    if-eq p1, v6, :cond_ac

    .line 3956
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ac
    move v1, v6

    .line 3959
    :cond_ad
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->initializeEarc(I)V

    goto :goto_b4

    .line 3961
    :cond_b1
    invoke-virtual {p0, v2, v2}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 3964
    :cond_b4
    :goto_b4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 3965
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getEarcStatus()I

    move-result v3

    .line 3966
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    move-result v2

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(ZZIII)V

    return-void

    .line 3968
    :cond_d0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 3969
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isArcSupported()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isDsmEnabled()Z

    move-result p0

    invoke-virtual {p1, v0, p0, v6}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->dsmStatusChanged(ZZI)V

    :cond_e5
    return-void
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6

    .line 3236
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3237
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_11

    .line 3238
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 3239
    const-string p0, "Local device is under address allocation. Save OTP callback for later process."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3244
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 3246
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    goto :goto_2e

    .line 3249
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    .line 3250
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3251
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setIsActiveSourceLostPopupLaunched(Z)V

    :goto_2e
    if-nez v0, :cond_3a

    .line 3255
    const-string v0, "Local source device not available"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 3256
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 3259
    :cond_3a
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public pathToPortId(I)I
    .registers 2

    .line 1592
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    move-result p0

    return p0
.end method

.method public pauseActiveMediaSessions()V
    .registers 2

    .line 4385
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/media/session/MediaSessionManager;

    .line 4386
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSessionManager;

    const/4 v0, 0x0

    .line 4387
    invoke-virtual {p0, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    .line 4388
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 4389
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_15

    :cond_29
    return-void
.end method

.method public playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .registers 2

    .line 3765
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    const/4 v0, 0x4

    .line 3766
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    return-object p0
.end method

.method public pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;IIIJ)V
    .registers 8

    .line 1989
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    move-object v0, p0

    .line 1990
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p3}, Lcom/android/server/hdmi/HdmiControlService;->checkPollStrategy(I)I

    move-result p3

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/hdmi/HdmiCecController;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;IIIJ)V

    return-void
.end method

.method public portIdToPath(I)I
    .registers 2

    .line 1575
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->portIdToPath(I)I

    move-result p0

    return p0
.end method

.method public queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4

    .line 3307
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3308
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_11

    .line 3309
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 3310
    const-string p0, "Local device is under address allocation. Queue display callback for later process."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3315
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 3317
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    :cond_1b
    if-nez v0, :cond_27

    .line 3321
    const-string v0, "Local source device not available"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 3322
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 3325
    :cond_27
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public readBooleanSetting(Ljava/lang/String;Z)Z
    .registers 3

    .line 1364
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1365
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_14

    return p1

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public readBooleanSystemProperty(Ljava/lang/String;Z)Z
    .registers 3

    .line 1386
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public readDeviceTypes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 642
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getCecDeviceTypes()Ljava/util/List;

    move-result-object v0

    .line 643
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "HdmiControlService"

    const/4 v3, 0x0

    if-nez v1, :cond_4f

    .line 644
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 645
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing ro.hdmi.cec_device_types: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.hdmi.cec_device_types"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_2e
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda3;-><init>()V

    .line 649
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda4;-><init>()V

    .line 650
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 651
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 654
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceTypes()Ljava/util/List;

    move-result-object p0

    .line 655
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing ro.hdmi.device_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.hdmi.device_type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_74
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda4;-><init>()V

    .line 660
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 661
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public readIntSetting(Ljava/lang/String;I)I
    .registers 3

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1371
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public readStringSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1390
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1391
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1392
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-object p2

    :cond_13
    return-object p0
.end method

.method public final registerContentObserver()V
    .registers 8

    .line 1321
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1322
    const-string/jumbo v1, "mhl_power_charge_enabled"

    const-string v2, "device_name"

    const-string/jumbo v3, "mhl_input_switching_enabled"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    const/4 v4, 0x3

    if-ge v3, v4, :cond_28

    .line 1327
    aget-object v4, v1, v3

    .line 1328
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    const/4 v6, -0x1

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_28
    return-void
.end method

.method public registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .registers 3

    .line 1179
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_5

    return-void

    .line 1180
    :cond_5
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroid/media/tv/TvInputManager;->registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public releaseWakeLock()V
    .registers 3

    .line 4152
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeLock:Lcom/android/server/hdmi/WakeLockWrapper;

    if-eqz v0, :cond_1a

    .line 4154
    :try_start_4
    invoke-interface {v0}, Lcom/android/server/hdmi/WakeLockWrapper;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4155
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeLock:Lcom/android/server/hdmi/WakeLockWrapper;

    invoke-interface {v0}, Lcom/android/server/hdmi/WakeLockWrapper;->release()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_17

    .line 4158
    :catch_10
    const-string v0, "HdmiControlService"

    const-string v1, "Exception when releasing wake lock."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_17
    const/4 v0, 0x0

    .line 4160
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeLock:Lcom/android/server/hdmi/WakeLockWrapper;

    :cond_1a
    return-void
.end method

.method public final removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 5

    .line 4598
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4599
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 4600
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_36

    .line 4602
    :cond_f
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 4603
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p2

    if-nez p2, :cond_34

    .line 4604
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4605
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingChangeListener:Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/hdmi/HdmiCecConfig;->removeChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;)V

    .line 4607
    :cond_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_d

    throw p0
.end method

.method public final removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 10

    .line 3395
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3397
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_b
    if-ge v4, v2, :cond_32

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 3398
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object v6

    invoke-interface {v6}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v6, v7, :cond_b

    .line 3399
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, v5, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3400
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_34

    .line 3404
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_30

    throw p0
.end method

.method public removeHdmiControlVolumeControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 2

    .line 3431
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControlFeatureListenerRecords:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 10

    .line 3466
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3467
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_b
    if-ge v4, v2, :cond_32

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 3468
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v6

    invoke-interface {v6}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v6, v7, :cond_b

    .line 3469
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, v5, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3470
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_34

    .line 3474
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_30

    throw p0
.end method

.method public final removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 9

    .line 3517
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3519
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_b
    if-ge v4, v2, :cond_2e

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 3520
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->-$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v6

    invoke-interface {v6}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_b

    .line 3521
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, v5, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3522
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_30

    .line 3526
    :cond_2e
    :goto_2e
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2c

    throw p0
.end method

.method public final reportFeatures(Z)V
    .registers 4

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_8

    goto :goto_2c

    :cond_8
    if-eqz p1, :cond_18

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->reportFeatures()V

    return-void

    .line 1100
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p0

    goto :goto_27

    :cond_23
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    :goto_27
    if-eqz p0, :cond_2c

    .line 1102
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->reportFeatures()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public runOnServiceThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 1697
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runOnServiceThreadDelayed(Ljava/lang/Runnable;J)V
    .registers 5

    .line 1701
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;)V
    .registers 4

    .line 4561
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4562
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.HDMI_CEC"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3

    const/4 v0, 0x0

    .line 1712
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 5

    .line 1717
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x82

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x86

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_1f

    .line 1734
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommandWithoutRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void

    .line 1728
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1729
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const-class v1, Lcom/android/server/hdmi/RequestActiveSourceAction;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1731
    :cond_2e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommandWithRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public final sendCecCommandWithRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 5

    .line 1746
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1747
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object v0

    .line 1748
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_1f

    :cond_e
    const/4 v1, 0x0

    .line 1751
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    if-eqz v0, :cond_1f

    .line 1753
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$23;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$23;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommandWithoutRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public sendCecCommandWithoutRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 4

    .line 1777
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1778
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getValidationResult()I

    move-result v0

    if-nez v0, :cond_15

    .line 1779
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddresses(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1780
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void

    .line 1782
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid message type:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_32

    const/4 p0, 0x3

    .line 1784
    invoke-interface {p2, p0}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    :cond_32
    return-void
.end method

.method public setActivePortId(I)V
    .registers 2

    .line 4369
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4370
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    const/4 p1, -0x1

    .line 4374
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    return-void
.end method

.method public setActiveSource(IILjava/lang/String;)V
    .registers 8

    .line 4394
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4395
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iput p1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 4396
    iput p2, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 4397
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_52

    .line 4399
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object v0

    .line 4400
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    invoke-static {v1, p2}, Lcom/android/server/hdmi/HdmiUtils;->pathRelationship(II)I

    move-result v1

    .line 4399
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->activeSourceChanged(III)V

    .line 4404
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 4406
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    if-ne p1, v2, :cond_3f

    .line 4407
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    if-ne p2, v2, :cond_3f

    const/4 v2, 0x1

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    .line 4409
    :goto_40
    new-instance v3, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {v3, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>(II)V

    invoke-virtual {v1, v3, v2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addActiveSourceHistoryItem(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;ZLjava/lang/String;)V

    goto :goto_21

    .line 4413
    :cond_49
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_52
    move-exception p0

    .line 4397
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public setAndBroadcastActiveSource(IIILjava/lang/String;)V
    .registers 7

    const/4 v0, 0x4

    if-ne p2, v0, :cond_26

    .line 4425
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 4426
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->dismissUiOnActiveSourceStatusRecovered()V

    .line 4427
    const-class v1, Lcom/android/server/hdmi/RequestActiveSourceAction;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 4428
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {v0, v1, p1, p4}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(IILjava/lang/String;)V

    .line 4430
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 4431
    invoke-virtual {v0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 4432
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_26
    const/4 v0, 0x5

    if-ne p2, v0, :cond_44

    .line 4436
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p2

    .line 4437
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    if-nez p0, :cond_44

    .line 4438
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    invoke-virtual {p2, p0, p1, p4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    .line 4440
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 4441
    invoke-virtual {p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    :cond_44
    return-void
.end method

.method public setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V
    .registers 5

    .line 4455
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 4456
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p0

    if-eqz v0, :cond_1f

    .line 4458
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->dismissUiOnActiveSourceStatusRecovered()V

    .line 4459
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    invoke-virtual {v0, p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(IILjava/lang/String;)V

    .line 4461
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 4462
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    return-void

    :cond_1f
    if-eqz p0, :cond_32

    .line 4464
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    .line 4466
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 4467
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    :cond_32
    return-void
.end method

.method public setAudioStatus(ZI)V
    .registers 5

    .line 2045
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2046
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2047
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_51

    .line 2051
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Lcom/android/server/hdmi/AudioManagerWrapper;

    move-result-object p0

    const/4 v0, 0x3

    .line 2052
    invoke-interface {p0, v0}, Lcom/android/server/hdmi/AudioManagerWrapper;->isStreamMute(I)Z

    move-result v1

    if-eqz p1, :cond_29

    if-nez v1, :cond_51

    const/4 p1, 0x1

    .line 2055
    invoke-interface {p0, v0, p1}, Lcom/android/server/hdmi/AudioManagerWrapper;->setStreamMute(IZ)V

    return-void

    :cond_29
    if-eqz v1, :cond_2f

    const/4 p1, 0x0

    .line 2059
    invoke-interface {p0, v0, p1}, Lcom/android/server/hdmi/AudioManagerWrapper;->setStreamMute(IZ)V

    :cond_2f
    if-ltz p2, :cond_51

    const/16 p1, 0x64

    if-gt p2, p1, :cond_51

    .line 2065
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "volume: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HdmiControlService"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x101

    .line 2067
    invoke-interface {p0, v0, p2, p1}, Lcom/android/server/hdmi/AudioManagerWrapper;->setStreamVolume(III)V

    :cond_51
    :goto_51
    return-void
.end method

.method public setAvbDisabled(Z)V
    .registers 2

    .line 3821
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAvbDisabled:Z

    return-void
.end method

.method public setCecController(Lcom/android/server/hdmi/HdmiCecController;)V
    .registers 2

    .line 1124
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    return-void
.end method

.method public setCecEnabled(I)V
    .registers 4

    .line 4307
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4309
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4310
    :try_start_6
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    .line 4311
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_31

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    .line 4314
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->onEnableCec()V

    .line 4315
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p1

    const-string/jumbo v0, "volume_control_enabled"

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiCecVolumeControlEnabledInternal(I)V

    return-void

    :cond_1e
    const/4 v1, 0x0

    .line 4320
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiCecVolumeControlEnabledInternal(I)V

    .line 4322
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 4326
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$31;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$31;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 4332
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceHdmiControlStatusChange(I)V

    return-void

    :catchall_31
    move-exception p0

    .line 4311
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public setCecMessageBuffer(Lcom/android/server/hdmi/CecMessageBuffer;)V
    .registers 2

    .line 1615
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    return-void
.end method

.method public setDeviceConfig(Lcom/android/server/hdmi/DeviceConfigWrapper;)V
    .registers 2

    .line 1190
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceConfig:Lcom/android/server/hdmi/DeviceConfigWrapper;

    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .registers 6

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2100
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    .line 2101
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_8

    .line 2104
    :cond_23
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 2107
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    const/4 v2, 0x0

    .line 2106
    invoke-static {v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 2105
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_8

    :cond_3f
    return-void
.end method

.method public setEarcController(Lcom/android/server/hdmi/HdmiEarcController;)V
    .registers 2

    .line 1129
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    return-void
.end method

.method public setEarcEnabled(I)V
    .registers 4

    .line 5088
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 5089
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 5090
    :goto_b
    :try_start_b
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    .line 5092
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 5093
    const-string p0, "HdmiControlService"

    const-string p1, "Enabled/disabled eARC setting, but the hardware doesn\u00b4t support eARC. This settings change doesn\u00b4t have an effect."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5095
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_31

    .line 5098
    :cond_1e
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcEnabled:Z

    if-eqz p1, :cond_27

    .line 5099
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->onEnableEarc()V

    .line 5100
    monitor-exit v0

    return-void

    .line 5102
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_1c

    .line 5103
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$35;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$35;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void

    .line 5102
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_1c

    throw p0
.end method

.method public setEarcEnabledInHal(ZZ)V
    .registers 3

    .line 5173
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    if-eqz p2, :cond_f

    .line 5175
    new-instance p2, Lcom/android/server/hdmi/HdmiControlService$36;

    invoke-direct {p2, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$36;-><init>(Lcom/android/server/hdmi/HdmiControlService;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    .line 5194
    :cond_f
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiEarcController;->setEarcEnabled(Z)V

    .line 5195
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 5196
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 5195
    invoke-virtual {p2, p1, p0}, Lcom/android/server/hdmi/HdmiCecController;->setHpdSignalType(II)V

    return-void
.end method

.method public setEarcSupported(Z)V
    .registers 3

    .line 5113
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5114
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcSupported:Z

    .line 5115
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setHdmiCecConfig(Lcom/android/server/hdmi/HdmiCecConfig;)V
    .registers 2

    .line 1139
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    return-void
.end method

.method public setHdmiCecNetwork(Lcom/android/server/hdmi/HdmiCecNetwork;)V
    .registers 2

    .line 1134
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    return-void
.end method

.method public setHdmiCecVolumeControlEnabledInternal(I)V
    .registers 2

    .line 3205
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

    .line 3206
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceHdmiCecVolumeControlFeatureChange(I)V

    .line 3207
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHdmiMhlController(Lcom/android/server/hdmi/HdmiMhlControllerStub;)V
    .registers 2

    .line 1148
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    return-void
.end method

.method public final setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 4

    .line 3571
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3572
    :try_start_3
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 3574
    :try_start_a
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_17
    .catchall {:try_start_a .. :try_end_14} :catchall_15

    goto :goto_1f

    :catchall_15
    move-exception p0

    goto :goto_21

    :catch_17
    move-exception p0

    .line 3576
    :try_start_18
    const-string p1, "HdmiControlService"

    const-string v1, "Listener already died."

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3578
    :goto_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_15

    throw p0
.end method

.method public final setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 4

    .line 3547
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3548
    :try_start_3
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_16

    .line 3550
    :try_start_a
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_18
    .catchall {:try_start_a .. :try_end_14} :catchall_16

    .line 3555
    :try_start_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    goto :goto_21

    .line 3552
    :catch_18
    const-string p0, "HdmiControlService"

    const-string p1, "Listener already died"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    monitor-exit v0

    return-void

    .line 3555
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_16

    throw p0
.end method

.method public setIoLooper(Landroid/os/Looper;)V
    .registers 2

    .line 1610
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoLooper:Landroid/os/Looper;

    return-void
.end method

.method public setLastInputForMhl(I)V
    .registers 2

    .line 4473
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4474
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    return-void
.end method

.method public setMhlInputChangeEnabled(Z)V
    .registers 5

    .line 4520
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v1, 0x65

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 4522
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4523
    :try_start_e
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    .line 4524
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setPowerManager(Lcom/android/server/hdmi/PowerManagerWrapper;)V
    .registers 2

    .line 1195
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    return-void
.end method

.method public setPowerManagerInternal(Lcom/android/server/hdmi/PowerManagerInternalWrapper;)V
    .registers 2

    .line 1200
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    return-void
.end method

.method public setPowerStatus(I)V
    .registers 2

    .line 3833
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3834
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(I)V

    return-void
.end method

.method public setProhibitMode(Z)V
    .registers 3

    .line 4287
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4288
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    .line 4289
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setSoundbarMode(I)V
    .registers 10

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isArcSupported()Z

    move-result v0

    .line 1222
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v1

    .line 1223
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v2

    .line 1224
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_16

    move v6, v5

    goto :goto_17

    :cond_16
    move v6, v4

    :goto_17
    const/4 v7, 0x2

    invoke-virtual {v3, v0, v6, v7}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->dsmStatusChanged(ZZI)V

    .line 1228
    const-string v3, "HdmiControlService"

    if-nez v1, :cond_25

    .line 1229
    const-string p0, "Device type not compatible to change soundbar mode."

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    if-nez v0, :cond_2d

    .line 1233
    const-string p0, "Device type doesn\'t support ARC."

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    if-nez p1, :cond_4e

    if-eqz v2, :cond_4e

    .line 1238
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    move-result p1

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1240
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->terminateSystemAudioMode()V

    :cond_3e
    if-eqz p1, :cond_4f

    .line 1243
    new-instance v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$21;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$21;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {v2, v0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;Z)V

    goto :goto_4f

    :cond_4e
    move p1, v4

    :cond_4f
    :goto_4f
    if-nez p1, :cond_57

    .line 1254
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    const/4 p1, 0x5

    .line 1255
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeCecLocalDevices(I)V

    :cond_57
    return-void
.end method

.method public setStandbyMode(Z)V
    .registers 6

    .line 4250
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 4251
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 4252
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/hdmi/PowerManagerWrapper;->goToSleep(JII)V

    .line 4254
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 4255
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->sendStandby(I)V

    return-void

    .line 4257
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_47

    if-nez p1, :cond_47

    .line 4258
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x8

    const-string v3, "android.server.hdmi:WAKE"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/hdmi/PowerManagerWrapper;->wakeUp(JILjava/lang/String;)V

    .line 4260
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 4261
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$30;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$30;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    :cond_47
    return-void
.end method

.method public setStreamMusicVolume(II)V
    .registers 4

    .line 5055
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Lcom/android/server/hdmi/AudioManagerWrapper;

    move-result-object v0

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStreamMusicMaxVolume:I

    mul-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x64

    const/4 p0, 0x3

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/hdmi/AudioManagerWrapper;->setStreamVolume(III)V

    return-void
.end method

.method public setSystemAudioActivated(Z)V
    .registers 3

    .line 4299
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4300
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioActivated:Z

    .line 4301
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 4302
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_f
    move-exception p0

    .line 4301
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setWakeUpMessageReceived(Z)V
    .registers 2

    .line 3884
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    return-void
.end method

.method public setWasCecDisabledOnStandbyByLowEnergyMode(Z)V
    .registers 3

    .line 5348
    const-string/jumbo v0, "persist.sys.hdmi.property_was_cec_disabled_on_standby_by_low_energy_mode"

    .line 5350
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 5348
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setWorkSourceUidToCallingUid()V
    .registers 1

    .line 2344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Binder;->setCallingWorkSourceUid(I)J

    return-void
.end method

.method public final shouldAcquireWakeLockOnStandby()Z
    .registers 5

    .line 4123
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 4124
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v3, "tv_send_standby_on_sleep"

    invoke-virtual {v0, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2d

    move v0, v1

    goto :goto_2e

    .line 4127
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 4128
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v3, "power_control_mode"

    invoke-virtual {v0, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "none"

    .line 4130
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_2e

    :cond_2d
    move v0, v2

    .line 4133
    :goto_2e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result p0

    if-eqz p0, :cond_3d

    if-eqz v0, :cond_3d

    return v1

    :cond_3d
    return v2
.end method

.method public shouldDreamOnStandbyMessage()Z
    .registers 3

    .line 5289
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5292
    :cond_8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v0, "tv_behavior_on_standby_message"

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    return v0

    :cond_15
    return v1
.end method

.method public shouldHandleTvPowerKey()Z
    .registers 4

    .line 3280
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3283
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v0

    const-string/jumbo v2, "power_control_mode"

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3285
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    .line 3288
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v0

    const-string v2, "hdmi_cec_enabled"

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2b

    return v1

    .line 3293
    :cond_2b
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    return p0
.end method

.method public shouldTvSendStandbyOnSleep()Z
    .registers 3

    .line 5299
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5302
    :cond_8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    const-string/jumbo v0, "tv_send_standby_on_sleep"

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    return v0

    :cond_15
    return v1
.end method

.method public final sourceAddressIsLocal(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 1869
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 1870
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    if-ne v2, v0, :cond_8

    .line 1871
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_8

    .line 1872
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected source: message sent from device itself, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_43
    return v1
.end method

.method public standby()V
    .registers 5

    .line 3869
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3870
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x1

    .line 3873
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 3874
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/hdmi/PowerManagerWrapper;->goToSleep(JII)V

    return-void
.end method

.method public startArcAction(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4

    .line 5276
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p1, 0x6

    .line 5277
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 5279
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public startDreaming()V
    .registers 4

    .line 5308
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-nez v0, :cond_e

    .line 5310
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 5312
    :cond_e
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_1a

    .line 5313
    const-string p0, "DreamManagerInternal is null, can\'t start dreaming"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    const/4 v2, 0x1

    .line 5316
    invoke-virtual {v0, v2}, Landroid/service/dreams/DreamManagerInternal;->canStartDreaming(Z)Z

    move-result v0

    if-nez v0, :cond_27

    .line 5317
    const-string p0, "Can\'t start dreaming."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5320
    :cond_27
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0}, Landroid/service/dreams/DreamManagerInternal;->requestDream()V

    return-void
.end method

.method public final switchToFullVolumeBehavior()V
    .registers 5

    .line 4821
    const-string v0, "HdmiControlService"

    const-string v1, "Switching to full volume behavior"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 4824
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAvbAudioStatusAction()V

    goto :goto_22

    .line 4825
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 4826
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAvbAudioStatusAction()V

    .line 4829
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4830
    sget-object v2, Lcom/android/server/hdmi/HdmiControlService;->ABSOLUTE_VOLUME_BEHAVIORS:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 4831
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioDeviceVolumeManager()Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

    goto :goto_2a

    :cond_4f
    return-void
.end method

.method public toggleAndFollowTvPower()V
    .registers 2

    .line 3265
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 3266
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-nez v0, :cond_d

    .line 3268
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    :cond_d
    if-nez v0, :cond_17

    .line 3272
    const-string p0, "HdmiControlService"

    const-string v0, "Local source device not available"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3275
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->toggleAndFollowTvPower()V

    return-void
.end method

.method public tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .registers 2

    .line 3741
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    return-object p0
.end method

.method public unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .registers 2

    .line 1184
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez p0, :cond_5

    return-void

    .line 1185
    :cond_5
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputManager;->unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    return-void
.end method

.method public final updateLastActiveSourceCall(I)V
    .registers 4

    .line 3196
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastUpdateSourceCallerRecord:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 3197
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastUpdateSourceCallerRecord:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3199
    :cond_e
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastUpdateSourceCallerRecord:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updatePowerStatusOnInitializeCecComplete()V
    .registers 3

    .line 1311
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusTransientToOn()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1312
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1314
    :cond_13
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->isPowerStatusTransientToStandby()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1315
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    return-void
.end method

.method public userEnabledCecInOfflineMode()Z
    .registers 2

    .line 5389
    const-string/jumbo p0, "persist.sys.hdmi.property_user_action_keep_cec_enabled_in_offline_mode"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final verifyExternalSourcePhysicalAddress([BI)Z
    .registers 6

    .line 1855
    aget-byte v0, p1, p2

    const/4 v1, 0x1

    add-int/2addr p2, v1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_11

    .line 1858
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v2, 0x2

    if-lt v0, v2, :cond_11

    .line 1859
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress([BI)Z

    move-result p0

    return p0

    :cond_11
    return v1
.end method

.method public final verifyPhysicalAddress([BI)Z
    .registers 7

    .line 1832
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 1837
    :cond_8
    array-length v0, p1

    add-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_f

    return v3

    .line 1840
    :cond_f
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result p1

    const p2, 0xffff

    if-eq p1, p2, :cond_1f

    .line 1841
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p2

    if-ne p1, p2, :cond_1f

    return v1

    .line 1844
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_27

    return v3

    :cond_27
    return v1
.end method

.method public verifyPhysicalAddresses(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 1805
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 1806
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result p1

    const/16 v1, 0x70

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_40

    const/16 v1, 0x84

    if-eq p1, v1, :cond_3b

    const/16 v1, 0x86

    if-eq p1, v1, :cond_3b

    const/16 v1, 0x9d

    if-eq p1, v1, :cond_3b

    const/16 v1, 0xa1

    if-eq p1, v1, :cond_35

    const/16 v1, 0xa2

    if-eq p1, v1, :cond_35

    packed-switch p1, :pswitch_data_4c

    return v2

    .line 1808
    :pswitch_26
    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress([BI)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x2

    .line 1809
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress([BI)Z

    move-result p0

    if-eqz p0, :cond_34

    return v2

    :cond_34
    return v3

    :cond_35
    const/4 p1, 0x7

    .line 1820
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->verifyExternalSourcePhysicalAddress([BI)Z

    move-result p0

    return p0

    .line 1817
    :cond_3b
    :pswitch_3b
    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress([BI)Z

    move-result p0

    return p0

    .line 1811
    :cond_40
    array-length p1, v0

    if-eqz p1, :cond_4b

    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->verifyPhysicalAddress([BI)Z

    move-result p0

    if-eqz p0, :cond_4a

    goto :goto_4b

    :cond_4a
    return v3

    :cond_4b
    :goto_4b
    return v2

    :pswitch_data_4c
    .packed-switch 0x80
        :pswitch_26
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public wakeUp()V
    .registers 5

    .line 3859
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    const/4 v0, 0x1

    .line 3860
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 3861
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x8

    const-string v3, "android.server.hdmi:WAKE"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/hdmi/PowerManagerWrapper;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public writePowerStateChangeOnActiveSourceLostAtom(Z)V
    .registers 10

    .line 5361
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 5363
    invoke-virtual {v0}, Landroid/view/Display;->getDeviceProductInfo()Landroid/hardware/display/DeviceProductInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 5365
    invoke-virtual {v0}, Landroid/hardware/display/DeviceProductInfo;->getManufacturerPnpId()Ljava/lang/String;

    move-result-object v1

    .line 5366
    invoke-virtual {v0}, Landroid/hardware/display/DeviceProductInfo;->getManufactureYear()I

    move-result v0

    :goto_18
    move v6, v0

    move-object v5, v1

    goto :goto_20

    .line 5369
    :cond_1b
    const-string/jumbo v1, "undefined"

    const/4 v0, -0x1

    goto :goto_18

    .line 5371
    :goto_20
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 5372
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->isActiveSourceLostPopupLaunched()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    :goto_31
    move v4, v0

    goto :goto_37

    :cond_33
    const/4 v0, 0x2

    goto :goto_31

    :cond_35
    const/4 v0, 0x0

    goto :goto_31

    .line 5379
    :goto_37
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object v2

    const/4 v7, -0x1

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->powerStateChangeOnActiveSourceLostChanged(ZILjava/lang/String;II)V

    return-void
.end method

.method public writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1381
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
