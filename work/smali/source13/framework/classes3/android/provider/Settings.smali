.class public final Landroid/provider/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$AddWifiResult;,
        Landroid/provider/Settings$Panel;,
        Landroid/provider/Settings$Bookmarks;,
        Landroid/provider/Settings$Config;,
        Landroid/provider/Settings$Global;,
        Landroid/provider/Settings$Secure;,
        Landroid/provider/Settings$System;,
        Landroid/provider/Settings$Readable;,
        Landroid/provider/Settings$NameValueCache;,
        Landroid/provider/Settings$ContentProviderHolder;,
        Landroid/provider/Settings$GenerationTracker;,
        Landroid/provider/Settings$NameValueTable;,
        Landroid/provider/Settings$SettingNotFoundException;,
        Landroid/provider/Settings$ResetMode;,
        Landroid/provider/Settings$EnableMmsDataReason;,
        Landroid/provider/Settings$SupervisorVerificationSetting;,
        Landroid/provider/Settings$SetAllResult;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ACCESSIBILITY_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_DETAILS_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_SETTINGS"

.field public static final whitelist ACTION_ADD_ACCOUNT:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field public static final whitelist ACTION_AIRPLANE_MODE_SETTINGS:Ljava/lang/String; = "android.settings.AIRPLANE_MODE_SETTINGS"

.field public static final whitelist ACTION_ALL_APPS_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.ALL_APPS_NOTIFICATION_SETTINGS"

.field public static final blacklist ACTION_ALL_APPS_NOTIFICATION_SETTINGS_FOR_REVIEW:Ljava/lang/String; = "android.settings.ALL_APPS_NOTIFICATION_SETTINGS_FOR_REVIEW"

.field public static final whitelist ACTION_APN_SETTINGS:Ljava/lang/String; = "android.settings.APN_SETTINGS"

.field public static final whitelist ACTION_APPLICATION_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field public static final whitelist ACTION_APPLICATION_DEVELOPMENT_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

.field public static final whitelist ACTION_APPLICATION_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_SETTINGS"

.field public static final whitelist ACTION_APP_LOCALE_SETTINGS:Ljava/lang/String; = "android.settings.APP_LOCALE_SETTINGS"

.field public static final whitelist ACTION_APP_NOTIFICATION_BUBBLE_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

.field public static final greylist-max-o ACTION_APP_NOTIFICATION_REDACTION:Ljava/lang/String; = "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

.field public static final whitelist ACTION_APP_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_SETTINGS"

.field public static final whitelist ACTION_APP_OPEN_BY_DEFAULT_SETTINGS:Ljava/lang/String; = "android.settings.APP_OPEN_BY_DEFAULT_SETTINGS"

.field public static final greylist-max-o ACTION_APP_OPS_SETTINGS:Ljava/lang/String; = "android.settings.APP_OPS_SETTINGS"

.field public static final whitelist ACTION_APP_SEARCH_SETTINGS:Ljava/lang/String; = "android.settings.APP_SEARCH_SETTINGS"

.field public static final whitelist ACTION_APP_USAGE_SETTINGS:Ljava/lang/String; = "android.settings.action.APP_USAGE_SETTINGS"

.field public static final greylist-max-o ACTION_ASSIST_GESTURE_SETTINGS:Ljava/lang/String; = "android.settings.ASSIST_GESTURE_SETTINGS"

.field public static final whitelist ACTION_AUTO_ROTATE_SETTINGS:Ljava/lang/String; = "android.settings.AUTO_ROTATE_SETTINGS"

.field public static final whitelist ACTION_BATTERY_SAVER_SETTINGS:Ljava/lang/String; = "android.settings.BATTERY_SAVER_SETTINGS"

.field public static final whitelist ACTION_BEDTIME_SETTINGS:Ljava/lang/String; = "android.settings.BEDTIME_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_BIOMETRIC_ENROLL:Ljava/lang/String; = "android.settings.BIOMETRIC_ENROLL"

.field public static final blacklist ACTION_BLUETOOTH_PAIRING_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_PAIRING_SETTINGS"

.field public static final whitelist ACTION_BLUETOOTH_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_SETTINGS"

.field public static final whitelist ACTION_BUGREPORT_HANDLER_SETTINGS:Ljava/lang/String; = "android.settings.BUGREPORT_HANDLER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CAPTIONING_SETTINGS:Ljava/lang/String; = "android.settings.CAPTIONING_SETTINGS"

.field public static final whitelist ACTION_CAST_SETTINGS:Ljava/lang/String; = "android.settings.CAST_SETTINGS"

.field public static final whitelist ACTION_CHANNEL_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

.field public static final blacklist ACTION_COLOR_CORRECTION_SETTINGS:Ljava/lang/String; = "com.android.settings.ACCESSIBILITY_COLOR_SPACE_SETTINGS"

.field public static final blacklist ACTION_COLOR_INVERSION_SETTINGS:Ljava/lang/String; = "android.settings.COLOR_INVERSION_SETTINGS"

.field public static final whitelist ACTION_CONDITION_PROVIDER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

