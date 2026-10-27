.class public final Landroid/hardware/hdmi/HdmiControlManager;
.super Ljava/lang/Object;
.source "HdmiControlManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;,
        Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;,
        Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;,
        Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;,
        Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;,
        Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;,
        Landroid/hardware/hdmi/HdmiControlManager$CecSettingSad;,
        Landroid/hardware/hdmi/HdmiControlManager$SettingName;,
        Landroid/hardware/hdmi/HdmiControlManager$EarcFeature;,
        Landroid/hardware/hdmi/HdmiControlManager$SadPresenceInQuery;,
        Landroid/hardware/hdmi/HdmiControlManager$RcProfileSourceHandlesMenu;,
        Landroid/hardware/hdmi/HdmiControlManager$RcProfileTv;,
        Landroid/hardware/hdmi/HdmiControlManager$SetMenuLanguage;,
        Landroid/hardware/hdmi/HdmiControlManager$TvSendStandbyOnSleep;,
        Landroid/hardware/hdmi/HdmiControlManager$TvWakeOnOneTouchPlay;,
        Landroid/hardware/hdmi/HdmiControlManager$VolumeControl;,
        Landroid/hardware/hdmi/HdmiControlManager$SystemAudioModeMuting;,
        Landroid/hardware/hdmi/HdmiControlManager$SystemAudioControl;,
        Landroid/hardware/hdmi/HdmiControlManager$ActiveSourceLostBehavior;,
        Landroid/hardware/hdmi/HdmiControlManager$PowerControlMode;,
        Landroid/hardware/hdmi/HdmiControlManager$TvBehaviorOnStandbyMessage;,
        Landroid/hardware/hdmi/HdmiControlManager$SoundbarMode;,
        Landroid/hardware/hdmi/HdmiControlManager$RoutingControl;,
        Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVersion;,
        Landroid/hardware/hdmi/HdmiControlManager$HdmiCecControl;,
        Landroid/hardware/hdmi/HdmiControlManager$ControlCallbackResult;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_ON_ACTIVE_SOURCE_RECOVERED_DISMISS_UI:Ljava/lang/String; = "android.hardware.hdmi.action.ON_ACTIVE_SOURCE_RECOVERED_DISMISS_UI"

.field public static final whitelist ACTION_OSD_MESSAGE:Ljava/lang/String; = "android.hardware.hdmi.action.OSD_MESSAGE"

.field public static final whitelist AVR_VOLUME_MUTED:I = 0x65

.field public static final whitelist CEC_SETTING_NAME_HDMI_CEC_ENABLED:Ljava/lang/String; = "hdmi_cec_enabled"

.field public static final whitelist CEC_SETTING_NAME_HDMI_CEC_VERSION:Ljava/lang/String; = "hdmi_cec_version"

.field public static final whitelist CEC_SETTING_NAME_POWER_CONTROL_MODE:Ljava/lang/String; = "power_control_mode"

.field public static final whitelist CEC_SETTING_NAME_POWER_STATE_CHANGE_ON_ACTIVE_SOURCE_LOST:Ljava/lang/String; = "power_state_change_on_active_source_lost"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_AAC:Ljava/lang/String; = "query_sad_aac"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_ATRAC:Ljava/lang/String; = "query_sad_atrac"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_DD:Ljava/lang/String; = "query_sad_dd"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_DDP:Ljava/lang/String; = "query_sad_ddp"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_DST:Ljava/lang/String; = "query_sad_dst"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_DTS:Ljava/lang/String; = "query_sad_dts"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_DTSHD:Ljava/lang/String; = "query_sad_dtshd"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_LPCM:Ljava/lang/String; = "query_sad_lpcm"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_MAX:Ljava/lang/String; = "query_sad_max"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_MP3:Ljava/lang/String; = "query_sad_mp3"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_MPEG1:Ljava/lang/String; = "query_sad_mpeg1"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_MPEG2:Ljava/lang/String; = "query_sad_mpeg2"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_ONEBITAUDIO:Ljava/lang/String; = "query_sad_onebitaudio"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_TRUEHD:Ljava/lang/String; = "query_sad_truehd"

.field public static final whitelist CEC_SETTING_NAME_QUERY_SAD_WMAPRO:Ljava/lang/String; = "query_sad_wmapro"

.field public static final blacklist CEC_SETTING_NAME_RC_PROFILE_SOURCE_HANDLES_CONTENTS_MENU:Ljava/lang/String; = "rc_profile_source_handles_contents_menu"

.field public static final blacklist CEC_SETTING_NAME_RC_PROFILE_SOURCE_HANDLES_MEDIA_CONTEXT_SENSITIVE_MENU:Ljava/lang/String; = "rc_profile_source_handles_media_context_sensitive_menu"

.field public static final blacklist CEC_SETTING_NAME_RC_PROFILE_SOURCE_HANDLES_ROOT_MENU:Ljava/lang/String; = "rc_profile_source_handles_root_menu"

.field public static final blacklist CEC_SETTING_NAME_RC_PROFILE_SOURCE_HANDLES_SETUP_MENU:Ljava/lang/String; = "rc_profile_source_handles_setup_menu"

.field public static final blacklist CEC_SETTING_NAME_RC_PROFILE_SOURCE_HANDLES_TOP_MENU:Ljava/lang/String; = "rc_profile_source_handles_top_menu"

.field public static final blacklist CEC_SETTING_NAME_RC_PROFILE_TV:Ljava/lang/String; = "rc_profile_tv"

.field public static final whitelist CEC_SETTING_NAME_ROUTING_CONTROL:Ljava/lang/String; = "routing_control"

.field public static final blacklist CEC_SETTING_NAME_SET_MENU_LANGUAGE:Ljava/lang/String; = "set_menu_language"

.field public static final whitelist CEC_SETTING_NAME_SOUNDBAR_MODE:Ljava/lang/String; = "soundbar_mode"

.field public static final whitelist CEC_SETTING_NAME_SYSTEM_AUDIO_CONTROL:Ljava/lang/String; = "system_audio_control"

