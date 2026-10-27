.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$RestrictionBypass;,
        Landroid/app/AppOpsManager$AttributedOpEntry;,
        Landroid/app/AppOpsManager$HistoricalOpsRequest;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OnOpActiveChangedListener;,
        Landroid/app/AppOpsManager$OnOpStartedListener;,
        Landroid/app/AppOpsManager$OnOpNotedListener;,
        Landroid/app/AppOpsManager$AppOpModeQuery;,
        Landroid/app/AppOpsManager$NotedOp;,
        Landroid/app/AppOpsManager$CheckPackageQuery;,
        Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;,
        Landroid/app/AppOpsManager$OnOpNotedCallback;,
        Landroid/app/AppOpsManager$HistoricalOps;,
        Landroid/app/AppOpsManager$NoteOpEvent;,
        Landroid/app/AppOpsManager$OpEventProxyInfo;,
        Landroid/app/AppOpsManager$AppOpsCollector;,
        Landroid/app/AppOpsManager$OpNotedCallbackFlags;,
        Landroid/app/AppOpsManager$NotedOpCollectionMode;,
        Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpNotedInternalListener;,
        Landroid/app/AppOpsManager$HistoricalOp;,
        Landroid/app/AppOpsManager$AttributedHistoricalOps;,
        Landroid/app/AppOpsManager$HistoricalPackageOps;,
        Landroid/app/AppOpsManager$HistoricalUidOps;,
        Landroid/app/AppOpsManager$HistoricalOpsRequestFilter;,
        Landroid/app/AppOpsManager$OpHistoryFlags;,
        Landroid/app/AppOpsManager$HistoricalOpsVisitor;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;,
        Landroid/app/AppOpsManager$ShouldCollectNoteOp;,
        Landroid/app/AppOpsManager$AppOpString;,
        Landroid/app/AppOpsManager$DataBucketKey;,
        Landroid/app/AppOpsManager$SamplingStrategy;,
        Landroid/app/AppOpsManager$AttributionFlags;,
        Landroid/app/AppOpsManager$OpFlags;,
        Landroid/app/AppOpsManager$UidState;,
        Landroid/app/AppOpsManager$Mode;,
        Landroid/app/AppOpsManager$HistoricalMode;
    }
.end annotation


# static fields
.field private static final blacklist APP_OP_MODE_CACHING_API:Ljava/lang/String; = "getAppOpMode"

.field private static final blacklist APP_OP_MODE_CACHING_NAME:Ljava/lang/String; = "appOpModeCache"

.field private static final blacklist APP_OP_MODE_CACHING_SIZE:I = 0x800