.field public static final blacklist ACTION_CONVERSATION_SETTINGS:Ljava/lang/String; = "android.settings.CONVERSATION_SETTINGS"

.field public static final blacklist ACTION_DARK_THEME_SETTINGS:Ljava/lang/String; = "android.settings.DARK_THEME_SETTINGS"

.field public static final whitelist ACTION_DATA_ROAMING_SETTINGS:Ljava/lang/String; = "android.settings.DATA_ROAMING_SETTINGS"

.field public static final blacklist ACTION_DATA_SAVER_SETTINGS:Ljava/lang/String; = "android.settings.DATA_SAVER_SETTINGS"

.field public static final whitelist ACTION_DATA_USAGE_SETTINGS:Ljava/lang/String; = "android.settings.DATA_USAGE_SETTINGS"

.field public static final whitelist ACTION_DATE_SETTINGS:Ljava/lang/String; = "android.settings.DATE_SETTINGS"

.field public static final blacklist ACTION_DEVICE_CONTROLS_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_DEVICE_CONTROLS_SETTINGS"

.field public static final whitelist ACTION_DEVICE_INFO_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_INFO_SETTINGS"

.field public static final whitelist ACTION_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.DISPLAY_SETTINGS"

.field public static final whitelist ACTION_DREAM_SETTINGS:Ljava/lang/String; = "android.settings.DREAM_SETTINGS"

.field public static final blacklist ACTION_ENABLE_MMS_DATA_REQUEST:Ljava/lang/String; = "android.settings.ENABLE_MMS_DATA_REQUEST"

.field public static final whitelist ACTION_ENTERPRISE_PRIVACY_SETTINGS:Ljava/lang/String; = "android.settings.ENTERPRISE_PRIVACY_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_FINGERPRINT_ENROLL:Ljava/lang/String; = "android.settings.FINGERPRINT_ENROLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_FOREGROUND_SERVICES_SETTINGS:Ljava/lang/String; = "android.settings.FOREGROUND_SERVICES_SETTINGS"

.field public static final whitelist ACTION_HARD_KEYBOARD_SETTINGS:Ljava/lang/String; = "android.settings.HARD_KEYBOARD_SETTINGS"

.field public static final whitelist ACTION_HOME_SETTINGS:Ljava/lang/String; = "android.settings.HOME_SETTINGS"

.field public static final whitelist ACTION_IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS:Ljava/lang/String; = "android.settings.IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS"

.field public static final whitelist ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS:Ljava/lang/String; = "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

.field public static final whitelist ACTION_INPUT_METHOD_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SETTINGS"

.field public static final whitelist ACTION_INPUT_METHOD_SUBTYPE_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

.field public static final whitelist ACTION_INTERNAL_STORAGE_SETTINGS:Ljava/lang/String; = "android.settings.INTERNAL_STORAGE_SETTINGS"

.field public static final whitelist ACTION_LOCALE_SETTINGS:Ljava/lang/String; = "android.settings.LOCALE_SETTINGS"

.field public static final whitelist ACTION_LOCATION_CONTROLLER_EXTRA_PACKAGE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_CONTROLLER_EXTRA_PACKAGE_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_LOCATION_SCANNING_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SCANNING_SETTINGS"

.field public static final whitelist ACTION_LOCATION_SOURCE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SOURCE_SETTINGS"

.field public static final blacklist ACTION_LOCKSCREEN_SETTINGS:Ljava/lang/String; = "android.settings.LOCK_SCREEN_SETTINGS"

.field public static final greylist-max-o ACTION_MANAGED_PROFILE_SETTINGS:Ljava/lang/String; = "android.settings.MANAGED_PROFILE_SETTINGS"

.field public static final whitelist ACTION_MANAGE_ALL_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

.field public static final whitelist ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION:Ljava/lang/String; = "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

.field public static final whitelist ACTION_MANAGE_ALL_SIM_PROFILES_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_ALL_SIM_PROFILES_SETTINGS"

.field public static final whitelist ACTION_MANAGE_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_APPLICATIONS_SETTINGS"

.field public static final whitelist ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION:Ljava/lang/String; = "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

.field public static final whitelist ACTION_MANAGE_APP_OVERLAY_PERMISSION:Ljava/lang/String; = "android.settings.MANAGE_APP_OVERLAY_PERMISSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_MANAGE_CROSS_PROFILE_ACCESS:Ljava/lang/String; = "android.settings.MANAGE_CROSS_PROFILE_ACCESS"

.field public static final whitelist ACTION_MANAGE_DEFAULT_APPS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

.field public static final whitelist ACTION_MANAGE_DOMAIN_URLS:Ljava/lang/String; = "android.settings.MANAGE_DOMAIN_URLS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_MORE_DEFAULT_APPS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_MORE_DEFAULT_APPS_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_OVERLAY_PERMISSION:Ljava/lang/String; = "android.settings.action.MANAGE_OVERLAY_PERMISSION"

.field public static final whitelist ACTION_MANAGE_SUPERVISOR_RESTRICTED_SETTING:Ljava/lang/String; = "android.settings.MANAGE_SUPERVISOR_RESTRICTED_SETTING"