.field public static final whitelist CEC_SETTING_NAME_SYSTEM_AUDIO_MODE_MUTING:Ljava/lang/String; = "system_audio_mode_muting"

.field public static final blacklist CEC_SETTING_NAME_TV_BEHAVIOR_ON_STANDBY_MESSAGE:Ljava/lang/String; = "tv_behavior_on_standby_message"

.field public static final whitelist CEC_SETTING_NAME_TV_SEND_STANDBY_ON_SLEEP:Ljava/lang/String; = "tv_send_standby_on_sleep"

.field public static final whitelist CEC_SETTING_NAME_TV_WAKE_ON_ONE_TOUCH_PLAY:Ljava/lang/String; = "tv_wake_on_one_touch_play"

.field public static final whitelist CEC_SETTING_NAME_VOLUME_CONTROL_MODE:Ljava/lang/String; = "volume_control_enabled"

.field public static final whitelist CLEAR_TIMER_STATUS_CEC_DISABLE:I = 0xa2

.field public static final whitelist CLEAR_TIMER_STATUS_CHECK_RECORDER_CONNECTION:I = 0xa0

.field public static final whitelist CLEAR_TIMER_STATUS_FAIL_TO_CLEAR_SELECTED_SOURCE:I = 0xa1

.field public static final whitelist CLEAR_TIMER_STATUS_TIMER_CLEARED:I = 0x80

.field public static final whitelist CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_NO_INFO_AVAILABLE:I = 0x2

.field public static final whitelist CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_NO_MATCHING:I = 0x1

.field public static final whitelist CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_RECORDING:I = 0x0

.field public static final whitelist CONTROL_STATE_CHANGED_REASON_SETTING:I = 0x1

.field public static final whitelist CONTROL_STATE_CHANGED_REASON_STANDBY:I = 0x3

.field public static final whitelist CONTROL_STATE_CHANGED_REASON_START:I = 0x0

.field public static final whitelist CONTROL_STATE_CHANGED_REASON_WAKEUP:I = 0x2

.field public static final whitelist DEVICE_EVENT_ADD_DEVICE:I = 0x1

.field public static final whitelist DEVICE_EVENT_REMOVE_DEVICE:I = 0x2

.field public static final whitelist DEVICE_EVENT_UPDATE_DEVICE:I = 0x3

.field public static final whitelist EARC_FEATURE_DISABLED:I = 0x0

.field public static final whitelist EARC_FEATURE_ENABLED:I = 0x1

.field public static final blacklist EXTRA_LOCALE:Ljava/lang/String; = "android.hardware.hdmi.extra.LOCALE"

.field public static final whitelist EXTRA_MESSAGE_EXTRA_PARAM1:Ljava/lang/String; = "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

.field public static final whitelist EXTRA_MESSAGE_ID:Ljava/lang/String; = "android.hardware.hdmi.extra.MESSAGE_ID"

.field public static final whitelist HDMI_CEC_CONTROL_DISABLED:I = 0x0

.field public static final whitelist HDMI_CEC_CONTROL_ENABLED:I = 0x1

.field public static final whitelist HDMI_CEC_VERSION_1_4_B:I = 0x5

.field public static final whitelist HDMI_CEC_VERSION_2_0:I = 0x6

.field private static final blacklist INVALID_PHYSICAL_ADDRESS:I = 0xffff

.field public static final whitelist ONE_TOUCH_RECORD_ALREADY_RECORDING:I = 0x12

.field public static final whitelist ONE_TOUCH_RECORD_CEC_DISABLED:I = 0x33

.field public static final whitelist ONE_TOUCH_RECORD_CHECK_RECORDER_CONNECTION:I = 0x31

.field public static final whitelist ONE_TOUCH_RECORD_DISALLOW_TO_COPY:I = 0xd

.field public static final whitelist ONE_TOUCH_RECORD_DISALLOW_TO_FUTHER_COPIES:I = 0xe

.field public static final whitelist ONE_TOUCH_RECORD_FAIL_TO_RECORD_DISPLAYED_SCREEN:I = 0x32

.field public static final whitelist ONE_TOUCH_RECORD_INVALID_EXTERNAL_PHYSICAL_ADDRESS:I = 0xa

.field public static final whitelist ONE_TOUCH_RECORD_INVALID_EXTERNAL_PLUG_NUMBER:I = 0x9

.field public static final whitelist ONE_TOUCH_RECORD_MEDIA_PROBLEM:I = 0x15

.field public static final whitelist ONE_TOUCH_RECORD_MEDIA_PROTECTED:I = 0x13

.field public static final whitelist ONE_TOUCH_RECORD_NOT_ENOUGH_SPACE:I = 0x16

.field public static final whitelist ONE_TOUCH_RECORD_NO_MEDIA:I = 0x10

.field public static final whitelist ONE_TOUCH_RECORD_NO_OR_INSUFFICIENT_CA_ENTITLEMENTS:I = 0xc

.field public static final whitelist ONE_TOUCH_RECORD_NO_SOURCE_SIGNAL:I = 0x14

.field public static final whitelist ONE_TOUCH_RECORD_OTHER_REASON:I = 0x1f

.field public static final whitelist ONE_TOUCH_RECORD_PARENT_LOCK_ON:I = 0x17

.field public static final whitelist ONE_TOUCH_RECORD_PLAYING:I = 0x11

.field public static final whitelist ONE_TOUCH_RECORD_PREVIOUS_RECORDING_IN_PROGRESS:I = 0x30

.field public static final whitelist ONE_TOUCH_RECORD_RECORDING_ALREADY_TERMINATED:I = 0x1b

.field public static final whitelist ONE_TOUCH_RECORD_RECORDING_ANALOGUE_SERVICE:I = 0x3

.field public static final whitelist ONE_TOUCH_RECORD_RECORDING_CURRENTLY_SELECTED_SOURCE:I = 0x1

.field public static final whitelist ONE_TOUCH_RECORD_RECORDING_DIGITAL_SERVICE:I = 0x2

.field public static final whitelist ONE_TOUCH_RECORD_RECORDING_EXTERNAL_INPUT:I = 0x4