.field private static final blacklist APP_OP_PERMISSION_PACKAGE_OPS:[I

.field private static final blacklist APP_OP_PERMISSION_UID_OPS:[I

.field public static final blacklist ATTRIBUTION_CHAIN_ID_NONE:I = -0x1

.field public static final blacklist ATTRIBUTION_FLAGS_NONE:I = 0x0

.field public static final blacklist ATTRIBUTION_FLAG_ACCESSOR:I = 0x1

.field public static final blacklist ATTRIBUTION_FLAG_INTERMEDIARY:I = 0x2

.field public static final blacklist ATTRIBUTION_FLAG_RECEIVER:I = 0x4

.field public static final blacklist ATTRIBUTION_FLAG_TRUSTED:I = 0x8

.field private static final blacklist BITMASK_LEN:I = 0x3

.field public static final blacklist CALL_BACK_ON_CHANGED_LISTENER_WITH_SWITCHED_OP_CHANGE:J = 0x8d50f1eL

.field public static final blacklist CALL_BACK_ON_SWITCHED_OP:I = 0x2

.field private static final blacklist CHECK_PACKAGE_CACHING_API:Ljava/lang/String; = "checkPackage"

.field private static final blacklist CHECK_PACKAGE_CACHING_NAME:Ljava/lang/String; = "checkPackageCache"

.field private static final blacklist CHECK_PACKAGE_CACHING_SIZE:I = 0x200

.field private static final blacklist COLLECT_ASYNC:I = 0x3

.field private static final blacklist COLLECT_SELF:I = 0x1

.field private static final blacklist COLLECT_SYNC:I = 0x2

.field private static final blacklist DONT_COLLECT:I = 0x0

.field public static final blacklist FILTER_BY_ATTRIBUTION_TAG:I = 0x4

.field public static final blacklist FILTER_BY_OP_NAMES:I = 0x8

.field public static final blacklist FILTER_BY_PACKAGE_NAME:I = 0x2

.field public static final blacklist FILTER_BY_UID:I = 0x1

.field private static final blacklist FLAGS_MASK:I = -0x1

.field private static final blacklist FULL_LOG:Ljava/lang/String; = "privacy_attribution_tag_full_log_enabled"

.field public static final blacklist HISTORICAL_MODE_DISABLED:I = 0x0

.field public static final blacklist HISTORICAL_MODE_ENABLED_ACTIVE:I = 0x1

.field public static final blacklist HISTORICAL_MODE_ENABLED_PASSIVE:I = 0x2

.field public static final whitelist HISTORY_FLAGS_ALL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HISTORY_FLAG_AGGREGATE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HISTORY_FLAG_DISCRETE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HISTORY_FLAG_GET_ATTRIBUTION_CHAINS:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_BG_STATE_SETTLE_TIME:Ljava/lang/String; = "bg_state_settle_time"

.field public static final blacklist KEY_FG_SERVICE_STATE_SETTLE_TIME:Ljava/lang/String; = "fg_service_state_settle_time"

.field public static final blacklist KEY_HISTORICAL_OPS:Ljava/lang/String; = "historical_ops"

.field public static final blacklist KEY_TOP_STATE_SETTLE_TIME:Ljava/lang/String; = "top_state_settle_time"

.field public static final blacklist MAX_PRIORITY_UID_STATE:I = 0x64

.field private static final blacklist MAX_UNFORWARDED_OPS:I = 0xa

.field public static final blacklist MIN_PRIORITY_UID_STATE:I = 0x2bc

.field public static final whitelist MODE_ALLOWED:I = 0x0

.field public static final whitelist MODE_DEFAULT:I = 0x3

.field public static final whitelist MODE_ERRORED:I = 0x2

.field public static final whitelist MODE_FOREGROUND:I = 0x4

.field public static final whitelist MODE_IGNORED:I = 0x1

.field public static final greylist-max-o MODE_NAMES:[Ljava/lang/String;

.field private static final blacklist NOTE_OP_BATCHING_DELAY_MILLIS:I = 0x3e8

.field public static final blacklist NOTE_OP_COLLECTION_ENABLED:Z = false

.field public static final whitelist OPSTR_ACCEPT_HANDOVER:Ljava/lang/String; = "android:accept_handover"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ACCESS_ACCESSIBILITY:Ljava/lang/String; = "android:access_accessibility"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_ACCESS_LOCAL_NETWORK:Ljava/lang/String; = "android:access_local_network"

.field public static final blacklist OPSTR_ACCESS_MEDIA_LOCATION:Ljava/lang/String; = "android:access_media_location"

.field public static final whitelist OPSTR_ACCESS_NOTIFICATIONS:Ljava/lang/String; = "android:access_notifications"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ACCESS_RESTRICTED_SETTINGS:Ljava/lang/String; = "android:access_restricted_settings"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ACTIVATE_PLATFORM_VPN:Ljava/lang/String; = "android:activate_platform_vpn"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_ACTIVITY_RECOGNITION:Ljava/lang/String; = "android:activity_recognition"

.field public static final blacklist OPSTR_ACTIVITY_RECOGNITION_SOURCE:Ljava/lang/String; = "android:activity_recognition_source"

.field public static final whitelist OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field public static final whitelist OPSTR_ANSWER_PHONE_CALLS:Ljava/lang/String; = "android:answer_phone_calls"

.field public static final blacklist OPSTR_ARCHIVE_ICON_OVERLAY:Ljava/lang/String; = "android:archive_icon_overlay"

.field public static final whitelist OPSTR_ASSIST_SCREENSHOT:Ljava/lang/String; = "android:assist_screenshot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ASSIST_STRUCTURE:Ljava/lang/String; = "android:assist_structure"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_ACCESSIBILITY_VOLUME:Ljava/lang/String; = "android:audio_accessibility_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_ALARM_VOLUME:Ljava/lang/String; = "android:audio_alarm_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_BLUETOOTH_VOLUME:Ljava/lang/String; = "android:audio_bluetooth_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_MASTER_VOLUME:Ljava/lang/String; = "android:audio_master_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_MEDIA_VOLUME:Ljava/lang/String; = "android:audio_media_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_NOTIFICATION_VOLUME:Ljava/lang/String; = "android:audio_notification_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_RING_VOLUME:Ljava/lang/String; = "android:audio_ring_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_VOICE_VOLUME:Ljava/lang/String; = "android:audio_voice_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUTO_REVOKE_MANAGED_BY_INSTALLER:Ljava/lang/String; = "android:auto_revoke_managed_by_installer"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUTO_REVOKE_PERMISSIONS_IF_UNUSED:Ljava/lang/String; = "android:auto_revoke_permissions_if_unused"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_BIND_ACCESSIBILITY_SERVICE:Ljava/lang/String; = "android:bind_accessibility_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_BLUETOOTH_ADVERTISE:Ljava/lang/String; = "android:bluetooth_advertise"

.field public static final blacklist OPSTR_BLUETOOTH_CONNECT:Ljava/lang/String; = "android:bluetooth_connect"

.field public static final greylist-max-o OPSTR_BLUETOOTH_SCAN:Ljava/lang/String; = "android:bluetooth_scan"

.field public static final whitelist OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field public static final whitelist OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final whitelist OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final blacklist OPSTR_CAMERA_SANDBOXED:Ljava/lang/String; = "android:camera_sandboxed"

.field public static final whitelist OPSTR_CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD:Ljava/lang/String; = "android:capture_consentless_bugreport_on_userdebug_build"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_CHANGE_WIFI_STATE:Ljava/lang/String; = "android:change_wifi_state"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final blacklist OPSTR_COARSE_LOCATION_SOURCE:Ljava/lang/String; = "android:coarse_location_source"

.field public static final blacklist OPSTR_COMPUTER_CONTROL:Ljava/lang/String; = "android:computer_control"

.field public static final blacklist OPSTR_CONTROL_AUDIO:Ljava/lang/String; = "android:control_audio"

.field public static final blacklist OPSTR_CONTROL_AUDIO_PARTIAL:Ljava/lang/String; = "android:control_audio_partial"

.field public static final whitelist OPSTR_CREATE_ACCESSIBILITY_OVERLAY:Ljava/lang/String; = "android:create_accessibility_overlay"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_DEPRECATED_2:Ljava/lang/String; = "android:deprecated_2"

.field public static final blacklist OPSTR_DEPRECATED_3:Ljava/lang/String; = "android:deprecated_3"

.field public static final blacklist OPSTR_DEPRECATED_4:Ljava/lang/String; = "android:deprecated_4"

.field public static final whitelist OPSTR_EMERGENCY_LOCATION:Ljava/lang/String; = "android:emergency_location"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ENABLE_MOBILE_DATA_BY_USER:Ljava/lang/String; = "android:enable_mobile_data_by_user"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ESTABLISH_VPN_MANAGER:Ljava/lang/String; = "android:establish_vpn_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ESTABLISH_VPN_SERVICE:Ljava/lang/String; = "android:establish_vpn_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_EYE_TRACKING_COARSE:Ljava/lang/String; = "android:eye_tracking_coarse"

.field public static final blacklist OPSTR_EYE_TRACKING_FINE:Ljava/lang/String; = "android:eye_tracking_fine"

.field public static final blacklist OPSTR_FACE_TRACKING:Ljava/lang/String; = "android:face_tracking"

.field public static final whitelist OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final blacklist OPSTR_FINE_LOCATION_SOURCE:Ljava/lang/String; = "android:fine_location_source"

.field public static final blacklist OPSTR_FOREGROUND_SERVICE_SPECIAL_USE:Ljava/lang/String; = "android:foreground_service_special_use"

.field public static final whitelist OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final whitelist OPSTR_GPS:Ljava/lang/String; = "android:gps"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_HAND_TRACKING:Ljava/lang/String; = "android:hand_tracking"

.field public static final blacklist OPSTR_HEAD_TRACKING:Ljava/lang/String; = "android:head_tracking"

.field public static final whitelist OPSTR_INSTANT_APP_START_FOREGROUND:Ljava/lang/String; = "android:instant_app_start_foreground"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_INTERACT_ACROSS_PROFILES:Ljava/lang/String; = "android:interact_across_profiles"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_LEGACY_STORAGE:Ljava/lang/String; = "android:legacy_storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_LOADER_USAGE_STATS:Ljava/lang/String; = "android:loader_usage_stats"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_MANAGE_CREDENTIALS:Ljava/lang/String; = "android:manage_credentials"

.field public static final whitelist OPSTR_MANAGE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:manage_external_storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_MANAGE_IPSEC_TUNNELS:Ljava/lang/String; = "android:manage_ipsec_tunnels"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_MANAGE_MEDIA:Ljava/lang/String; = "android:manage_media"

.field public static final whitelist OPSTR_MANAGE_ONGOING_CALLS:Ljava/lang/String; = "android:manage_ongoing_calls"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_MEDIA_ROUTING_CONTROL:Ljava/lang/String; = "android:media_routing_control"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final whitelist OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final whitelist OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final whitelist OPSTR_MUTE_MICROPHONE:Ljava/lang/String; = "android:mute_microphone"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_NEARBY_WIFI_DEVICES:Ljava/lang/String; = "android:nearby_wifi_devices"

.field public static final whitelist OPSTR_NEIGHBORING_CELLS:Ljava/lang/String; = "android:neighboring_cells"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_NO_ISOLATED_STORAGE:Ljava/lang/String; = "android:no_isolated_storage"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist OPSTR_PHONE_CALL_CAMERA:Ljava/lang/String; = "android:phone_call_camera"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_PHONE_CALL_MICROPHONE:Ljava/lang/String; = "android:phone_call_microphone"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_PICTURE_IN_PICTURE:Ljava/lang/String; = "android:picture_in_picture"

.field public static final whitelist OPSTR_PLAY_AUDIO:Ljava/lang/String; = "android:play_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_POST_NOTIFICATION:Ljava/lang/String; = "android:post_notification"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_POST_PROMOTED_NOTIFICATIONS:Ljava/lang/String; = "android:post_promoted_notifications"

.field public static final whitelist OPSTR_PROCESS_OUTGOING_CALLS:Ljava/lang/String; = "android:process_outgoing_calls"

.field public static final whitelist OPSTR_PROJECT_MEDIA:Ljava/lang/String; = "android:project_media"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_QUERY_ALL_PACKAGES:Ljava/lang/String; = "android:query_all_packages"

.field public static final whitelist OPSTR_RANGING:Ljava/lang/String; = "android:ranging"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RAPID_CLEAR_NOTIFICATIONS_BY_LISTENER:Ljava/lang/String; = "android:rapid_clear_notifications_by_listener"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final whitelist OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final whitelist OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final blacklist OPSTR_READ_CELL_IDENTITY:Ljava/lang/String; = "android:read_cell_identity"

.field public static final blacklist OPSTR_READ_CELL_INFO:Ljava/lang/String; = "android:read_cell_info"

.field public static final whitelist OPSTR_READ_CLIPBOARD:Ljava/lang/String; = "android:read_clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final blacklist OPSTR_READ_DEVICE_IDENTIFIERS:Ljava/lang/String; = "android:read_device_identifiers"

.field public static final whitelist OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field public static final whitelist OPSTR_READ_HEART_RATE:Ljava/lang/String; = "android:read_heart_rate"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_ICC_SMS:Ljava/lang/String; = "android:read_icc_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_MEDIA_AUDIO:Ljava/lang/String; = "android:read_media_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_MEDIA_IMAGES:Ljava/lang/String; = "android:read_media_images"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_MEDIA_VIDEO:Ljava/lang/String; = "android:read_media_video"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_MEDIA_VISUAL_USER_SELECTED:Ljava/lang/String; = "android:read_media_visual_user_selected"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_READ_OTP_SMS:Ljava/lang/String; = "android:read_otp_sms"

.field public static final whitelist OPSTR_READ_OXYGEN_SATURATION:Ljava/lang/String; = "android:read_oxygen_saturation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_PHONE_NUMBERS:Ljava/lang/String; = "android:read_phone_numbers"

.field public static final whitelist OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final whitelist OPSTR_READ_SKIN_TEMPERATURE:Ljava/lang/String; = "android:read_skin_temperature"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final blacklist OPSTR_READ_SYSTEM_GRAMMATICAL_GENDER:Ljava/lang/String; = "android:read_system_grammatical_gender"

.field public static final whitelist OPSTR_READ_WRITE_HEALTH_DATA:Ljava/lang/String; = "android:read_write_health_data"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RECEIVE_AMBIENT_TRIGGER_AUDIO:Ljava/lang/String; = "android:receive_ambient_trigger_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RECEIVE_EMERGENCY_BROADCAST:Ljava/lang/String; = "android:receive_emergency_broadcast"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RECEIVE_EXPLICIT_USER_INTERACTION_AUDIO:Ljava/lang/String; = "android:receive_explicit_user_interaction_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final blacklist OPSTR_RECEIVE_SANDBOX_TRIGGER_AUDIO:Ljava/lang/String; = "android:receive_sandbox_trigger_audio"

.field public static final blacklist OPSTR_RECEIVE_SENSITIVE_NOTIFICATIONS:Ljava/lang/String; = "android:receive_sensitive_notifications"

.field public static final whitelist OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final whitelist OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final whitelist OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field public static final blacklist OPSTR_RECORD_AUDIO_HOTWORD:Ljava/lang/String; = "android:record_audio_hotword"

.field public static final blacklist OPSTR_RECORD_AUDIO_OUTPUT:Ljava/lang/String; = "android:record_audio_output"

.field public static final blacklist OPSTR_RECORD_AUDIO_SANDBOXED:Ljava/lang/String; = "android:record_audio_sandboxed"

.field public static final blacklist OPSTR_RECORD_INCOMING_PHONE_AUDIO:Ljava/lang/String; = "android:record_incoming_phone_audio"

.field public static final whitelist OPSTR_REQUEST_DELETE_PACKAGES:Ljava/lang/String; = "android:request_delete_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_REQUEST_INSTALL_PACKAGES:Ljava/lang/String; = "android:request_install_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_RESERVED_FOR_TESTING:Ljava/lang/String; = "android:reserved_for_testing"

.field public static final whitelist OPSTR_RUN_ANY_IN_BACKGROUND:Ljava/lang/String; = "android:run_any_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RUN_IN_BACKGROUND:Ljava/lang/String; = "android:run_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_RUN_USER_INITIATED_JOBS:Ljava/lang/String; = "android:run_user_initiated_jobs"

.field public static final blacklist OPSTR_SCENE_UNDERSTANDING_COARSE:Ljava/lang/String; = "android:scene_understanding_coarse"

.field public static final blacklist OPSTR_SCENE_UNDERSTANDING_FINE:Ljava/lang/String; = "android:scene_understanding_fine"

.field public static final blacklist OPSTR_SCHEDULE_EXACT_ALARM:Ljava/lang/String; = "android:schedule_exact_alarm"

.field public static final whitelist OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final blacklist OPSTR_SMS_FINANCIAL_TRANSACTIONS:Ljava/lang/String; = "android:sms_financial_transactions"

.field public static final whitelist OPSTR_START_FOREGROUND:Ljava/lang/String; = "android:start_foreground"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field public static final blacklist OPSTR_SYSTEM_APPLICATION_OVERLAY:Ljava/lang/String; = "android:system_application_overlay"

.field public static final blacklist OPSTR_SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION:Ljava/lang/String; = "android:system_exempt_from_activity_bg_start_restriction"

.field public static final blacklist OPSTR_SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS:Ljava/lang/String; = "android:system_exempt_from_dismissible_notifications"

.field public static final whitelist OPSTR_SYSTEM_EXEMPT_FROM_HIBERNATION:Ljava/lang/String; = "android:system_exempt_from_hibernation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_SYSTEM_EXEMPT_FROM_POWER_RESTRICTIONS:Ljava/lang/String; = "android:system_exempt_from_power_restrictions"

.field public static final blacklist OPSTR_SYSTEM_EXEMPT_FROM_SUSPENSION:Ljava/lang/String; = "android:system_exempt_from_suspension"

.field public static final whitelist OPSTR_TAKE_AUDIO_FOCUS:Ljava/lang/String; = "android:take_audio_focus"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_TAKE_MEDIA_BUTTONS:Ljava/lang/String; = "android:take_media_buttons"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_TOAST_WINDOW:Ljava/lang/String; = "android:toast_window"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_TURN_SCREEN_ON:Ljava/lang/String; = "android:turn_screen_on"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_UNARCHIVAL_CONFIRMATION:Ljava/lang/String; = "android:unarchival_support"

.field public static final blacklist OPSTR_USE_BIOMETRIC:Ljava/lang/String; = "android:use_biometric"

.field public static final whitelist OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final blacklist OPSTR_USE_FULL_SCREEN_INTENT:Ljava/lang/String; = "android:use_full_screen_intent"

.field public static final blacklist OPSTR_USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER:Ljava/lang/String; = "android:use_icc_auth_with_device_identifier"

.field public static final whitelist OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field public static final blacklist OPSTR_UWB_RANGING:Ljava/lang/String; = "android:uwb_ranging"

.field public static final whitelist OPSTR_VIBRATE:Ljava/lang/String; = "android:vibrate"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WAKE_LOCK:Ljava/lang/String; = "android:wake_lock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WIFI_SCAN:Ljava/lang/String; = "android:wifi_scan"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final whitelist OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final whitelist OPSTR_WRITE_CLIPBOARD:Ljava/lang/String; = "android:write_clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final whitelist OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field public static final whitelist OPSTR_WRITE_ICC_SMS:Ljava/lang/String; = "android:write_icc_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_MEDIA_AUDIO:Ljava/lang/String; = "android:write_media_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_MEDIA_IMAGES:Ljava/lang/String; = "android:write_media_images"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_MEDIA_VIDEO:Ljava/lang/String; = "android:write_media_video"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final whitelist OPSTR_WRITE_SMS:Ljava/lang/String; = "android:write_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_WRITE_SYSTEM_PREFERENCES:Ljava/lang/String; = "android:write_system_preferences"

.field public static final whitelist OPSTR_WRITE_WALLPAPER:Ljava/lang/String; = "android:write_wallpaper"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

.field public static final greylist OP_ACCEPT_HANDOVER:I = 0x4a

.field public static final blacklist OP_ACCESS_ACCESSIBILITY:I = 0x58

.field public static final blacklist OP_ACCESS_LOCAL_NETWORK:I = 0xa9

.field public static final blacklist OP_ACCESS_MEDIA_LOCATION:I = 0x5a

.field public static final greylist OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final blacklist OP_ACCESS_RESTRICTED_SETTINGS:I = 0x77

.field public static final blacklist OP_ACTIVATE_PLATFORM_VPN:I = 0x5e

.field public static final greylist OP_ACTIVATE_VPN:I = 0x2f

.field public static final blacklist OP_ACTIVITY_RECOGNITION:I = 0x4f

.field public static final blacklist OP_ACTIVITY_RECOGNITION_SOURCE:I = 0x71

.field public static final greylist OP_ADD_VOICEMAIL:I = 0x34

.field public static final greylist OP_ANSWER_PHONE_CALLS:I = 0x45

.field public static final blacklist OP_ARCHIVE_ICON_OVERLAY:I = 0x91

.field public static final greylist OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final greylist OP_ASSIST_STRUCTURE:I = 0x31

.field public static final greylist OP_AUDIO_ACCESSIBILITY_VOLUME:I = 0x40

.field public static final greylist OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final greylist OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final greylist OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final greylist OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final greylist OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final greylist OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final greylist OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final blacklist OP_AUTO_REVOKE_MANAGED_BY_INSTALLER:I = 0x62

.field public static final blacklist OP_AUTO_REVOKE_PERMISSIONS_IF_UNUSED:I = 0x61

.field public static final greylist OP_BIND_ACCESSIBILITY_SERVICE:I = 0x49

.field public static final blacklist OP_BLUETOOTH_ADVERTISE:I = 0x72

.field public static final blacklist OP_BLUETOOTH_CONNECT:I = 0x6f

.field public static final greylist OP_BLUETOOTH_SCAN:I = 0x4d

.field public static final greylist OP_BODY_SENSORS:I = 0x38

.field public static final greylist OP_CALL_PHONE:I = 0xd

.field public static final greylist OP_CAMERA:I = 0x1a

.field public static final blacklist OP_CAMERA_SANDBOXED:I = 0x86

.field public static final blacklist OP_CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD:I = 0x83

.field public static final greylist OP_CHANGE_WIFI_STATE:I = 0x47

.field public static final greylist OP_COARSE_LOCATION:I = 0x0

.field public static final blacklist OP_COARSE_LOCATION_SOURCE:I = 0x6d

.field public static final blacklist OP_COMPUTER_CONTROL:I = 0xa7

.field public static final blacklist OP_CONTROL_AUDIO:I = 0x9a

.field public static final blacklist OP_CONTROL_AUDIO_PARTIAL:I = 0x9b

.field public static final blacklist OP_CREATE_ACCESSIBILITY_OVERLAY:I = 0x8a

.field private static final blacklist OP_DEPRECATED_1:I = 0x60

.field private static final blacklist OP_DEPRECATED_2:I = 0x84

.field private static final blacklist OP_DEPRECATED_3:I = 0x89

.field private static final blacklist OP_DEPRECATED_4:I = 0x90

.field public static final blacklist OP_EMERGENCY_LOCATION:I = 0x93

.field public static final blacklist OP_ENABLE_MOBILE_DATA_BY_USER:I = 0x8c

.field public static final blacklist OP_ESTABLISH_VPN_MANAGER:I = 0x76

.field public static final blacklist OP_ESTABLISH_VPN_SERVICE:I = 0x75

.field public static final blacklist OP_EYE_TRACKING_COARSE:I = 0x9c

.field public static final blacklist OP_EYE_TRACKING_FINE:I = 0x9d

.field public static final blacklist OP_FACE_TRACKING:I = 0x9e

.field public static final greylist OP_FINE_LOCATION:I = 0x1

.field public static final blacklist OP_FINE_LOCATION_SOURCE:I = 0x6c

.field public static final whitelist OP_FLAGS_ALL:I = 0x1f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAGS_ALL_TRUSTED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_SELF:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_TRUSTED_PROXIED:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_TRUSTED_PROXY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_UNTRUSTED_PROXIED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_UNTRUSTED_PROXY:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OP_FOREGROUND_SERVICE_SPECIAL_USE:I = 0x7f

.field public static final greylist OP_GET_ACCOUNTS:I = 0x3e

.field public static final greylist OP_GET_USAGE_STATS:I = 0x2b

.field public static final greylist OP_GPS:I = 0x2

.field public static final blacklist OP_HAND_TRACKING:I = 0x9f

.field public static final blacklist OP_HEAD_TRACKING:I = 0xa0

.field public static final greylist OP_INSTANT_APP_START_FOREGROUND:I = 0x44

.field public static final blacklist OP_INTERACT_ACROSS_PROFILES:I = 0x5d

.field public static final blacklist OP_LEGACY_STORAGE:I = 0x57

.field public static final blacklist OP_LOADER_USAGE_STATS:I = 0x5f

.field public static final blacklist OP_MANAGE_CREDENTIALS:I = 0x68

.field public static final blacklist OP_MANAGE_EXTERNAL_STORAGE:I = 0x5c

.field public static final greylist OP_MANAGE_IPSEC_TUNNELS:I = 0x4b

.field public static final blacklist OP_MANAGE_MEDIA:I = 0x6e

.field public static final blacklist OP_MANAGE_ONGOING_CALLS:I = 0x67

.field public static final blacklist OP_MEDIA_ROUTING_CONTROL:I = 0x8b

.field public static final greylist OP_MOCK_LOCATION:I = 0x3a

.field public static final greylist OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final greylist OP_MONITOR_LOCATION:I = 0x29

.field public static final greylist OP_MUTE_MICROPHONE:I = 0x2c

.field public static final blacklist OP_NEARBY_WIFI_DEVICES:I = 0x74

.field public static final greylist OP_NEIGHBORING_CELLS:I = 0xc

.field public static final greylist-max-r OP_NONE:I = -0x1

.field private static final blacklist OP_NOTED_CALLBACK_FLAG_ALL:I = 0x1

.field public static final whitelist OP_NOTED_CALLBACK_FLAG_IGNORE_ASYNC:I = 0x1

.field public static final blacklist OP_NO_ISOLATED_STORAGE:I = 0x63

.field public static final blacklist OP_PHONE_CALL_CAMERA:I = 0x65

.field public static final blacklist OP_PHONE_CALL_MICROPHONE:I = 0x64

.field public static final greylist OP_PICTURE_IN_PICTURE:I = 0x43

.field public static final greylist OP_PLAY_AUDIO:I = 0x1c

.field public static final greylist OP_POST_NOTIFICATION:I = 0xb

.field public static final blacklist OP_POST_PROMOTED_NOTIFICATIONS:I = 0xa3

.field public static final greylist OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final greylist OP_PROJECT_MEDIA:I = 0x2e

.field public static final blacklist OP_QUERY_ALL_PACKAGES:I = 0x5b

.field public static final blacklist OP_RANGING:I = 0x97

.field public static final blacklist OP_RAPID_CLEAR_NOTIFICATIONS_BY_LISTENER:I = 0x8e

.field public static final greylist OP_READ_CALENDAR:I = 0x8

.field public static final greylist OP_READ_CALL_LOG:I = 0x6

.field public static final greylist OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final blacklist OP_READ_CELL_IDENTITY:I = 0xa5

.field public static final blacklist OP_READ_CELL_INFO:I = 0xa6

.field public static final greylist OP_READ_CLIPBOARD:I = 0x1d

.field public static final greylist OP_READ_CONTACTS:I = 0x4

.field public static final blacklist OP_READ_DEVICE_IDENTIFIERS:I = 0x59

.field public static final greylist OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final blacklist OP_READ_HEART_RATE:I = 0x95

.field public static final greylist OP_READ_ICC_SMS:I = 0x15

.field public static final blacklist OP_READ_MEDIA_AUDIO:I = 0x51

.field public static final blacklist OP_READ_MEDIA_IMAGES:I = 0x55

.field public static final blacklist OP_READ_MEDIA_VIDEO:I = 0x53

.field public static final blacklist OP_READ_MEDIA_VISUAL_USER_SELECTED:I = 0x7b

.field public static final blacklist OP_READ_OTP_SMS:I = 0xa8

.field public static final blacklist OP_READ_OXYGEN_SATURATION:I = 0x98

.field public static final greylist OP_READ_PHONE_NUMBERS:I = 0x41

.field public static final greylist OP_READ_PHONE_STATE:I = 0x33

.field public static final blacklist OP_READ_SKIN_TEMPERATURE:I = 0x96

.field public static final greylist OP_READ_SMS:I = 0xe

.field public static final blacklist OP_READ_SYSTEM_GRAMMATICAL_GENDER:I = 0x8f

.field public static final blacklist OP_READ_WRITE_HEALTH_DATA:I = 0x7e

.field public static final blacklist OP_RECEIVE_AMBIENT_TRIGGER_AUDIO:I = 0x78

.field public static final greylist OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final blacklist OP_RECEIVE_EXPLICIT_USER_INTERACTION_AUDIO:I = 0x79

.field public static final greylist OP_RECEIVE_MMS:I = 0x12

.field public static final blacklist OP_RECEIVE_SANDBOX_TRIGGER_AUDIO:I = 0x88

.field public static final blacklist OP_RECEIVE_SENSITIVE_NOTIFICATIONS:I = 0x94

.field public static final greylist OP_RECEIVE_SMS:I = 0x10

.field public static final greylist OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final greylist OP_RECORD_AUDIO:I = 0x1b

.field public static final blacklist OP_RECORD_AUDIO_HOTWORD:I = 0x66

.field public static final blacklist OP_RECORD_AUDIO_OUTPUT:I = 0x6a

.field public static final blacklist OP_RECORD_AUDIO_SANDBOXED:I = 0x87

.field public static final blacklist OP_RECORD_INCOMING_PHONE_AUDIO:I = 0x73

.field public static final greylist OP_REQUEST_DELETE_PACKAGES:I = 0x48

.field public static final greylist OP_REQUEST_INSTALL_PACKAGES:I = 0x42

.field public static final blacklist OP_RESERVED_FOR_TESTING:I = 0x8d

.field public static final greylist OP_RUN_ANY_IN_BACKGROUND:I = 0x46

.field public static final greylist OP_RUN_IN_BACKGROUND:I = 0x3f

.field public static final blacklist OP_RUN_USER_INITIATED_JOBS:I = 0x7a

.field public static final blacklist OP_SCENE_UNDERSTANDING_COARSE:I = 0xa1

.field public static final blacklist OP_SCENE_UNDERSTANDING_FINE:I = 0xa2

.field public static final blacklist OP_SCHEDULE_EXACT_ALARM:I = 0x6b

.field public static final greylist OP_SEND_SMS:I = 0x14

.field public static final blacklist OP_SMS_FINANCIAL_TRANSACTIONS:I = 0x50

.field public static final greylist OP_START_FOREGROUND:I = 0x4c

.field public static final greylist OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final blacklist OP_SYSTEM_APPLICATION_OVERLAY:I = 0xa4

.field public static final blacklist OP_SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION:I = 0x82

.field public static final blacklist OP_SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS:I = 0x7d

.field public static final blacklist OP_SYSTEM_EXEMPT_FROM_HIBERNATION:I = 0x81

.field public static final blacklist OP_SYSTEM_EXEMPT_FROM_POWER_RESTRICTIONS:I = 0x80

.field public static final blacklist OP_SYSTEM_EXEMPT_FROM_SUSPENSION:I = 0x7c

.field public static final greylist OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final greylist OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final greylist OP_TOAST_WINDOW:I = 0x2d

.field public static final greylist OP_TURN_SCREEN_ON:I = 0x3d

.field public static final blacklist OP_UNARCHIVAL_CONFIRMATION:I = 0x92

.field public static final blacklist OP_USE_BIOMETRIC:I = 0x4e

.field public static final greylist OP_USE_FINGERPRINT:I = 0x37

.field public static final blacklist OP_USE_FULL_SCREEN_INTENT:I = 0x85

.field public static final blacklist OP_USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER:I = 0x69

.field public static final greylist OP_USE_SIP:I = 0x35

.field public static final blacklist OP_UWB_RANGING:I = 0x70

.field public static final greylist OP_VIBRATE:I = 0x3

.field public static final greylist OP_WAKE_LOCK:I = 0x28

.field public static final greylist OP_WIFI_SCAN:I = 0xa

.field public static final greylist OP_WRITE_CALENDAR:I = 0x9

.field public static final greylist OP_WRITE_CALL_LOG:I = 0x7

.field public static final greylist OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final greylist OP_WRITE_CONTACTS:I = 0x5

.field public static final greylist OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final greylist OP_WRITE_ICC_SMS:I = 0x16

.field public static final blacklist OP_WRITE_MEDIA_AUDIO:I = 0x52

.field public static final blacklist OP_WRITE_MEDIA_IMAGES:I = 0x56

.field public static final blacklist OP_WRITE_MEDIA_VIDEO:I = 0x54

.field public static final greylist OP_WRITE_SETTINGS:I = 0x17

.field public static final greylist OP_WRITE_SMS:I = 0xf

.field public static final blacklist OP_WRITE_SYSTEM_PREFERENCES:I = 0x99

.field public static final greylist OP_WRITE_WALLPAPER:I = 0x30

.field private static final blacklist RUNTIME_PERMISSION_OPS:[I

.field public static final blacklist SAMPLING_STRATEGY_BOOT_TIME_SAMPLING:I = 0x3

.field public static final blacklist SAMPLING_STRATEGY_DEFAULT:I = 0x0

.field public static final blacklist SAMPLING_STRATEGY_RARELY_USED:I = 0x2

.field public static final blacklist SAMPLING_STRATEGY_UNIFORM:I = 0x1

.field public static final blacklist SAMPLING_STRATEGY_UNIFORM_OPS:I = 0x4

.field public static final blacklist SECURITY_EXCEPTION_ON_INVALID_ATTRIBUTION_TAG_CHANGE:J = 0x901b1a2L

.field private static final blacklist SHOULD_COLLECT_NOTE_OP:B = 0x2t

.field private static final blacklist SHOULD_COLLECT_NOTE_OP_NOT_INITIALIZED:B = 0x0t

.field private static final blacklist SHOULD_NOT_COLLECT_NOTE_OP:B = 0x1t

.field public static final blacklist UID_STATES:[I

.field public static final whitelist UID_STATE_BACKGROUND:I = 0x258
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_CACHED:I = 0x2bc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_FOREGROUND:I = 0x1f4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_FOREGROUND_SERVICE:I = 0x190
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_FOREGROUND_SERVICE_LOCATION:I = 0x12c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist UID_STATE_MAX_LAST_NON_RESTRICTED:I = 0x1f4

.field public static final blacklist UID_STATE_NONEXISTENT:I = 0x7fffffff

.field private static final blacklist UID_STATE_OFFSET:I = 0x1f

.field public static final whitelist UID_STATE_PERSISTENT:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_TOP:I = 0xc8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WATCH_FOREGROUND_CHANGES:I = 0x1

.field public static final greylist-max-r _NUM_OP:I = 0xaa

.field static final blacklist sAppOpInfos:[Landroid/app/AppOpInfo;

.field private static final blacklist sAppOpModeCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/app/AppOpsManager$AppOpModeQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sAppOpsToNote:[B

.field private static final blacklist sBatchedNoteOpLock:Ljava/lang/Object;

.field private static final blacklist sBinderThreadCallingUid:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCheckPackageCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/app/AppOpsManager$CheckPackageQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCheckPackageQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/app/AppOpsManager$CheckPackageQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sClientId:Landroid/os/IBinder;

.field private static blacklist sConfig:Lcom/android/internal/app/MessageSamplingConfig;

.field private static blacklist sFullLog:Ljava/lang/Boolean;

.field private static final blacklist sGetAppOpModeQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/app/AppOpsManager$AppOpModeQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sHandlerThread:Landroid/os/HandlerThread;

.field private static blacklist sIgnoreAsyncNotedCallback:Z

.field private static blacklist sIsBatchedNoteOpCallScheduled:Z

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

.field private static blacklist sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

.field private static greylist-max-o sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPendingNotedOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$NotedOp;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sService:Lcom/android/internal/app/IAppOpsService;

.field private static blacklist sUnforwardedOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpActiveChangedListener;",
            "Lcom/android/internal/app/IAppOpsActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNotedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpNotedListener;",
            "Lcom/android/internal/app/IAppOpsNotedCallback;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mService:Lcom/android/internal/app/IAppOpsService;

.field private final blacklist mStartedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpStartedListener;",
            "Lcom/android/internal/app/IAppOpsStartedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsageHelper:Landroid/permission/PermissionUsageHelper;


# direct methods
.method public static synthetic blacklist $r8$lambda$ZCdUg5mlmWB8DXCRpS1C_JBbS7Y(Landroid/app/AppOpsManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager;->lambda$batchDuplicateNoteOps$5()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsConfig()Lcom/android/internal/app/MessageSamplingConfig;
    .registers 1

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsConfig(Lcom/android/internal/app/MessageSamplingConfig;)V
    .registers 1

    sput-object p0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .registers 2

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->collectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdeduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Landroid/app/AppOpsManager;->deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->equalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetFormattedStackTrace()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->getLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService()Lcom/android/internal/app/IAppOpsService;
    .registers 1

    invoke-static {}, Landroid/app/AppOpsManager;->getService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisCollectingStackTraces()Z
    .registers 1

    invoke-static {}, Landroid/app/AppOpsManager;->isCollectingStackTraces()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->listForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;
    .registers 1

    invoke-static {p0}, Landroid/app/AppOpsManager;->mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Landroid/app/AppOpsManager;->readDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .registers 1

    invoke-static {p0}, Landroid/app/AppOpsManager;->readLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->sumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/AppOpsManager;->writeDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->writeLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 65

    .line 231
    const/4 v0, 0x0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 262
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    .line 265
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    .line 277
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sBatchedNoteOpLock:Ljava/lang/Object;

    .line 279
    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/AppOpsManager;->sIsBatchedNoteOpCallScheduled:Z

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    .line 307
    new-instance v2, Landroid/app/AppOpsManager$1;

    invoke-direct {v2}, Landroid/app/AppOpsManager$1;-><init>()V

    sput-object v2, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 495
    const-string v2, "default"

    const-string v3, "foreground"

    const-string v4, "allow"

    const-string v5, "ignore"

    const-string v6, "deny"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    .line 625
    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_159e

    sput-object v3, Landroid/app/AppOpsManager;->UID_STATES:[I

    .line 2764
    const/16 v3, 0xaa

    new-array v4, v3, [B

    sput-object v4, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    .line 2766
    nop

    .line 2819
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->rangingPermissionEnabled()Z

    move-result v4

    const/16 v5, 0x97

    const/4 v6, -0x1

    if-eqz v4, :cond_54

    move/from16 v46, v5

    goto :goto_56

    :cond_54
    move/from16 v46, v6

    .line 2820
    :goto_56
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->accessLocalNetworkPermissionEnabled()Z

    move-result v4

    const/16 v7, 0xa9

    if-eqz v4, :cond_61

    move/from16 v47, v7

    goto :goto_63

    :cond_61
    move/from16 v47, v6

    .line 2828
    :goto_63
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    const/16 v8, 0x9c

    if-eqz v4, :cond_6e

    move/from16 v52, v8

    goto :goto_70

    :cond_6e
    move/from16 v52, v6

    .line 2829
    :goto_70
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    const/16 v9, 0x9d

    if-eqz v4, :cond_7b

    move/from16 v53, v9

    goto :goto_7d

    :cond_7b
    move/from16 v53, v6

    .line 2830
    :goto_7d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    const/16 v10, 0x9e

    if-eqz v4, :cond_88

    move/from16 v54, v10

    goto :goto_8a

    :cond_88
    move/from16 v54, v6

    .line 2831
    :goto_8a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    const/16 v11, 0x9f

    if-eqz v4, :cond_95

    move/from16 v55, v11

    goto :goto_97

    :cond_95
    move/from16 v55, v6

    .line 2832
    :goto_97
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    const/16 v12, 0xa0

    if-eqz v4, :cond_a2

    move/from16 v56, v12

    goto :goto_a4

    :cond_a2
    move/from16 v56, v6

    .line 2833
    :goto_a4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    const/16 v13, 0xa1

    if-eqz v4, :cond_af

    move/from16 v57, v13

    goto :goto_b1

    :cond_af
    move/from16 v57, v6

    .line 2834
    :goto_b1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    if-eqz v4, :cond_bc

    const/16 v4, 0xa2

    move/from16 v58, v4

    goto :goto_be

    :cond_bc
    move/from16 v58, v6

    :goto_be
    move v4, v7

    const/4 v7, 0x4

    move v14, v8

    const/4 v8, 0x5

    move v15, v9

    const/16 v9, 0x3e

    move/from16 v16, v10

    const/16 v10, 0x8

    move/from16 v17, v11

    const/16 v11, 0x9

    move/from16 v18, v12

    const/16 v12, 0x14

    move/from16 v19, v13

    const/16 v13, 0x10

    move/from16 v20, v14

    const/16 v14, 0xe

    move/from16 v21, v15

    const/16 v15, 0x13

    move/from16 v22, v16

    const/16 v16, 0x12

    move/from16 v23, v17

    const/16 v17, 0x39

    move/from16 v24, v18

    const/16 v18, 0x3b

    move/from16 v25, v19

    const/16 v19, 0x3c

    move/from16 v26, v20

    const/16 v20, 0x5a

    move/from16 v27, v21

    const/16 v21, 0x0

    move/from16 v28, v22

    const/16 v22, 0x1

    move/from16 v29, v23

    const/16 v23, 0x33

    move/from16 v30, v24

    const/16 v24, 0x41

    move/from16 v31, v25

    const/16 v25, 0xd

    move/from16 v32, v26

    const/16 v26, 0x6

    move/from16 v33, v27

    const/16 v27, 0x7

    move/from16 v34, v28

    const/16 v28, 0x34

    move/from16 v35, v29

    const/16 v29, 0x35

    move/from16 v36, v30

    const/16 v30, 0x36

    move/from16 v37, v31

    const/16 v31, 0x45

    move/from16 v38, v32

    const/16 v32, 0x4a

    move/from16 v39, v33

    const/16 v33, 0x1b

    move/from16 v40, v34

    const/16 v34, 0x1a

    move/from16 v41, v35

    const/16 v35, 0x38

    move/from16 v42, v36

    const/16 v36, 0x4f

    move/from16 v43, v37

    const/16 v37, 0x51

    move/from16 v44, v38

    const/16 v38, 0x53

    move/from16 v45, v39

    const/16 v39, 0x55

    move/from16 v48, v40

    const/16 v40, 0x7b

    move/from16 v49, v41

    const/16 v41, 0x4d

    move/from16 v50, v42

    const/16 v42, 0x6f

    move/from16 v51, v43

    const/16 v43, 0x72

    move/from16 v59, v44

    const/16 v44, 0x70

    move/from16 v60, v45

    const/16 v45, 0x74

    move/from16 v61, v48

    const/16 v48, 0xb

    move/from16 v62, v49

    const/16 v49, 0x95

    move/from16 v63, v50

    const/16 v50, 0x96

    move/from16 v64, v51

    const/16 v51, 0x98

    move/from16 v0, v59

    move/from16 v4, v60

    filled-new-array/range {v7 .. v58}, [I

    move-result-object v7

    sput-object v7, Landroid/app/AppOpsManager;->RUNTIME_PERMISSION_OPS:[I

    .line 2841
    const/16 v7, 0xa

    new-array v7, v7, [I

    fill-array-data v7, :array_15b0

    sput-object v7, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_PACKAGE_OPS:[I

    .line 2858
    nop

    .line 2874
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->uiRichOngoing()Z

    move-result v7

    if-eqz v7, :cond_184

    .line 2875
    const/16 v7, 0xa3

    move/from16 v23, v7

    goto :goto_186

    :cond_184
    move/from16 v23, v6

    .line 2876
    :goto_186
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->recordingOverlay()Z

    move-result v7

    if-eqz v7, :cond_191

    .line 2877
    const/16 v7, 0xa4

    move/from16 v24, v7

    goto :goto_193

    :cond_191
    move/from16 v24, v6

    :goto_193
    const/16 v8, 0x5c

    const/16 v9, 0x5d

    const/16 v10, 0x67

    const/16 v11, 0x69

    const/16 v12, 0x6b

    const/16 v13, 0x6e

    const/16 v14, 0x3d

    const/16 v15, 0x7a

    const/16 v16, 0x7f

    const/16 v17, 0x83

    const/16 v18, 0x85

    const/16 v19, 0x88

    const/16 v20, 0x8b

    const/16 v21, 0x8f

    const/16 v22, 0x99

    filled-new-array/range {v8 .. v24}, [I

    move-result-object v7

    sput-object v7, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_UID_OPS:[I

    .line 2881
    new-array v7, v3, [Landroid/app/AppOpInfo;

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:coarse_location"

    const-string v10, "COARSE_LOCATION"

    invoke-direct {v8, v1, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2883
    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v8, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2884
    const-string/jumbo v9, "no_share_location"

    invoke-virtual {v8, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    new-instance v10, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v1, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2885
    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2886
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    aput-object v8, v7, v1

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:fine_location"

    const-string v11, "FINE_LOCATION"

    const/4 v12, 0x1

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2888
    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2889
    invoke-virtual {v8, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    new-instance v10, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v1, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2890
    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2891
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:gps"

    const-string v11, "GPS"

    const/4 v12, 0x2

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2893
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2894
    invoke-virtual {v8, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2895
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:vibrate"

    const-string v11, "VIBRATE"

    const/4 v12, 0x3

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2897
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    const-string v10, "android.permission.VIBRATE"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2898
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:read_contacts"

    const-string v11, "READ_CONTACTS"

    const/4 v12, 0x4

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2900
    const-string v10, "android.permission.READ_CONTACTS"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2901
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x4

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_contacts"

    const-string v11, "WRITE_CONTACTS"

    const/4 v12, 0x5

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2903
    const-string v10, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2904
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:read_call_log"

    const-string v11, "READ_CALL_LOG"

    const/4 v12, 0x6

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2906
    const-string v10, "android.permission.READ_CALL_LOG"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2907
    const-string/jumbo v10, "no_outgoing_calls"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2908
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x6

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_call_log"

    const-string v11, "WRITE_CALL_LOG"

    invoke-direct {v8, v2, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2910
    const-string v10, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2911
    const-string/jumbo v10, "no_outgoing_calls"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2912
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    aput-object v8, v7, v2

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_calendar"

    const-string v10, "READ_CALENDAR"

    const/16 v11, 0x8

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2914
    const-string v8, "android.permission.READ_CALENDAR"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2915
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:write_calendar"

    const-string v10, "WRITE_CALENDAR"

    const/16 v11, 0x9

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2917
    const-string v8, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2918
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x9

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:wifi_scan"

    const-string v10, "WIFI_SCAN"

    const/16 v11, 0xa

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2920
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2921
    const-string v8, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2922
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v8, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v10, 0x1

    invoke-direct {v8, v1, v10, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2923
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2924
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0xa

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:post_notification"

    const-string v10, "POST_NOTIFICATION"

    const/16 v11, 0xb

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2926
    const-string v8, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2927
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0xb

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:neighboring_cells"

    const-string v10, "NEIGHBORING_CELLS"

    const/16 v11, 0xc

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2929
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0xc

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:call_phone"

    const-string v10, "CALL_PHONE"

    const/16 v11, 0xd

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2931
    const/16 v8, 0xd

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const-string v8, "android.permission.CALL_PHONE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2932
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0xd

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_sms"

    const-string v10, "READ_SMS"

    const/16 v11, 0xe

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2934
    const-string v8, "android.permission.READ_SMS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2935
    const-string/jumbo v8, "no_sms"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2936
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0xe

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_sms"

    const-string v11, "WRITE_SMS"

    const/16 v12, 0xf

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2938
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2939
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0xf

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:receive_sms"

    const-string v11, "RECEIVE_SMS"

    const/16 v12, 0x10

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2941
    const-string v10, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2942
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2943
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x10

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:receive_emergency_broadcast"

    const-string v11, "RECEIVE_EMERGENCY_BROADCAST"

    const/16 v12, 0x11

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2945
    const/16 v10, 0x10

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2946
    const-string v10, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2947
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x11

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:receive_mms"

    const-string v11, "RECEIVE_MMS"

    const/16 v12, 0x12

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2949
    const-string v10, "android.permission.RECEIVE_MMS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2950
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2951
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x12

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:receive_wap_push"

    const-string v11, "RECEIVE_WAP_PUSH"

    const/16 v12, 0x13

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2953
    const-string v10, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2954
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x13

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:send_sms"

    const-string v11, "SEND_SMS"

    const/16 v12, 0x14

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2956
    const-string v10, "android.permission.SEND_SMS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2957
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2958
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x14

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:read_icc_sms"

    const-string v11, "READ_ICC_SMS"

    const/16 v12, 0x15

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2960
    const/16 v10, 0xe

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const-string v10, "android.permission.READ_SMS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2961
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2962
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x15

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_icc_sms"

    const-string v11, "WRITE_ICC_SMS"

    const/16 v12, 0x16

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2964
    const/16 v10, 0xf

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2965
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x16

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_settings"

    const-string v11, "WRITE_SETTINGS"

    const/16 v12, 0x17

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2967
    const-string v10, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x17

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:system_alert_window"

    const-string v11, "SYSTEM_ALERT_WINDOW"

    const/16 v12, 0x18

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2970
    const-string v10, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2971
    const-string/jumbo v10, "no_create_windows"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v10, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v10, v1, v11, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2972
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2973
    invoke-static {}, Landroid/app/AppOpsManager;->getSystemAlertWindowDefault()I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x18

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:access_notifications"

    const-string v11, "ACCESS_NOTIFICATIONS"

    const/16 v12, 0x19

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2976
    const-string v10, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x19

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:camera"

    const-string v11, "CAMERA"

    const/16 v12, 0x1a

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2978
    const-string v10, "android.permission.CAMERA"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2979
    const-string/jumbo v10, "no_camera"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2980
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1a

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:record_audio"

    const-string v11, "RECORD_AUDIO"

    const/16 v12, 0x1b

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2982
    const-string v10, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2983
    const-string/jumbo v10, "no_record_audio"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v10, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v10, v1, v1, v11}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2984
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2985
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1b

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:play_audio"

    const-string v11, "PLAY_AUDIO"

    const/16 v12, 0x1c

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2987
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1c

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:read_clipboard"

    const-string v11, "READ_CLIPBOARD"

    const/16 v12, 0x1d

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2989
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1d

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_clipboard"

    const-string v11, "WRITE_CLIPBOARD"

    const/16 v12, 0x1e

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2991
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1e

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:take_media_buttons"

    const-string v11, "TAKE_MEDIA_BUTTONS"

    const/16 v12, 0x1f

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2993
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2994
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1f

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:take_audio_focus"

    const-string v11, "TAKE_AUDIO_FOCUS"

    const/16 v12, 0x20

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2996
    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x20

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:audio_master_volume"

    const-string v11, "AUDIO_MASTER_VOLUME"

    const/16 v12, 0x21

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2998
    const/16 v10, 0x21

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2999
    const-string/jumbo v10, "no_adjust_volume"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3000
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x21

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_voice_volume"

    const-string v12, "AUDIO_VOICE_VOLUME"

    const/16 v13, 0x22

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3002
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3003
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x22

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_ring_volume"

    const-string v12, "AUDIO_RING_VOLUME"

    const/16 v13, 0x23

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3005
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3006
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x23

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_media_volume"

    const-string v12, "AUDIO_MEDIA_VOLUME"

    const/16 v13, 0x24

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3008
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3009
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x24

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_alarm_volume"

    const-string v12, "AUDIO_ALARM_VOLUME"

    const/16 v13, 0x25

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3011
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3012
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x25

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_notification_volume"

    const-string v12, "AUDIO_NOTIFICATION_VOLUME"

    const/16 v13, 0x26

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3014
    const/16 v11, 0x26

    invoke-virtual {v2, v11}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3015
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3016
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_bluetooth_volume"

    const-string v12, "AUDIO_BLUETOOTH_VOLUME"

    const/16 v13, 0x27

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3018
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3019
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x27

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:wake_lock"

    const-string v12, "WAKE_LOCK"

    const/16 v13, 0x28

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3021
    const-string v11, "android.permission.WAKE_LOCK"

    invoke-virtual {v2, v11}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3022
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x28

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:monitor_location"

    const-string v12, "MONITOR_LOCATION"

    const/16 v13, 0x29

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3024
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3025
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3026
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x29

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:monitor_location_high_power"

    const-string v12, "MONITOR_HIGH_POWER_LOCATION"

    const/16 v13, 0x2a

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3028
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3029
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3030
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2a

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:get_usage_stats"

    const-string v11, "GET_USAGE_STATS"

    const/16 v12, 0x2b

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3032
    const-string v9, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2b

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:mute_microphone"

    const-string v11, "MUTE_MICROPHONE"

    const/16 v12, 0x2c

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3034
    const-string/jumbo v9, "no_unmute_microphone"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3035
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2c

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:toast_window"

    const-string v11, "TOAST_WINDOW"

    const/16 v12, 0x2d

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3037
    const-string/jumbo v9, "no_create_windows"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v9, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v9, v1, v11, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 3038
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3039
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2d

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:project_media"

    const-string v11, "PROJECT_MEDIA"

    const/16 v12, 0x2e

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3041
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2e

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:activate_vpn"

    const-string v11, "ACTIVATE_VPN"

    const/16 v12, 0x2f

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3043
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2f

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:write_wallpaper"

    const-string v11, "WRITE_WALLPAPER"

    const/16 v12, 0x30

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3045
    const-string/jumbo v9, "no_wallpaper"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3046
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x30

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:assist_structure"

    const-string v11, "ASSIST_STRUCTURE"

    const/16 v12, 0x31

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3048
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x31

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:assist_screenshot"

    const-string v11, "ASSIST_SCREENSHOT"

    const/16 v12, 0x32

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3050
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3051
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x32

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:read_phone_state"

    const-string v11, "READ_PHONE_STATE"

    const/16 v12, 0x33

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3053
    const-string v9, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3054
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x33

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:add_voicemail"

    const-string v11, "ADD_VOICEMAIL"

    const/16 v12, 0x34

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3056
    const-string v9, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3057
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x34

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:use_sip"

    const-string v11, "USE_SIP"

    const/16 v12, 0x35

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3059
    const-string v9, "android.permission.USE_SIP"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3060
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x35

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:process_outgoing_calls"

    const-string v11, "PROCESS_OUTGOING_CALLS"

    const/16 v12, 0x36

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3062
    const/16 v9, 0x36

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3063
    const-string v9, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3064
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x36

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:use_fingerprint"

    const-string v11, "USE_FINGERPRINT"

    const/16 v12, 0x37

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3066
    const-string v9, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3067
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x37

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:body_sensors"

    const-string v11, "BODY_SENSORS"

    const/16 v12, 0x38

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3069
    const-string v9, "android.permission.BODY_SENSORS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3070
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x38

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:read_cell_broadcasts"

    const-string v11, "READ_CELL_BROADCASTS"

    const/16 v12, 0x39

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3072
    const-string v9, "android.permission.READ_CELL_BROADCASTS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3073
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x39

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:mock_location"

    const-string v11, "MOCK_LOCATION"

    const/16 v12, 0x3a

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3075
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3a

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:read_external_storage"

    const-string v11, "READ_EXTERNAL_STORAGE"

    const/16 v12, 0x3b

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3077
    const-string v9, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3078
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3b

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:write_external_storage"

    const-string v11, "WRITE_EXTERNAL_STORAGE"

    const/16 v12, 0x3c

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3080
    const-string v9, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3081
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3c

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:turn_screen_on"

    const-string v11, "TURN_SCREEN_ON"

    const/16 v12, 0x3d

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3083
    const-string v9, "android.permission.TURN_SCREEN_ON"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3084
    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3d

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:get_accounts"

    const-string v11, "GET_ACCOUNTS"

    const/16 v12, 0x3e

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3086
    const-string v9, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3087
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3e

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:run_in_background"

    const-string v11, "RUN_IN_BACKGROUND"

    const/16 v12, 0x3f

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3089
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3090
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3f

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:audio_accessibility_volume"

    const-string v11, "AUDIO_ACCESSIBILITY_VOLUME"

    const/16 v12, 0x40

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3093
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3094
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x40

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:read_phone_numbers"

    const-string v10, "READ_PHONE_NUMBERS"

    const/16 v11, 0x41

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3096
    const-string v9, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3097
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x41

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:request_install_packages"

    const-string v10, "REQUEST_INSTALL_PACKAGES"

    const/16 v11, 0x42

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3099
    const/16 v9, 0x42

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3100
    const-string v9, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x42

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:picture_in_picture"

    const-string v10, "PICTURE_IN_PICTURE"

    const/16 v11, 0x43

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3102
    const/16 v9, 0x43

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3103
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:instant_app_start_foreground"

    const-string v10, "INSTANT_APP_START_FOREGROUND"

    const/16 v11, 0x44

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3106
    const-string v9, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x44

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:answer_phone_calls"

    const-string v10, "ANSWER_PHONE_CALLS"

    const/16 v11, 0x45

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3108
    const/16 v9, 0x45

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3109
    const-string v9, "android.permission.ANSWER_PHONE_CALLS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3110
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x45

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:run_any_in_background"

    const-string v10, "RUN_ANY_IN_BACKGROUND"

    const/16 v11, 0x46

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3113
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x46

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:change_wifi_state"

    const-string v10, "CHANGE_WIFI_STATE"

    const/16 v11, 0x47

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3115
    const/16 v9, 0x47

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3116
    const-string v9, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3117
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x47

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:request_delete_packages"

    const-string v10, "REQUEST_DELETE_PACKAGES"

    const/16 v11, 0x48

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3120
    const-string v9, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3121
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x48

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:bind_accessibility_service"

    const-string v10, "BIND_ACCESSIBILITY_SERVICE"

    const/16 v11, 0x49

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3124
    const-string v9, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3125
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x49

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:accept_handover"

    const-string v10, "ACCEPT_HANDOVER"

    const/16 v11, 0x4a

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3127
    const/16 v9, 0x4a

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3128
    const-string v9, "android.permission.ACCEPT_HANDOVER"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3129
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4a

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:manage_ipsec_tunnels"

    const-string v10, "MANAGE_IPSEC_TUNNELS"

    const/16 v11, 0x4b

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3132
    const-string v9, "android.permission.MANAGE_IPSEC_TUNNELS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3133
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4b

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:start_foreground"

    const-string v10, "START_FOREGROUND"

    const/16 v11, 0x4c

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3135
    const-string v9, "android.permission.FOREGROUND_SERVICE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3136
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4c

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:bluetooth_scan"

    const-string v10, "BLUETOOTH_SCAN"

    const/16 v11, 0x4d

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3138
    const-string v9, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v9, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v10, 0x1

    invoke-direct {v9, v1, v10, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 3139
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3140
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4d

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:use_biometric"

    const-string v10, "USE_BIOMETRIC"

    const/16 v11, 0x4e

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3142
    const-string v9, "android.permission.USE_BIOMETRIC"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3143
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4e

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:activity_recognition"

    const-string v10, "ACTIVITY_RECOGNITION"

    const/16 v11, 0x4f

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3146
    const-string v9, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3147
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4f

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:sms_financial_transactions"

    const-string v10, "SMS_FINANCIAL_TRANSACTIONS"

    const/16 v11, 0x50

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3150
    const-string v9, "android.permission.SMS_FINANCIAL_TRANSACTIONS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3151
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x50

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_media_audio"

    const-string v9, "READ_MEDIA_AUDIO"

    const/16 v10, 0x51

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3153
    const-string v8, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3154
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x51

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:write_media_audio"

    const-string v9, "WRITE_MEDIA_AUDIO"

    const/16 v10, 0x52

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3156
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x52

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_media_video"

    const-string v9, "READ_MEDIA_VIDEO"

    const/16 v10, 0x53

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3158
    const-string v8, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3159
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x53

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:write_media_video"

    const-string v9, "WRITE_MEDIA_VIDEO"

    const/16 v10, 0x54

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3161
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x54

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_media_images"

    const-string v9, "READ_MEDIA_IMAGES"

    const/16 v10, 0x55

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3163
    const-string v8, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3164
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x55

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:write_media_images"

    const-string v9, "WRITE_MEDIA_IMAGES"

    const/16 v10, 0x56

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3166
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x56

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:legacy_storage"

    const-string v9, "LEGACY_STORAGE"

    const/16 v10, 0x57

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3168
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x57

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:access_accessibility"

    const-string v9, "ACCESS_ACCESSIBILITY"

    const/16 v10, 0x58

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3170
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x58

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_device_identifiers"

    const-string v9, "READ_DEVICE_IDENTIFIERS"

    const/16 v10, 0x59

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3172
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x59

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:access_media_location"

    const-string v9, "ACCESS_MEDIA_LOCATION"

    const/16 v10, 0x5a

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3174
    const-string v8, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3175
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5a

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:query_all_packages"

    const-string v9, "QUERY_ALL_PACKAGES"

    const/16 v10, 0x5b

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3177
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5b

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:manage_external_storage"

    const-string v9, "MANAGE_EXTERNAL_STORAGE"

    const/16 v10, 0x5c

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3180
    const-string v8, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5c

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:interact_across_profiles"

    const-string v9, "INTERACT_ACROSS_PROFILES"

    const/16 v10, 0x5d

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3183
    const-string v8, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5d

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:activate_platform_vpn"

    const-string v9, "ACTIVATE_PLATFORM_VPN"

    const/16 v10, 0x5e

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3185
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5e

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:loader_usage_stats"

    const-string v9, "LOADER_USAGE_STATS"

    const/16 v10, 0x5f

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3187
    const-string v8, "android.permission.LOADER_USAGE_STATS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5f

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, ""

    const-string v9, ""

    invoke-direct {v2, v6, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3188
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x60

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:auto_revoke_permissions_if_unused"

    const-string v9, "AUTO_REVOKE_PERMISSIONS_IF_UNUSED"

    const/16 v10, 0x61

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3191
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x61

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:auto_revoke_managed_by_installer"

    const-string v9, "AUTO_REVOKE_MANAGED_BY_INSTALLER"

    const/16 v10, 0x62

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3194
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x62

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:no_isolated_storage"

    const-string v9, "NO_ISOLATED_STORAGE"

    const/16 v10, 0x63

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3196
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3197
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x63

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:phone_call_microphone"

    const-string v9, "PHONE_CALL_MICROPHONE"

    const/16 v10, 0x64

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3199
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x64

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:phone_call_camera"

    const-string v9, "PHONE_CALL_CAMERA"

    const/16 v10, 0x65

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3201
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x65

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:record_audio_hotword"

    const-string v9, "RECORD_AUDIO_HOTWORD"

    const/16 v10, 0x66

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3203
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x66

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:manage_ongoing_calls"

    const-string v9, "MANAGE_ONGOING_CALLS"

    const/16 v10, 0x67

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3205
    const-string v8, "android.permission.MANAGE_ONGOING_CALLS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3206
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x67

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:manage_credentials"

    const-string v9, "MANAGE_CREDENTIALS"

    const/16 v10, 0x68

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3208
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x68

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:use_icc_auth_with_device_identifier"

    const-string v9, "USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    const/16 v10, 0x69

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3211
    const-string v8, "android.permission.USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3212
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x69

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:record_audio_output"

    const-string v9, "RECORD_AUDIO_OUTPUT"

    const/16 v10, 0x6a

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3214
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6a

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:schedule_exact_alarm"

    const-string v9, "SCHEDULE_EXACT_ALARM"

    const/16 v10, 0x6b

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3216
    const-string v8, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3217
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6b

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:fine_location_source"

    const-string v9, "FINE_LOCATION_SOURCE"

    const/16 v10, 0x6c

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3219
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3220
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6c

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:coarse_location_source"

    const-string v9, "COARSE_LOCATION_SOURCE"

    const/16 v10, 0x6d

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3222
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3223
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6d

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:manage_media"

    const-string v9, "MANAGE_MEDIA"

    const/16 v10, 0x6e

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3225
    const-string v8, "android.permission.MANAGE_MEDIA"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6e

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:bluetooth_connect"

    const-string v9, "BLUETOOTH_CONNECT"

    const/16 v10, 0x6f

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3227
    const-string v8, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3228
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6f

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:uwb_ranging"

    const-string v9, "UWB_RANGING"

    const/16 v10, 0x70

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3230
    const-string v8, "android.permission.UWB_RANGING"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3231
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x70

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:activity_recognition_source"

    const-string v9, "ACTIVITY_RECOGNITION_SOURCE"

    const/16 v10, 0x71

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3234
    const/16 v8, 0x4f

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3235
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x71

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:bluetooth_advertise"

    const-string v9, "BLUETOOTH_ADVERTISE"

    const/16 v10, 0x72

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3237
    const-string v8, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3238
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x72

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:record_incoming_phone_audio"

    const-string v9, "RECORD_INCOMING_PHONE_AUDIO"

    const/16 v10, 0x73

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3240
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x73

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:nearby_wifi_devices"

    const-string v9, "NEARBY_WIFI_DEVICES"

    const/16 v10, 0x74

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3242
    const-string v8, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3243
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x74

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:establish_vpn_service"

    const-string v9, "ESTABLISH_VPN_SERVICE"

    const/16 v10, 0x75

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3245
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x75

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:establish_vpn_manager"

    const-string v9, "ESTABLISH_VPN_MANAGER"

    const/16 v10, 0x76

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3247
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x76

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:access_restricted_settings"

    const-string v9, "ACCESS_RESTRICTED_SETTINGS"

    const/16 v10, 0x77

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3249
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3250
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestrictRead(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x77

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:receive_ambient_trigger_audio"

    const-string v9, "RECEIVE_SOUNDTRIGGER_AUDIO"

    const/16 v10, 0x78

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3252
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3253
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setForceCollectNotes(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x78

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:receive_explicit_user_interaction_audio"

    const-string v9, "RECEIVE_EXPLICIT_USER_INTERACTION_AUDIO"

    const/16 v10, 0x79

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3256
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3257
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x79

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:run_user_initiated_jobs"

    const-string v9, "RUN_USER_INITIATED_JOBS"

    const/16 v10, 0x7a

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3259
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3260
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7a

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_media_visual_user_selected"

    const-string v9, "READ_MEDIA_VISUAL_USER_SELECTED"

    const/16 v10, 0x7b

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3263
    const-string v8, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3264
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7b

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_suspension"

    const-string v9, "SYSTEM_EXEMPT_FROM_SUSPENSION"

    const/16 v10, 0x7c

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3268
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7c

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_dismissible_notifications"

    const-string v9, "SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS"

    const/16 v10, 0x7d

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3272
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7d

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_write_health_data"

    const-string v9, "READ_WRITE_HEALTH_DATA"

    const/16 v10, 0x7e

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3274
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7e

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:foreground_service_special_use"

    const-string v9, "FOREGROUND_SERVICE_SPECIAL_USE"

    const/16 v10, 0x7f

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3277
    const-string v8, "android.permission.FOREGROUND_SERVICE_SPECIAL_USE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7f

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_power_restrictions"

    const-string v9, "SYSTEM_EXEMPT_FROM_POWER_RESTRICTIONS"

    const/16 v10, 0x80

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3281
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x80

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_hibernation"

    const-string v9, "SYSTEM_EXEMPT_FROM_HIBERNATION"

    const/16 v10, 0x81

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3285
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x81

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_activity_bg_start_restriction"

    const-string v9, "SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION"

    const/16 v10, 0x82

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3289
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x82

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:capture_consentless_bugreport_on_userdebug_build"

    const-string v9, "CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD"

    const/16 v10, 0x83

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3294
    const-string v8, "android.permission.CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3295
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x83

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:deprecated_2"

    const-string v9, "DEPRECATED_2"

    const/16 v10, 0x84

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3297
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x84

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:use_full_screen_intent"

    const-string v9, "USE_FULL_SCREEN_INTENT"

    const/16 v10, 0x85

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3299
    const-string v8, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3300
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x85

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:camera_sandboxed"

    const-string v9, "CAMERA_SANDBOXED"

    const/16 v10, 0x86

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3302
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x86

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:record_audio_sandboxed"

    const-string v9, "RECORD_AUDIO_SANDBOXED"

    const/16 v10, 0x87

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3304
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x87

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:receive_sandbox_trigger_audio"

    const-string v9, "RECEIVE_SANDBOX_TRIGGER_AUDIO"

    const/16 v10, 0x88

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3308
    const-string v8, "android.permission.RECEIVE_SANDBOX_TRIGGER_AUDIO"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3309
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x88

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:deprecated_3"

    const-string v9, "DEPRECATED_3"

    const/16 v10, 0x89

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3311
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x89

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:create_accessibility_overlay"

    const-string v9, "CREATE_ACCESSIBILITY_OVERLAY"

    const/16 v10, 0x8a

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3315
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8a

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:media_routing_control"

    const-string v9, "MEDIA_ROUTING_CONTROL"

    const/16 v10, 0x8b

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3318
    const-string v8, "android.permission.MEDIA_ROUTING_CONTROL"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8b

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:enable_mobile_data_by_user"

    const-string v9, "ENABLE_MOBILE_DATA_BY_USER"

    const/16 v10, 0x8c

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3320
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8c

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:reserved_for_testing"

    const-string v9, "OP_RESERVED_FOR_TESTING"

    const/16 v10, 0x8d

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3322
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8d

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:rapid_clear_notifications_by_listener"

    const-string v9, "RAPID_CLEAR_NOTIFICATIONS_BY_LISTENER"

    const/16 v10, 0x8e

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3326
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8e

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_system_grammatical_gender"

    const-string v9, "READ_SYSTEM_GRAMMATICAL_GENDER"

    const/16 v10, 0x8f

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3331
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8f

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:deprecated_4"

    const-string v9, "DEPRECATED_4"

    const/16 v10, 0x90

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3333
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x90

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:archive_icon_overlay"

    const-string v9, "ARCHIVE_ICON_OVERLAY"

    const/16 v10, 0x91

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3336
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x91

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:unarchival_support"

    const-string v9, "UNARCHIVAL_CONFIRMATION"

    const/16 v10, 0x92

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3339
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x92

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:emergency_location"

    const-string v9, "EMERGENCY_LOCATION"

    const/16 v10, 0x93

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3341
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3344
    const-string v8, "android.permission.LOCATION_BYPASS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x93

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:receive_sensitive_notifications"

    const-string v9, "RECEIVE_SENSITIVE_NOTIFICATIONS"

    const/16 v10, 0x94

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3347
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x94

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_heart_rate"

    const-string v9, "READ_HEART_RATE"

    const/16 v10, 0x95

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3349
    const-string v8, "android.permission.health.READ_HEART_RATE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3350
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x95

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_skin_temperature"

    const-string v9, "READ_SKIN_TEMPERATURE"

    const/16 v10, 0x96

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3352
    const-string v8, "android.permission.health.READ_SKIN_TEMPERATURE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3353
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x96

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:ranging"

    const-string v9, "RANGING"

    invoke-direct {v2, v5, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3355
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->rangingPermissionEnabled()Z

    move-result v8

    if-eqz v8, :cond_1261

    .line 3356
    const-string v8, "android.permission.RANGING"

    goto :goto_1262

    :cond_1261
    const/4 v8, 0x0

    .line 3355
    :goto_1262
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3357
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    aput-object v2, v7, v5

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v5, "android:read_oxygen_saturation"

    const-string v8, "READ_OXYGEN_SATURATION"

    const/16 v9, 0x98

    invoke-direct {v2, v9, v5, v8}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3359
    const-string v5, "android.permission.health.READ_OXYGEN_SATURATION"

    invoke-virtual {v2, v5}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3360
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v5, 0x98

    aput-object v2, v7, v5

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v5, "android:write_system_preferences"

    const-string v8, "WRITE_SYSTEM_PREFERENCES"

    const/16 v9, 0x99

    invoke-direct {v2, v9, v5, v8}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3363
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->writeSystemPreferencePermissionEnabled()Z

    move-result v5

    if-eqz v5, :cond_12a1

    .line 3364
    const-string v5, "android.permission.WRITE_SYSTEM_PREFERENCES"

    goto :goto_12a2

    :cond_12a1
    const/4 v5, 0x0

    .line 3362
    :goto_12a2
    invoke-virtual {v2, v5}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3364
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v5, 0x99

    aput-object v2, v7, v5

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v5, "android:control_audio"

    const-string v8, "CONTROL_AUDIO"

    const/16 v9, 0x9a

    invoke-direct {v2, v9, v5, v8}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3366
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v5, 0x9a

    aput-object v2, v7, v5

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v5, "android:control_audio_partial"

    const-string v8, "CONTROL_AUDIO_PARTIAL"

    const/16 v9, 0x9b

    invoke-direct {v2, v9, v5, v8}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3368
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v5, 0x9b

    aput-object v2, v7, v5

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v5, "android:eye_tracking_coarse"

    const-string v8, "EYE_TRACKING_COARSE"

    invoke-direct {v2, v0, v5, v8}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3371
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v5

    if-eqz v5, :cond_12f0

    .line 3372
    const-string v5, "android.permission.EYE_TRACKING_COARSE"

    goto :goto_12f1

    :cond_12f0
    const/4 v5, 0x0

    .line 3371
    :goto_12f1
    invoke-virtual {v2, v5}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3373
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    aput-object v2, v7, v0

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:eye_tracking_fine"

    const-string v5, "EYE_TRACKING_FINE"

    invoke-direct {v0, v4, v2, v5}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3376
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_130d

    .line 3377
    const-string v2, "android.permission.EYE_TRACKING_FINE"

    goto :goto_130e

    :cond_130d
    const/4 v2, 0x0

    .line 3376
    :goto_130e
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3378
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    aput-object v0, v7, v4

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:face_tracking"

    const-string v4, "FACE_TRACKING"

    const/16 v5, 0x9e

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3381
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_132c

    .line 3382
    const-string v2, "android.permission.FACE_TRACKING"

    goto :goto_132d

    :cond_132c
    const/4 v2, 0x0

    .line 3381
    :goto_132d
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3383
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v61, 0x9e

    aput-object v0, v7, v61

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:hand_tracking"

    const-string v4, "HAND_TRACKING"

    const/16 v5, 0x9f

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3386
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_134d

    .line 3387
    const-string v2, "android.permission.HAND_TRACKING"

    goto :goto_134e

    :cond_134d
    const/4 v2, 0x0

    .line 3386
    :goto_134e
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3388
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v62, 0x9f

    aput-object v0, v7, v62

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:head_tracking"

    const-string v4, "HEAD_TRACKING"

    const/16 v5, 0xa0

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3391
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_136e

    .line 3392
    const-string v2, "android.permission.HEAD_TRACKING"

    goto :goto_136f

    :cond_136e
    const/4 v2, 0x0

    .line 3391
    :goto_136f
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3393
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v63, 0xa0

    aput-object v0, v7, v63

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:scene_understanding_coarse"

    const-string v4, "SCENE_UNDERSTANDING_COARSE"

    const/16 v5, 0xa1

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3396
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_138f

    .line 3397
    const-string v2, "android.permission.SCENE_UNDERSTANDING_COARSE"

    goto :goto_1390

    :cond_138f
    const/4 v2, 0x0

    .line 3396
    :goto_1390
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3398
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v64, 0xa1

    aput-object v0, v7, v64

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:scene_understanding_fine"

    const-string v4, "SCENE_UNDERSTANDING_FINE"

    const/16 v5, 0xa2

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3401
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_13b0

    .line 3402
    const-string v2, "android.permission.SCENE_UNDERSTANDING_FINE"

    goto :goto_13b1

    :cond_13b0
    const/4 v2, 0x0

    .line 3401
    :goto_13b1
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3403
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0xa2

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:post_promoted_notifications"

    const-string v4, "POST_PROMOTED_NOTIFICATIONS"

    const/16 v5, 0xa3

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3406
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->uiRichOngoing()Z

    move-result v2

    if-eqz v2, :cond_13d1

    .line 3407
    const-string v2, "android.permission.POST_PROMOTED_NOTIFICATIONS"

    goto :goto_13d2

    :cond_13d1
    const/4 v2, 0x0

    .line 3406
    :goto_13d2
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3408
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0xa3

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:system_application_overlay"

    const-string v4, "SYSTEM_APPLICATION_OVERLAY"

    const/16 v5, 0xa4

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3411
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->recordingOverlay()Z

    move-result v2

    if-eqz v2, :cond_13f2

    .line 3412
    const-string v2, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    goto :goto_13f3

    :cond_13f2
    const/4 v2, 0x0

    .line 3411
    :goto_13f3
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3413
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0xa4

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:read_cell_identity"

    const-string v4, "READ_CELL_IDENTITY"

    const/16 v5, 0xa5

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3416
    invoke-virtual {v0, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3417
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0xa5

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:read_cell_info"

    const-string v4, "READ_CELL_INFO"

    const/16 v5, 0xa6

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3420
    invoke-virtual {v0, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3421
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0xa6

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:computer_control"

    const-string v4, "COMPUTER_CONTROL"

    const/16 v5, 0xa7

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3427
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3428
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0xa7

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:read_otp_sms"

    const-string v4, "READ_OTP_SMS"

    const/16 v5, 0xa8

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3430
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0xa8

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:access_local_network"

    const-string v4, "ACCESS_LOCAL_NETWORK"

    const/16 v5, 0xa9

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3433
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->accessLocalNetworkPermissionEnabled()Z

    move-result v2

    if-eqz v2, :cond_146c

    .line 3434
    const-string v2, "android.permission.ACCESS_LOCAL_NETWORK"

    goto :goto_146d

    :cond_146c
    const/4 v2, 0x0

    .line 3433
    :goto_146d
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3435
    invoke-virtual {v0, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    aput-object v0, v7, v5

    sput-object v7, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    .line 3452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 3457
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 3466
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    .line 3476
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    .line 3479
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v0, v0

    if-ne v0, v3, :cond_1576

    .line 3483
    move v0, v1

    :goto_149f
    if-ge v0, v3, :cond_14bb

    .line 3484
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_14b8

    .line 3485
    sget-object v2, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v4, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v4, v4, v0

    iget-object v4, v4, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3483
    :cond_14b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_149f

    .line 3488
    :cond_14bb
    sget-object v0, Landroid/app/AppOpsManager;->RUNTIME_PERMISSION_OPS:[I

    array-length v2, v0

    move v3, v1

    :goto_14bf
    if-ge v3, v2, :cond_14e0

    aget v4, v0, v3

    .line 3489
    if-ne v4, v6, :cond_14c6

    .line 3491
    goto :goto_14dd

    .line 3493
    :cond_14c6
    sget-object v5, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    if-eqz v5, :cond_14dd

    .line 3494
    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v7, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3488
    :cond_14dd
    :goto_14dd
    add-int/lit8 v3, v3, 0x1

    goto :goto_14bf

    .line 3497
    :cond_14e0
    sget-object v0, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_PACKAGE_OPS:[I

    array-length v2, v0

    move v3, v1

    :goto_14e4
    if-ge v3, v2, :cond_1502

    aget v4, v0, v3

    .line 3498
    sget-object v5, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    if-eqz v5, :cond_14ff

    .line 3499
    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v7, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3497
    :cond_14ff
    add-int/lit8 v3, v3, 0x1

    goto :goto_14e4

    .line 3502
    :cond_1502
    sget-object v0, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_UID_OPS:[I

    array-length v2, v0

    move v3, v1

    :goto_1506
    if-ge v3, v2, :cond_1527

    aget v4, v0, v3

    .line 3503
    if-ne v4, v6, :cond_150d

    .line 3505
    goto :goto_1524

    .line 3507
    :cond_150d
    sget-object v5, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    if-eqz v5, :cond_1524

    .line 3508
    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v7, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3502
    :cond_1524
    :goto_1524
    add-int/lit8 v3, v3, 0x1

    goto :goto_1506

    .line 3514
    :cond_1527
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    sput-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    .line 8308
    new-instance v0, Landroid/app/AppOpsManager$2;

    invoke-direct {v0}, Landroid/app/AppOpsManager$2;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sGetAppOpModeQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 8328
    new-instance v0, Landroid/app/AppOpsManager$3;

    invoke-direct {v0}, Landroid/app/AppOpsManager$3;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sCheckPackageQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 8350
    new-instance v2, Landroid/os/IpcDataCache;

    const-string v6, "appOpModeCache"

    sget-object v7, Landroid/app/AppOpsManager;->sGetAppOpModeQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/16 v3, 0x800

    const-string/jumbo v4, "system_server"

    const-string v5, "getAppOpMode"

    invoke-direct/range {v2 .. v7}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v2, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    .line 8354
    new-instance v3, Landroid/os/IpcDataCache;

    const-string v7, "checkPackageCache"

    sget-object v8, Landroid/app/AppOpsManager;->sCheckPackageQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/16 v4, 0x200

    const-string/jumbo v5, "system_server"

    const-string v6, "checkPackage"

    invoke-direct/range {v3 .. v8}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v3, Landroid/app/AppOpsManager;->sCheckPackageCache:Landroid/os/IpcDataCache;

    .line 8362
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

    .line 8364
    sget-object v0, Landroid/app/AppOpsManager;->OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8365
    sget-object v0, Landroid/app/AppOpsManager;->OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8366
    return-void

    .line 3480
    :cond_1576
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAppOpInfos length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_159e
    .array-data 4
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
    .end array-data

    :array_15b0
    .array-data 4
        0x19
        0x18
        0x17
        0x2b
        0x42
        0x4c
        0x50
        0x4b
        0x44
        0x5f
    .end array-data
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .registers 4

    .line 8466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 250
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 254
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 258
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 8467
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8468
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 8470
    iget-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_55

    .line 8471
    iget-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 8473
    :try_start_2d
    sget-boolean p2, Landroid/os/Build;->IS_ENG:Z

    if-eqz p2, :cond_53

    if-eqz p1, :cond_53

    const-string p2, "android.permission.READ_DEVICE_CONFIG"

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8477
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 8475
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_53

    .line 8479
    const-string/jumbo p1, "privacy"

    iget-object p2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8481
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/app/AppOpsManager$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda8;-><init>()V

    .line 8479
    invoke-static {p1, p2, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_52} :catch_54

    .line 8487
    return-void

    .line 8492
    :cond_53
    goto :goto_55

    .line 8489
    :catch_54
    move-exception p1

    .line 8494
    :cond_55
    :goto_55
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 8495
    return-void
.end method

.method private blacklist batchDuplicateNoteOps(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Z
    .registers 20

    .line 9826
    sget-object v1, Landroid/app/AppOpsManager;->sBatchedNoteOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9827
    :try_start_3
    new-instance v2, Landroid/app/AppOpsManager$NotedOp;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Landroid/app/AppOpsManager$NotedOp;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 9835
    sget-object p1, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    .line 9836
    const/4 p2, 0x1

    if-nez p1, :cond_28

    .line 9837
    sget-object p3, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, v2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 9839
    :cond_28
    sget-object p3, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    new-instance v0, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p3, v2, p4, v0}, Landroid/util/ArrayMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 9842
    :goto_36
    sget-boolean p3, Landroid/app/AppOpsManager;->sIsBatchedNoteOpCallScheduled:Z

    if-nez p3, :cond_5e

    .line 9843
    sget-object p3, Landroid/app/AppOpsManager;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez p3, :cond_4c

    .line 9844
    new-instance p3, Landroid/os/HandlerThread;

    const-string p4, "AppOpsManagerNoteOpBatching"

    invoke-direct {p3, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p3, Landroid/app/AppOpsManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 9845
    sget-object p3, Landroid/app/AppOpsManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 9848
    :cond_4c
    sget-object p3, Landroid/app/AppOpsManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;

    invoke-direct {p4, p0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;-><init>(Landroid/app/AppOpsManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p3, p4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9869
    sput-boolean p2, Landroid/app/AppOpsManager;->sIsBatchedNoteOpCallScheduled:Z

    .line 9871
    :cond_5e
    monitor-exit v1

    return p1

    .line 9872
    :catchall_60
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_60

    throw p1
.end method

.method private greylist-max-o buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 9433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " from uid "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " not allowed to perform "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p1, p3, p1

    iget-object p1, p1, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I
    .registers 14

    .line 10199
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->isAppOpModeCachingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 10200
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/AppOpsManager$AppOpModeQuery;

    const-string v7, "checkOpNoThrow"

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/AppOpsManager$AppOpModeQuery;-><init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10203
    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 10206
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/app/IAppOpsService;->checkOperationForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_30

    .line 10210
    :cond_29
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/app/IAppOpsService;->checkOperationForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    .line 10213
    :cond_30
    :goto_30
    return v0

    .line 10214
    :catch_31
    move-exception v0

    move-object p1, v0

    .line 10215
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist checkOpRawNoThrow(IILjava/lang/String;Ljava/lang/String;I)I
    .registers 14

    .line 9640
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->isAppOpModeCachingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 9641
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/AppOpsManager$AppOpModeQuery;

    const-string/jumbo v7, "unsafeCheckOpRawNoThrow"

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/AppOpsManager$AppOpModeQuery;-><init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2b

    .line 9645
    :cond_20
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->checkOperationRawForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 9648
    :goto_2b
    return p1

    .line 9649
    :catch_2c
    move-exception v0

    move-object p1, v0

    .line 9650
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private static blacklist collectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseLongArray;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11827
    if-eqz p0, :cond_1b

    .line 11828
    if-nez p1, :cond_9

    .line 11829
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    .line 11831
    :cond_9
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 11832
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1b

    .line 11833
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 11832
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 11836
    :cond_1b
    return-object p1
.end method

.method private blacklist collectNoteOpCallsForValidation(I)V
    .registers 2

    .line 11948
    return-void
.end method

.method private blacklist collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V
    .registers 4

    .line 10947
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10948
    :try_start_3
    sget-object v1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v1, :cond_c

    .line 10949
    sget-object v1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-virtual {v1, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onSelfNoted(Landroid/app/SyncNotedAppOp;)V

    .line 10951
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 10952
    sget-object v0, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-virtual {v0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onSelfNoted(Landroid/app/SyncNotedAppOp;)V

    .line 10953
    return-void

    .line 10951
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public static blacklist collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V
    .registers 5

    .line 10969
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10970
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 10971
    if-nez v1, :cond_25

    .line 10972
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 10973
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10976
    :cond_25
    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    .line 10977
    if-nez v2, :cond_3f

    .line 10978
    new-instance v2, Ljava/util/BitSet;

    const/16 v3, 0xaa

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 10979
    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10982
    :cond_3f
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 10983
    return-void
.end method

.method private static blacklist deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 11951
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 11952
    nop

    .line 11953
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_39

    .line 11954
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v5

    .line 11955
    add-int/lit8 v3, v1, 0x1

    .line 11956
    :goto_17
    if-ge v3, v0, :cond_2a

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v7, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-nez v7, :cond_2a

    .line 11957
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 11959
    :cond_2a
    invoke-interface {p0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11953
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_7

    .line 11961
    :cond_39
    :goto_39
    if-ge v2, v0, :cond_47

    .line 11962
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11961
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 11964
    :cond_47
    return-object p0
.end method

.method public static blacklist disableAppOpModeCache()V
    .registers 1

    .line 8390
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appopModeCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8391
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->disableLocal()V

    .line 8393
    :cond_b
    return-void
.end method

.method public static blacklist disableCheckPackageCache()V
    .registers 1

    .line 8410
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->checkPackageCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8411
    sget-object v0, Landroid/app/AppOpsManager;->sCheckPackageCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->disableLocal()V

    .line 8413
    :cond_b
    return-void
.end method

.method private static blacklist equalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z
    .registers 10

    .line 11756
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 11757
    return v0

    .line 11760
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_3a

    if-nez p1, :cond_a

    goto :goto_3a

    .line 11764
    :cond_a
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 11765
    return v1

    .line 11768
    :cond_15
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v2

    .line 11769
    move v3, v1

    :goto_1a
    if-ge v3, v2, :cond_39

    .line 11770
    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_38

    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_35

    goto :goto_38

    .line 11769
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 11771
    :cond_38
    :goto_38
    return v1

    .line 11775
    :cond_39
    return v0

    .line 11761
    :cond_3a
    :goto_3a
    return v1
.end method

.method public static blacklist extractFlagsFromKey(J)I
    .registers 4

    .line 906
    const-wide/16 v0, -0x1

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist extractUidStateFromKey(J)I
    .registers 3

    .line 901
    const/16 v0, 0x1f

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist finishNotedAppOpsCollection()V
    .registers 1

    .line 10936
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 10937
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 10938
    return-void
.end method

.method private blacklist finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 14

    .line 10725
    if-nez p6, :cond_9

    .line 10726
    :try_start_2
    iget-object p6, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move-object p0, p6

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 10728
    :cond_9
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IAppOpsService;->finishOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_16

    .line 10733
    :goto_14
    nop

    .line 10734
    return-void

    .line 10731
    :catch_16
    move-exception v0

    move-object p1, v0

    .line 10732
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .registers 4

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    :goto_5
    if-eqz p0, :cond_22

    .line 913
    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 914
    not-int v2, v1

    and-int/2addr p0, v2

    .line 915
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1a

    .line 916
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 918
    :cond_1a
    invoke-static {v1}, Landroid/app/AppOpsManager;->getFlagName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    goto :goto_5

    .line 920
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getClientId()Landroid/os/IBinder;
    .registers 2

    .line 10285
    const-class v0, Landroid/app/AppOpsManager;

    monitor-enter v0

    .line 10286
    :try_start_3
    sget-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    if-nez v1, :cond_e

    .line 10287
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    .line 10290
    :cond_e
    sget-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    .line 10291
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static blacklist getComponentPackageNameFromString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 10107
    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    .line 10108
    :goto_8
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_f
    const-string p0, ""

    :goto_11
    return-object p0
.end method

.method public static final blacklist getFlagName(I)Ljava/lang/String;
    .registers 1

    .line 751
    sparse-switch p0, :sswitch_data_1c

    .line 763
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 761
    :sswitch_7
    const-string/jumbo p0, "upd"

    return-object p0

    .line 759
    :sswitch_b
    const-string/jumbo p0, "tpd"

    return-object p0

    .line 757
    :sswitch_f
    const-string/jumbo p0, "up"

    return-object p0

    .line 755
    :sswitch_13
    const-string/jumbo p0, "tp"

    return-object p0

    .line 753
    :sswitch_17
    const-string/jumbo p0, "s"

    return-object p0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_13
        0x4 -> :sswitch_f
        0x8 -> :sswitch_b
        0x10 -> :sswitch_7
    .end sparse-switch
.end method

.method private static blacklist getFormattedStackTrace()Ljava/lang/String;
    .registers 10

    .line 11474
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 11476
    nop

    .line 11477
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_d
    array-length v4, v0

    if-ge v2, v4, :cond_7b

    .line 11478
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    aget-object v4, v0, v2

    .line 11479
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Parcel;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    aget-object v4, v0, v2

    .line 11480
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "$Stub$Proxy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_74

    aget-object v4, v0, v2

    .line 11481
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/database/DatabaseUtils;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    aget-object v4, v0, v2

    .line 11482
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.content.ContentProviderProxy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    aget-object v4, v0, v2

    .line 11483
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/content/ContentResolver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 11484
    :cond_74
    nop

    .line 11477
    add-int/lit8 v3, v2, 0x1

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_d

    .line 11490
    :cond_7b
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 11491
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_81
    move v9, v4

    move v4, v2

    move v2, v9

    if-ltz v2, :cond_129

    .line 11492
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Landroid/os/HandlerThread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_124

    aget-object v5, v0, v2

    .line 11493
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Landroid/os/Handler;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_124

    aget-object v5, v0, v2

    .line 11494
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Landroid/os/Looper;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_124

    aget-object v5, v0, v2

    .line 11495
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Landroid/os/Binder;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_124

    aget-object v5, v0, v2

    .line 11496
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/internal/os/RuntimeInit;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_124

    aget-object v5, v0, v2

    .line 11497
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/internal/os/ZygoteInit;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_124

    aget-object v5, v0, v2

    .line 11498
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Landroid/app/ActivityThread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_124

    aget-object v5, v0, v2

    .line 11499
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_124

    aget-object v5, v0, v2

    .line 11500
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.server.SystemServer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 11501
    :cond_124
    nop

    .line 11491
    add-int/lit8 v4, v2, -0x1

    goto/16 :goto_81

    .line 11507
    :cond_129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11508
    move v5, v3

    :goto_12f
    if-gt v5, v4, :cond_176

    .line 11509
    sget-object v6, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    if-nez v6, :cond_14d

    .line 11511
    :try_start_135
    const-string/jumbo v6, "privacy"

    const-string/jumbo v7, "privacy_attribution_tag_full_log_enabled"

    invoke-static {v6, v7, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_145} :catch_146

    .line 11516
    goto :goto_14d

    .line 11513
    :catch_146
    move-exception v6

    .line 11515
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 11519
    :cond_14d
    :goto_14d
    if-eq v5, v3, :cond_154

    .line 11520
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11522
    :cond_154
    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 11523
    sget-object v7, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_170

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x258

    if-le v7, v8, :cond_170

    .line 11524
    goto :goto_176

    .line 11526
    :cond_170
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11508
    add-int/lit8 v5, v5, 0x1

    goto :goto_12f

    .line 11529
    :cond_176
    :goto_176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;III)",
            "Landroid/app/AppOpsManager$NoteOpEvent;"
        }
    .end annotation

    .line 11724
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 11725
    return-object v0

    .line 11728
    :cond_4
    nop

    .line 11729
    :goto_5
    if-eqz p3, :cond_55

    .line 11730
    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 11731
    not-int v2, v1

    and-int/2addr p3, v2

    .line 11732
    sget-object v2, Landroid/app/AppOpsManager;->UID_STATES:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_54

    aget v5, v2, v4

    .line 11733
    if-lt v5, p1, :cond_51

    if-le v5, p2, :cond_1d

    .line 11734
    goto :goto_51

    .line 11736
    :cond_1d
    invoke-static {v5, v1}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v5

    .line 11738
    invoke-virtual {p0, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 11739
    if-nez v5, :cond_2a

    .line 11740
    goto :goto_51

    .line 11743
    :cond_2a
    if-eqz v0, :cond_50

    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_50

    .line 11744
    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_51

    .line 11745
    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_51

    .line 11746
    :cond_50
    move-object v0, v5

    .line 11732
    :cond_51
    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 11749
    :cond_54
    goto :goto_5

    .line 11751
    :cond_55
    return-object v0
.end method

.method private blacklist getNotedOpCollectionMode(ILjava/lang/String;I)I
    .registers 8

    .line 11044
    if-nez p2, :cond_4

    .line 11045
    const-string p2, "android"

    .line 11049
    :cond_4
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aget-byte v0, v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_22

    .line 11052
    :try_start_d
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p3}, Lcom/android/internal/app/IAppOpsService;->shouldCollectNotes(I)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_20

    .line 11055
    nop

    .line 11057
    if-eqz v0, :cond_1b

    .line 11058
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aput-byte v3, v0, p3

    goto :goto_22

    .line 11060
    :cond_1b
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aput-byte v1, v0, p3

    goto :goto_22

    .line 11053
    :catch_20
    move-exception p1

    .line 11054
    return v2

    .line 11064
    :cond_22
    :goto_22
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aget-byte p3, v0, p3

    if-eq p3, v3, :cond_29

    .line 11065
    return v2

    .line 11068
    :cond_29
    sget-object p3, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter p3

    .line 11069
    :try_start_2c
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_3e

    .line 11070
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 11071
    monitor-exit p3

    return v1

    .line 11073
    :cond_3e
    monitor-exit p3
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_52

    .line 11075
    sget-object p2, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 11077
    if-eqz p2, :cond_50

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_50

    .line 11078
    return v3

    .line 11080
    :cond_50
    const/4 p1, 0x3

    return p1

    .line 11073
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit p3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public static blacklist getNumOps()I
    .registers 1

    .line 11708
    const/16 v0, 0xaa

    return v0
.end method

.method public static whitelist getOpStrs()[Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11695
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 11696
    const/4 v1, 0x0

    :goto_6
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_16

    .line 11697
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 11696
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 11699
    :cond_16
    return-object v0
.end method

.method private static blacklist getService()Lcom/android/internal/app/IAppOpsService;
    .registers 2

    .line 10296
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10297
    :try_start_3
    sget-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    if-nez v1, :cond_13

    .line 10298
    const-string v1, "appops"

    .line 10299
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 10298
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    .line 10301
    :cond_13
    sget-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    monitor-exit v0

    return-object v1

    .line 10302
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private static blacklist getSystemAlertWindowDefault()I
    .registers 4

    .line 11903
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 11904
    const/4 v1, 0x3

    if-nez v0, :cond_8

    .line 11905
    return v1

    .line 11909
    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 11910
    if-nez v0, :cond_f

    .line 11911
    return v1

    .line 11914
    :cond_f
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 11915
    const-string v2, "android.software.leanback"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 11916
    const/4 v0, 0x1

    return v0

    .line 11919
    :cond_20
    return v1
.end method

.method public static greylist-max-q getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10280
    invoke-static {}, Landroid/app/AppOpsManager;->getClientId()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getUidStateName(I)Ljava/lang/String;
    .registers 1

    .line 638
    sparse-switch p0, :sswitch_data_22

    .line 656
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 654
    :sswitch_7
    const-string p0, "gone"

    return-object p0

    .line 652
    :sswitch_a
    const-string p0, "cch"

    return-object p0

    .line 650
    :sswitch_d
    const-string p0, "bg"

    return-object p0

    .line 648
    :sswitch_10
    const-string p0, "fg"

    return-object p0

    .line 646
    :sswitch_13
    const-string p0, "fgsvc"

    return-object p0

    .line 644
    :sswitch_16
    const-string p0, "fgsvcl"

    return-object p0

    .line 642
    :sswitch_19
    const-string/jumbo p0, "top"

    return-object p0

    .line 640
    :sswitch_1d
    const-string/jumbo p0, "pers"

    return-object p0

    nop

    :sswitch_data_22
    .sparse-switch
        0x64 -> :sswitch_1d
        0xc8 -> :sswitch_19
        0x12c -> :sswitch_16
        0x190 -> :sswitch_13
        0x1f4 -> :sswitch_10
        0x258 -> :sswitch_d
        0x2bc -> :sswitch_a
        0x7fffffff -> :sswitch_7
    .end sparse-switch
.end method

.method public static blacklist historicalModeToString(I)Ljava/lang/String;
    .registers 1

    .line 11886
    packed-switch p0, :pswitch_data_10

    .line 11897
    const-string p0, "UNKNOWN"

    return-object p0

    .line 11894
    :pswitch_6
    const-string p0, "HISTORICAL_MODE_ENABLED_PASSIVE"

    return-object p0

    .line 11891
    :pswitch_9
    const-string p0, "HISTORICAL_MODE_ENABLED_ACTIVE"

    return-object p0

    .line 11888
    :pswitch_c
    const-string p0, "HISTORICAL_MODE_DISABLED"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist invalidateAppOpModeCache()V
    .registers 2

    .line 8379
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appopModeCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8380
    const-string/jumbo v0, "system_server"

    const-string v1, "getAppOpMode"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 8382
    :cond_e
    return-void
.end method

.method public static blacklist invalidateCheckPackageCache()V
    .registers 2

    .line 8399
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->checkPackageCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8400
    const-string/jumbo v0, "system_server"

    const-string v1, "checkPackage"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 8402
    :cond_e
    return-void
.end method

.method private static blacklist isAppOpModeCachingEnabled(I)Z
    .registers 3

    .line 8369
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appopModeCachingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 8370
    return v1

    .line 8372
    :cond_8
    sget-object v0, Landroid/app/AppOpsManager;->OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static blacklist isCollectingStackTraces()Z
    .registers 4

    .line 11341
    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getSampledOpCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getAcceptableLeftDistance()I

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    .line 11342
    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getExpirationTimeSinceBootMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_21

    .line 11343
    const/4 v0, 0x0

    return v0

    .line 11345
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isListeningForOpNoted()Z
    .registers 1

    .line 11330
    sget-object v0, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-nez v0, :cond_d

    invoke-static {}, Landroid/app/AppOpsManager;->isCollectingStackTraces()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private blacklist isNoteOpBatchingSupported()Z
    .registers 3

    .line 271
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    .line 272
    const/4 v0, 0x0

    return v0

    .line 274
    :cond_a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->noteOpBatchingEnabled()Z

    move-result v0

    return v0
.end method

.method private static blacklist isPackagePreInstalled(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    .line 10113
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 10114
    nop

    .line 10115
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 10116
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_12

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_11

    move v0, p1

    :cond_11
    return v0

    .line 10117
    :catch_12
    move-exception p0

    .line 10118
    return v0
.end method

.method public static blacklist isValidOp(I)Z
    .registers 2

    .line 3554
    if-ltz p0, :cond_9

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v0, v0

    if-ge p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static blacklist keyToString(J)Ljava/lang/String;
    .registers 4

    .line 889
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v0

    .line 890
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result p0

    .line 891
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$batchDuplicateNoteOps$5()V
    .registers 4

    .line 9850
    sget-object v0, Landroid/app/AppOpsManager;->sBatchedNoteOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9851
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Landroid/app/AppOpsManager;->sIsBatchedNoteOpCallScheduled:Z

    .line 9852
    sget-object v1, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    .line 9853
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    .line 9854
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_3d

    .line 9855
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_16
    if-ltz v0, :cond_2a

    .line 9856
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_27

    .line 9857
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 9855
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 9860
    :cond_2a
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 9862
    :try_start_30
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->noteOperationsInBatch(Ljava/util/Map;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    .line 9865
    goto :goto_3c

    .line 9863
    :catch_36
    move-exception v0

    .line 9864
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 9867
    :cond_3c
    :goto_3c
    return-void

    .line 9854
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method static synthetic blacklist lambda$getHistoricalOps$1(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 2

    .line 8684
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getHistoricalOps$2(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 6

    .line 8681
    const-string v0, "historical_ops"

    const-class v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 8682
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8684
    :try_start_e
    new-instance v2, Landroid/app/AppOpsManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1b

    .line 8686
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8687
    nop

    .line 8688
    return-void

    .line 8686
    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8687
    throw p0
.end method

.method static synthetic blacklist lambda$getHistoricalOpsFromDiskRaw$3(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 2

    .line 8724
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getHistoricalOpsFromDiskRaw$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 6

    .line 8721
    const-string v0, "historical_ops"

    const-class v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 8722
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8724
    :try_start_e
    new-instance v2, Landroid/app/AppOpsManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1b

    .line 8726
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8727
    nop

    .line 8728
    return-void

    .line 8726
    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8727
    throw p0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 8483
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "privacy_attribution_tag_full_log_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 8484
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 8486
    :cond_18
    return-void
.end method

.method static synthetic blacklist lambda$setOnOpNotedCallback$6(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V
    .registers 2

    .line 11283
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method

.method static synthetic blacklist lambda$setOnOpNotedCallback$7(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V
    .registers 2

    .line 11291
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method

.method public static blacklist leftCircularDistance(III)I
    .registers 3

    .line 11927
    add-int/2addr p1, p2

    sub-int/2addr p1, p0

    rem-int/2addr p1, p2

    return p1
.end method

.method private static blacklist listForFlagsInStates(Ljava/util/List;III)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;III)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 7927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7928
    if-nez p0, :cond_8

    .line 7929
    return-object v0

    .line 7931
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 7932
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_26

    .line 7933
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 7934
    invoke-virtual {v3, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_20

    .line 7935
    goto :goto_23

    .line 7937
    :cond_20
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7932
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 7939
    :cond_26
    invoke-static {v0}, Landroid/app/AppOpsManager;->deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist makeKey(II)J
    .registers 4

    .line 896
    int-to-long v0, p0

    const/16 p0, 0x1f

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static blacklist mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)",
            "Landroid/app/AppOpsManager$AttributedOpEntry;"
        }
    .end annotation

    .line 11968
    move-object/from16 v0, p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_11

    .line 11969
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedOpEntry;

    return-object v0

    .line 11971
    :cond_11
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 11972
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 11973
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 11974
    move v5, v3

    :goto_20
    if-ge v5, v4, :cond_90

    .line 11975
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 11976
    invoke-virtual {v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v7

    .line 11977
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    .line 11978
    move v9, v3

    :goto_31
    if-ge v9, v8, :cond_8d

    .line 11979
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 11981
    invoke-static {v10, v11}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v12

    .line 11982
    invoke-static {v10, v11}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v13

    .line 11984
    invoke-static {v6, v12, v12, v13}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastAccessEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v14

    .line 11985
    invoke-static {v6, v12, v12, v13}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastRejectEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v12

    .line 11987
    if-eqz v14, :cond_85

    .line 11988
    invoke-virtual {v1, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 11989
    if-eqz v13, :cond_82

    invoke-virtual {v13}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v15

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_82

    .line 11990
    invoke-virtual {v13}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v15

    invoke-virtual {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-gez v15, :cond_6e

    goto :goto_82

    .line 11992
    :cond_6e
    invoke-static {v13}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v15

    if-nez v15, :cond_85

    invoke-static {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v15

    if-eqz v15, :cond_85

    .line 11993
    invoke-static {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fputmProxy(Landroid/app/AppOpsManager$NoteOpEvent;Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    goto :goto_85

    .line 11991
    :cond_82
    :goto_82
    invoke-virtual {v1, v10, v11, v14}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 11996
    :cond_85
    :goto_85
    if-eqz v12, :cond_8a

    .line 11997
    invoke-virtual {v2, v10, v11, v12}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 11978
    :cond_8a
    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    .line 11974
    :cond_8d
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 12001
    :cond_90
    new-instance v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-static {v0}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$fgetmOp(Landroid/app/AppOpsManager$AttributedOpEntry;)I

    move-result v0

    invoke-direct {v4, v0, v3, v1, v2}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v4
.end method

.method public static greylist-max-o modeToName(I)Ljava/lang/String;
    .registers 3

    .line 3666
    if-ltz p0, :cond_c

    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 3667
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 3669
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 21

    .line 9878
    move v1, p1

    move-object/from16 v3, p3

    :try_start_3
    invoke-direct/range {p0 .. p1}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 9879
    move/from16 v2, p2

    invoke-direct {p0, v2, v3, p1}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v9

    .line 9880
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v4, 0x3e8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v0, v4, :cond_18

    move v0, v11

    goto :goto_19

    :cond_18
    move v0, v10

    .line 9881
    :goto_19
    const/4 v12, 0x3

    if-ne v9, v12, :cond_25

    .line 9882
    if-nez p6, :cond_25

    .line 9884
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v0

    .line 9885
    move-object v7, v0

    move v8, v11

    goto :goto_28

    .line 9889
    :cond_25
    move-object/from16 v7, p6

    move v8, v0

    :goto_28
    nop

    .line 9890
    nop

    .line 9891
    invoke-direct {p0}, Landroid/app/AppOpsManager;->isNoteOpBatchingSupported()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 9892
    sget-object v13, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    new-instance v0, Landroid/app/AppOpsManager$AppOpModeQuery;

    const-string/jumbo v6, "noteOpNoThrow"

    move-object/from16 v5, p4

    move/from16 v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager$AppOpModeQuery;-><init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 9897
    const/4 v0, 0x4

    if-eq v13, v0, :cond_68

    .line 9898
    if-ne v9, v12, :cond_50

    move-object v6, v7

    move v7, v11

    goto :goto_52

    :cond_50
    move-object v6, v7

    move v7, v10

    :goto_52
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Landroid/app/AppOpsManager;->batchDuplicateNoteOps(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Z

    move-result v7

    .line 9902
    new-instance v0, Landroid/app/SyncNotedAppOp;

    move-object/from16 v4, p4

    invoke-direct {v0, v13, p1, v4, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    .line 9897
    :cond_68
    move v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v7

    goto :goto_72

    .line 9891
    :cond_6f
    move-object/from16 v4, p4

    move-object v6, v7

    .line 9906
    :goto_72
    const/4 v0, 0x0

    move v7, v10

    :goto_74
    if-nez v7, :cond_9b

    .line 9907
    if-nez p5, :cond_87

    .line 9908
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v9, v12, :cond_7e

    move v5, v11

    goto :goto_7f

    :cond_7e
    move v5, v10

    :goto_7f
    move/from16 v2, p2

    move v7, v8

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    goto :goto_9b

    .line 9911
    :cond_87
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v9, v12, :cond_8c

    move v10, v11

    :cond_8c
    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v6

    move v6, v10

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/app/IAppOpsService;->noteOperationForDevice(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 9917
    :cond_9b
    :goto_9b
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v1

    if-nez v1, :cond_ad

    .line 9918
    if-ne v9, v11, :cond_a7

    .line 9919
    invoke-direct {p0, v0}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_ad

    .line 9920
    :cond_a7
    const/4 v1, 0x2

    if-ne v9, v1, :cond_ad

    .line 9921
    invoke-static {v0}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 9925
    :cond_ad
    :goto_ad
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v0
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b1} :catch_b2

    return v0

    .line 9926
    :catch_b2
    move-exception v0

    .line 9927
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;
    .registers 2

    .line 3636
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p0, v0, p0

    iget-object p0, p0, Landroid/app/AppOpInfo;->allowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

    return-object p0
.end method

.method public static greylist-max-o opAllowsReset(I)Z
    .registers 2

    .line 3685
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Landroid/app/AppOpInfo;->disableReset:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blacklist opIsPackageAppOpPermission(I)Z
    .registers 2

    .line 3693
    sget-object v0, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_PACKAGE_OPS:[I

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    return p0
.end method

.method public static blacklist opIsRuntimePermission(I)Z
    .registers 2

    .line 3597
    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 p0, 0x0

    return p0

    .line 3599
    :cond_5
    sget-object v0, Landroid/app/AppOpsManager;->RUNTIME_PERMISSION_OPS:[I

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    return p0
.end method

.method public static blacklist opIsUidAppOpPermission(I)Z
    .registers 2

    .line 3701
    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    sget-object v0, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_UID_OPS:[I

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static blacklist opRestrictsRead(I)Z
    .registers 2

    .line 3677
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Landroid/app/AppOpInfo;->restrictRead:Z

    return p0
.end method

.method public static greylist-max-o opToDefaultMode(I)I
    .registers 2

    .line 3644
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p0, v0, p0

    iget p0, p0, Landroid/app/AppOpInfo;->defaultMode:I

    return p0
.end method

.method public static whitelist opToDefaultMode(Ljava/lang/String;)I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3658
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p0

    return p0
.end method

.method public static greylist-max-r opToName(I)Ljava/lang/String;
    .registers 3

    .line 3535
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string p0, "NONE"

    return-object p0

    .line 3536
    :cond_6
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v0, v0

    if-ge p0, v0, :cond_12

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p0, v0, p0

    iget-object p0, p0, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    goto :goto_2b

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2b
    return-object p0
.end method

.method public static greylist-max-r opToPermission(I)Ljava/lang/String;
    .registers 2

    .line 3576
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p0, v0, p0

    iget-object p0, p0, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public static whitelist opToPermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3589
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist opToPublicName(I)Ljava/lang/String;
    .registers 2

    .line 3545
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p0, v0, p0

    iget-object p0, p0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static greylist-max-o opToRestriction(I)Ljava/lang/String;
    .registers 2

    .line 3607
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p0, v0, p0

    iget-object p0, p0, Landroid/app/AppOpInfo;->restriction:Ljava/lang/String;

    return-object p0
.end method

.method public static greylist opToSwitch(I)I
    .registers 2

    .line 3526
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p0, v0, p0

    iget p0, p0, Landroid/app/AppOpInfo;->switchCode:I

    return p0
.end method

.method public static blacklist parseHistoricalMode(Ljava/lang/String;)I
    .registers 4

    .line 11871
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_26

    :cond_9
    goto :goto_1e

    :sswitch_a
    const-string v0, "HISTORICAL_MODE_ENABLED_PASSIVE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    move p0, v2

    goto :goto_1f

    :sswitch_14
    const-string v0, "HISTORICAL_MODE_ENABLED_ACTIVE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    move p0, v1

    goto :goto_1f

    :goto_1e
    const/4 p0, -0x1

    :goto_1f
    packed-switch p0, :pswitch_data_30

    .line 11879
    return v1

    .line 11876
    :pswitch_23
    const/4 p0, 0x2

    return p0

    .line 11873
    :pswitch_25
    return v2

    :sswitch_data_26
    .sparse-switch
        0x93ff10b -> :sswitch_14
        0x34c83da2 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_25
        :pswitch_23
    .end packed-switch
.end method

.method public static blacklist pauseNotedAppOpsCollection()Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;
    .registers 3

    .line 10894
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 10895
    if-eqz v0, :cond_26

    .line 10896
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    .line 10897
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 10899
    sget-object v2, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 10900
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 10902
    new-instance v2, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0, v1}, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;-><init>(ILandroid/util/ArrayMap;)V

    return-object v2

    .line 10905
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 8920
    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8921
    if-eqz v0, :cond_15

    .line 8922
    sget-object p0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    iget-object p0, p0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    return-object p0

    .line 8924
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 8926
    sget-object p0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    const/16 v0, 0x7e

    aget-object p0, p0, v0

    iget-object p0, p0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    return-object p0

    .line 8928
    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public static greylist permissionToOpCode(Ljava/lang/String;)I
    .registers 2

    .line 3619
    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3620
    if-eqz v0, :cond_f

    .line 3621
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 3623
    :cond_f
    if-eqz p0, :cond_1e

    .line 3624
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3623
    invoke-static {v0, p0}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 3625
    const/16 p0, 0x7e

    return p0

    .line 3627
    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist prefixParcelWithAppOpsIfNeeded(Landroid/os/Parcel;)V
    .registers 10

    .line 11096
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 11097
    if-nez v0, :cond_b

    .line 11098
    return-void

    .line 11101
    :cond_b
    const/16 v1, -0x7f

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11102
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 11104
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11106
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 11107
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11109
    move v4, v2

    :goto_20
    if-ge v4, v3, :cond_4d

    .line 11110
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11112
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object v5

    .line 11113
    move v6, v2

    :goto_36
    const/4 v7, 0x3

    if-ge v6, v7, :cond_4a

    .line 11114
    array-length v7, v5

    if-ge v6, v7, :cond_42

    .line 11115
    aget-wide v7, v5, v6

    invoke-virtual {p0, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_47

    .line 11117
    :cond_42
    const-wide/16 v7, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 11113
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 11109
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 11122
    :cond_4d
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 11123
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 11125
    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11126
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 11127
    return-void
.end method

.method public static blacklist readAndLogNotedAppops(Landroid/os/Parcel;)V
    .registers 14

    .line 11141
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 11142
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11144
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_8e

    .line 11145
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 11146
    const/4 v3, 0x3

    new-array v4, v3, [J

    .line 11147
    move v5, v1

    :goto_13
    if-ge v5, v3, :cond_1e

    .line 11148
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    aput-wide v7, v4, v5

    .line 11147
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 11150
    :cond_1e
    invoke-static {v4}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v10

    .line 11152
    invoke-virtual {v10}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 11154
    sget-object v11, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v11

    .line 11155
    :try_start_2b
    invoke-virtual {v10, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    move v4, v3

    :goto_30
    const/4 v3, -0x1

    if-eq v4, v3, :cond_6e

    .line 11157
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v3, :cond_42

    .line 11158
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    new-instance v5, Landroid/app/SyncNotedAppOp;

    invoke-direct {v5, v4, v6}, Landroid/app/SyncNotedAppOp;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onNoted(Landroid/app/SyncNotedAppOp;)V

    goto :goto_67

    .line 11160
    :cond_42
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v7

    .line 11161
    sget-object v12, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/AsyncNotedAppOp;

    .line 11162
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 11163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    .line 11161
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11164
    sget-object v3, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0xa

    if-le v3, v5, :cond_67

    .line 11165
    sget-object v3, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11156
    :cond_67
    :goto_67
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    goto :goto_30

    .line 11169
    :cond_6e
    monitor-exit v11
    :try_end_6f
    .catchall {:try_start_2b .. :try_end_6f} :catchall_86

    .line 11170
    invoke-virtual {v10, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    :goto_73
    if-eq v4, v3, :cond_8a

    .line 11172
    sget-object v5, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    new-instance v7, Landroid/app/SyncNotedAppOp;

    invoke-direct {v7, v4, v6}, Landroid/app/SyncNotedAppOp;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onNoted(Landroid/app/SyncNotedAppOp;)V

    .line 11171
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    goto :goto_73

    .line 11169
    :catchall_86
    move-exception v0

    move-object p0, v0

    :try_start_88
    monitor-exit v11
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_86

    throw p0

    .line 11144
    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 11176
    :cond_8e
    return-void
.end method

.method private static blacklist readDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 11814
    const-class v0, Landroid/content/pm/ParceledListSlice;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ParceledListSlice;

    .line 11815
    if-nez p0, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method private static blacklist readLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .registers 8

    .line 11794
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11795
    if-gez v0, :cond_8

    .line 11796
    const/4 p0, 0x0

    return-object p0

    .line 11798
    :cond_8
    new-instance v1, Landroid/util/LongSparseLongArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 11799
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1e

    .line 11800
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 11799
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 11802
    :cond_1e
    return-object v1
.end method

.method public static blacklist resolveFirstUnrestrictedUidState(I)I
    .registers 1

    .line 610
    const/16 p0, 0x1f4

    return p0
.end method

.method public static blacklist resolveLastRestrictedUidState(I)I
    .registers 1

    .line 621
    const/16 p0, 0x258

    return p0
.end method

.method public static blacklist resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 8941
    if-nez p0, :cond_6

    .line 8942
    const-string/jumbo p0, "root"

    return-object p0

    .line 8943
    :cond_6
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_d

    .line 8944
    const-string p0, "com.android.shell"

    return-object p0

    .line 8945
    :cond_d
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_15

    .line 8946
    const-string/jumbo p0, "media"

    return-object p0

    .line 8947
    :cond_15
    const/16 v0, 0x411

    if-ne p0, v0, :cond_1c

    .line 8948
    const-string p0, "audioserver"

    return-object p0

    .line 8949
    :cond_1c
    const/16 v0, 0x417

    if-ne p0, v0, :cond_23

    .line 8950
    const-string p0, "cameraserver"

    return-object p0

    .line 8951
    :cond_23
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_2c

    if-nez p1, :cond_2c

    .line 8952
    const-string p0, "android"

    return-object p0

    .line 8954
    :cond_2c
    return-object p1
.end method

.method public static blacklist resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V
    .registers 3

    .line 10917
    if-eqz p0, :cond_18

    .line 10918
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    iget v1, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10920
    iget-object v0, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mCollectedNotedAppOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_18

    .line 10921
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    iget-object p0, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mCollectedNotedAppOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10924
    :cond_18
    return-void
.end method

.method public static blacklist shouldForceCollectNoteForOp(I)Z
    .registers 4

    .line 3445
    const/16 v0, 0xa9

    const-string/jumbo v1, "opCode"

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3446
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Landroid/app/AppOpInfo;->forceCollectNotes:Z

    return p0
.end method

.method public static blacklist startNotedAppOpsCollection(I)V
    .registers 2

    .line 10863
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10864
    return-void
.end method

.method private blacklist startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)I
    .registers 27

    .line 10477
    move-object/from16 v0, p0

    move/from16 v3, p2

    :try_start_4
    invoke-direct {v0, v3}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 10478
    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct {v0, v4, v5, v3}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v14

    .line 10479
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-ne v1, v2, :cond_1b

    move v1, v15

    goto :goto_1c

    :cond_1b
    move v1, v6

    .line 10480
    :goto_1c
    const/4 v2, 0x3

    if-ne v14, v2, :cond_28

    .line 10481
    if-nez p8, :cond_28

    .line 10483
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v1

    .line 10484
    move-object v9, v1

    move v10, v15

    goto :goto_2b

    .line 10489
    :cond_28
    move-object/from16 v9, p8

    move v10, v1

    :goto_2b
    if-nez p7, :cond_43

    .line 10490
    iget-object v1, v0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v14, v2, :cond_33

    move v8, v15

    goto :goto_34

    :cond_33
    move v8, v6

    :goto_34
    move-object/from16 v2, p1

    move/from16 v7, p5

    move-object/from16 v6, p6

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    goto :goto_61

    .line 10494
    :cond_43
    iget-object v1, v0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v14, v2, :cond_48

    move v6, v15

    :cond_48
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p5

    move/from16 v7, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move v11, v10

    move-object v10, v9

    move v9, v6

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v13}, Lcom/android/internal/app/IAppOpsService;->startOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    .line 10499
    :goto_61
    invoke-virtual {v1}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v2

    if-nez v2, :cond_73

    .line 10500
    if-ne v14, v15, :cond_6d

    .line 10501
    invoke-direct {v0, v1}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_73

    .line 10502
    :cond_6d
    const/4 v0, 0x2

    if-ne v14, v0, :cond_73

    .line 10503
    invoke-static {v1}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 10507
    :cond_73
    :goto_73
    invoke-virtual {v1}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v0
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_77} :catch_78

    return v0

    .line 10508
    :catch_78
    move-exception v0

    .line 10509
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static greylist-max-o strDebugOpToOp(Ljava/lang/String;)I
    .registers 4

    .line 3561
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 3562
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3563
    return v0

    .line 3561
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3566
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist strOpToOp(Ljava/lang/String;)I
    .registers 4

    .line 9443
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 9444
    if-eqz v0, :cond_f

    .line 9447
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 9445
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist sumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J
    .registers 12

    .line 7898
    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    .line 7899
    return-wide v0

    .line 7901
    :cond_5
    nop

    .line 7902
    :goto_6
    if-eqz p3, :cond_2b

    .line 7903
    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 7904
    not-int v3, v2

    and-int/2addr p3, v3

    .line 7905
    sget-object v3, Landroid/app/AppOpsManager;->UID_STATES:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_2a

    aget v6, v3, v5

    .line 7906
    if-lt v6, p1, :cond_27

    if-le v6, p2, :cond_1e

    .line 7907
    goto :goto_27

    .line 7909
    :cond_1e
    invoke-static {v6, v2}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v6

    .line 7910
    invoke-virtual {p0, v6, v7}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 7905
    :cond_27
    :goto_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 7912
    :cond_2a
    goto :goto_6

    .line 7913
    :cond_2b
    return-wide v0
.end method

.method public static blacklist toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 2

    .line 3741
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toReceiverId(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 3719
    if-nez p0, :cond_6

    .line 3720
    const-string/jumbo p0, "null"

    return-object p0

    .line 3721
    :cond_6
    instance-of v0, p0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_11

    .line 3722
    check-cast p0, Landroid/app/PendingIntent;

    invoke-static {p0}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3724
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist uidStateToString(I)Ljava/lang/String;
    .registers 1

    .line 11841
    sparse-switch p0, :sswitch_data_1c

    .line 11864
    const-string p0, "UNKNOWN"

    return-object p0

    .line 11861
    :sswitch_6
    const-string p0, "UID_STATE_CACHED"

    return-object p0

    .line 11858
    :sswitch_9
    const-string p0, "UID_STATE_BACKGROUND"

    return-object p0

    .line 11855
    :sswitch_c
    const-string p0, "UID_STATE_FOREGROUND"

    return-object p0

    .line 11852
    :sswitch_f
    const-string p0, "UID_STATE_FOREGROUND_SERVICE"

    return-object p0

    .line 11849
    :sswitch_12
    const-string p0, "UID_STATE_FOREGROUND_SERVICE_LOCATION"

    return-object p0

    .line 11846
    :sswitch_15
    const-string p0, "UID_STATE_TOP"

    return-object p0

    .line 11843
    :sswitch_18
    const-string p0, "UID_STATE_PERSISTENT"

    return-object p0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x64 -> :sswitch_18
        0xc8 -> :sswitch_15
        0x12c -> :sswitch_12
        0x190 -> :sswitch_f
        0x1f4 -> :sswitch_c
        0x258 -> :sswitch_9
        0x2bc -> :sswitch_6
    .end sparse-switch
.end method

.method private static blacklist writeDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 11808
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    move-object p0, v0

    .line 11809
    :goto_a
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 11810
    return-void
.end method

.method private static blacklist writeLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V
    .registers 6

    .line 11780
    if-eqz p0, :cond_1e

    .line 11781
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 11782
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11783
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1d

    .line 11784
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 11785
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 11783
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 11787
    :cond_1d
    goto :goto_22

    .line 11788
    :cond_1e
    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11790
    :goto_22
    return-void
.end method


# virtual methods
.method public blacklist addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 3

    .line 11615
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11618
    nop

    .line 11619
    return-void

    .line 11616
    :catch_7
    move-exception p1

    .line 11617
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o checkAudioOp(IIILjava/lang/String;)I
    .registers 6

    .line 10248
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result p2

    .line 10249
    const/4 v0, 0x2

    if-eq p2, v0, :cond_a

    .line 10252
    return p2

    .line 10250
    :cond_a
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 10253
    :catch_14
    move-exception p1

    .line 10254
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o checkAudioOpNoThrow(IIILjava/lang/String;)I
    .registers 6

    .line 10265
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 10266
    :catch_7
    move-exception p1

    .line 10267
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist checkOp(IILjava/lang/String;)I
    .registers 10

    .line 10162
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 10163
    const/4 p2, 0x2

    if-eq p1, p2, :cond_e

    .line 10166
    return p1

    .line 10164
    :cond_e
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p0, v1, v2, v3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 4

    .line 9508
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist checkOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 11

    .line 9540
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    .line 9542
    const/4 p3, 0x2

    if-eq p2, p3, :cond_11

    .line 9545
    return p2

    .line 9543
    :cond_11
    new-instance p2, Ljava/lang/SecurityException;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v2, v3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public greylist checkOpNoThrow(IILjava/lang/String;)I
    .registers 10

    .line 10192
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public blacklist checkOpNoThrow(ILandroid/content/AttributionSource;)I
    .registers 9

    .line 10178
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 10179
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v5

    .line 10178
    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 4

    .line 9577
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 11

    .line 9555
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist checkOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 11

    .line 9567
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpRawNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist checkPackage(ILjava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10226
    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->checkPackageCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 10227
    sget-object v0, Landroid/app/AppOpsManager;->sCheckPackageCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/AppOpsManager$CheckPackageQuery;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/app/AppOpsManager$CheckPackageQuery;-><init>(ILjava/lang/String;Landroid/app/AppOpsManager-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1f

    .line 10230
    :cond_19
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v0

    .line 10233
    :goto_1f
    if-nez v0, :cond_23

    .line 10239
    nop

    .line 10240
    return-void

    .line 10234
    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " does not belong to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_46} :catch_46

    .line 10237
    :catch_46
    move-exception p1

    .line 10238
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist clearHistory()V
    .registers 2

    .line 11647
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->clearHistory()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11650
    nop

    .line 11651
    return-void

    .line 11648
    :catch_7
    move-exception v0

    .line 11649
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11683
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 11684
    :catch_7
    move-exception v0

    .line 11685
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o finishOp(I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10661
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 10662
    return-void
.end method

.method public greylist-max-o finishOp(IILjava/lang/String;)V
    .registers 5

    .line 10688
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 10689
    return-void
.end method

.method public blacklist finishOp(IILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 10698
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 10699
    return-void
.end method

.method public blacklist finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 10719
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 10720
    return-void
.end method

.method public blacklist finishOp(Landroid/os/IBinder;ILandroid/content/AttributionSource;)V
    .registers 11

    .line 10707
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    .line 10708
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 10709
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v6

    .line 10707
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 10710
    return-void
.end method

.method public whitelist finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 10668
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 10669
    return-void
.end method

.method public whitelist finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 10679
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 10680
    return-void
.end method

.method public blacklist finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V
    .registers 6

    .line 10771
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 10772
    invoke-static {p2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object p3

    .line 10771
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->finishProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 10775
    nop

    .line 10776
    return-void

    .line 10773
    :catch_f
    move-exception p1

    .line 10774
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist finishProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 10750
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v6

    .line 10751
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    new-instance v1, Landroid/content/AttributionSource;

    const/4 v3, -0x1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v7, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v6, p1, v0, p2}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    .line 10754
    return-void
.end method

.method public whitelist getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 8674
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "executor cannot be null"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8675
    const-string v2, "callback cannot be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8677
    move-object/from16 v2, p0

    :try_start_10
    iget-object v2, v2, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmUid(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v3

    move-object v4, v2

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmPackageName(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v2

    move v5, v3

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmAttributionTag(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v4

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmOpNames(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v4

    move v7, v5

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmHistoryFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v5

    move-object v8, v6

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFilter(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v6

    move v10, v7

    move-object v9, v8

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmBeginTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v7

    move-object v11, v9

    move v12, v10

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmEndTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v9

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v13

    move v14, v12

    new-instance v12, Landroid/os/RemoteCallback;

    new-instance v15, Landroid/app/AppOpsManager$$ExternalSyntheticLambda6;

    invoke-direct {v15, v0, v1}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v12, v15}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v0, v11

    move v11, v13

    move v1, v14

    invoke-interface/range {v0 .. v12}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_50} :catch_52

    .line 8691
    nop

    .line 8692
    return-void

    .line 8689
    :catch_52
    move-exception v0

    .line 8690
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getHistoricalOpsFromDiskRaw(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 8714
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "executor cannot be null"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8715
    const-string v2, "callback cannot be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8717
    move-object/from16 v2, p0

    :try_start_10
    iget-object v2, v2, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmUid(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v3

    move-object v4, v2

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmPackageName(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v2

    move v5, v3

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmAttributionTag(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v4

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmOpNames(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v4

    move v7, v5

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmHistoryFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v5

    move-object v8, v6

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFilter(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v6

    move v10, v7

    move-object v9, v8

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmBeginTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v7

    move-object v11, v9

    move v12, v10

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmEndTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v9

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v13

    move v14, v12

    new-instance v12, Landroid/os/RemoteCallback;

    new-instance v15, Landroid/app/AppOpsManager$$ExternalSyntheticLambda7;

    invoke-direct {v15, v0, v1}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v12, v15}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v0, v11

    move v11, v13

    move v1, v14

    invoke-interface/range {v0 .. v12}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_50} :catch_52

    .line 8731
    nop

    .line 8732
    return-void

    .line 8729
    :catch_52
    move-exception v0

    .line 8730
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8614
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 8615
    :catch_7
    move-exception p1

    .line 8616
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public varargs whitelist getOpsForPackage(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 8640
    nop

    .line 8641
    if-eqz p3, :cond_15

    .line 8642
    array-length v0, p3

    new-array v0, v0, [I

    .line 8643
    const/4 v1, 0x0

    :goto_7
    array-length v2, p3

    if-ge v1, v2, :cond_16

    .line 8644
    aget-object v2, p3, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 8643
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 8641
    :cond_15
    const/4 v0, 0x0

    .line 8648
    :cond_16
    :try_start_16
    iget-object p3, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p1

    .line 8649
    if-nez p1, :cond_23

    .line 8650
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_22} :catch_24

    return-object p1

    .line 8652
    :cond_23
    return-object p1

    .line 8653
    :catch_24
    move-exception p1

    .line 8654
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist getPackagesForOps([I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 8580
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    const-string v1, "default:0"

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOpsForDevice([ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 8582
    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object p1

    .line 8583
    :catch_11
    move-exception p1

    .line 8584
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getPackagesForOps([Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 8513
    if-eqz p1, :cond_1c

    .line 8514
    array-length v0, p1

    .line 8515
    new-array v1, v0, [I

    .line 8516
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1b

    .line 8517
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 8516
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 8519
    :cond_1b
    goto :goto_1d

    .line 8520
    :cond_1c
    const/4 v1, 0x0

    .line 8522
    :goto_1d
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p1

    .line 8523
    if-eqz p1, :cond_24

    goto :goto_28

    :cond_24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_28
    return-object p1
.end method

.method public whitelist getPackagesForOps([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 8546
    if-eqz p1, :cond_1c

    .line 8547
    array-length v0, p1

    .line 8548
    new-array v1, v0, [I

    .line 8549
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1b

    .line 8550
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 8549
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 8552
    :cond_1b
    goto :goto_1d

    .line 8553
    :cond_1c
    const/4 v1, 0x0

    .line 8556
    :goto_1d
    :try_start_1d
    iget-object p1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {p1, v1, p2}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOpsForDevice([ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 8558
    if-nez p1, :cond_2a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_2e

    :cond_2a
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2e} :catch_2f

    :goto_2e
    return-object p1

    .line 8559
    :catch_2f
    move-exception p1

    .line 8560
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getPackagesWithNonDefaultUidMode(II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10847
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/app/IAppOpsService;->getPackagesWithNonDefaultUidMode(III)Ljava/util/List;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 10848
    :catch_d
    move-exception p1

    .line 10849
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getPermissionGroupUsageForPrivacyIndicator(Z)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 11002
    iget-object v0, p0, Landroid/app/AppOpsManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    if-nez v0, :cond_d

    .line 11003
    new-instance v0, Landroid/permission/PermissionUsageHelper;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/permission/PermissionUsageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    .line 11006
    :cond_d
    iget-object v0, p0, Landroid/app/AppOpsManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    invoke-virtual {v0, p1}, Landroid/permission/PermissionUsageHelper;->getOpUsageDataForAllDevices(Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist isOpActive(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 4

    .line 10789
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist isOperationActive(IILjava/lang/String;)Z
    .registers 5

    .line 11549
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->isOperationActive(IILjava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 11550
    :catch_7
    move-exception p1

    .line 11551
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isProxying(ILjava/lang/String;ILjava/lang/String;)Z
    .registers 11

    .line 10807
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object p2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10808
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 10807
    move v1, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return p1

    .line 10809
    :catch_16
    move-exception v0

    move-object p1, v0

    .line 10810
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-q noteOp(I)I
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9672
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-q noteOp(IILjava/lang/String;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9685
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 9753
    invoke-virtual/range {p0 .. p5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 9754
    const/4 p5, 0x2

    if-eq p4, p5, :cond_8

    .line 9757
    return p4

    .line 9755
    :cond_8
    new-instance p4, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public whitelist noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9659
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    .line 9743
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-q noteOpNoThrow(IILjava/lang/String;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9778
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .line 9812
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist noteOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 11

    .line 9801
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9802
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v5

    .line 9801
    move-object v0, p0

    move v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9765
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    .line 9789
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist noteProxyOp(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 7

    .line 10008
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p3

    .line 10009
    const/4 p4, 0x2

    if-eq p3, p4, :cond_8

    .line 10017
    return p3

    .line 10010
    :cond_8
    new-instance p3, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Proxy package "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 10011
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " from uid "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 10012
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, " or calling package "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 10013
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 10014
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " not allowed to perform "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p4, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p1, p4, p1

    iget-object p1, p1, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public greylist-max-q noteProxyOp(ILjava/lang/String;)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9949
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 14

    .line 9959
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 9961
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v4, -0x1

    move-object v5, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 9959
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p5, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public whitelist noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9936
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 12

    .line 9986
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 17

    .line 10068
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 10071
    :try_start_4
    invoke-direct/range {p0 .. p1}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 10072
    nop

    .line 10073
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v1

    .line 10074
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 10072
    invoke-direct {p0, v1, v2, p1}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v1

    .line 10075
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1c

    move v2, v4

    goto :goto_1d

    :cond_1c
    move v2, v3

    .line 10076
    :goto_1d
    const/4 v5, 0x3

    if-ne v1, v5, :cond_29

    .line 10077
    if-nez p3, :cond_29

    .line 10079
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object p3

    .line 10080
    move v10, v4

    move-object v9, p3

    goto :goto_2b

    .line 10084
    :cond_29
    move v10, v2

    move-object v9, p3

    :goto_2b
    iget-object p3, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 10085
    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v7

    if-ne v1, v5, :cond_35

    move v8, v4

    goto :goto_36

    :cond_35
    move v8, v3

    .line 10084
    :goto_36
    move v6, p1

    move-object v5, p3

    move/from16 v11, p4

    invoke-interface/range {v5 .. v11}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperationWithState(ILandroid/content/AttributionSourceState;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p1

    .line 10088
    invoke-virtual {p1}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result p3

    if-nez p3, :cond_65

    .line 10089
    if-ne v1, v4, :cond_4a

    .line 10090
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_65

    .line 10091
    :cond_4a
    const/4 p3, 0x2

    if-ne v1, p3, :cond_65

    iget-object p3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 10093
    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p3

    if-eqz p3, :cond_62

    .line 10095
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result p2

    if-ne p3, p2, :cond_65

    .line 10096
    :cond_62
    invoke-static {p1}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 10100
    :cond_65
    :goto_65
    invoke-virtual {p1}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result p1
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_69} :catch_6a

    return p1

    .line 10101
    :catch_6a
    move-exception v0

    move-object p1, v0

    .line 10102
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10025
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10034
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 14

    .line 10045
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10046
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10048
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v4, -0x1

    move-object v5, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 10045
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p5, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public blacklist offsetHistory(J)V
    .registers 4

    .line 11593
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->offsetHistory(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11596
    nop

    .line 11597
    return-void

    .line 11594
    :catch_7
    move-exception p1

    .line 11595
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist rebootHistory(J)V
    .registers 4

    .line 11666
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->rebootHistory(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11669
    nop

    .line 11670
    return-void

    .line 11667
    :catch_7
    move-exception p1

    .line 11668
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist reloadNonHistoricalState()V
    .registers 2

    .line 8743
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->reloadNonHistoricalState()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 8746
    nop

    .line 8747
    return-void

    .line 8744
    :catch_7
    move-exception v0

    .line 8745
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-r resetAllModes()V
    .registers 4

    .line 8902
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    .line 8905
    nop

    .line 8906
    return-void

    .line 8903
    :catch_e
    move-exception v0

    .line 8904
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist resetHistoryParameters()V
    .registers 2

    .line 11632
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->resetHistoryParameters()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11635
    nop

    .line 11636
    return-void

    .line 11633
    :catch_7
    move-exception v0

    .line 11634
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist resetPackageOpsNoHistory(Ljava/lang/String;)V
    .registers 3

    .line 10826
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->resetPackageOpsNoHistory(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 10829
    nop

    .line 10830
    return-void

    .line 10827
    :catch_7
    move-exception p1

    .line 10828
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setAudioRestriction(I[II[Ljava/lang/String;)V
    .registers 6

    .line 8870
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(I[II[Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 8873
    nop

    .line 8874
    return-void

    .line 8871
    :catch_7
    move-exception p1

    .line 8872
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setHistoryParameters(IJI)V
    .registers 6

    .line 11576
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setHistoryParameters(IJI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11579
    nop

    .line 11580
    return-void

    .line 11577
    :catch_7
    move-exception p1

    .line 11578
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist setMode(IILjava/lang/String;I)V
    .registers 6

    .line 8822
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 8825
    nop

    .line 8826
    return-void

    .line 8823
    :catch_7
    move-exception p1

    .line 8824
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setMode(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8844
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 8847
    nop

    .line 8848
    return-void

    .line 8845
    :catch_b
    move-exception p1

    .line 8846
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist setNotedAppOpsCollector(Landroid/app/AppOpsManager$AppOpsCollector;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11310
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11311
    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    .line 11312
    :try_start_6
    invoke-static {}, Landroid/app/AppOpsManager;->isListeningForOpNoted()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 11313
    invoke-virtual {p0, v1, v1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    .line 11315
    :cond_f
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v1, p1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    goto :goto_23

    .line 11316
    :cond_1c
    sget-object p1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz p1, :cond_23

    .line 11317
    invoke-virtual {p0, v1, v1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    .line 11319
    :cond_23
    :goto_23
    monitor-exit v0

    .line 11320
    return-void

    .line 11319
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public whitelist setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V
    .registers 4

    .line 11198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;I)V

    .line 11199
    return-void
.end method

.method public whitelist setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;I)V
    .registers 10

    .line 11238
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-nez p1, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v0

    :goto_c
    if-ne v2, v3, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    move v2, v0

    :goto_11
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 11239
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 11241
    sget-object v2, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 11242
    const/4 v3, 0x0

    if-nez p2, :cond_48

    .line 11243
    :try_start_1d
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 11244
    sget-object p1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz p1, :cond_25

    move v0, v1

    :cond_25
    const-string p1, "No callback is currently registered"

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 11247
    sget-boolean p1, Landroid/app/AppOpsManager;->sIgnoreAsyncNotedCallback:Z
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_d3

    if-nez p1, :cond_44

    .line 11249
    :try_start_2e
    iget-object p1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object p2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-static {p3}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fgetmAsyncCb(Landroid/app/AppOpsManager$OnOpNotedCallback;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3f} :catch_40
    .catchall {:try_start_2e .. :try_end_3f} :catchall_d3

    .line 11253
    goto :goto_44

    .line 11251
    :catch_40
    move-exception p1

    .line 11252
    :try_start_41
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11256
    :cond_44
    :goto_44
    sput-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    goto/16 :goto_d1

    .line 11258
    :cond_48
    sget-object v4, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-nez v4, :cond_4e

    move v4, v1

    goto :goto_4f

    :cond_4e
    move v4, v0

    :goto_4f
    const-string v5, "Another callback is already registered"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 11261
    invoke-static {p2, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fputmAsyncExecutor(Landroid/app/AppOpsManager$OnOpNotedCallback;Ljava/util/concurrent/Executor;)V

    .line 11262
    sput-object p2, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 11263
    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_5e

    goto :goto_5f

    :cond_5e
    move v1, v0

    :goto_5f
    sput-boolean v1, Landroid/app/AppOpsManager;->sIgnoreAsyncNotedCallback:Z

    .line 11265
    nop

    .line 11266
    sget-boolean p1, Landroid/app/AppOpsManager;->sIgnoreAsyncNotedCallback:Z
    :try_end_64
    .catchall {:try_start_41 .. :try_end_64} :catchall_d3

    if-nez p1, :cond_88

    .line 11268
    :try_start_66
    iget-object p1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object p2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-static {p3}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fgetmAsyncCb(Landroid/app/AppOpsManager$OnOpNotedCallback;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 11270
    iget-object p1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object p2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/internal/app/IAppOpsService;->extractAsyncOps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_83} :catch_84
    .catchall {:try_start_66 .. :try_end_83} :catchall_d3

    .line 11273
    goto :goto_88

    .line 11271
    :catch_84
    move-exception p1

    .line 11272
    :try_start_85
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11277
    :cond_88
    :goto_88
    sget-object p1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 11278
    if-eqz p1, :cond_aa

    if-eqz v3, :cond_aa

    .line 11279
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    .line 11280
    move p3, v0

    :goto_93
    if-ge p3, p2, :cond_aa

    .line 11281
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AsyncNotedAppOp;

    .line 11282
    invoke-virtual {p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->getAsyncNotedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Landroid/app/AppOpsManager$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1, v1}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda1;-><init>(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11280
    add-int/lit8 p3, p3, 0x1

    goto :goto_93

    .line 11286
    :cond_aa
    sget-object p2, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 11287
    if-eqz p1, :cond_cc

    .line 11288
    nop

    :goto_b3
    if-ge v0, p2, :cond_cc

    .line 11289
    sget-object p3, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AsyncNotedAppOp;

    .line 11290
    invoke-virtual {p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->getAsyncNotedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, p3}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11288
    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    .line 11294
    :cond_cc
    sget-object p1, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 11296
    :goto_d1
    monitor-exit v2

    .line 11297
    return-void

    .line 11296
    :catchall_d3
    move-exception p1

    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_85 .. :try_end_d5} :catchall_d3

    throw p1
.end method

.method public greylist setRestriction(III[Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8893
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager;->setAudioRestriction(I[II[Ljava/lang/String;)V

    .line 8894
    return-void
.end method

.method public greylist-max-o setUidMode(III)V
    .registers 5

    .line 8762
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 8765
    nop

    .line 8766
    return-void

    .line 8763
    :catch_7
    move-exception p1

    .line 8764
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setUidMode(Ljava/lang/String;II)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8782
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 8785
    nop

    .line 8786
    return-void

    .line 8783
    :catch_b
    move-exception p1

    .line 8784
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setUserRestriction(IZLandroid/os/IBinder;)V
    .registers 5

    .line 8790
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;)V

    .line 8791
    return-void
.end method

.method public blacklist setUserRestriction(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;)V
    .registers 12

    .line 8799
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8800
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 8799
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 8801
    return-void
.end method

.method public blacklist setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V
    .registers 7

    .line 8810
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move p0, p5

    move-object p5, p4

    move p4, p0

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/app/IAppOpsService;->setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 8813
    nop

    .line 8814
    return-void

    .line 8811
    :catch_b
    move-exception v0

    move-object p1, v0

    .line 8812
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o startOp(I)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10320
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o startOp(IILjava/lang/String;)I
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10330
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o startOp(IILjava/lang/String;Z)I
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10340
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 10376
    invoke-virtual/range {p0 .. p6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 10378
    const/4 p5, 0x2

    if-eq p4, p5, :cond_8

    .line 10381
    return p4

    .line 10379
    :cond_8
    new-instance p4, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public whitelist startOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10310
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .line 10366
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o startOpNoThrow(IILjava/lang/String;)I
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10399
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o startOpNoThrow(IILjava/lang/String;Z)I
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10409
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 16

    .line 10430
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 18

    .line 10441
    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public blacklist startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I
    .registers 21

    .line 10468
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public blacklist startOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLjava/lang/String;II)I
    .registers 19

    .line 10454
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    .line 10455
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 10456
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v7

    .line 10454
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public whitelist startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10389
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .line 10420
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist startProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    .line 10533
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10535
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v4, -0x1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 10533
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p5, p2}, Landroid/app/AppOpsManager;->startProxyOp(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public blacklist startProxyOp(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 7

    .line 10558
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p3

    .line 10560
    const/4 p4, 0x2

    if-eq p3, p4, :cond_c

    .line 10568
    return p3

    .line 10561
    :cond_c
    new-instance p3, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Proxy package "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 10562
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " from uid "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 10563
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, " or calling package "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 10564
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 10565
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " not allowed to perform "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public blacklist startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 14

    .line 10598
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result p1

    return p1
.end method

.method public blacklist startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I
    .registers 23

    .line 10618
    move/from16 v2, p2

    :try_start_2
    invoke-direct {p0, v2}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 10619
    nop

    .line 10620
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    .line 10621
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10619
    invoke-direct {p0, v0, v1, v2}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v12

    .line 10622
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v3, 0x0

    const/4 v13, 0x1

    if-ne v0, v1, :cond_1e

    move v0, v13

    goto :goto_1f

    :cond_1e
    move v0, v3

    .line 10623
    :goto_1f
    const/4 v1, 0x3

    if-ne v12, v1, :cond_2b

    .line 10624
    if-nez p4, :cond_2b

    .line 10626
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v0

    .line 10627
    move-object v6, v0

    move v7, v13

    goto :goto_2e

    .line 10631
    :cond_2b
    move-object/from16 v6, p4

    move v7, v0

    :goto_2e
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 10632
    move v4, v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    if-ne v12, v1, :cond_39

    move v5, v13

    goto :goto_3a

    :cond_39
    move v5, v4

    .line 10631
    :goto_3a
    const/4 v4, 0x0

    move-object v1, p1

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/app/IAppOpsService;->startProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 10636
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v1

    if-nez v1, :cond_73

    .line 10637
    if-ne v12, v13, :cond_54

    .line 10638
    invoke-direct {p0, v0}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_73

    .line 10639
    :cond_54
    const/4 v1, 0x2

    if-ne v12, v1, :cond_73

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    .line 10642
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 10641
    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_70

    .line 10643
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    if-ne v1, v2, :cond_73

    .line 10644
    :cond_70
    invoke-static {v0}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 10648
    :cond_73
    :goto_73
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v0
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_77} :catch_78

    return v0

    .line 10649
    :catch_78
    move-exception v0

    .line 10650
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist startProxyOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    .line 10580
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10581
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10583
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v4, -0x1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 10580
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p5, p2}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public blacklist startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9080
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 9081
    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 9082
    aget v2, p1, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 9081
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 9084
    :cond_12
    iget-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 9085
    return-void
.end method

.method public whitelist startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .registers 6

    .line 9107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9108
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9109
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9111
    iget-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9112
    :try_start_c
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 9113
    if-eqz v1, :cond_18

    .line 9114
    monitor-exit v0

    return-void

    .line 9116
    :cond_18
    new-instance v1, Landroid/app/AppOpsManager$5;

    invoke-direct {v1, p0, p2, p3}, Landroid/app/AppOpsManager$5;-><init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 9146
    iget-object p2, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9147
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_42

    .line 9148
    array-length p2, p1

    new-array p2, p2, [I

    .line 9149
    const/4 p3, 0x0

    :goto_27
    array-length v0, p1

    if-ge p3, v0, :cond_35

    .line 9150
    aget-object v0, p1, p3

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, p3

    .line 9149
    add-int/lit8 p3, p3, 0x1

    goto :goto_27

    .line 9153
    :cond_35
    :try_start_35
    iget-object p1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {p1, p2, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3a} :catch_3c

    .line 9156
    nop

    .line 9157
    return-void

    .line 9154
    :catch_3c
    move-exception p1

    .line 9155
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 9147
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public greylist-max-o startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 9

    .line 9015
    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9016
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsCallback;

    .line 9017
    if-nez v1, :cond_17

    .line 9018
    new-instance v1, Landroid/app/AppOpsManager$4;

    invoke-direct {v1, p0, p4}, Landroid/app/AppOpsManager$4;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 9042
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9046
    :cond_17
    const-wide/32 v2, 0x8d50f1e

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_30

    if-nez p4, :cond_22

    .line 9048
    or-int/lit8 p3, p3, 0x2

    .line 9052
    :cond_22
    :try_start_22
    iget-object p4, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {p4, p1, p2, p3, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_2a
    .catchall {:try_start_22 .. :try_end_27} :catchall_30

    .line 9055
    nop

    .line 9056
    :try_start_28
    monitor-exit v0

    .line 9057
    return-void

    .line 9053
    :catch_2a
    move-exception p1

    .line 9054
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 9056
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public greylist-max-o startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 5

    .line 8997
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 8998
    return-void
.end method

.method public whitelist startWatchingMode(Ljava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 5

    .line 8981
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 8982
    return-void
.end method

.method public whitelist startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 4

    .line 8967
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 8968
    return-void
.end method

.method public blacklist startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 4

    .line 9338
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILjava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 9339
    return-void
.end method

.method public blacklist startWatchingNoted([ILjava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 6

    .line 9373
    iget-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9374
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 9375
    if-eqz v1, :cond_f

    .line 9376
    monitor-exit v0

    return-void

    .line 9378
    :cond_f
    new-instance v1, Landroid/app/AppOpsManager$7;

    invoke-direct {v1, p0, p2, p3}, Landroid/app/AppOpsManager$7;-><init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 9400
    iget-object p2, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9401
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_27

    .line 9403
    :try_start_1a
    iget-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {p2, p1, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_21

    .line 9406
    nop

    .line 9407
    return-void

    .line 9404
    :catch_21
    move-exception p1

    .line 9405
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 9401
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public whitelist startWatchingNoted([Ljava/lang/String;Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9272
    array-length v0, p1

    new-array v0, v0, [I

    .line 9273
    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 9274
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 9273
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 9276
    :cond_12
    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 9277
    return-void
.end method

.method public whitelist startWatchingNoted([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9306
    array-length v0, p1

    new-array v0, v0, [I

    .line 9307
    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 9308
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 9307
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 9310
    :cond_12
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingNoted([ILjava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 9311
    return-void
.end method

.method public blacklist startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V
    .registers 6

    .line 9203
    iget-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9204
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 9205
    monitor-exit v0

    return-void

    .line 9207
    :cond_d
    new-instance v1, Landroid/app/AppOpsManager$6;

    invoke-direct {v1, p0, p2}, Landroid/app/AppOpsManager$6;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 9216
    iget-object v2, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9217
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_25

    .line 9219
    :try_start_18
    iget-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {p2, p1, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1f

    .line 9222
    nop

    .line 9223
    return-void

    .line 9220
    :catch_1f
    move-exception p1

    .line 9221
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 9217
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public whitelist stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .registers 4

    .line 9167
    iget-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9168
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/IAppOpsActiveCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 9169
    if-eqz p1, :cond_19

    .line 9171
    :try_start_d
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 9174
    goto :goto_19

    .line 9172
    :catch_13
    move-exception p1

    .line 9173
    :try_start_14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 9176
    :cond_19
    :goto_19
    monitor-exit v0

    .line 9177
    return-void

    .line 9176
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public whitelist stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 4

    .line 9064
    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9065
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 9066
    if-eqz p1, :cond_19

    .line 9068
    :try_start_d
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 9071
    goto :goto_19

    .line 9069
    :catch_13
    move-exception p1

    .line 9070
    :try_start_14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 9073
    :cond_19
    :goto_19
    monitor-exit v0

    .line 9074
    return-void

    .line 9073
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public whitelist stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9420
    iget-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9421
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/IAppOpsNotedCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 9422
    if-eqz p1, :cond_19

    .line 9424
    :try_start_d
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 9427
    goto :goto_19

    .line 9425
    :catch_13
    move-exception p1

    .line 9426
    :try_start_14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 9429
    :cond_19
    :goto_19
    monitor-exit v0

    .line 9430
    return-void

    .line 9429
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public blacklist stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V
    .registers 4

    .line 9237
    iget-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9238
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/IAppOpsStartedCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 9239
    if-eqz p1, :cond_19

    .line 9241
    :try_start_d
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 9244
    goto :goto_19

    .line 9242
    :catch_13
    move-exception p1

    .line 9243
    :try_start_14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 9246
    :cond_19
    :goto_19
    monitor-exit v0

    .line 9247
    return-void

    .line 9246
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public whitelist unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9480
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9520
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9589
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist unsafeCheckOpRawNoThrow(IILjava/lang/String;)I
    .registers 10

    .line 9633
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpRawNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public blacklist unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I
    .registers 9

    .line 9610
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    .line 9611
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 9612
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v5

    .line 9610
    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpRawNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist unsafeCheckOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9601
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist unsafeCheckOpRawNoThrow(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 3

    .line 9624
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result p1

    return p1
.end method