.field public static final whitelist ACTION_MANAGE_UNKNOWN_APP_SOURCES:Ljava/lang/String; = "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

.field public static final whitelist ACTION_MANAGE_WRITE_SETTINGS:Ljava/lang/String; = "android.settings.action.MANAGE_WRITE_SETTINGS"

.field public static final blacklist ACTION_MEDIA_CONTROLS_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

.field public static final whitelist ACTION_MEMORY_CARD_SETTINGS:Ljava/lang/String; = "android.settings.MEMORY_CARD_SETTINGS"

.field public static final blacklist ACTION_MMS_MESSAGE_SETTING:Ljava/lang/String; = "android.settings.MMS_MESSAGE_SETTING"

.field public static final greylist-max-o ACTION_MOBILE_DATA_USAGE:Ljava/lang/String; = "android.settings.MOBILE_DATA_USAGE"

.field public static final greylist-max-o ACTION_MONITORING_CERT_INFO:Ljava/lang/String; = "com.android.settings.MONITORING_CERT_INFO"

.field public static final whitelist ACTION_NETWORK_OPERATOR_SETTINGS:Ljava/lang/String; = "android.settings.NETWORK_OPERATOR_SETTINGS"

.field public static final whitelist ACTION_NFCSHARING_SETTINGS:Ljava/lang/String; = "android.settings.NFCSHARING_SETTINGS"

.field public static final whitelist ACTION_NFC_PAYMENT_SETTINGS:Ljava/lang/String; = "android.settings.NFC_PAYMENT_SETTINGS"

.field public static final whitelist ACTION_NFC_SETTINGS:Ljava/lang/String; = "android.settings.NFC_SETTINGS"

.field public static final whitelist ACTION_NIGHT_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.NIGHT_DISPLAY_SETTINGS"

.field public static final whitelist ACTION_NOTIFICATION_ASSISTANT_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_ASSISTANT_SETTINGS"

.field public static final blacklist ACTION_NOTIFICATION_HISTORY:Ljava/lang/String; = "android.settings.NOTIFICATION_HISTORY"

.field public static final whitelist ACTION_NOTIFICATION_LISTENER_DETAIL_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_LISTENER_DETAIL_SETTINGS"

.field public static final whitelist ACTION_NOTIFICATION_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

.field public static final whitelist ACTION_NOTIFICATION_POLICY_ACCESS_DETAIL_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_POLICY_ACCESS_DETAIL_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_NOTIFICATION_POLICY_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

.field public static final greylist-max-o ACTION_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_SETTINGS"

.field public static final blacklist ACTION_ONE_HANDED_SETTINGS:Ljava/lang/String; = "android.settings.action.ONE_HANDED_SETTINGS"

.field public static final greylist-max-o ACTION_PAIRING_SETTINGS:Ljava/lang/String; = "android.settings.PAIRING_SETTINGS"

.field public static final greylist-max-o ACTION_PICTURE_IN_PICTURE_SETTINGS:Ljava/lang/String; = "android.settings.PICTURE_IN_PICTURE_SETTINGS"

.field public static final blacklist ACTION_POWER_MENU_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_POWER_MENU_SETTINGS"

.field public static final whitelist ACTION_PRINT_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_PRINT_SETTINGS"

.field public static final whitelist ACTION_PRIVACY_SETTINGS:Ljava/lang/String; = "android.settings.PRIVACY_SETTINGS"

.field public static final whitelist ACTION_PROCESS_WIFI_EASY_CONNECT_URI:Ljava/lang/String; = "android.settings.PROCESS_WIFI_EASY_CONNECT_URI"

.field public static final whitelist ACTION_QUICK_ACCESS_WALLET_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_ACCESS_WALLET_SETTINGS"

.field public static final whitelist ACTION_QUICK_LAUNCH_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_LAUNCH_SETTINGS"

.field public static final blacklist ACTION_REDUCE_BRIGHT_COLORS_SETTINGS:Ljava/lang/String; = "android.settings.REDUCE_BRIGHT_COLORS_SETTINGS"

.field public static final whitelist ACTION_REQUEST_ENABLE_CONTENT_CAPTURE:Ljava/lang/String; = "android.settings.REQUEST_ENABLE_CONTENT_CAPTURE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS:Ljava/lang/String; = "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

.field public static final whitelist ACTION_REQUEST_MANAGE_MEDIA:Ljava/lang/String; = "android.settings.REQUEST_MANAGE_MEDIA"

.field public static final whitelist ACTION_REQUEST_SCHEDULE_EXACT_ALARM:Ljava/lang/String; = "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

.field public static final whitelist ACTION_REQUEST_SET_AUTOFILL_SERVICE:Ljava/lang/String; = "android.settings.REQUEST_SET_AUTOFILL_SERVICE"

.field public static final whitelist ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final whitelist ACTION_SECURITY_SETTINGS:Ljava/lang/String; = "android.settings.SECURITY_SETTINGS"

.field public static final whitelist ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field public static final whitelist ACTION_SETTINGS_EMBED_DEEP_LINK_ACTIVITY:Ljava/lang/String; = "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