.field public static final whitelist ONE_TOUCH_RECORD_RECORDING_TERMINATED_NORMALLY:I = 0x1a

.field public static final whitelist ONE_TOUCH_RECORD_UNABLE_ANALOGUE_SERVICE:I = 0x6

.field public static final whitelist ONE_TOUCH_RECORD_UNABLE_DIGITAL_SERVICE:I = 0x5

.field public static final whitelist ONE_TOUCH_RECORD_UNABLE_SELECTED_SERVICE:I = 0x7

.field public static final whitelist ONE_TOUCH_RECORD_UNSUPPORTED_CA:I = 0xb

.field public static final whitelist OSD_MESSAGE_ARC_CONNECTED_INVALID_PORT:I = 0x1

.field public static final whitelist OSD_MESSAGE_AVR_VOLUME_CHANGED:I = 0x2

.field public static final whitelist POWER_CONTROL_MODE_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final whitelist POWER_CONTROL_MODE_NONE:Ljava/lang/String; = "none"

.field public static final whitelist POWER_CONTROL_MODE_TV:Ljava/lang/String; = "to_tv"

.field public static final whitelist POWER_CONTROL_MODE_TV_AND_AUDIO_SYSTEM:Ljava/lang/String; = "to_tv_and_audio_system"

.field public static final whitelist POWER_STATE_CHANGE_ON_ACTIVE_SOURCE_LOST_NONE:Ljava/lang/String; = "none"

.field public static final whitelist POWER_STATE_CHANGE_ON_ACTIVE_SOURCE_LOST_STANDBY_NOW:Ljava/lang/String; = "standby_now"

.field public static final whitelist POWER_STATUS_ON:I = 0x0

.field public static final whitelist POWER_STATUS_STANDBY:I = 0x1

.field public static final whitelist POWER_STATUS_TRANSIENT_TO_ON:I = 0x2

.field public static final whitelist POWER_STATUS_TRANSIENT_TO_STANDBY:I = 0x3

.field public static final whitelist POWER_STATUS_UNKNOWN:I = -0x1

.field public static final whitelist QUERY_SAD_DISABLED:I = 0x0

.field public static final whitelist QUERY_SAD_ENABLED:I = 0x1

.field public static final blacklist RC_PROFILE_SOURCE_MENU_HANDLED:I = 0x1

.field public static final blacklist RC_PROFILE_SOURCE_MENU_NOT_HANDLED:I = 0x0

.field public static final blacklist RC_PROFILE_TV_FOUR:I = 0xe

.field public static final blacklist RC_PROFILE_TV_NONE:I = 0x0

.field public static final blacklist RC_PROFILE_TV_ONE:I = 0x2

.field public static final blacklist RC_PROFILE_TV_THREE:I = 0xa

.field public static final blacklist RC_PROFILE_TV_TWO:I = 0x6

.field public static final whitelist RESULT_ALREADY_IN_PROGRESS:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RESULT_COMMUNICATION_FAILED:I = 0x7

.field public static final whitelist RESULT_EXCEPTION:I = 0x5

.field public static final whitelist RESULT_INCORRECT_MODE:I = 0x6

.field public static final whitelist RESULT_SOURCE_NOT_AVAILABLE:I = 0x2

.field public static final whitelist RESULT_SUCCESS:I = 0x0

.field public static final whitelist RESULT_TARGET_NOT_AVAILABLE:I = 0x3

.field public static final whitelist RESULT_TIMEOUT:I = 0x1

.field public static final whitelist ROUTING_CONTROL_DISABLED:I = 0x0

.field public static final whitelist ROUTING_CONTROL_ENABLED:I = 0x1

.field public static final whitelist SETTING_NAME_EARC_ENABLED:Ljava/lang/String; = "earc_enabled"

.field public static final blacklist SET_MENU_LANGUAGE_DISABLED:I = 0x0

.field public static final blacklist SET_MENU_LANGUAGE_ENABLED:I = 0x1

.field public static final whitelist SOUNDBAR_MODE_DISABLED:I = 0x0

.field public static final whitelist SOUNDBAR_MODE_ENABLED:I = 0x1

.field public static final whitelist SYSTEM_AUDIO_CONTROL_DISABLED:I = 0x0

.field public static final whitelist SYSTEM_AUDIO_CONTROL_ENABLED:I = 0x1

.field public static final whitelist SYSTEM_AUDIO_MODE_MUTING_DISABLED:I = 0x0

.field public static final whitelist SYSTEM_AUDIO_MODE_MUTING_ENABLED:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "HdmiControlManager"

.field public static final whitelist TIMER_RECORDING_RESULT_EXTRA_CEC_DISABLED:I = 0x3

.field public static final whitelist TIMER_RECORDING_RESULT_EXTRA_CHECK_RECORDER_CONNECTION:I = 0x1

.field public static final whitelist TIMER_RECORDING_RESULT_EXTRA_FAIL_TO_RECORD_SELECTED_SOURCE:I = 0x2

.field public static final whitelist TIMER_RECORDING_RESULT_EXTRA_NO_ERROR:I = 0x0

.field public static final whitelist TIMER_RECORDING_TYPE_ANALOGUE:I = 0x2

.field public static final whitelist TIMER_RECORDING_TYPE_DIGITAL:I = 0x1

.field public static final whitelist TIMER_RECORDING_TYPE_EXTERNAL:I = 0x3

.field public static final whitelist TIMER_STATUS_MEDIA_INFO_NOT_PRESENT:I = 0x2

.field public static final whitelist TIMER_STATUS_MEDIA_INFO_PRESENT_NOT_PROTECTED:I = 0x0

.field public static final whitelist TIMER_STATUS_MEDIA_INFO_PRESENT_PROTECTED:I = 0x1

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_CA_NOT_SUPPORTED:I = 0x6

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_CLOCK_FAILURE:I = 0xa

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_DATE_OUT_OF_RANGE:I = 0x2

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_DUPLICATED:I = 0xe

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_INVALID_EXTERNAL_PHYSICAL_NUMBER:I = 0x5

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_INVALID_EXTERNAL_PLUG_NUMBER:I = 0x4

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_INVALID_SEQUENCE:I = 0x3

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_NO_CA_ENTITLEMENTS:I = 0x7

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_NO_FREE_TIME:I = 0x1

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_PARENTAL_LOCK_ON:I = 0x9

.field public static final whitelist TIMER_STATUS_NOT_PROGRAMMED_UNSUPPORTED_RESOLUTION:I = 0x8

.field public static final whitelist TIMER_STATUS_PROGRAMMED_INFO_ENOUGH_SPACE:I = 0x8

.field public static final whitelist TIMER_STATUS_PROGRAMMED_INFO_MIGHT_NOT_ENOUGH_SPACE:I = 0xb

.field public static final whitelist TIMER_STATUS_PROGRAMMED_INFO_NOT_ENOUGH_SPACE:I = 0x9

.field public static final whitelist TIMER_STATUS_PROGRAMMED_INFO_NO_MEDIA_INFO:I = 0xa

.field public static final blacklist TV_BEHAVIOR_ON_STANDBY_MESSAGE_GO_TO_DREAM:I = 0x1

.field public static final blacklist TV_BEHAVIOR_ON_STANDBY_MESSAGE_GO_TO_SLEEP:I = 0x0

.field public static final whitelist TV_SEND_STANDBY_ON_SLEEP_DISABLED:I = 0x0

.field public static final whitelist TV_SEND_STANDBY_ON_SLEEP_ENABLED:I = 0x1

.field public static final whitelist TV_WAKE_ON_ONE_TOUCH_PLAY_DISABLED:I = 0x0

.field public static final whitelist TV_WAKE_ON_ONE_TOUCH_PLAY_ENABLED:I = 0x1

.field public static final whitelist VOLUME_CONTROL_DISABLED:I = 0x0

.field public static final whitelist VOLUME_CONTROL_ENABLED:I = 0x1


# instance fields
.field private final blacklist mCecSettingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;",
            "Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mHasAudioSystemDevice:Z

.field private final greylist-max-o mHasPlaybackDevice:Z

.field private final blacklist mHasSwitchDevice:Z

.field private final greylist-max-o mHasTvDevice:Z

.field private final blacklist mHdmiCecVolumeControlFeatureListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;",
            "Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHdmiControlStatusChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;",
            "Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHotplugEventListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;",
            "Landroid/hardware/hdmi/IHdmiHotplugEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsSwitchDevice:Z