.field public static final whitelist ACTION_SHOW_ADMIN_SUPPORT_DETAILS:Ljava/lang/String; = "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SHOW_REGULATORY_INFO:Ljava/lang/String; = "android.settings.SHOW_REGULATORY_INFO"

.field public static final greylist-max-o ACTION_SHOW_REMOTE_BUGREPORT_DIALOG:Ljava/lang/String; = "android.settings.SHOW_REMOTE_BUGREPORT_DIALOG"

.field public static final blacklist ACTION_SHOW_RESTRICTED_SETTING_DIALOG:Ljava/lang/String; = "android.settings.SHOW_RESTRICTED_SETTING_DIALOG"

.field public static final whitelist ACTION_SHOW_WORK_POLICY_INFO:Ljava/lang/String; = "android.settings.SHOW_WORK_POLICY_INFO"

.field public static final whitelist ACTION_SOUND_SETTINGS:Ljava/lang/String; = "android.settings.SOUND_SETTINGS"

.field public static final greylist-max-o ACTION_STORAGE_MANAGER_SETTINGS:Ljava/lang/String; = "android.settings.STORAGE_MANAGER_SETTINGS"

.field public static final whitelist ACTION_STORAGE_VOLUME_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.STORAGE_VOLUME_ACCESS_SETTINGS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_SYNC_SETTINGS:Ljava/lang/String; = "android.settings.SYNC_SETTINGS"

.field public static final greylist-max-o ACTION_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "android.settings.SYSTEM_UPDATE_SETTINGS"

.field public static final whitelist ACTION_TETHER_PROVISIONING_UI:Ljava/lang/String; = "android.settings.TETHER_PROVISIONING_UI"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_TETHER_SETTINGS:Ljava/lang/String; = "android.settings.TETHER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_TETHER_UNSUPPORTED_CARRIER_UI:Ljava/lang/String; = "android.settings.TETHER_UNSUPPORTED_CARRIER_UI"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist ACTION_TRUSTED_CREDENTIALS_USER:Ljava/lang/String; = "com.android.settings.TRUSTED_CREDENTIALS_USER"

.field public static final whitelist ACTION_USAGE_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.USAGE_ACCESS_SETTINGS"

.field public static final greylist-max-r ACTION_USER_DICTIONARY_INSERT:Ljava/lang/String; = "com.android.settings.USER_DICTIONARY_INSERT"

.field public static final whitelist ACTION_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "android.settings.USER_DICTIONARY_SETTINGS"

.field public static final greylist-max-o ACTION_USER_SETTINGS:Ljava/lang/String; = "android.settings.USER_SETTINGS"

.field public static final blacklist ACTION_VIEW_ADVANCED_POWER_USAGE_DETAIL:Ljava/lang/String; = "android.settings.VIEW_ADVANCED_POWER_USAGE_DETAIL"

.field public static final whitelist ACTION_VOICE_CONTROL_AIRPLANE_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_AIRPLANE_MODE"

.field public static final whitelist ACTION_VOICE_CONTROL_BATTERY_SAVER_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_BATTERY_SAVER_MODE"

.field public static final whitelist ACTION_VOICE_CONTROL_DO_NOT_DISTURB_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_DO_NOT_DISTURB_MODE"

.field public static final whitelist ACTION_VOICE_INPUT_SETTINGS:Ljava/lang/String; = "android.settings.VOICE_INPUT_SETTINGS"

.field public static final whitelist ACTION_VPN_SETTINGS:Ljava/lang/String; = "android.settings.VPN_SETTINGS"

.field public static final whitelist ACTION_VR_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.VR_LISTENER_SETTINGS"

.field public static final whitelist ACTION_WEBVIEW_SETTINGS:Ljava/lang/String; = "android.settings.WEBVIEW_SETTINGS"

.field public static final whitelist ACTION_WIFI_ADD_NETWORKS:Ljava/lang/String; = "android.settings.WIFI_ADD_NETWORKS"

.field public static final whitelist ACTION_WIFI_IP_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_IP_SETTINGS"

.field public static final whitelist ACTION_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static final blacklist ACTION_WIFI_TETHER_SETTING:Ljava/lang/String; = "com.android.settings.WIFI_TETHER_SETTINGS"

.field public static final whitelist ACTION_WIRELESS_SETTINGS:Ljava/lang/String; = "android.settings.WIRELESS_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_AUTOMATION_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_AUTOMATION_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_EVENT_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_EXTERNAL_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

.field public static final whitelist ACTION_ZEN_MODE_PRIORITY_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_SCHEDULE_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

.field public static final greylist-max-o ACTION_ZEN_MODE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_SETTINGS"

.field public static final whitelist ADD_WIFI_RESULT_ADD_OR_UPDATE_FAILED:I = 0x1

.field public static final whitelist ADD_WIFI_RESULT_ALREADY_EXISTS:I = 0x2

.field public static final whitelist ADD_WIFI_RESULT_SUCCESS:I = 0x0

.field public static final whitelist AUTHORITY:Ljava/lang/String; = "settings"

.field public static final blacklist CALL_METHOD_DELETE_CONFIG:Ljava/lang/String; = "DELETE_config"

.field public static final blacklist CALL_METHOD_DELETE_GLOBAL:Ljava/lang/String; = "DELETE_global"

.field public static final blacklist CALL_METHOD_DELETE_SECURE:Ljava/lang/String; = "DELETE_secure"

.field public static final blacklist CALL_METHOD_DELETE_SYSTEM:Ljava/lang/String; = "DELETE_system"

.field public static final blacklist CALL_METHOD_FLAGS_KEY:Ljava/lang/String; = "_flags"

.field public static final greylist-max-o CALL_METHOD_GENERATION_INDEX_KEY:Ljava/lang/String; = "_generation_index"

.field public static final greylist-max-o CALL_METHOD_GENERATION_KEY:Ljava/lang/String; = "_generation"

.field public static final blacklist CALL_METHOD_GET_CONFIG:Ljava/lang/String; = "GET_config"

.field public static final greylist-max-o CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final greylist-max-o CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final blacklist CALL_METHOD_GET_SYNC_DISABLED_MODE_CONFIG:Ljava/lang/String; = "GET_SYNC_DISABLED_MODE_config"

.field public static final greylist-max-o CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final blacklist CALL_METHOD_LIST_CONFIG:Ljava/lang/String; = "LIST_config"

.field public static final blacklist CALL_METHOD_LIST_GLOBAL:Ljava/lang/String; = "LIST_global"

.field public static final blacklist CALL_METHOD_LIST_SECURE:Ljava/lang/String; = "LIST_secure"

.field public static final blacklist CALL_METHOD_LIST_SYSTEM:Ljava/lang/String; = "LIST_system"

.field public static final greylist-max-o CALL_METHOD_MAKE_DEFAULT_KEY:Ljava/lang/String; = "_make_default"

.field public static final blacklist CALL_METHOD_MONITOR_CALLBACK_KEY:Ljava/lang/String; = "_monitor_callback_key"

.field public static final blacklist CALL_METHOD_OVERRIDEABLE_BY_RESTORE_KEY:Ljava/lang/String; = "_overrideable_by_restore"

.field public static final blacklist CALL_METHOD_PREFIX_KEY:Ljava/lang/String; = "_prefix"

.field public static final blacklist CALL_METHOD_PUT_CONFIG:Ljava/lang/String; = "PUT_config"

.field public static final greylist-max-o CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final greylist-max-o CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final greylist-max-o CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final blacklist CALL_METHOD_REGISTER_MONITOR_CALLBACK_CONFIG:Ljava/lang/String; = "REGISTER_MONITOR_CALLBACK_config"

.field public static final blacklist CALL_METHOD_RESET_CONFIG:Ljava/lang/String; = "RESET_config"

.field public static final greylist-max-o CALL_METHOD_RESET_GLOBAL:Ljava/lang/String; = "RESET_global"

.field public static final greylist-max-o CALL_METHOD_RESET_MODE_KEY:Ljava/lang/String; = "_reset_mode"

.field public static final greylist-max-o CALL_METHOD_RESET_SECURE:Ljava/lang/String; = "RESET_secure"

.field public static final blacklist CALL_METHOD_SET_ALL_CONFIG:Ljava/lang/String; = "SET_ALL_config"

.field public static final blacklist CALL_METHOD_SET_SYNC_DISABLED_MODE_CONFIG:Ljava/lang/String; = "SET_SYNC_DISABLED_MODE_config"

.field public static final blacklist CALL_METHOD_SYNC_DISABLED_MODE_KEY:Ljava/lang/String; = "_disabled_mode"

.field public static final greylist-max-o CALL_METHOD_TAG_KEY:Ljava/lang/String; = "_tag"

.field public static final greylist-max-o CALL_METHOD_TRACK_GENERATION_KEY:Ljava/lang/String; = "_track_generation"

.field public static final greylist-max-o CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field public static final blacklist DEFAULT_OVERRIDEABLE_BY_RESTORE:Z = false

.field public static final greylist-max-o DEVICE_NAME_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_NAME"

.field public static final blacklist ENABLE_MMS_DATA_REQUEST_REASON_INCOMING_MMS:I = 0x0

.field public static final blacklist ENABLE_MMS_DATA_REQUEST_REASON_OUTGOING_MMS:I = 0x1

.field public static final blacklist EXTRA_ACCESS_CALLBACK:Ljava/lang/String; = "access_callback"

.field public static final whitelist EXTRA_ACCOUNT_TYPES:Ljava/lang/String; = "account_types"

.field public static final whitelist EXTRA_AIRPLANE_MODE_ENABLED:Ljava/lang/String; = "airplane_mode_enabled"

.field public static final whitelist EXTRA_APP_PACKAGE:Ljava/lang/String; = "android.provider.extra.APP_PACKAGE"

.field public static final greylist-max-r EXTRA_APP_UID:Ljava/lang/String; = "app_uid"

.field public static final whitelist EXTRA_AUTHORITIES:Ljava/lang/String; = "authorities"