.field private blacklist mLocalPhysicalAddress:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private final greylist-max-o mService:Landroid/hardware/hdmi/IHdmiControlService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/hardware/hdmi/HdmiControlManager;)Landroid/hardware/hdmi/IHdmiControlService;
    .registers 1

    iget-object p0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetLocalPhysicalAddress(Landroid/hardware/hdmi/HdmiControlManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->setLocalPhysicalAddress(I)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 5

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const v0, 0xffff

    iput v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mLocalPhysicalAddress:I

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mLock:Ljava/lang/Object;

    .line 1716
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    .line 1740
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiControlStatusChangeListeners:Landroid/util/ArrayMap;

    .line 1757
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiCecVolumeControlFeatureListeners:Landroid/util/ArrayMap;

    .line 2070
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    .line 1227
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 1228
    nop

    .line 1229
    iget-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const/4 v0, 0x0

    if-eqz p1, :cond_40

    .line 1231
    :try_start_33
    iget-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlService;->getSupportedTypes()[I

    move-result-object p1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_39} :catch_3a

    .line 1234
    goto :goto_41

    .line 1232
    :catch_3a
    move-exception p1

    .line 1233
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1229
    :cond_40
    move-object p1, v0

    .line 1236
    :goto_41
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasTvDevice:Z

    .line 1237
    const/4 v2, 0x4

    invoke-static {p1, v2}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasPlaybackDevice:Z

    .line 1238
    const/4 v2, 0x5

    invoke-static {p1, v2}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasAudioSystemDevice:Z

    .line 1239
    const/4 v2, 0x6

    invoke-static {p1, v2}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasSwitchDevice:Z

    .line 1240
    invoke-static {}, Landroid/sysprop/HdmiProperties;->is_switch()Ljava/util/Optional;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mIsSwitchDevice:Z

    .line 1241
    new-instance p1, Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;

    invoke-direct {p1, p0, v0}, Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;-><init>(Landroid/hardware/hdmi/HdmiControlManager;Landroid/hardware/hdmi/HdmiControlManager-IA;)V

    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->addHotplugEventListener(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V

    .line 1242
    return-void
.end method

.method private blacklist addCecSettingChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V
    .registers 6

    .line 2078
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_c

    .line 2079
    const-string p1, "addCecSettingChangeListener: HdmiControlService is not available"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    return-void

    .line 2082
    :cond_c
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    .line 2083
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2084
    const-string p1, "listener is already registered"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    return-void

    .line 2087
    :cond_28
    nop

    .line 2088
    invoke-direct {p0, p2, p3}, Landroid/hardware/hdmi/HdmiControlManager;->getCecSettingChangeListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    move-result-object p2

    .line 2089
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 2090
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    :cond_3f
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    :try_start_4a
    iget-object p3, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {p3, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4f} :catch_51

    .line 2097
    nop

    .line 2098
    return-void

    .line 2095
    :catch_51
    move-exception p1

    .line 2096
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist createHdmiCecVolumeControlFeatureListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    .registers 4

    .line 2045
    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager$3;-><init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)V

    return-object v0
.end method

.method private blacklist getCecSettingChangeListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
    .registers 4

    .line 2123
    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager$4;-><init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V

    return-object v0
.end method

.method private blacklist getHdmiControlStatusChangeListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
    .registers 4

    .line 1965
    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager$2;-><init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V

    return-object v0
.end method

.method private blacklist getHotplugEventListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .registers 4

    .line 1868
    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager$1;-><init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V

    return-object v0
.end method

.method private blacklist getLocalPhysicalAddress()I
    .registers 3

    .line 92
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    iget v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mLocalPhysicalAddress:I

    monitor-exit v0

    return v1

    .line 94
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static greylist-max-o hasDeviceType([II)Z
    .registers 6

    .line 1275
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1276
    return v0

    .line 1278
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 1279
    if-ne v3, p1, :cond_e

    .line 1280
    const/4 p0, 0x1

    return p0

    .line 1278
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1283
    :cond_11
    return v0
.end method

.method private blacklist removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V
    .registers 5

    .line 2103
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_c

    .line 2104
    const-string p1, "removeCecSettingChangeListener: HdmiControlService is not available"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    return-void

    .line 2108
    :cond_c
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p2, 0x0

    goto :goto_24

    .line 2109
    :cond_16
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mCecSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    .line 2110
    :goto_24
    if-nez p2, :cond_2c

    .line 2111
    const-string p1, "tried to remove not-registered listener"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    return-void

    .line 2115
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_33

    .line 2118
    nop

    .line 2119
    return-void

    .line 2116
    :catch_33
    move-exception p1

    .line 2117
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist setLocalPhysicalAddress(I)V
    .registers 3

    .line 86
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iput p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mLocalPhysicalAddress:I

    .line 88
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method


# virtual methods
.method public whitelist addHdmiCecEnabledChangeListener(Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V
    .registers 3

    .line 2265
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->addHdmiCecEnabledChangeListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V

    .line 2266
    return-void
.end method

.method public whitelist addHdmiCecEnabledChangeListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V
    .registers 4

    .line 2278
    const-string v0, "hdmi_cec_enabled"

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager;->addCecSettingChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V

    .line 2279
    return-void
.end method

.method public blacklist addHdmiCecVolumeControlFeatureListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)V
    .registers 5

    .line 1995
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_c

    .line 1996
    const-string p1, "addHdmiCecVolumeControlFeatureListener: HdmiControlService is not available"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    return-void

    .line 2000
    :cond_c
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiCecVolumeControlFeatureListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2001
    const-string p1, "listener is already registered"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    return-void

    .line 2004
    :cond_1a
    nop

    .line 2005
    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager;->createHdmiCecVolumeControlFeatureListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    move-result-object p1

    .line 2006
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiCecVolumeControlFeatureListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    :try_start_24
    iget-object p2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {p2, p1}, Landroid/hardware/hdmi/IHdmiControlService;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2b

    .line 2011
    nop

    .line 2012
    return-void

    .line 2009
    :catch_2b
    move-exception p1

    .line 2010
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V
    .registers 3

    .line 1900
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->addHdmiControlStatusChangeListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V

    .line 1901
    return-void
.end method

.method public blacklist addHdmiControlStatusChangeListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V
    .registers 5

    .line 1918
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_c

    .line 1919
    const-string p1, "addHdmiControlStatusChangeListener: HdmiControlService is not available"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    return-void

    .line 1922
    :cond_c
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiControlStatusChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1923
    const-string p1, "listener is already registered"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    return-void

    .line 1926
    :cond_1a
    nop

    .line 1927
    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager;->getHdmiControlStatusChangeListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    move-result-object p1

    .line 1928
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiControlStatusChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    :try_start_24
    iget-object p2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {p2, p1}, Landroid/hardware/hdmi/IHdmiControlService;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2b

    .line 1933
    nop

    .line 1934
    return-void

    .line 1931
    :catch_2b
    move-exception p1

    .line 1932
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist addHotplugEventListener(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .registers 3

    .line 1810
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->addHotplugEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V

    .line 1811
    return-void
.end method

.method public whitelist addHotplugEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .registers 5

    .line 1825
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_c

    .line 1826
    const-string p1, "addHotplugEventListener: HdmiControlService is not available"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    return-void

    .line 1829
    :cond_c
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1830
    const-string p1, "listener is already registered"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    return-void

    .line 1833
    :cond_1a
    nop

    .line 1834
    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager;->getHotplugEventListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object p1

    .line 1835
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    :try_start_24
    iget-object p2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {p2, p1}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2b

    .line 1840
    nop

    .line 1841
    return-void

    .line 1838
    :catch_2b
    move-exception p1

    .line 1839
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAllowedCecSettingIntValues(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2202
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_23

    .line 2207
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->getAllowedCecSettingIntValues(Ljava/lang/String;)[I

    move-result-object p1

    .line 2208
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_1d

    return-object p1

    .line 2209
    :catch_1d
    move-exception p1

    .line 2210
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2203
    :cond_23
    const-string p1, "HdmiControlManager"

    const-string v0, "getAllowedCecSettingIntValues: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    .line 2176
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_11

    .line 2181
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object p1

    .line 2182
    :catch_b
    move-exception p1

    .line 2183
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2177
    :cond_11
    const-string p1, "HdmiControlManager"

    const-string v0, "getAllowedCecSettingStringValues: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;
    .registers 2

    .line 1369
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiAudioSystemClient;

    return-object v0
.end method

.method public whitelist getClient(I)Landroid/hardware/hdmi/HdmiClient;
    .registers 4

    .line 1298
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1299
    return-object v1

    .line 1301
    :cond_6
    packed-switch p1, :pswitch_data_58

    .line 1321
    :pswitch_9
    return-object v1

    .line 1318
    :pswitch_a
    iget-boolean p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasSwitchDevice:Z

    if-nez p1, :cond_14

    iget-boolean p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mIsSwitchDevice:Z

    if-eqz p1, :cond_13

    goto :goto_14

    .line 1319
    :cond_13
    goto :goto_1b

    :cond_14
    :goto_14
    new-instance v1, Landroid/hardware/hdmi/HdmiSwitchClient;

    iget-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {v1, p1}, Landroid/hardware/hdmi/HdmiSwitchClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    .line 1318
    :goto_1b
    return-object v1

    .line 1308
    :pswitch_1c
    :try_start_1c
    iget-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v0, "soundbar_mode"

    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    iget-boolean p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasPlaybackDevice:Z

    if-nez p1, :cond_2f

    :cond_2b
    iget-boolean p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasAudioSystemDevice:Z

    if-eqz p1, :cond_37

    .line 1311
    :cond_2f
    new-instance p1, Landroid/hardware/hdmi/HdmiAudioSystemClient;

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {p1, v0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_36} :catch_39

    return-object p1

    .line 1315
    :cond_37
    nop

    .line 1316
    return-object v1

    .line 1313
    :catch_39
    move-exception p1

    .line 1314
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1305
    :pswitch_3f
    iget-boolean p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasPlaybackDevice:Z

    if-eqz p1, :cond_4a

    new-instance v1, Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {v1, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    :cond_4a
    return-object v1

    .line 1303
    :pswitch_4b
    iget-boolean p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasTvDevice:Z

    if-eqz p1, :cond_56

    new-instance v1, Landroid/hardware/hdmi/HdmiTvClient;

    iget-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {v1, p1}, Landroid/hardware/hdmi/HdmiTvClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    :cond_56
    return-object v1

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_3f
        :pswitch_1c
        :pswitch_a
    .end packed-switch
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1396
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1397
    :catch_7
    move-exception v0

    .line 1398
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist getConnectedDevicesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1409
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1410
    :catch_7
    move-exception v0

    .line 1411
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getEarcEnabled()I
    .registers 3

    .line 2870
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2875
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "earc_enabled"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 2876
    :catch_d
    move-exception v0

    .line 2877
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2871
    :cond_13
    const-string v0, "HdmiControlManager"

    const-string v1, "getEarcEnabled: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getHdmiCecEnabled()I
    .registers 3

    .line 2241
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2246
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "hdmi_cec_enabled"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 2247
    :catch_d
    move-exception v0

    .line 2248
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2242
    :cond_13
    const-string v0, "HdmiControlManager"

    const-string v1, "getHdmiCecEnabled: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getHdmiCecVersion()I
    .registers 3

    .line 2321
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2326
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "hdmi_cec_version"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 2327
    :catch_d
    move-exception v0

    .line 2328
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2322
    :cond_13
    const-string v0, "HdmiControlManager"

    const-string v1, "getHdmiCecVersion: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getHdmiCecVolumeControlEnabled()I
    .registers 3

    .line 1637
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "volume_control_enabled"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1638
    :catch_9
    move-exception v0

    .line 1639
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getPhysicalAddress()I
    .registers 2

    .line 1664
    invoke-direct {p0}, Landroid/hardware/hdmi/HdmiControlManager;->getLocalPhysicalAddress()I

    move-result v0

    return v0
.end method

.method public whitelist getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;
    .registers 2

    .line 1337
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    return-object v0
.end method

.method public whitelist getPortInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .line 1425
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1426
    :catch_7
    move-exception v0

    .line 1427
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getPowerControlMode()Ljava/lang/String;
    .registers 3

    .line 2505
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2510
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "power_control_mode"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    .line 2511
    :catch_d
    move-exception v0

    .line 2512
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2506
    :cond_13
    const-string v0, "HdmiControlManager"

    const-string v1, "getPowerControlMode: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPowerStateChangeOnActiveSourceLost()Ljava/lang/String;
    .registers 3

    .line 2550
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2556
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "power_state_change_on_active_source_lost"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    .line 2558
    :catch_d
    move-exception v0

    .line 2559
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2551
    :cond_13
    const-string v0, "HdmiControlManager"

    const-string v1, "getPowerStateChangeOnActiveSourceLost: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRoutingControl()I
    .registers 3

    .line 2369
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2374
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "routing_control"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 2375
    :catch_d
    move-exception v0

    .line 2376
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2370
    :cond_13
    const-string v0, "HdmiControlManager"

    const-string v1, "getRoutingControl: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSadPresenceInQuery(Ljava/lang/String;)I
    .registers 3

    .line 2830
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_11

    .line 2835
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return p1

    .line 2836
    :catch_b
    move-exception p1

    .line 2837
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2831
    :cond_11
    const-string p1, "HdmiControlManager"

    const-string v0, "getSadPresenceInQuery: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getSoundbarMode()I
    .registers 3

    .line 2417
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2422
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "soundbar_mode"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 2423
    :catch_d
    move-exception v0

    .line 2424
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2418
    :cond_13
    const-string v0, "HdmiControlManager"

    const-string v1, "getSoundbarMode: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSwitchClient()Landroid/hardware/hdmi/HdmiSwitchClient;
    .registers 2

    .line 1384
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiSwitchClient;

    return-object v0
.end method

.method public whitelist getSystemAudioControl()I
    .registers 3

    .line 2602
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2607
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "system_audio_control"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 2608
    :catch_d
    move-exception v0

    .line 2609
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2603
    :cond_13
    const-string v0, "HdmiControlManager"

    const-string v1, "getSystemAudioControl: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSystemAudioMode()Z
    .registers 2

    .line 1650
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getSystemAudioMode()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1651
    :catch_7
    move-exception v0

    .line 1652
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getSystemAudioModeMuting()I
    .registers 3

    .line 2644
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2649
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "system_audio_mode_muting"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 2650
    :catch_d
    move-exception v0

    .line 2651
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2645
    :cond_13
    const-string v0, "HdmiControlManager"

    const-string v1, "getSystemAudioModeMuting: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getTvBehaviorOnStandbyMessage()I
    .registers 3

    .line 2461
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2466
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "tv_behavior_on_standby_message"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 2467
    :catch_d
    move-exception v0

    .line 2468
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2462
    :cond_13
    const-string v0, "HdmiControlManager"

    const-string v1, "getTvBehaviorOnStandbyMessage: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTvClient()Landroid/hardware/hdmi/HdmiTvClient;
    .registers 2

    .line 1352
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiTvClient;

    return-object v0
.end method

.method public whitelist getTvSendStandbyOnSleep()I
    .registers 3

    .line 2732
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2737
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "tv_send_standby_on_sleep"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 2738
    :catch_d
    move-exception v0

    .line 2739
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2733
    :cond_13
    const-string v0, "HdmiControlManager"

    const-string v1, "getTvSendStandbyOnSleep: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTvWakeOnOneTouchPlay()I
    .registers 3

    .line 2688
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2693
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "tv_wake_on_one_touch_play"

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 2694
    :catch_d
    move-exception v0

    .line 2695
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2689
    :cond_13
    const-string v0, "HdmiControlManager"

    const-string v1, "getTvWakeOnOneTouchPlay: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getUserCecSettings()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2149
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_11

    .line 2154
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getUserCecSettings()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 2155
    :catch_b
    move-exception v0

    .line 2156
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2150
    :cond_11
    const-string v0, "HdmiControlManager"

    const-string v1, "getUserCecSettings: HdmiControlService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HdmiControlService is not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isDeviceConnected(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z
    .registers 5

    .line 1677
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    invoke-direct {p0}, Landroid/hardware/hdmi/HdmiControlManager;->getLocalPhysicalAddress()I

    move-result v0

    .line 1679
    const/4 v1, 0x0

    const v2, 0xffff

    if-ne v0, v2, :cond_e

    .line 1680
    return v1

    .line 1682
    :cond_e
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    .line 1683
    if-ne p1, v2, :cond_15

    .line 1684
    return v1

    .line 1686
    :cond_15
    invoke-static {p1, v0}, Landroid/hardware/hdmi/HdmiUtils;->getLocalPortFromPhysicalAddress(II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public greylist isRemoteDeviceConnected(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1696
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    invoke-direct {p0}, Landroid/hardware/hdmi/HdmiControlManager;->getLocalPhysicalAddress()I

    move-result v0

    .line 1698
    const/4 v1, 0x0

    const v2, 0xffff

    if-ne v0, v2, :cond_e

    .line 1699
    return v1

    .line 1701
    :cond_e
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    .line 1702
    if-ne p1, v2, :cond_15

    .line 1703
    return v1

    .line 1705
    :cond_15
    invoke-static {p1, v0}, Landroid/hardware/hdmi/HdmiUtils;->getLocalPortFromPhysicalAddress(II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public whitelist powerOffDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4

    .line 1440
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    :try_start_3
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 1443
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result p1

    .line 1442
    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->powerOffRemoteDevice(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_12

    .line 1446
    nop

    .line 1447
    return-void

    .line 1444
    :catch_12
    move-exception p1

    .line 1445
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist powerOffRemoteDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1455
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    :try_start_3
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 1458
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result p1

    .line 1457
    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->powerOffRemoteDevice(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_12

    .line 1461
    nop

    .line 1462
    return-void

    .line 1459
    :catch_12
    move-exception p1

    .line 1460
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist powerOnDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4

    .line 1475
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    :try_start_3
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 1478
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result p1

    .line 1477
    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->powerOnRemoteDevice(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_12

    .line 1481
    nop

    .line 1482
    return-void

    .line 1479
    :catch_12
    move-exception p1

    .line 1480
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist powerOnRemoteDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1490
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    :try_start_3
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 1493
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result p1

    .line 1492
    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->powerOnRemoteDevice(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_12

    .line 1496
    nop

    .line 1497
    return-void

    .line 1494
    :catch_12
    move-exception p1

    .line 1495
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeHdmiCecEnabledChangeListener(Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V
    .registers 3

    .line 2287
    const-string v0, "hdmi_cec_enabled"

    invoke-direct {p0, v0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/HdmiControlManager$CecSettingChangeListener;)V

    .line 2288
    return-void
.end method

.method public blacklist removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)V
    .registers 4

    .line 2024
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_c

    .line 2025
    const-string p1, "removeHdmiCecVolumeControlFeatureListener: HdmiControlService is not available"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    return-void

    .line 2030
    :cond_c
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiCecVolumeControlFeatureListeners:Landroid/util/ArrayMap;

    .line 2031
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    .line 2032
    if-nez p1, :cond_1c

    .line 2033
    const-string p1, "tried to remove not-registered listener"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    return-void

    .line 2037
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_23

    .line 2040
    nop

    .line 2041
    return-void

    .line 2038
    :catch_23
    move-exception p1

    .line 2039
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V
    .registers 4

    .line 1945
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_c

    .line 1946
    const-string p1, "removeHdmiControlStatusChangeListener: HdmiControlService is not available"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    return-void

    .line 1950
    :cond_c
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHdmiControlStatusChangeListeners:Landroid/util/ArrayMap;

    .line 1951
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 1952
    if-nez p1, :cond_1c

    .line 1953
    const-string p1, "tried to remove not-registered listener"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    return-void

    .line 1957
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_23

    .line 1960
    nop

    .line 1961
    return-void

    .line 1958
    :catch_23
    move-exception p1

    .line 1959
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeHotplugEventListener(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .registers 4

    .line 1850
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "HdmiControlManager"

    if-nez v0, :cond_c

    .line 1851
    const-string p1, "removeHotplugEventListener: HdmiControlService is not available"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    return-void

    .line 1854
    :cond_c
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 1855
    if-nez p1, :cond_1c

    .line 1856
    const-string p1, "tried to remove not-registered listener"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return-void

    .line 1860
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_23

    .line 1863
    nop

    .line 1864
    return-void

    .line 1861
    :catch_23
    move-exception p1

    .line 1862
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist requestRemoteDeviceToBecomeActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1525
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    :try_start_3
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->askRemoteDeviceToBecomeActiveSource(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    .line 1530
    nop

    .line 1531
    return-void

    .line 1528
    :catch_e
    move-exception p1

    .line 1529
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 3

    .line 1511
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    :try_start_3
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->askRemoteDeviceToBecomeActiveSource(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    .line 1516
    nop

    .line 1517
    return-void

    .line 1514
    :catch_e
    move-exception p1

    .line 1515
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setEarcEnabled(I)V
    .registers 4

    .line 2850
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2855
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "earc_enabled"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 2858
    nop

    .line 2859
    return-void

    .line 2856
    :catch_d
    move-exception p1

    .line 2857
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2851
    :cond_13
    const-string p1, "HdmiControlManager"

    const-string v0, "setEarcEnabled: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setHdmiCecEnabled(I)V
    .registers 4

    .line 2221
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2226
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "hdmi_cec_enabled"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 2229
    nop

    .line 2230
    return-void

    .line 2227
    :catch_d
    move-exception p1

    .line 2228
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2222
    :cond_13
    const-string p1, "HdmiControlManager"

    const-string v0, "setHdmiCecEnabled: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setHdmiCecVersion(I)V
    .registers 4

    .line 2299
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2304
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "hdmi_cec_version"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 2307
    nop

    .line 2308
    return-void

    .line 2305
    :catch_d
    move-exception p1

    .line 2306
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2300
    :cond_13
    const-string p1, "HdmiControlManager"

    const-string v0, "setHdmiCecVersion: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setHdmiCecVolumeControlEnabled(I)V
    .registers 4

    .line 1621
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "volume_control_enabled"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1625
    nop

    .line 1626
    return-void

    .line 1623
    :catch_9
    move-exception p1

    .line 1624
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setPowerControlMode(Ljava/lang/String;)V
    .registers 4

    .line 2482
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2487
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "power_control_mode"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 2490
    nop

    .line 2491
    return-void

    .line 2488
    :catch_d
    move-exception p1

    .line 2489
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2483
    :cond_13
    const-string p1, "HdmiControlManager"

    const-string v0, "setPowerControlMode: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setPowerStateChangeOnActiveSourceLost(Ljava/lang/String;)V
    .registers 4

    .line 2526
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2532
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "power_state_change_on_active_source_lost"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 2536
    nop

    .line 2537
    return-void

    .line 2534
    :catch_d
    move-exception p1

    .line 2535
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2527
    :cond_13
    const-string p1, "HdmiControlManager"

    const-string v0, "setPowerStateChangeOnActiveSourceLost: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setRoutingControl(I)V
    .registers 4

    .line 2344
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2349
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "routing_control"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 2352
    nop

    .line 2353
    return-void

    .line 2350
    :catch_d
    move-exception p1

    .line 2351
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2345
    :cond_13
    const-string p1, "HdmiControlManager"

    const-string v0, "setRoutingControl: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSadPresenceInQuery(Ljava/lang/String;I)V
    .registers 4

    .line 2764
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_11

    .line 2769
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 2772
    nop

    .line 2773
    return-void

    .line 2770
    :catch_b
    move-exception p1

    .line 2771
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2765
    :cond_11
    const-string p1, "HdmiControlManager"

    const-string p2, "setSadPresenceInQuery: HdmiControlService is not available"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "HdmiControlService is not available"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSadsPresenceInQuery(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2798
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_22

    .line 2803
    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2804
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, v0, p2}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1c

    .line 2805
    goto :goto_8

    .line 2808
    :cond_1a
    nop

    .line 2809
    return-void

    .line 2806
    :catch_1c
    move-exception p1

    .line 2807
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2799
    :cond_22
    const-string p1, "HdmiControlManager"

    const-string p2, "setSadsPresenceInQuery: HdmiControlService is not available"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "HdmiControlService is not available"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSoundbarMode(I)V
    .registers 4

    .line 2393
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2398
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "soundbar_mode"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 2401
    nop

    .line 2402
    return-void

    .line 2399
    :catch_d
    move-exception p1

    .line 2400
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2394
    :cond_13
    const-string p1, "HdmiControlManager"

    const-string v0, "setSoundbarMode: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setStandbyMode(Z)V
    .registers 3

    .line 1542
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setStandbyMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1545
    nop

    .line 1546
    return-void

    .line 1543
    :catch_7
    move-exception p1

    .line 1544
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setSystemAudioControl(I)V
    .registers 4

    .line 2576
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2581
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "system_audio_control"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 2584
    nop

    .line 2585
    return-void

    .line 2582
    :catch_d
    move-exception p1

    .line 2583
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2577
    :cond_13
    const-string p1, "HdmiControlManager"

    const-string v0, "setSystemAudioControl: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSystemAudioModeMuting(I)V
    .registers 4

    .line 2622
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2627
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "system_audio_mode_muting"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 2630
    nop

    .line 2631
    return-void

    .line 2628
    :catch_d
    move-exception p1

    .line 2629
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2623
    :cond_13
    const-string p1, "HdmiControlManager"

    const-string v0, "setSystemAudioModeMuting: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setTvBehaviorOnStandbyMessage(I)V
    .registers 4

    .line 2438
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2443
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "tv_behavior_on_standby_message"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 2446
    nop

    .line 2447
    return-void

    .line 2444
    :catch_d
    move-exception p1

    .line 2445
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2439
    :cond_13
    const-string p1, "HdmiControlManager"

    const-string v0, "setTvBehaviorOnStandbyMessage: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTvSendStandbyOnSleep(I)V
    .registers 4

    .line 2709
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2714
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "tv_send_standby_on_sleep"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 2717
    nop

    .line 2718
    return-void

    .line 2715
    :catch_d
    move-exception p1

    .line 2716
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2710
    :cond_13
    const-string p1, "HdmiControlManager"

    const-string v0, "setTvSendStandbyOnSleep: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTvWakeOnOneTouchPlay(I)V
    .registers 4

    .line 2665
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v0, :cond_13

    .line 2670
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const-string v1, "tv_wake_on_one_touch_play"

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setCecSettingIntValue(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    .line 2673
    nop

    .line 2674
    return-void

    .line 2671
    :catch_d
    move-exception p1

    .line 2672
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2666
    :cond_13
    const-string p1, "HdmiControlManager"

    const-string v0, "setTvWakeOnOneTouchPlay: HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HdmiControlService is not available"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist shouldHandleTvPowerKey()Z
    .registers 2

    .line 1572
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->shouldHandleTvPowerKey()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1573
    :catch_7
    move-exception v0

    .line 1574
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist toggleAndFollowTvPower()V
    .registers 2

    .line 1558
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->toggleAndFollowTvPower()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1561
    nop

    .line 1562
    return-void

    .line 1559
    :catch_7
    move-exception v0

    .line 1560
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