.field public static final whitelist EXTRA_BATTERY_SAVER_MODE_ENABLED:Ljava/lang/String; = "android.settings.extra.battery_saver_mode_enabled"

.field public static final whitelist EXTRA_BIOMETRIC_AUTHENTICATORS_ALLOWED:Ljava/lang/String; = "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

.field public static final blacklist EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field public static final whitelist EXTRA_CHANNEL_FILTER_LIST:Ljava/lang/String; = "android.provider.extra.CHANNEL_FILTER_LIST"

.field public static final whitelist EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.provider.extra.CHANNEL_ID"

.field public static final whitelist EXTRA_CONVERSATION_ID:Ljava/lang/String; = "android.provider.extra.CONVERSATION_ID"

.field public static final whitelist EXTRA_DO_NOT_DISTURB_MODE_ENABLED:Ljava/lang/String; = "android.settings.extra.do_not_disturb_mode_enabled"

.field public static final whitelist EXTRA_DO_NOT_DISTURB_MODE_MINUTES:Ljava/lang/String; = "android.settings.extra.do_not_disturb_mode_minutes"

.field public static final whitelist EXTRA_EASY_CONNECT_ATTEMPTED_SSID:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_ATTEMPTED_SSID"

.field public static final whitelist EXTRA_EASY_CONNECT_BAND_LIST:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_BAND_LIST"

.field public static final whitelist EXTRA_EASY_CONNECT_CHANNEL_LIST:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_CHANNEL_LIST"

.field public static final whitelist EXTRA_EASY_CONNECT_ERROR_CODE:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_ERROR_CODE"

.field public static final blacklist EXTRA_ENABLE_MMS_DATA_REQUEST_REASON:Ljava/lang/String; = "android.settings.extra.ENABLE_MMS_DATA_REQUEST_REASON"

.field public static final greylist-max-o EXTRA_INPUT_DEVICE_IDENTIFIER:Ljava/lang/String; = "input_device_identifier"

.field public static final whitelist EXTRA_INPUT_METHOD_ID:Ljava/lang/String; = "input_method_id"

.field public static final blacklist EXTRA_MONITOR_CALLBACK_TYPE:Ljava/lang/String; = "monitor_callback_type"

.field public static final blacklist EXTRA_NAMESPACE:Ljava/lang/String; = "namespace"

.field public static final blacklist EXTRA_NAMESPACE_UPDATED_CALLBACK:Ljava/lang/String; = "namespace_updated_callback"

.field public static final greylist-max-o EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "network_template"

.field public static final whitelist EXTRA_NOTIFICATION_LISTENER_COMPONENT_NAME:Ljava/lang/String; = "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME"

.field public static final greylist-max-o EXTRA_NUMBER_OF_CERTIFICATES:Ljava/lang/String; = "android.settings.extra.number_of_certificates"

.field public static final whitelist EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY:Ljava/lang/String; = "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

.field public static final whitelist EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI:Ljava/lang/String; = "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

.field public static final whitelist EXTRA_SUB_ID:Ljava/lang/String; = "android.provider.extra.SUB_ID"

.field public static final whitelist EXTRA_SUPERVISOR_RESTRICTED_SETTING_KEY:Ljava/lang/String; = "android.provider.extra.SUPERVISOR_RESTRICTED_SETTING_KEY"

.field public static final whitelist EXTRA_WIFI_NETWORK_LIST:Ljava/lang/String; = "android.provider.extra.WIFI_NETWORK_LIST"

.field public static final whitelist EXTRA_WIFI_NETWORK_RESULT_LIST:Ljava/lang/String; = "android.provider.extra.WIFI_NETWORK_RESULT_LIST"

.field public static final whitelist INTENT_CATEGORY_USAGE_ACCESS_CONFIG:Ljava/lang/String; = "android.intent.category.USAGE_ACCESS_CONFIG"

.field public static final blacklist KEY_CONFIG_GET_SYNC_DISABLED_MODE_RETURN:Ljava/lang/String; = "config_get_sync_disabled_mode_return"

.field public static final blacklist KEY_CONFIG_SET_ALL_RETURN:Ljava/lang/String; = "config_set_all_return"

.field private static final greylist-max-o LOCAL_LOGV:Z = false

.field public static final whitelist METADATA_USAGE_ACCESS_REASON:Ljava/lang/String; = "android.settings.metadata.USAGE_ACCESS_REASON"

.field private static final greylist-max-o PM_CHANGE_NETWORK_STATE:[Ljava/lang/String;

.field private static final greylist-max-o PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

.field private static final greylist-max-o PM_WRITE_SETTINGS:[Ljava/lang/String;

.field public static final greylist-max-r RESET_MODE_PACKAGE_DEFAULTS:I = 0x1

.field public static final greylist-max-o RESET_MODE_TRUSTED_DEFAULTS:I = 0x4

.field public static final greylist-max-o RESET_MODE_UNTRUSTED_CHANGES:I = 0x3

.field public static final greylist-max-o RESET_MODE_UNTRUSTED_DEFAULTS:I = 0x2

.field public static final blacklist SET_ALL_RESULT_DISABLED:I = 0x2

.field public static final blacklist SET_ALL_RESULT_FAILURE:I = 0x0

.field public static final blacklist SET_ALL_RESULT_SUCCESS:I = 0x1

.field public static final whitelist SUPERVISOR_VERIFICATION_SETTING_BIOMETRICS:I = 0x1

.field public static final whitelist SUPERVISOR_VERIFICATION_SETTING_UNKNOWN:I = 0x0

.field private static final blacklist SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Settings"

.field public static final greylist-max-o ZEN_MODE_BLOCKED_EFFECTS_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_BLOCKED_EFFECTS_SETTINGS"

.field public static final greylist-max-o ZEN_MODE_ONBOARDING:Ljava/lang/String; = "android.settings.ZEN_MODE_ONBOARDING"

.field private static greylist-max-o sInSystemServer:Z

.field private static final greylist-max-o sInSystemServerLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings;->getPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseFloatSetting(Ljava/lang/String;Ljava/lang/String;)F
    .registers 2

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseFloatSetting(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseFloatSettingWithDefault(Ljava/lang/String;F)F
    .registers 2

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseFloatSettingWithDefault(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseIntSetting(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseIntSetting(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseIntSettingWithDefault(Ljava/lang/String;I)I
    .registers 2

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseIntSettingWithDefault(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseLongSetting(Ljava/lang/String;Ljava/lang/String;)J
    .registers 2

    invoke-static {p0, p1}, Landroid/provider/Settings;->parseLongSetting(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smparseLongSettingWithDefault(Ljava/lang/String;J)J
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/provider/Settings;->parseLongSettingWithDefault(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2803
    const/4 v0, 0x0

    sput-boolean v0, Landroid/provider/Settings;->sInSystemServer:Z

    .line 2804
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/Settings;->sInSystemServerLock:Ljava/lang/Object;

    .line 18280
    const-string v0, "android.permission.WRITE_SETTINGS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    .line 18283
    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings;->PM_CHANGE_NETWORK_STATE:[Ljava/lang/String;

    .line 18287
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist canDrawOverlays(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 3462
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 3463
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3462
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->isCallingPackageAllowedToDrawOverlays(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_17

    .line 3463
    const-string v0, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    const/4 v2, 0x1

    .line 3462
    :cond_18
    return v2
.end method

.method public static blacklist checkAndNoteDrawOverlaysOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "throwException"    # Z

    .line 18443
    sget-object v6, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    const/16 v5, 0x18

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "throwException"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18410
    sget-object v6, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    const/16 v5, 0x17

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18391
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 18533
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 18534
    .local v0, "packages":[Ljava/lang/String;
    if-nez v0, :cond_c

    .line 18535
    const/4 v1, 0x0

    return-object v1

    .line 18537
    :cond_c
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private static blacklist getPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3483
    .local p0, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "allKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "readableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "keysWithMaxTargetSdk":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3485
    .local v0, "allFields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    :try_start_5
    array-length v2, v0

    if-ge v1, v2, :cond_4e

    .line 3486
    aget-object v2, v0, v1

    .line 3487
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 3488
    goto :goto_4b

    .line 3490
    :cond_17
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3491
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 3492
    goto :goto_4b

    .line 3494
    :cond_28
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3495
    const-class v4, Landroid/provider/Settings$Readable;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Landroid/provider/Settings$Readable;

    .line 3497
    .local v4, "annotation":Landroid/provider/Settings$Readable;
    if-eqz v4, :cond_4b

    .line 3498
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 3499
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Landroid/provider/Settings$Readable;->maxTargetSdk()I

    move-result v6

    .line 3500
    .local v6, "maxTargetSdk":I
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3501
    if-eqz v6, :cond_4b

    .line 3502
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_4b} :catch_4f

    .line 3485
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "annotation":Landroid/provider/Settings$Readable;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "maxTargetSdk":I
    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3507
    .end local v1    # "i":I
    :cond_4e
    goto :goto_50

    .line 3506
    :catch_4f
    move-exception v1

    .line 3508
    :goto_50
    return-void
.end method

.method public static greylist isCallingPackageAllowedToDrawOverlays(Landroid/content/Context;ILjava/lang/String;Z)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z

    .line 18425
    sget-object v6, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v5, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "throwException"    # Z
    .param p5, "appOpsOpCode"    # I
    .param p6, "permissions"    # [Ljava/lang/String;
    .param p7, "makeNote"    # Z

    .line 18472
    move-object v0, p0

    move-object v7, p2

    move-object/from16 v8, p6

    const/4 v9, 0x0

    if-nez v7, :cond_8

    .line 18473
    return v9

    .line 18476
    :cond_8
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/app/AppOpsManager;

    .line 18477
    .local v10, "appOpsMgr":Landroid/app/AppOpsManager;
    const/4 v11, 0x3

    .line 18478
    .local v11, "mode":I
    if-eqz p7, :cond_23

    .line 18479
    const/4 v6, 0x0

    move-object v1, v10

    move/from16 v2, p5

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v3, v1

    move v1, p1

    .end local v11    # "mode":I
    .local v1, "mode":I
    goto :goto_2a

    .line 18482
    .end local v1    # "mode":I
    .restart local v11    # "mode":I
    :cond_23
    move v1, p1

    move/from16 v2, p5

    invoke-virtual {v10, v2, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 18485
    .end local v11    # "mode":I
    .local v3, "mode":I
    :goto_2a
    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_80

    goto :goto_40

    .line 18493
    :sswitch_2f
    array-length v5, v8

    move v6, v9

    :goto_31
    if-ge v6, v5, :cond_40

    aget-object v11, v8, v6

    .line 18494
    .local v11, "permission":Ljava/lang/String;
    invoke-virtual {p0, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_3c

    .line 18497
    return v4

    .line 18493
    .end local v11    # "permission":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 18487
    :sswitch_3f
    return v4

    .line 18503
    :cond_40
    :goto_40
    if-nez p4, :cond_43

    .line 18504
    return v9

    .line 18509
    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18510
    .local v5, "exceptionMessage":Ljava/lang/StringBuilder;
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18511
    const-string v6, " was not granted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18512
    array-length v6, v8

    if-le v6, v4, :cond_59

    .line 18513
    const-string v6, " either of these permissions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    .line 18515
    :cond_59
    const-string v6, " this permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18517
    :goto_5e
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5f
    array-length v9, v8

    if-ge v6, v9, :cond_76

    .line 18518
    aget-object v9, v8, v6

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18519
    array-length v9, v8

    sub-int/2addr v9, v4

    if-ne v6, v9, :cond_6e

    const-string v9, "."

    goto :goto_70

    :cond_6e
    const-string v9, ", "

    :goto_70
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18517
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 18522
    .end local v6    # "i":I
    :cond_76
    new-instance v4, Ljava/lang/SecurityException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_3f
        0x3 -> :sswitch_2f
    .end sparse-switch
.end method

.method public static greylist isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;ZI[Ljava/lang/String;Z)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z
    .param p4, "appOpsOpCode"    # I
    .param p5, "permissions"    # [Ljava/lang/String;
    .param p6, "makeNote"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18459
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isCallingPackageAllowedToWriteSettings(Landroid/content/Context;ILjava/lang/String;Z)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "throwException"    # Z

    .line 18375
    sget-object v6, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v5, 0x17

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isInSystemServer()Z
    .registers 2

    .line 2815
    sget-object v0, Landroid/provider/Settings;->sInSystemServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2816
    :try_start_3
    sget-boolean v1, Landroid/provider/Settings;->sInSystemServer:Z

    monitor-exit v0

    return v1

    .line 2817
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static blacklist parseFloatSetting(Ljava/lang/String;Ljava/lang/String;)F
    .registers 4
    .param p0, "settingValue"    # Ljava/lang/String;
    .param p1, "settingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 3512
    if-eqz p0, :cond_e

    .line 3516
    :try_start_2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    return v0

    .line 3517
    :catch_7
    move-exception v0

    .line 3518
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3513
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    new-instance v0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist parseFloatSettingWithDefault(Ljava/lang/String;F)F
    .registers 3
    .param p0, "settingValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .line 3524
    if-eqz p0, :cond_9

    :try_start_2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_a

    .line 3525
    :catch_7
    move-exception v0

    .line 3526
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1

    .line 3524
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    move v0, p1

    :goto_a
    return v0
.end method

.method private static blacklist parseIntSetting(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "settingValue"    # Ljava/lang/String;
    .param p1, "settingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 3532
    if-eqz p0, :cond_e

    .line 3536
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    return v0

    .line 3537
    :catch_7
    move-exception v0

    .line 3538
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3533
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    new-instance v0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist parseIntSettingWithDefault(Ljava/lang/String;I)I
    .registers 3
    .param p0, "settingValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 3544
    if-eqz p0, :cond_9

    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_a

    .line 3545
    :catch_7
    move-exception v0

    .line 3546
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1

    .line 3544
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    move v0, p1

    :goto_a
    return v0
.end method

.method private static blacklist parseLongSetting(Ljava/lang/String;Ljava/lang/String;)J
    .registers 4
    .param p0, "settingValue"    # Ljava/lang/String;
    .param p1, "settingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 3552
    if-eqz p0, :cond_e

    .line 3556
    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    return-wide v0

    .line 3557
    :catch_7
    move-exception v0

    .line 3558
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3553
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    new-instance v0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist parseLongSettingWithDefault(Ljava/lang/String;J)J
    .registers 5
    .param p0, "settingValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .line 3564
    if-eqz p0, :cond_9

    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_a

    .line 3565
    :catch_7
    move-exception v0

    .line 3566
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p1

    .line 3564
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    move-wide v0, p1

    :goto_a
    return-wide v0
.end method

.method public static greylist-max-o setInSystemServer()V
    .registers 2

    .line 2808
    sget-object v0, Landroid/provider/Settings;->sInSystemServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2809
    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Landroid/provider/Settings;->sInSystemServer:Z

    .line 2810
    monitor-exit v0

    .line 2811
    return-void

    .line 2810
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method
