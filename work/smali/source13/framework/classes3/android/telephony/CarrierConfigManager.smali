.class public Landroid/telephony/CarrierConfigManager;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierConfigManager$Wifi;,
        Landroid/telephony/CarrierConfigManager$Iwlan;,
        Landroid/telephony/CarrierConfigManager$Bsf;,
        Landroid/telephony/CarrierConfigManager$ImsSs;,
        Landroid/telephony/CarrierConfigManager$ImsWfc;,
        Landroid/telephony/CarrierConfigManager$ImsVt;,
        Landroid/telephony/CarrierConfigManager$ImsEmergency;,
        Landroid/telephony/CarrierConfigManager$ImsRtt;,
        Landroid/telephony/CarrierConfigManager$ImsSms;,
        Landroid/telephony/CarrierConfigManager$ImsVoice;,
        Landroid/telephony/CarrierConfigManager$Ims;,
        Landroid/telephony/CarrierConfigManager$Gps;,
        Landroid/telephony/CarrierConfigManager$ImsServiceEntitlement;,
        Landroid/telephony/CarrierConfigManager$OpportunisticNetwork;,
        Landroid/telephony/CarrierConfigManager$Apn;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CARRIER_CONFIG_CHANGED:Ljava/lang/String; = "android.telephony.action.CARRIER_CONFIG_CHANGED"

.field public static final whitelist CARRIER_NR_AVAILABILITY_NSA:I = 0x1

.field public static final whitelist CARRIER_NR_AVAILABILITY_SA:I = 0x2

.field public static final whitelist CROSS_SIM_SPN_FORMAT_CARRIER_NAME_ONLY:I = 0x0

.field public static final whitelist CROSS_SIM_SPN_FORMAT_CARRIER_NAME_WITH_BRANDING:I = 0x1

.field public static final whitelist DATA_CYCLE_THRESHOLD_DISABLED:I = -0x2

.field public static final whitelist DATA_CYCLE_USE_PLATFORM_DEFAULT:I = -0x1

.field private static blacklist DEVICE_TYPE_SUPPORT_SUPL_2_0_0:Ljava/lang/String; = null

.field public static final whitelist ENABLE_EAP_METHOD_PREFIX_BOOL:Ljava/lang/String; = "enable_eap_method_prefix_bool"

.field public static final whitelist EXTRA_REBROADCAST_ON_UNLOCK:Ljava/lang/String; = "android.telephony.extra.REBROADCAST_ON_UNLOCK"

.field public static final whitelist EXTRA_SLOT_INDEX:Ljava/lang/String; = "android.telephony.extra.SLOT_INDEX"

.field public static final whitelist EXTRA_SUBSCRIPTION_INDEX:Ljava/lang/String; = "android.telephony.extra.SUBSCRIPTION_INDEX"

.field public static final whitelist GBA_DIGEST:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_ME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_U:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist IMSI_CARRIER_PUBLIC_KEY_EPDG_STRING:Ljava/lang/String; = "imsi_carrier_public_key_epdg_string"

.field public static final blacklist IMSI_CARRIER_PUBLIC_KEY_WLAN_STRING:Ljava/lang/String; = "imsi_carrier_public_key_wlan_string"

.field public static final whitelist IMSI_KEY_AVAILABILITY_INT:Ljava/lang/String; = "imsi_key_availability_int"

.field public static final greylist-max-o IMSI_KEY_DOWNLOAD_URL_STRING:Ljava/lang/String; = "imsi_key_download_url_string"

.field public static final blacklist KEY_4G_ONLY_BOOL:Ljava/lang/String; = "4g_only_bool"

.field public static final blacklist KEY_5G_ICON_CONFIGURATION_STRING:Ljava/lang/String; = "5g_icon_configuration_string"

.field public static final blacklist KEY_5G_ICON_DISPLAY_GRACE_PERIOD_STRING:Ljava/lang/String; = "5g_icon_display_grace_period_string"

.field public static final blacklist KEY_5G_ICON_DISPLAY_SECONDARY_GRACE_PERIOD_STRING:Ljava/lang/String; = "5g_icon_display_secondary_grace_period_string"

.field public static final whitelist KEY_5G_NR_SSRSRP_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "5g_nr_ssrsrp_thresholds_int_array"

.field public static final whitelist KEY_5G_NR_SSRSRQ_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "5g_nr_ssrsrq_thresholds_int_array"

.field public static final whitelist KEY_5G_NR_SSSINR_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "5g_nr_sssinr_thresholds_int_array"

.field public static final blacklist KEY_5G_WATCHDOG_TIME_MS_LONG:Ljava/lang/String; = "5g_watchdog_time_ms_long"

.field public static final whitelist KEY_ADDITIONAL_CALL_SETTING_BOOL:Ljava/lang/String; = "additional_call_setting_bool"

.field public static final blacklist KEY_ADDITIONAL_NR_ADVANCED_BANDS_INT_ARRAY:Ljava/lang/String; = "additional_nr_advanced_bands_int_array"

.field public static final blacklist KEY_ADDITIONAL_SETTINGS_CALLER_ID_VISIBILITY_BOOL:Ljava/lang/String; = "additional_settings_caller_id_visibility_bool"

.field public static final blacklist KEY_ADDITIONAL_SETTINGS_CALL_WAITING_VISIBILITY_BOOL:Ljava/lang/String; = "additional_settings_call_waiting_visibility_bool"

.field public static final blacklist KEY_ALLOWED_INITIAL_ATTACH_APN_TYPES_STRING_ARRAY:Ljava/lang/String; = "allowed_initial_attach_apn_types_string_array"

.field public static final whitelist KEY_ALLOW_ADDING_APNS_BOOL:Ljava/lang/String; = "allow_adding_apns_bool"

.field public static final whitelist KEY_ALLOW_ADD_CALL_DURING_VIDEO_CALL_BOOL:Ljava/lang/String; = "allow_add_call_during_video_call"

.field public static final blacklist KEY_ALLOW_CONCURRENT_CALL_DURING_VIDEO_CALL_BOOL:Ljava/lang/String; = "allow_concurrent_call_during_video_call"

.field public static final whitelist KEY_ALLOW_EMERGENCY_NUMBERS_IN_CALL_LOG_BOOL:Ljava/lang/String; = "allow_emergency_numbers_in_call_log_bool"

.field public static final whitelist KEY_ALLOW_EMERGENCY_VIDEO_CALLS_BOOL:Ljava/lang/String; = "allow_emergency_video_calls_bool"

.field public static final blacklist KEY_ALLOW_ERI_BOOL:Ljava/lang/String; = "allow_cdma_eri_bool"

.field public static final whitelist KEY_ALLOW_HOLD_CALL_DURING_EMERGENCY_BOOL:Ljava/lang/String; = "allow_hold_call_during_emergency_bool"

.field public static final greylist-max-o KEY_ALLOW_HOLD_IN_IMS_CALL_BOOL:Ljava/lang/String; = "allow_hold_in_ims_call"

.field public static final whitelist KEY_ALLOW_HOLD_VIDEO_CALL_BOOL:Ljava/lang/String; = "allow_hold_video_call_bool"

.field public static final whitelist KEY_ALLOW_LOCAL_DTMF_TONES_BOOL:Ljava/lang/String; = "allow_local_dtmf_tones_bool"

.field public static final whitelist KEY_ALLOW_MERGE_WIFI_CALLS_WHEN_VOWIFI_OFF_BOOL:Ljava/lang/String; = "allow_merge_wifi_calls_when_vowifi_off_bool"

.field public static final blacklist KEY_ALLOW_MERGING_RTT_CALLS_BOOL:Ljava/lang/String; = "allow_merging_rtt_calls_bool"

.field public static final blacklist KEY_ALLOW_METERED_NETWORK_FOR_CERT_DOWNLOAD_BOOL:Ljava/lang/String; = "allow_metered_network_for_cert_download_bool"

.field public static final whitelist KEY_ALLOW_NON_EMERGENCY_CALLS_IN_ECM_BOOL:Ljava/lang/String; = "allow_non_emergency_calls_in_ecm_bool"

.field public static final greylist-max-o KEY_ALLOW_USSD_REQUESTS_VIA_TELEPHONY_MANAGER_BOOL:Ljava/lang/String; = "allow_ussd_requests_via_telephony_manager_bool"

.field public static final whitelist KEY_ALLOW_VIDEO_CALLING_FALLBACK_BOOL:Ljava/lang/String; = "allow_video_calling_fallback_bool"

.field public static final greylist-max-o KEY_ALWAYS_PLAY_REMOTE_HOLD_TONE_BOOL:Ljava/lang/String; = "always_play_remote_hold_tone_bool"

.field public static final whitelist KEY_ALWAYS_SHOW_DATA_RAT_ICON_BOOL:Ljava/lang/String; = "always_show_data_rat_icon_bool"

.field public static final whitelist KEY_ALWAYS_SHOW_EMERGENCY_ALERT_ONOFF_BOOL:Ljava/lang/String; = "always_show_emergency_alert_onoff_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_ALWAYS_SHOW_PRIMARY_SIGNAL_BAR_IN_OPPORTUNISTIC_NETWORK_BOOLEAN:Ljava/lang/String; = "always_show_primary_signal_bar_in_opportunistic_network_boolean"

.field public static final whitelist KEY_APN_EXPAND_BOOL:Ljava/lang/String; = "apn_expand_bool"

.field public static final blacklist KEY_APN_PRIORITY_STRING_ARRAY:Ljava/lang/String; = "apn_priority_string_array"

.field public static final whitelist KEY_APN_SETTINGS_DEFAULT_APN_TYPES_STRING_ARRAY:Ljava/lang/String; = "apn_settings_default_apn_types_string_array"

.field public static final blacklist KEY_ASCII_7_BIT_SUPPORT_FOR_LONG_MESSAGE_BOOL:Ljava/lang/String; = "ascii_7_bit_support_for_long_message_bool"

.field public static final blacklist KEY_AUTO_CANCEL_CS_REJECT_NOTIFICATION:Ljava/lang/String; = "carrier_auto_cancel_cs_notification"

.field public static final whitelist KEY_AUTO_RETRY_ENABLED_BOOL:Ljava/lang/String; = "auto_retry_enabled_bool"

.field public static final blacklist KEY_AUTO_RETRY_FAILED_WIFI_EMERGENCY_CALL:Ljava/lang/String; = "auto_retry_failed_wifi_emergency_call"

.field public static final blacklist KEY_BANDWIDTH_NR_NSA_USE_LTE_VALUE_FOR_UPLINK_BOOL:Ljava/lang/String; = "bandwidth_nr_nsa_use_lte_value_for_uplink_bool"

.field public static final blacklist KEY_BANDWIDTH_STRING_ARRAY:Ljava/lang/String; = "bandwidth_string_array"

.field public static final greylist-max-o KEY_BOOSTED_LTE_EARFCNS_STRING_ARRAY:Ljava/lang/String; = "boosted_lte_earfcns_string_array"

.field public static final blacklist KEY_BOOSTED_NRARFCNS_STRING_ARRAY:Ljava/lang/String; = "boosted_nrarfcns_string_array"

.field public static final greylist-max-o KEY_BROADCAST_EMERGENCY_CALL_STATE_CHANGES_BOOL:Ljava/lang/String; = "broadcast_emergency_call_state_changes_bool"

.field public static final blacklist KEY_CALLER_ID_OVER_UT_WARNING_BOOL:Ljava/lang/String; = "caller_id_over_ut_warning_bool"

.field public static final whitelist KEY_CALL_BARRING_DEFAULT_SERVICE_CLASS_INT:Ljava/lang/String; = "call_barring_default_service_class_int"

.field public static final blacklist KEY_CALL_BARRING_OVER_UT_WARNING_BOOL:Ljava/lang/String; = "call_barring_over_ut_warning_bool"

.field public static final whitelist KEY_CALL_BARRING_SUPPORTS_DEACTIVATE_ALL_BOOL:Ljava/lang/String; = "call_barring_supports_deactivate_all_bool"

.field public static final whitelist KEY_CALL_BARRING_SUPPORTS_PASSWORD_CHANGE_BOOL:Ljava/lang/String; = "call_barring_supports_password_change_bool"

.field public static final whitelist KEY_CALL_BARRING_VISIBILITY_BOOL:Ljava/lang/String; = "call_barring_visibility_bool"

.field public static final whitelist KEY_CALL_COMPOSER_PICTURE_SERVER_URL_STRING:Ljava/lang/String; = "call_composer_picture_server_url_string"

.field public static final whitelist KEY_CALL_FORWARDING_BLOCKS_WHILE_ROAMING_STRING_ARRAY:Ljava/lang/String; = "call_forwarding_blocks_while_roaming_string_array"

.field public static final greylist-max-o KEY_CALL_FORWARDING_MAP_NON_NUMBER_TO_VOICEMAIL_BOOL:Ljava/lang/String; = "call_forwarding_map_non_number_to_voicemail_bool"

.field public static final blacklist KEY_CALL_FORWARDING_OVER_UT_WARNING_BOOL:Ljava/lang/String; = "call_forwarding_over_ut_warning_bool"

.field public static final blacklist KEY_CALL_FORWARDING_VISIBILITY_BOOL:Ljava/lang/String; = "call_forwarding_visibility_bool"

.field public static final blacklist KEY_CALL_FORWARDING_WHEN_BUSY_SUPPORTED_BOOL:Ljava/lang/String; = "call_forwarding_when_busy_supported_bool"

.field public static final blacklist KEY_CALL_FORWARDING_WHEN_NOT_LOGGED_IN_SUPPORTED_BOOL:Ljava/lang/String; = "call_forwarding_when_not_logged_in_supported_bool"

.field public static final blacklist KEY_CALL_FORWARDING_WHEN_UNANSWERED_SUPPORTED_BOOL:Ljava/lang/String; = "call_forwarding_when_unanswered_supported_bool"

.field public static final blacklist KEY_CALL_FORWARDING_WHEN_UNREACHABLE_SUPPORTED_BOOL:Ljava/lang/String; = "call_forwarding_when_unreachable_supported_bool"

.field public static final whitelist KEY_CALL_REDIRECTION_SERVICE_COMPONENT_NAME_STRING:Ljava/lang/String; = "call_redirection_service_component_name_string"

.field public static final blacklist KEY_CALL_WAITING_OVER_UT_WARNING_BOOL:Ljava/lang/String; = "call_waiting_over_ut_warning_bool"

.field public static final blacklist KEY_CALL_WAITING_SERVICE_CLASS_INT:Ljava/lang/String; = "call_waiting_service_class_int"

.field public static final whitelist KEY_CARRIER_ALLOW_DEFLECT_IMS_CALL_BOOL:Ljava/lang/String; = "carrier_allow_deflect_ims_call_bool"

.field public static final blacklist KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL:Ljava/lang/String; = "carrier_allow_transfer_ims_call_bool"

.field public static final whitelist KEY_CARRIER_ALLOW_TURNOFF_IMS_BOOL:Ljava/lang/String; = "carrier_allow_turnoff_ims_bool"

.field public static final greylist-max-o KEY_CARRIER_APP_NO_WAKE_SIGNAL_CONFIG_STRING_ARRAY:Ljava/lang/String; = "carrier_app_no_wake_signal_config"

.field public static final whitelist KEY_CARRIER_APP_REQUIRED_DURING_SIM_SETUP_BOOL:Ljava/lang/String; = "carrier_app_required_during_setup_bool"

.field public static final greylist-max-o KEY_CARRIER_APP_WAKE_SIGNAL_CONFIG_STRING_ARRAY:Ljava/lang/String; = "carrier_app_wake_signal_config"

.field public static final whitelist KEY_CARRIER_CALL_SCREENING_APP_STRING:Ljava/lang/String; = "call_screening_app"

.field public static final whitelist KEY_CARRIER_CERTIFICATE_STRING_ARRAY:Ljava/lang/String; = "carrier_certificate_string_array"

.field public static final whitelist KEY_CARRIER_CONFIG_APPLIED_BOOL:Ljava/lang/String; = "carrier_config_applied_bool"

.field public static final whitelist KEY_CARRIER_CONFIG_VERSION_STRING:Ljava/lang/String; = "carrier_config_version_string"

.field public static final whitelist KEY_CARRIER_CROSS_SIM_IMS_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_cross_sim_ims_available_bool"

.field public static final greylist-max-o KEY_CARRIER_DATA_CALL_APN_DELAY_DEFAULT_LONG:Ljava/lang/String; = "carrier_data_call_apn_delay_default_long"

.field public static final greylist-max-o KEY_CARRIER_DATA_CALL_APN_DELAY_FASTER_LONG:Ljava/lang/String; = "carrier_data_call_apn_delay_faster_long"

.field public static final greylist-max-o KEY_CARRIER_DATA_CALL_APN_RETRY_AFTER_DISCONNECT_LONG:Ljava/lang/String; = "carrier_data_call_apn_retry_after_disconnect_long"

.field public static final whitelist KEY_CARRIER_DATA_CALL_PERMANENT_FAILURE_STRINGS:Ljava/lang/String; = "carrier_data_call_permanent_failure_strings"

.field public static final greylist-max-o KEY_CARRIER_DATA_CALL_RETRY_CONFIG_STRINGS:Ljava/lang/String; = "carrier_data_call_retry_config_strings"

.field public static final blacklist KEY_CARRIER_DATA_CALL_RETRY_NETWORK_REQUESTED_MAX_COUNT_INT:Ljava/lang/String; = "carrier_data_call_retry_network_requested_max_count_int"

.field public static final blacklist KEY_CARRIER_DATA_SERVICE_WLAN_CLASS_OVERRIDE_STRING:Ljava/lang/String; = "carrier_data_service_wlan_class_override_string"

.field public static final greylist-max-o KEY_CARRIER_DATA_SERVICE_WLAN_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "carrier_data_service_wlan_package_override_string"

.field public static final blacklist KEY_CARRIER_DATA_SERVICE_WWAN_CLASS_OVERRIDE_STRING:Ljava/lang/String; = "carrier_data_service_wwan_class_override_string"

.field public static final greylist-max-o KEY_CARRIER_DATA_SERVICE_WWAN_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "carrier_data_service_wwan_package_override_string"

.field public static final whitelist KEY_CARRIER_DEFAULT_ACTIONS_ON_DCFAILURE_STRING_ARRAY:Ljava/lang/String; = "carrier_default_actions_on_dcfailure_string_array"

.field public static final whitelist KEY_CARRIER_DEFAULT_ACTIONS_ON_DEFAULT_NETWORK_AVAILABLE:Ljava/lang/String; = "carrier_default_actions_on_default_network_available_string_array"

.field public static final whitelist KEY_CARRIER_DEFAULT_ACTIONS_ON_REDIRECTION_STRING_ARRAY:Ljava/lang/String; = "carrier_default_actions_on_redirection_string_array"

.field public static final whitelist KEY_CARRIER_DEFAULT_ACTIONS_ON_RESET:Ljava/lang/String; = "carrier_default_actions_on_reset_string_array"

.field public static final greylist-max-o KEY_CARRIER_DEFAULT_DATA_ROAMING_ENABLED_BOOL:Ljava/lang/String; = "carrier_default_data_roaming_enabled_bool"

.field public static final whitelist KEY_CARRIER_DEFAULT_REDIRECTION_URL_STRING_ARRAY:Ljava/lang/String; = "carrier_default_redirection_url_string_array"

.field public static final whitelist KEY_CARRIER_DEFAULT_WFC_IMS_ENABLED_BOOL:Ljava/lang/String; = "carrier_default_wfc_ims_enabled_bool"

.field public static final whitelist KEY_CARRIER_DEFAULT_WFC_IMS_MODE_INT:Ljava/lang/String; = "carrier_default_wfc_ims_mode_int"

.field public static final greylist-max-o KEY_CARRIER_DEFAULT_WFC_IMS_ROAMING_ENABLED_BOOL:Ljava/lang/String; = "carrier_default_wfc_ims_roaming_enabled_bool"

.field public static final whitelist KEY_CARRIER_DEFAULT_WFC_IMS_ROAMING_MODE_INT:Ljava/lang/String; = "carrier_default_wfc_ims_roaming_mode_int"

.field public static final greylist-max-o KEY_CARRIER_ERI_FILE_NAME_STRING:Ljava/lang/String; = "carrier_eri_file_name_string"

.field public static final whitelist KEY_CARRIER_FORCE_DISABLE_ETWS_CMAS_TEST_BOOL:Ljava/lang/String; = "carrier_force_disable_etws_cmas_test_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_CARRIER_IMS_GBA_REQUIRED_BOOL:Ljava/lang/String; = "carrier_ims_gba_required_bool"

.field public static final whitelist KEY_CARRIER_INSTANT_LETTERING_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_instant_lettering_available_bool"

.field public static final whitelist KEY_CARRIER_INSTANT_LETTERING_ENCODING_STRING:Ljava/lang/String; = "carrier_instant_lettering_encoding_string"

.field public static final whitelist KEY_CARRIER_INSTANT_LETTERING_ESCAPED_CHARS_STRING:Ljava/lang/String; = "carrier_instant_lettering_escaped_chars_string"

.field public static final whitelist KEY_CARRIER_INSTANT_LETTERING_INVALID_CHARS_STRING:Ljava/lang/String; = "carrier_instant_lettering_invalid_chars_string"

.field public static final whitelist KEY_CARRIER_INSTANT_LETTERING_LENGTH_LIMIT_INT:Ljava/lang/String; = "carrier_instant_lettering_length_limit_int"

.field public static final greylist-max-o KEY_CARRIER_METERED_APN_TYPES_STRINGS:Ljava/lang/String; = "carrier_metered_apn_types_strings"

.field public static final greylist-max-o KEY_CARRIER_METERED_ROAMING_APN_TYPES_STRINGS:Ljava/lang/String; = "carrier_metered_roaming_apn_types_strings"

.field public static final whitelist KEY_CARRIER_NAME_OVERRIDE_BOOL:Ljava/lang/String; = "carrier_name_override_bool"

.field public static final whitelist KEY_CARRIER_NAME_STRING:Ljava/lang/String; = "carrier_name_string"

.field public static final blacklist KEY_CARRIER_NETWORK_SERVICE_WLAN_CLASS_OVERRIDE_STRING:Ljava/lang/String; = "carrier_network_service_wlan_class_override_string"

.field public static final greylist-max-o KEY_CARRIER_NETWORK_SERVICE_WLAN_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "carrier_network_service_wlan_package_override_string"

.field public static final blacklist KEY_CARRIER_NETWORK_SERVICE_WWAN_CLASS_OVERRIDE_STRING:Ljava/lang/String; = "carrier_network_service_wwan_class_override_string"

.field public static final greylist-max-o KEY_CARRIER_NETWORK_SERVICE_WWAN_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "carrier_network_service_wwan_package_override_string"

.field public static final whitelist KEY_CARRIER_NR_AVAILABILITIES_INT_ARRAY:Ljava/lang/String; = "carrier_nr_availabilities_int_array"

.field public static final greylist-max-o KEY_CARRIER_PROMOTE_WFC_ON_CALL_FAIL_BOOL:Ljava/lang/String; = "carrier_promote_wfc_on_call_fail_bool"

.field public static final blacklist KEY_CARRIER_PROVISIONING_APP_STRING:Ljava/lang/String; = "carrier_provisioning_app_string"

.field public static final whitelist KEY_CARRIER_PROVISIONS_WIFI_MERGED_NETWORKS_BOOL:Ljava/lang/String; = "carrier_provisions_wifi_merged_networks_bool"

.field public static final blacklist KEY_CARRIER_QUALIFIED_NETWORKS_SERVICE_CLASS_OVERRIDE_STRING:Ljava/lang/String; = "carrier_qualified_networks_service_class_override_string"

.field public static final blacklist KEY_CARRIER_QUALIFIED_NETWORKS_SERVICE_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "carrier_qualified_networks_service_package_override_string"

.field public static final whitelist KEY_CARRIER_RCS_PROVISIONING_REQUIRED_BOOL:Ljava/lang/String; = "carrier_rcs_provisioning_required_bool"

.field public static final whitelist KEY_CARRIER_SETTINGS_ACTIVITY_COMPONENT_NAME_STRING:Ljava/lang/String; = "carrier_settings_activity_component_name_string"

.field public static final whitelist KEY_CARRIER_SETTINGS_ENABLE_BOOL:Ljava/lang/String; = "carrier_settings_enable_bool"

.field public static final whitelist KEY_CARRIER_SETUP_APP_STRING:Ljava/lang/String; = "carrier_setup_app_string"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_CARRIER_SUPPORTS_CALLER_ID_VERTICAL_SERVICE_CODES_BOOL:Ljava/lang/String; = "carrier_supports_caller_id_vertical_service_codes_bool"

.field public static final blacklist KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE:Ljava/lang/String; = "carrier_supports_multianchor_conference"

.field public static final whitelist KEY_CARRIER_SUPPORTS_OPP_DATA_AUTO_PROVISIONING_BOOL:Ljava/lang/String; = "carrier_supports_opp_data_auto_provisioning_bool"

.field public static final whitelist KEY_CARRIER_SUPPORTS_SS_OVER_UT_BOOL:Ljava/lang/String; = "carrier_supports_ss_over_ut_bool"

.field public static final whitelist KEY_CARRIER_SUPPORTS_TETHERING_BOOL:Ljava/lang/String; = "carrier_supports_tethering_bool"

.field public static final whitelist KEY_CARRIER_USE_IMS_FIRST_FOR_EMERGENCY_BOOL:Ljava/lang/String; = "carrier_use_ims_first_for_emergency_bool"

.field public static final whitelist KEY_CARRIER_USSD_METHOD_INT:Ljava/lang/String; = "carrier_ussd_method_int"

.field public static final whitelist KEY_CARRIER_UT_PROVISIONING_REQUIRED_BOOL:Ljava/lang/String; = "carrier_ut_provisioning_required_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_CARRIER_VOLTE_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_volte_available_bool"

.field public static final whitelist KEY_CARRIER_VOLTE_OVERRIDE_WFC_PROVISIONING_BOOL:Ljava/lang/String; = "carrier_volte_override_wfc_provisioning_bool"

.field public static final whitelist KEY_CARRIER_VOLTE_PROVISIONED_BOOL:Ljava/lang/String; = "carrier_volte_provisioned_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_CARRIER_VOLTE_PROVISIONING_REQUIRED_BOOL:Ljava/lang/String; = "carrier_volte_provisioning_required_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_CARRIER_VOLTE_TTY_SUPPORTED_BOOL:Ljava/lang/String; = "carrier_volte_tty_supported_bool"

.field public static final blacklist KEY_CARRIER_VOWIFI_TTY_SUPPORTED_BOOL:Ljava/lang/String; = "carrier_vowifi_tty_supported_bool"

.field public static final whitelist KEY_CARRIER_VT_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_vt_available_bool"

.field public static final blacklist KEY_CARRIER_VT_TTY_SUPPORT_BOOL:Ljava/lang/String; = "carrier_vt_tty_support_bool"

.field public static final whitelist KEY_CARRIER_VVM_PACKAGE_NAME_STRING:Ljava/lang/String; = "carrier_vvm_package_name_string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_CARRIER_VVM_PACKAGE_NAME_STRING_ARRAY:Ljava/lang/String; = "carrier_vvm_package_name_string_array"

.field public static final whitelist KEY_CARRIER_WFC_IMS_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_wfc_ims_available_bool"

.field public static final blacklist KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL:Ljava/lang/String; = "carrier_wfc_supports_ims_preferred_bool"

.field public static final whitelist KEY_CARRIER_WFC_SUPPORTS_WIFI_ONLY_BOOL:Ljava/lang/String; = "carrier_wfc_supports_wifi_only_bool"

.field public static final blacklist KEY_CARRIER_WLAN_DISALLOWED_APN_TYPES_STRING_ARRAY:Ljava/lang/String; = "carrier_wlan_disallowed_apn_types_string_array"

.field public static final blacklist KEY_CARRIER_WWAN_DISALLOWED_APN_TYPES_STRING_ARRAY:Ljava/lang/String; = "carrier_wwan_disallowed_apn_types_string_array"

.field public static final whitelist KEY_CDMA_3WAYCALL_FLASH_DELAY_INT:Ljava/lang/String; = "cdma_3waycall_flash_delay_int"

.field public static final blacklist KEY_CDMA_CW_CF_ENABLED_BOOL:Ljava/lang/String; = "cdma_cw_cf_enabled_bool"

.field public static final whitelist KEY_CDMA_DTMF_TONE_DELAY_INT:Ljava/lang/String; = "cdma_dtmf_tone_delay_int"

.field public static final blacklist KEY_CDMA_ENHANCED_ROAMING_INDICATOR_FOR_HOME_NETWORK_INT_ARRAY:Ljava/lang/String; = "cdma_enhanced_roaming_indicator_for_home_network_int_array"

.field public static final blacklist KEY_CDMA_HOME_REGISTERED_PLMN_NAME_OVERRIDE_BOOL:Ljava/lang/String; = "cdma_home_registered_plmn_name_override_bool"

.field public static final blacklist KEY_CDMA_HOME_REGISTERED_PLMN_NAME_STRING:Ljava/lang/String; = "cdma_home_registered_plmn_name_string"

.field public static final whitelist KEY_CDMA_NONROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "cdma_nonroaming_networks_string_array"

.field public static final whitelist KEY_CDMA_ROAMING_MODE_INT:Ljava/lang/String; = "cdma_roaming_mode_int"

.field public static final whitelist KEY_CDMA_ROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "cdma_roaming_networks_string_array"

.field public static final whitelist KEY_CELLULAR_USAGE_SETTING_INT:Ljava/lang/String; = "cellular_usage_setting_int"

.field public static final whitelist KEY_CHECK_PRICING_WITH_CARRIER_FOR_DATA_ROAMING_BOOL:Ljava/lang/String; = "check_pricing_with_carrier_data_roaming_bool"

.field public static final whitelist KEY_CI_ACTION_ON_SYS_UPDATE_BOOL:Ljava/lang/String; = "ci_action_on_sys_update_bool"

.field public static final whitelist KEY_CI_ACTION_ON_SYS_UPDATE_EXTRA_STRING:Ljava/lang/String; = "ci_action_on_sys_update_extra_string"

.field public static final whitelist KEY_CI_ACTION_ON_SYS_UPDATE_EXTRA_VAL_STRING:Ljava/lang/String; = "ci_action_on_sys_update_extra_val_string"

.field public static final whitelist KEY_CI_ACTION_ON_SYS_UPDATE_INTENT_STRING:Ljava/lang/String; = "ci_action_on_sys_update_intent_string"

.field public static final whitelist KEY_CONFIG_IMS_MMTEL_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "config_ims_mmtel_package_override_string"

.field public static final whitelist KEY_CONFIG_IMS_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "config_ims_package_override_string"

.field public static final whitelist KEY_CONFIG_IMS_RCS_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "config_ims_rcs_package_override_string"

.field public static final whitelist KEY_CONFIG_PLANS_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "config_plans_package_override_string"

.field public static final blacklist KEY_CONFIG_SHOW_ORIG_DIAL_STRING_FOR_CDMA_BOOL:Ljava/lang/String; = "config_show_orig_dial_string_for_cdma"

.field public static final whitelist KEY_CONFIG_TELEPHONY_USE_OWN_NUMBER_FOR_VOICEMAIL_BOOL:Ljava/lang/String; = "config_telephony_use_own_number_for_voicemail_bool"

.field public static final whitelist KEY_CONFIG_WIFI_DISABLE_IN_ECBM:Ljava/lang/String; = "config_wifi_disable_in_ecbm"

.field public static final greylist-max-o KEY_CONVERT_CDMA_CALLER_ID_MMI_CODES_WHILE_ROAMING_ON_3GPP_BOOL:Ljava/lang/String; = "convert_cdma_caller_id_mmi_codes_while_roaming_on_3gpp_bool"

.field public static final whitelist KEY_CROSS_SIM_SPN_FORMAT_INT:Ljava/lang/String; = "cross_sim_spn_format_int"

.field public static final whitelist KEY_CSP_ENABLED_BOOL:Ljava/lang/String; = "csp_enabled_bool"

.field public static final whitelist KEY_DATA_LIMIT_NOTIFICATION_BOOL:Ljava/lang/String; = "data_limit_notification_bool"

.field public static final whitelist KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG:Ljava/lang/String; = "data_limit_threshold_bytes_long"

.field public static final whitelist KEY_DATA_RAPID_NOTIFICATION_BOOL:Ljava/lang/String; = "data_rapid_notification_bool"

.field public static final blacklist KEY_DATA_STALL_RECOVERY_SHOULD_SKIP_BOOL_ARRAY:Ljava/lang/String; = "data_stall_recovery_should_skip_bool_array"

.field public static final blacklist KEY_DATA_STALL_RECOVERY_TIMERS_LONG_ARRAY:Ljava/lang/String; = "data_stall_recovery_timers_long_array"

.field public static final blacklist KEY_DATA_SWITCH_VALIDATION_MIN_GAP_LONG:Ljava/lang/String; = "data_switch_validation_min_gap_long"

.field public static final whitelist KEY_DATA_SWITCH_VALIDATION_TIMEOUT_LONG:Ljava/lang/String; = "data_switch_validation_timeout_long"

.field public static final whitelist KEY_DATA_WARNING_NOTIFICATION_BOOL:Ljava/lang/String; = "data_warning_notification_bool"

.field public static final whitelist KEY_DATA_WARNING_THRESHOLD_BYTES_LONG:Ljava/lang/String; = "data_warning_threshold_bytes_long"

.field public static final blacklist KEY_DEFAULT_MTU_INT:Ljava/lang/String; = "default_mtu_int"

.field public static final blacklist KEY_DEFAULT_PREFERRED_APN_NAME_STRING:Ljava/lang/String; = "default_preferred_apn_name_string"

.field public static final blacklist KEY_DEFAULT_RTT_MODE_INT:Ljava/lang/String; = "default_rtt_mode_int"

.field public static final whitelist KEY_DEFAULT_SIM_CALL_MANAGER_STRING:Ljava/lang/String; = "default_sim_call_manager_string"

.field public static final whitelist KEY_DEFAULT_VM_NUMBER_ROAMING_AND_IMS_UNREGISTERED_STRING:Ljava/lang/String; = "default_vm_number_roaming_and_ims_unregistered_string"

.field public static final greylist-max-o KEY_DEFAULT_VM_NUMBER_ROAMING_STRING:Ljava/lang/String; = "default_vm_number_roaming_string"

.field public static final whitelist KEY_DEFAULT_VM_NUMBER_STRING:Ljava/lang/String; = "default_vm_number_string"

.field public static final blacklist KEY_DELAY_IMS_TEAR_DOWN_UNTIL_CALL_END_BOOL:Ljava/lang/String; = "delay_ims_tear_down_until_call_end_bool"

.field public static final whitelist KEY_DIAL_STRING_REPLACE_STRING_ARRAY:Ljava/lang/String; = "dial_string_replace_string_array"

.field public static final whitelist KEY_DISABLE_CDMA_ACTIVATION_CODE_BOOL:Ljava/lang/String; = "disable_cdma_activation_code_bool"

.field public static final whitelist KEY_DISABLE_CHARGE_INDICATION_BOOL:Ljava/lang/String; = "disable_charge_indication_bool"

.field public static final blacklist KEY_DISABLE_DUN_APN_WHILE_ROAMING_WITH_PRESET_APN_BOOL:Ljava/lang/String; = "disable_dun_apn_while_roaming_with_preset_apn_bool"

.field public static final whitelist KEY_DISABLE_SUPPLEMENTARY_SERVICES_IN_AIRPLANE_MODE_BOOL:Ljava/lang/String; = "disable_supplementary_services_in_airplane_mode_bool"

.field public static final greylist-max-r KEY_DISABLE_VOICE_BARRING_NOTIFICATION_BOOL:Ljava/lang/String; = "disable_voice_barring_notification_bool"

.field public static final whitelist KEY_DISCONNECT_CAUSE_PLAY_BUSYTONE_INT_ARRAY:Ljava/lang/String; = "disconnect_cause_play_busytone_int_array"

.field public static final whitelist KEY_DISPLAY_CALL_STRENGTH_INDICATOR_BOOL:Ljava/lang/String; = "display_call_strength_indicator_bool"

.field public static final whitelist KEY_DISPLAY_HD_AUDIO_PROPERTY_BOOL:Ljava/lang/String; = "display_hd_audio_property_bool"

.field public static final blacklist KEY_DISPLAY_NO_DATA_NOTIFICATION_ON_PERMANENT_FAILURE_BOOL:Ljava/lang/String; = "display_no_data_notification_on_permanent_failure_bool"

.field public static final greylist-max-o KEY_DISPLAY_VOICEMAIL_NUMBER_AS_DEFAULT_CALL_FORWARDING_NUMBER_BOOL:Ljava/lang/String; = "display_voicemail_number_as_default_call_forwarding_number"

.field public static final whitelist KEY_DROP_VIDEO_CALL_WHEN_ANSWERING_AUDIO_CALL_BOOL:Ljava/lang/String; = "drop_video_call_when_answering_audio_call_bool"

.field public static final whitelist KEY_DTMF_TYPE_ENABLED_BOOL:Ljava/lang/String; = "dtmf_type_enabled_bool"

.field public static final whitelist KEY_DURATION_BLOCKING_DISABLED_AFTER_EMERGENCY_INT:Ljava/lang/String; = "duration_blocking_disabled_after_emergency_int"

.field public static final whitelist KEY_EDITABLE_ENHANCED_4G_LTE_BOOL:Ljava/lang/String; = "editable_enhanced_4g_lte_bool"

.field public static final whitelist KEY_EDITABLE_VOICEMAIL_NUMBER_BOOL:Ljava/lang/String; = "editable_voicemail_number_bool"

.field public static final whitelist KEY_EDITABLE_VOICEMAIL_NUMBER_SETTING_BOOL:Ljava/lang/String; = "editable_voicemail_number_setting_bool"

.field public static final whitelist KEY_EDITABLE_WFC_MODE_BOOL:Ljava/lang/String; = "editable_wfc_mode_bool"

.field public static final whitelist KEY_EDITABLE_WFC_ROAMING_MODE_BOOL:Ljava/lang/String; = "editable_wfc_roaming_mode_bool"

.field public static final blacklist KEY_EHPLMN_OVERRIDE_STRING_ARRAY:Ljava/lang/String; = "ehplmn_override_string_array"

.field public static final whitelist KEY_EMERGENCY_NOTIFICATION_DELAY_INT:Ljava/lang/String; = "emergency_notification_delay_int"

.field public static final whitelist KEY_EMERGENCY_NUMBER_PREFIX_STRING_ARRAY:Ljava/lang/String; = "emergency_number_prefix_string_array"

.field public static final blacklist KEY_EMERGENCY_SMS_MODE_TIMER_MS_INT:Ljava/lang/String; = "emergency_sms_mode_timer_ms_int"

.field public static final blacklist KEY_ENABLE_4G_OPPORTUNISTIC_NETWORK_SCAN_BOOL:Ljava/lang/String; = "enabled_4g_opportunistic_network_scan_bool"

.field public static final greylist-max-o KEY_ENABLE_APPS_STRING_ARRAY:Ljava/lang/String; = "enable_apps_string_array"

.field public static final blacklist KEY_ENABLE_CARRIER_DISPLAY_NAME_RESOLVER_BOOL:Ljava/lang/String; = "enable_carrier_display_name_resolver_bool"

.field public static final whitelist KEY_ENABLE_CROSS_SIM_CALLING_ON_OPPORTUNISTIC_DATA_BOOL:Ljava/lang/String; = "enable_cross_sim_calling_on_opportunistic_data_bool"

.field public static final whitelist KEY_ENABLE_DIALER_KEY_VIBRATION_BOOL:Ljava/lang/String; = "enable_dialer_key_vibration_bool"

.field public static final blacklist KEY_ENABLE_NR_ADVANCED_WHILE_ROAMING_BOOL:Ljava/lang/String; = "enable_nr_advanced_for_roaming_bool"

.field public static final whitelist KEY_ENHANCED_4G_LTE_ON_BY_DEFAULT_BOOL:Ljava/lang/String; = "enhanced_4g_lte_on_by_default_bool"

.field public static final greylist-max-o KEY_ENHANCED_4G_LTE_TITLE_VARIANT_BOOL:Ljava/lang/String; = "enhanced_4g_lte_title_variant_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_ENHANCED_4G_LTE_TITLE_VARIANT_INT:Ljava/lang/String; = "enhanced_4g_lte_title_variant_int"

.field public static final whitelist KEY_ESIM_DOWNLOAD_RETRY_BACKOFF_TIMER_SEC_INT:Ljava/lang/String; = "esim_download_retry_backoff_timer_sec_int"

.field public static final whitelist KEY_ESIM_MAX_DOWNLOAD_RETRY_ATTEMPTS_INT:Ljava/lang/String; = "esim_max_download_retry_attempts_int"

.field public static final blacklist KEY_FDN_NUMBER_LENGTH_LIMIT_INT:Ljava/lang/String; = "fdn_number_length_limit_int"

.field public static final greylist-max-o KEY_FEATURE_ACCESS_CODES_STRING_ARRAY:Ljava/lang/String; = "feature_access_codes_string_array"

.field public static final greylist-max-o KEY_FILTERED_CNAP_NAMES_STRING_ARRAY:Ljava/lang/String; = "filtered_cnap_names_string_array"

.field public static final whitelist KEY_FORCE_HOME_NETWORK_BOOL:Ljava/lang/String; = "force_home_network_bool"

.field public static final greylist-max-o KEY_FORCE_IMEI_BOOL:Ljava/lang/String; = "force_imei_bool"

.field public static final blacklist KEY_FORMAT_INCOMING_NUMBER_TO_NATIONAL_FOR_JP_BOOL:Ljava/lang/String; = "format_incoming_number_to_national_for_jp_bool"

.field public static final whitelist KEY_GBA_MODE_INT:Ljava/lang/String; = "gba_mode_int"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_GBA_UA_SECURITY_ORGANIZATION_INT:Ljava/lang/String; = "gba_ua_security_organization_int"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_GBA_UA_SECURITY_PROTOCOL_INT:Ljava/lang/String; = "gba_ua_security_protocol_int"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_GBA_UA_TLS_CIPHER_SUITE_INT:Ljava/lang/String; = "gba_ua_tls_cipher_suite_int"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o KEY_GSM_CDMA_CALLS_CAN_BE_HD_AUDIO:Ljava/lang/String; = "gsm_cdma_calls_can_be_hd_audio"

.field public static final whitelist KEY_GSM_DTMF_TONE_DELAY_INT:Ljava/lang/String; = "gsm_dtmf_tone_delay_int"

.field public static final whitelist KEY_GSM_NONROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "gsm_nonroaming_networks_string_array"

.field public static final whitelist KEY_GSM_ROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "gsm_roaming_networks_string_array"

.field public static final blacklist KEY_GSM_RSSI_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "gsm_rssi_thresholds_int_array"

.field public static final whitelist KEY_HAS_IN_CALL_NOISE_SUPPRESSION_BOOL:Ljava/lang/String; = "has_in_call_noise_suppression_bool"

.field public static final whitelist KEY_HIDE_CARRIER_NETWORK_SETTINGS_BOOL:Ljava/lang/String; = "hide_carrier_network_settings_bool"

.field public static final blacklist KEY_HIDE_DIGITS_HELPER_TEXT_ON_STK_INPUT_SCREEN_BOOL:Ljava/lang/String; = "hide_digits_helper_text_on_stk_input_screen_bool"

.field public static final blacklist KEY_HIDE_ENABLED_5G_BOOL:Ljava/lang/String; = "hide_enabled_5g_bool"

.field public static final whitelist KEY_HIDE_ENABLE_2G:Ljava/lang/String; = "hide_enable_2g_bool"

.field public static final whitelist KEY_HIDE_ENHANCED_4G_LTE_BOOL:Ljava/lang/String; = "hide_enhanced_4g_lte_bool"

.field public static final whitelist KEY_HIDE_IMS_APN_BOOL:Ljava/lang/String; = "hide_ims_apn_bool"

.field public static final whitelist KEY_HIDE_LTE_PLUS_DATA_ICON_BOOL:Ljava/lang/String; = "hide_lte_plus_data_icon_bool"

.field public static final whitelist KEY_HIDE_PREFERRED_NETWORK_TYPE_BOOL:Ljava/lang/String; = "hide_preferred_network_type_bool"

.field public static final whitelist KEY_HIDE_PRESET_APN_DETAILS_BOOL:Ljava/lang/String; = "hide_preset_apn_details_bool"

.field public static final whitelist KEY_HIDE_SIM_LOCK_SETTINGS_BOOL:Ljava/lang/String; = "hide_sim_lock_settings_bool"

.field public static final whitelist KEY_HIDE_TTY_HCO_VCO_WITH_RTT_BOOL:Ljava/lang/String; = "hide_tty_hco_vco_with_rtt"

.field public static final greylist-max-o KEY_IDENTIFY_HIGH_DEFINITION_CALLS_IN_CALL_LOG_BOOL:Ljava/lang/String; = "identify_high_definition_calls_in_call_log_bool"

.field public static final whitelist KEY_IGNORE_DATA_ENABLED_CHANGED_FOR_VIDEO_CALLS:Ljava/lang/String; = "ignore_data_enabled_changed_for_video_calls"

.field public static final blacklist KEY_IGNORE_RESET_UT_CAPABILITY_BOOL:Ljava/lang/String; = "ignore_reset_ut_capability_bool"

.field public static final whitelist KEY_IGNORE_RTT_MODE_SETTING_BOOL:Ljava/lang/String; = "ignore_rtt_mode_setting_bool"

.field public static final whitelist KEY_IGNORE_SIM_NETWORK_LOCKED_EVENTS_BOOL:Ljava/lang/String; = "ignore_sim_network_locked_events_bool"

.field public static final whitelist KEY_IMS_CONFERENCE_SIZE_LIMIT_INT:Ljava/lang/String; = "ims_conference_size_limit_int"

.field public static final whitelist KEY_IMS_DTMF_TONE_DELAY_INT:Ljava/lang/String; = "ims_dtmf_tone_delay_int"

.field public static final greylist-max-o KEY_IMS_REASONINFO_MAPPING_STRING_ARRAY:Ljava/lang/String; = "ims_reasoninfo_mapping_string_array"

.field public static final blacklist KEY_INFLATE_SIGNAL_STRENGTH_BOOL:Ljava/lang/String; = "inflate_signal_strength_bool"

.field public static final blacklist KEY_INTERNATIONAL_ROAMING_DIAL_STRING_REPLACE_STRING_ARRAY:Ljava/lang/String; = "international_roaming_dial_string_replace_string_array"

.field public static final whitelist KEY_IS_IMS_CONFERENCE_SIZE_ENFORCED_BOOL:Ljava/lang/String; = "is_ims_conference_size_enforced_bool"

.field public static final whitelist KEY_IS_OPPORTUNISTIC_SUBSCRIPTION_BOOL:Ljava/lang/String; = "is_opportunistic_subscription_bool"

.field public static final blacklist KEY_IWLAN_HANDOVER_POLICY_STRING_ARRAY:Ljava/lang/String; = "iwlan_handover_policy_string_array"

.field public static final blacklist KEY_LIMITED_SIM_FUNCTION_NOTIFICATION_FOR_DSDS_BOOL:Ljava/lang/String; = "limited_sim_function_notification_for_dsds_bool"

.field public static final blacklist KEY_LOCAL_DISCONNECT_EMPTY_IMS_CONFERENCE_BOOL:Ljava/lang/String; = "local_disconnect_empty_ims_conference_bool"

.field public static final greylist-max-o KEY_LTE_EARFCNS_RSRP_BOOST_INT:Ljava/lang/String; = "lte_earfcns_rsrp_boost_int"

.field public static final whitelist KEY_LTE_ENABLED_BOOL:Ljava/lang/String; = "lte_enabled_bool"

.field public static final blacklist KEY_LTE_ENDC_USING_USER_DATA_FOR_RRC_DETECTION_BOOL:Ljava/lang/String; = "lte_endc_using_user_data_for_rrc_detection_bool"

.field public static final blacklist KEY_LTE_PLUS_THRESHOLD_BANDWIDTH_KHZ_INT:Ljava/lang/String; = "lte_plus_threshold_bandwidth_khz_int"

.field public static final greylist-max-o KEY_LTE_RSRP_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "lte_rsrp_thresholds_int_array"

.field public static final whitelist KEY_LTE_RSRQ_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "lte_rsrq_thresholds_int_array"

.field public static final whitelist KEY_LTE_RSSNR_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "lte_rssnr_thresholds_int_array"

.field public static final whitelist KEY_MDN_IS_ADDITIONAL_VOICEMAIL_NUMBER_BOOL:Ljava/lang/String; = "mdn_is_additional_voicemail_number_bool"

.field public static final blacklist KEY_MISSED_INCOMING_CALL_SMS_ORIGINATOR_STRING_ARRAY:Ljava/lang/String; = "missed_incoming_call_sms_originator_string_array"

.field public static final blacklist KEY_MISSED_INCOMING_CALL_SMS_PATTERN_STRING_ARRAY:Ljava/lang/String; = "missed_incoming_call_sms_pattern_string_array"

.field public static final blacklist KEY_MMI_TWO_DIGIT_NUMBER_PATTERN_STRING_ARRAY:Ljava/lang/String; = "mmi_two_digit_number_pattern_string_array"

.field public static final whitelist KEY_MMS_ALIAS_ENABLED_BOOL:Ljava/lang/String; = "aliasEnabled"

.field public static final whitelist KEY_MMS_ALIAS_MAX_CHARS_INT:Ljava/lang/String; = "aliasMaxChars"

.field public static final whitelist KEY_MMS_ALIAS_MIN_CHARS_INT:Ljava/lang/String; = "aliasMinChars"

.field public static final whitelist KEY_MMS_ALLOW_ATTACH_AUDIO_BOOL:Ljava/lang/String; = "allowAttachAudio"

.field public static final whitelist KEY_MMS_APPEND_TRANSACTION_ID_BOOL:Ljava/lang/String; = "enabledTransID"

.field public static final whitelist KEY_MMS_CLOSE_CONNECTION_BOOL:Ljava/lang/String; = "mmsCloseConnection"

.field public static final whitelist KEY_MMS_EMAIL_GATEWAY_NUMBER_STRING:Ljava/lang/String; = "emailGatewayNumber"

.field public static final whitelist KEY_MMS_GROUP_MMS_ENABLED_BOOL:Ljava/lang/String; = "enableGroupMms"

.field public static final whitelist KEY_MMS_HTTP_PARAMS_STRING:Ljava/lang/String; = "httpParams"

.field public static final whitelist KEY_MMS_HTTP_SOCKET_TIMEOUT_INT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final whitelist KEY_MMS_MAX_IMAGE_HEIGHT_INT:Ljava/lang/String; = "maxImageHeight"

.field public static final whitelist KEY_MMS_MAX_IMAGE_WIDTH_INT:Ljava/lang/String; = "maxImageWidth"

.field public static final whitelist KEY_MMS_MAX_MESSAGE_SIZE_INT:Ljava/lang/String; = "maxMessageSize"

.field public static final whitelist KEY_MMS_MESSAGE_TEXT_MAX_SIZE_INT:Ljava/lang/String; = "maxMessageTextSize"

.field public static final whitelist KEY_MMS_MMS_DELIVERY_REPORT_ENABLED_BOOL:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final whitelist KEY_MMS_MMS_ENABLED_BOOL:Ljava/lang/String; = "enabledMMS"

.field public static final whitelist KEY_MMS_MMS_READ_REPORT_ENABLED_BOOL:Ljava/lang/String; = "enableMMSReadReports"

.field public static final whitelist KEY_MMS_MULTIPART_SMS_ENABLED_BOOL:Ljava/lang/String; = "enableMultipartSMS"

.field public static final whitelist KEY_MMS_NAI_SUFFIX_STRING:Ljava/lang/String; = "naiSuffix"

.field public static final whitelist KEY_MMS_NOTIFY_WAP_MMSC_ENABLED_BOOL:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final whitelist KEY_MMS_RECIPIENT_LIMIT_INT:Ljava/lang/String; = "recipientLimit"

.field public static final whitelist KEY_MMS_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES_BOOL:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final whitelist KEY_MMS_SHOW_CELL_BROADCAST_APP_LINKS_BOOL:Ljava/lang/String; = "config_cellBroadcastAppLinks"

.field public static final whitelist KEY_MMS_SMS_DELIVERY_REPORT_ENABLED_BOOL:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final whitelist KEY_MMS_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD_INT:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final whitelist KEY_MMS_SMS_TO_MMS_TEXT_THRESHOLD_INT:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final whitelist KEY_MMS_SUBJECT_MAX_LENGTH_INT:Ljava/lang/String; = "maxSubjectLength"

.field public static final whitelist KEY_MMS_SUPPORT_HTTP_CHARSET_HEADER_BOOL:Ljava/lang/String; = "supportHttpCharsetHeader"

.field public static final whitelist KEY_MMS_SUPPORT_MMS_CONTENT_DISPOSITION_BOOL:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final whitelist KEY_MMS_UA_PROF_TAG_NAME_STRING:Ljava/lang/String; = "uaProfTagName"

.field public static final whitelist KEY_MMS_UA_PROF_URL_STRING:Ljava/lang/String; = "uaProfUrl"

.field public static final whitelist KEY_MMS_USER_AGENT_STRING:Ljava/lang/String; = "userAgent"

.field public static final whitelist KEY_MONTHLY_DATA_CYCLE_DAY_INT:Ljava/lang/String; = "monthly_data_cycle_day_int"

.field public static final blacklist KEY_MULTI_APN_ARRAY_FOR_SAME_GID:Ljava/lang/String; = "multi_apn_array_for_same_gid"

.field public static final blacklist KEY_NETWORK_TEMP_NOT_METERED_SUPPORTED_BOOL:Ljava/lang/String; = "network_temp_not_metered_supported_bool"

.field public static final greylist-max-o KEY_NON_ROAMING_OPERATOR_STRING_ARRAY:Ljava/lang/String; = "non_roaming_operator_string_array"

.field public static final greylist-max-o KEY_NOTIFY_HANDOVER_VIDEO_FROM_LTE_TO_WIFI_BOOL:Ljava/lang/String; = "notify_handover_video_from_lte_to_wifi_bool"

.field public static final greylist-max-o KEY_NOTIFY_HANDOVER_VIDEO_FROM_WIFI_TO_LTE_BOOL:Ljava/lang/String; = "notify_handover_video_from_wifi_to_lte_bool"

.field public static final greylist-max-o KEY_NOTIFY_INTERNATIONAL_CALL_ON_WFC_BOOL:Ljava/lang/String; = "notify_international_call_on_wfc_bool"

.field public static final greylist-max-o KEY_NOTIFY_VT_HANDOVER_TO_WIFI_FAILURE_BOOL:Ljava/lang/String; = "notify_vt_handover_to_wifi_failure_bool"

.field public static final blacklist KEY_NRARFCNS_RSRP_BOOST_INT_ARRAY:Ljava/lang/String; = "nrarfcns_rsrp_boost_int_array"

.field public static final blacklist KEY_NR_ADVANCED_CAPABLE_PCO_ID_INT:Ljava/lang/String; = "nr_advanced_capable_pco_id_int"

.field public static final blacklist KEY_NR_ADVANCED_THRESHOLD_BANDWIDTH_KHZ_INT:Ljava/lang/String; = "nr_advanced_threshold_bandwidth_khz_int"

.field public static final blacklist KEY_NR_TIMERS_RESET_IF_NON_ENDC_AND_RRC_IDLE_BOOL:Ljava/lang/String; = "nr_timers_reset_if_non_endc_and_rrc_idle_bool"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_MIN_BANDWIDTH_MODE:Ljava/lang/String; = "5g_ultra_wideband_icon_min_bandwidth_mode"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_MIN_BANDWIDTH_VALUE:Ljava/lang/String; = "5g_ultra_wideband_icon_min_bandwidth_value"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_NSA_BAND_ARRAY:Ljava/lang/String; = "5g_ultra_wideband_icon_nsa_band_array"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_NSA_BAND_MODE:Ljava/lang/String; = "5g_ultra_wideband_icon_nsa_band_mode"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_REFRESH_TIMER_MAP:Ljava/lang/String; = "5g_ultra_wideband_icon_refresh_timer_map"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_SA_BAND_ARRAY:Ljava/lang/String; = "5g_ultra_wideband_icon_sa_band_array"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_SA_BAND_MODE:Ljava/lang/String; = "5g_ultra_wideband_icon_sa_band_mode"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_SIB2_VALUE:Ljava/lang/String; = "5g_ultra_wideband_icon_sib2_value"

.field public static final whitelist KEY_ONLY_AUTO_SELECT_IN_HOME_NETWORK_BOOL:Ljava/lang/String; = "only_auto_select_in_home_network"

.field public static final whitelist KEY_ONLY_SINGLE_DC_ALLOWED_INT_ARRAY:Ljava/lang/String; = "only_single_dc_allowed_int_array"

.field public static final blacklist KEY_OPERATOR_NAME_FILTER_PATTERN_STRING:Ljava/lang/String; = "operator_name_filter_pattern_string"

.field public static final whitelist KEY_OPERATOR_SELECTION_EXPAND_BOOL:Ljava/lang/String; = "operator_selection_expand_bool"

.field public static final blacklist KEY_OPL_OVERRIDE_STRING_ARRAY:Ljava/lang/String; = "opl_override_opl_string_array"

.field public static final blacklist KEY_OPPORTUNISTIC_CARRIER_IDS_INT_ARRAY:Ljava/lang/String; = "opportunistic_carrier_ids_int_array"

.field public static final blacklist KEY_OPPORTUNISTIC_ESIM_DOWNLOAD_VIA_WIFI_ONLY_BOOL:Ljava/lang/String; = "opportunistic_esim_download_via_wifi_only_bool"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_BACKOFF_TIME_LONG:Ljava/lang/String; = "opportunistic_network_backoff_time_long"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_DATA_SWITCH_EXIT_HYSTERESIS_TIME_LONG:Ljava/lang/String; = "opportunistic_network_data_switch_exit_hysteresis_time_long"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_DATA_SWITCH_HYSTERESIS_TIME_LONG:Ljava/lang/String; = "opportunistic_network_data_switch_hysteresis_time_long"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_ENTRY_OR_EXIT_HYSTERESIS_TIME_LONG:Ljava/lang/String; = "opportunistic_network_entry_or_exit_hysteresis_time_long"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_ENTRY_THRESHOLD_BANDWIDTH_INT:Ljava/lang/String; = "opportunistic_network_entry_threshold_bandwidth_int"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_ENTRY_THRESHOLD_RSRP_INT:Ljava/lang/String; = "opportunistic_network_entry_threshold_rsrp_int"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_ENTRY_THRESHOLD_RSSNR_INT:Ljava/lang/String; = "opportunistic_network_entry_threshold_rssnr_int"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_EXIT_THRESHOLD_RSRP_INT:Ljava/lang/String; = "opportunistic_network_exit_threshold_rsrp_int"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_EXIT_THRESHOLD_RSSNR_INT:Ljava/lang/String; = "opportunistic_network_exit_threshold_rssnr_int"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_MAX_BACKOFF_TIME_LONG:Ljava/lang/String; = "opportunistic_network_max_backoff_time_long"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_PING_PONG_TIME_LONG:Ljava/lang/String; = "opportunistic_network_ping_pong_time_long"

.field public static final blacklist KEY_OPPORTUNISTIC_TIME_TO_SCAN_AFTER_CAPABILITY_SWITCH_TO_PRIMARY_LONG:Ljava/lang/String; = "opportunistic_time_to_scan_after_capability_switch_to_primary_long"

.field public static final blacklist KEY_PARAMETERS_USED_FOR_LTE_SIGNAL_BAR_INT:Ljava/lang/String; = "parameters_used_for_lte_signal_bar_int"

.field public static final blacklist KEY_PARAMETERS_USE_FOR_5G_NR_SIGNAL_BAR_INT:Ljava/lang/String; = "parameters_use_for_5g_nr_signal_bar_int"

.field public static final whitelist KEY_PING_TEST_BEFORE_DATA_SWITCH_BOOL:Ljava/lang/String; = "ping_test_before_data_switch_bool"

.field public static final greylist-max-o KEY_PLAY_CALL_RECORDING_TONE_BOOL:Ljava/lang/String; = "play_call_recording_tone_bool"

.field public static final blacklist KEY_PNN_OVERRIDE_STRING_ARRAY:Ljava/lang/String; = "pnn_override_string_array"

.field public static final whitelist KEY_PREFER_2G_BOOL:Ljava/lang/String; = "prefer_2g_bool"

.field public static final greylist-max-o KEY_PREF_NETWORK_NOTIFICATION_DELAY_INT:Ljava/lang/String; = "network_notification_delay_int"

.field public static final whitelist KEY_PREVENT_CLIR_ACTIVATION_AND_DEACTIVATION_CODE_BOOL:Ljava/lang/String; = "prevent_clir_activation_and_deactivation_code_bool"

.field public static final whitelist KEY_RADIO_RESTART_FAILURE_CAUSES_INT_ARRAY:Ljava/lang/String; = "radio_restart_failure_causes_int_array"

.field public static final greylist-max-o KEY_RATCHET_RAT_FAMILIES:Ljava/lang/String; = "ratchet_rat_families"

.field public static final whitelist KEY_RCS_CONFIG_SERVER_URL_STRING:Ljava/lang/String; = "rcs_config_server_url_string"

.field public static final whitelist KEY_READ_ONLY_APN_FIELDS_STRING_ARRAY:Ljava/lang/String; = "read_only_apn_fields_string_array"

.field public static final whitelist KEY_READ_ONLY_APN_TYPES_STRING_ARRAY:Ljava/lang/String; = "read_only_apn_types_string_array"

.field public static final blacklist KEY_REQUIRE_APN_FILTERING_WITH_RADIO_CAPABILITY:Ljava/lang/String; = "require_apn_filtering_with_radio_capability_bool"

.field public static final whitelist KEY_REQUIRE_ENTITLEMENT_CHECKS_BOOL:Ljava/lang/String; = "require_entitlement_checks_bool"

.field public static final whitelist KEY_RESTART_RADIO_ON_PDP_FAIL_REGULAR_DEACTIVATION_BOOL:Ljava/lang/String; = "restart_radio_on_pdp_fail_regular_deactivation_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o KEY_ROAMING_OPERATOR_STRING_ARRAY:Ljava/lang/String; = "roaming_operator_string_array"

.field public static final blacklist KEY_ROAMING_UNMETERED_NETWORK_TYPES_STRING_ARRAY:Ljava/lang/String; = "roaming_unmetered_network_types_string_array"

.field public static final whitelist KEY_RTT_AUTO_UPGRADE_BOOL:Ljava/lang/String; = "rtt_auto_upgrade_bool"

.field public static final whitelist KEY_RTT_DOWNGRADE_SUPPORTED_BOOL:Ljava/lang/String; = "rtt_downgrade_supported_bool"

.field public static final whitelist KEY_RTT_SUPPORTED_BOOL:Ljava/lang/String; = "rtt_supported_bool"

.field public static final whitelist KEY_RTT_SUPPORTED_FOR_VT_BOOL:Ljava/lang/String; = "rtt_supported_for_vt_bool"

.field public static final whitelist KEY_RTT_SUPPORTED_WHILE_ROAMING_BOOL:Ljava/lang/String; = "rtt_supported_while_roaming_bool"

.field public static final whitelist KEY_RTT_UPGRADE_SUPPORTED_BOOL:Ljava/lang/String; = "rtt_upgrade_supported_bool"

.field public static final whitelist KEY_RTT_UPGRADE_SUPPORTED_FOR_DOWNGRADED_VT_CALL_BOOL:Ljava/lang/String; = "rtt_upgrade_supported_for_downgraded_vt_call"

.field public static final blacklist KEY_SHOW_4GLTE_FOR_LTE_DATA_ICON_BOOL:Ljava/lang/String; = "show_4glte_for_lte_data_icon_bool"

.field public static final whitelist KEY_SHOW_4G_FOR_3G_DATA_ICON_BOOL:Ljava/lang/String; = "show_4g_for_3g_data_icon_bool"

.field public static final whitelist KEY_SHOW_4G_FOR_LTE_DATA_ICON_BOOL:Ljava/lang/String; = "show_4g_for_lte_data_icon_bool"

.field public static final whitelist KEY_SHOW_APN_SETTING_CDMA_BOOL:Ljava/lang/String; = "show_apn_setting_cdma_bool"

.field public static final whitelist KEY_SHOW_BLOCKING_PAY_PHONE_OPTION_BOOL:Ljava/lang/String; = "show_blocking_pay_phone_option_bool"

.field public static final whitelist KEY_SHOW_CALL_BLOCKING_DISABLED_NOTIFICATION_ALWAYS_BOOL:Ljava/lang/String; = "show_call_blocking_disabled_notification_always_bool"

.field public static final blacklist KEY_SHOW_CARRIER_DATA_ICON_PATTERN_STRING:Ljava/lang/String; = "show_carrier_data_icon_pattern_string"

.field public static final whitelist KEY_SHOW_CDMA_CHOICES_BOOL:Ljava/lang/String; = "show_cdma_choices_bool"

.field public static final blacklist KEY_SHOW_DATA_CONNECTED_ROAMING_NOTIFICATION_BOOL:Ljava/lang/String; = "show_data_connected_roaming_notification"

.field public static final whitelist KEY_SHOW_FORWARDED_NUMBER_BOOL:Ljava/lang/String; = "show_forwarded_number_bool"

.field public static final whitelist KEY_SHOW_ICCID_IN_SIM_STATUS_BOOL:Ljava/lang/String; = "show_iccid_in_sim_status_bool"

.field public static final whitelist KEY_SHOW_IMS_REGISTRATION_STATUS_BOOL:Ljava/lang/String; = "show_ims_registration_status_bool"

.field public static final whitelist KEY_SHOW_ONSCREEN_DIAL_BUTTON_BOOL:Ljava/lang/String; = "show_onscreen_dial_button_bool"

.field public static final blacklist KEY_SHOW_OPERATOR_NAME_IN_STATUSBAR_BOOL:Ljava/lang/String; = "show_operator_name_in_statusbar_bool"

.field public static final greylist-max-o KEY_SHOW_PRECISE_FAILED_CAUSE_BOOL:Ljava/lang/String; = "show_precise_failed_cause_bool"

.field public static final whitelist KEY_SHOW_SIGNAL_STRENGTH_IN_SIM_STATUS_BOOL:Ljava/lang/String; = "show_signal_strength_in_sim_status_bool"

.field public static final blacklist KEY_SHOW_SINGLE_OPERATOR_ROW_IN_CHOOSE_NETWORK_SETTING_BOOL:Ljava/lang/String; = "show_single_operator_row_in_choose_network_setting_bool"

.field public static final blacklist KEY_SHOW_SPN_FOR_HOME_IN_CHOOSE_NETWORK_SETTING_BOOL:Ljava/lang/String; = "show_spn_for_home_in_choose_network_setting_bool"

.field public static final whitelist KEY_SHOW_VIDEO_CALL_CHARGES_ALERT_DIALOG_BOOL:Ljava/lang/String; = "show_video_call_charges_alert_dialog_bool"

.field public static final whitelist KEY_SHOW_WFC_LOCATION_PRIVACY_POLICY_BOOL:Ljava/lang/String; = "show_wfc_location_privacy_policy_bool"

.field public static final blacklist KEY_SHOW_WIFI_CALLING_ICON_IN_STATUS_BAR_BOOL:Ljava/lang/String; = "show_wifi_calling_icon_in_status_bar_bool"

.field public static final blacklist KEY_SIGNAL_STRENGTH_NR_NSA_USE_LTE_AS_PRIMARY_BOOL:Ljava/lang/String; = "signal_strength_nr_nsa_use_lte_as_primary_bool"

.field public static final whitelist KEY_SIMPLIFIED_NETWORK_SETTINGS_BOOL:Ljava/lang/String; = "simplified_network_settings_bool"

.field public static final blacklist KEY_SIM_COUNTRY_ISO_OVERRIDE_STRING:Ljava/lang/String; = "sim_country_iso_override_string"

.field public static final whitelist KEY_SIM_NETWORK_UNLOCK_ALLOW_DISMISS_BOOL:Ljava/lang/String; = "sim_network_unlock_allow_dismiss_bool"

.field public static final greylist-max-o KEY_SKIP_CF_FAIL_TO_DISABLE_DIALOG_BOOL:Ljava/lang/String; = "skip_cf_fail_to_disable_dialog_bool"

.field public static final blacklist KEY_SMART_FORWARDING_CONFIG_COMPONENT_NAME_STRING:Ljava/lang/String; = "smart_forwarding_config_component_name_string"

.field public static final whitelist KEY_SMDP_SERVER_ADDRESS_STRING:Ljava/lang/String; = "smdp_server_address_string"

.field public static final whitelist KEY_SMS_REQUIRES_DESTINATION_NUMBER_CONVERSION_BOOL:Ljava/lang/String; = "sms_requires_destination_number_conversion_bool"

.field public static final blacklist KEY_SPDI_OVERRIDE_STRING_ARRAY:Ljava/lang/String; = "spdi_override_string_array"

.field public static final blacklist KEY_SPN_DISPLAY_CONDITION_OVERRIDE_INT:Ljava/lang/String; = "spn_display_condition_override_int"

.field public static final greylist-max-o KEY_SPN_DISPLAY_RULE_USE_ROAMING_FROM_SERVICE_STATE_BOOL:Ljava/lang/String; = "spn_display_rule_use_roaming_from_service_state_bool"

.field public static final greylist-max-o KEY_STK_DISABLE_LAUNCH_BROWSER_BOOL:Ljava/lang/String; = "stk_disable_launch_browser_bool"

.field public static final blacklist KEY_STORE_SIM_PIN_FOR_UNATTENDED_REBOOT_BOOL:Ljava/lang/String; = "store_sim_pin_for_unattended_reboot_bool"

.field public static final whitelist KEY_SUBSCRIPTION_GROUP_UUID_STRING:Ljava/lang/String; = "subscription_group_uuid_string"

.field public static final whitelist KEY_SUPPORTS_CALL_COMPOSER_BOOL:Ljava/lang/String; = "supports_call_composer_bool"

.field public static final whitelist KEY_SUPPORTS_DEVICE_TO_DEVICE_COMMUNICATION_USING_DTMF_BOOL:Ljava/lang/String; = "supports_device_to_device_communication_using_dtmf_bool"

.field public static final whitelist KEY_SUPPORTS_DEVICE_TO_DEVICE_COMMUNICATION_USING_RTP_BOOL:Ljava/lang/String; = "supports_device_to_device_communication_using_rtp_bool"

.field public static final whitelist KEY_SUPPORTS_SDP_NEGOTIATION_OF_D2D_RTP_HEADER_EXTENSIONS_BOOL:Ljava/lang/String; = "supports_sdp_negotiation_of_d2d_rtp_header_extensions_bool"

.field public static final whitelist KEY_SUPPORT_3GPP_CALL_FORWARDING_WHILE_ROAMING_BOOL:Ljava/lang/String; = "support_3gpp_call_forwarding_while_roaming_bool"

.field public static final whitelist KEY_SUPPORT_ADD_CONFERENCE_PARTICIPANTS_BOOL:Ljava/lang/String; = "support_add_conference_participants_bool"

.field public static final whitelist KEY_SUPPORT_ADHOC_CONFERENCE_CALLS_BOOL:Ljava/lang/String; = "support_adhoc_conference_calls_bool"

.field public static final whitelist KEY_SUPPORT_CDMA_1X_VOICE_CALLS_BOOL:Ljava/lang/String; = "support_cdma_1x_voice_calls_bool"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_SUPPORT_CLIR_NETWORK_DEFAULT_BOOL:Ljava/lang/String; = "support_clir_network_default_bool"

.field public static final whitelist KEY_SUPPORT_CONFERENCE_CALL_BOOL:Ljava/lang/String; = "support_conference_call_bool"

.field public static final greylist-max-o KEY_SUPPORT_DIRECT_FDN_DIALING_BOOL:Ljava/lang/String; = "support_direct_fdn_dialing_bool"

.field public static final greylist-max-o KEY_SUPPORT_DOWNGRADE_VT_TO_AUDIO_BOOL:Ljava/lang/String; = "support_downgrade_vt_to_audio_bool"

.field public static final blacklist KEY_SUPPORT_EMERGENCY_DIALER_SHORTCUT_BOOL:Ljava/lang/String; = "support_emergency_dialer_shortcut_bool"

.field public static final whitelist KEY_SUPPORT_EMERGENCY_SMS_OVER_IMS_BOOL:Ljava/lang/String; = "support_emergency_sms_over_ims_bool"

.field public static final whitelist KEY_SUPPORT_ENHANCED_CALL_BLOCKING_BOOL:Ljava/lang/String; = "support_enhanced_call_blocking_bool"

.field public static final blacklist KEY_SUPPORT_IMS_CALL_FORWARDING_WHILE_ROAMING_BOOL:Ljava/lang/String; = "support_ims_call_forwarding_while_roaming_bool"

.field public static final greylist-max-o KEY_SUPPORT_IMS_CONFERENCE_CALL_BOOL:Ljava/lang/String; = "support_ims_conference_call_bool"

.field public static final whitelist KEY_SUPPORT_IMS_CONFERENCE_EVENT_PACKAGE_BOOL:Ljava/lang/String; = "support_ims_conference_event_package_bool"

.field public static final blacklist KEY_SUPPORT_IMS_CONFERENCE_EVENT_PACKAGE_ON_PEER_BOOL:Ljava/lang/String; = "support_ims_conference_event_package_on_peer_bool"

.field public static final greylist-max-o KEY_SUPPORT_MANAGE_IMS_CONFERENCE_CALL_BOOL:Ljava/lang/String; = "support_manage_ims_conference_call_bool"

.field public static final blacklist KEY_SUPPORT_NO_REPLY_TIMER_FOR_CFNRY_BOOL:Ljava/lang/String; = "support_no_reply_timer_for_cfnry_bool"

.field public static final whitelist KEY_SUPPORT_PAUSE_IMS_VIDEO_CALLS_BOOL:Ljava/lang/String; = "support_pause_ims_video_calls_bool"

.field public static final blacklist KEY_SUPPORT_SS_OVER_CDMA_BOOL:Ljava/lang/String; = "support_ss_over_cdma_bool"

.field public static final whitelist KEY_SUPPORT_SWAP_AFTER_MERGE_BOOL:Ljava/lang/String; = "support_swap_after_merge_bool"

.field public static final whitelist KEY_SUPPORT_TDSCDMA_BOOL:Ljava/lang/String; = "support_tdscdma_bool"

.field public static final whitelist KEY_SUPPORT_TDSCDMA_ROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "support_tdscdma_roaming_networks_string_array"

.field public static final greylist-max-o KEY_SUPPORT_VIDEO_CONFERENCE_CALL_BOOL:Ljava/lang/String; = "support_video_conference_call_bool"

.field public static final blacklist KEY_SUPPORT_WPS_OVER_IMS_BOOL:Ljava/lang/String; = "support_wps_over_ims_bool"

.field public static final whitelist KEY_SWITCH_DATA_TO_PRIMARY_IF_PRIMARY_IS_OOS_BOOL:Ljava/lang/String; = "switch_data_to_primary_if_primary_is_oos_bool"

.field public static final blacklist KEY_TELEPHONY_DATA_HANDOVER_RETRY_RULES_STRING_ARRAY:Ljava/lang/String; = "telephony_data_handover_retry_rules_string_array"

.field public static final blacklist KEY_TELEPHONY_DATA_SETUP_RETRY_RULES_STRING_ARRAY:Ljava/lang/String; = "telephony_data_setup_retry_rules_string_array"

.field public static final blacklist KEY_TELEPHONY_NETWORK_CAPABILITY_PRIORITIES_STRING_ARRAY:Ljava/lang/String; = "telephony_network_capability_priorities_string_array"

.field public static final blacklist KEY_TIME_TO_SWITCH_BACK_TO_PRIMARY_IF_OPPORTUNISTIC_OOS_LONG:Ljava/lang/String; = "time_to_switch_back_to_primary_if_opportunistic_oos_long"

.field public static final whitelist KEY_TREAT_DOWNGRADED_VIDEO_CALLS_AS_VIDEO_CALLS_BOOL:Ljava/lang/String; = "treat_downgraded_video_calls_as_video_calls_bool"

.field public static final whitelist KEY_TTY_SUPPORTED_BOOL:Ljava/lang/String; = "tty_supported_bool"

.field public static final greylist-max-o KEY_UNDELIVERED_SMS_MESSAGE_EXPIRATION_TIME:Ljava/lang/String; = "undelivered_sms_message_expiration_time"

.field public static final whitelist KEY_UNLOGGABLE_NUMBERS_STRING_ARRAY:Ljava/lang/String; = "unloggable_numbers_string_array"

.field public static final blacklist KEY_UNMETERED_NETWORK_TYPES_STRING_ARRAY:Ljava/lang/String; = "unmetered_network_types_string_array"

.field public static final blacklist KEY_UNMETERED_NR_NSA_BOOL:Ljava/lang/String; = "unmetered_nr_nsa_bool"

.field public static final blacklist KEY_UNMETERED_NR_NSA_MMWAVE_BOOL:Ljava/lang/String; = "unmetered_nr_nsa_mmwave_bool"

.field public static final blacklist KEY_UNMETERED_NR_NSA_SUB6_BOOL:Ljava/lang/String; = "unmetered_nr_nsa_sub6_bool"

.field public static final blacklist KEY_UNMETERED_NR_NSA_WHEN_ROAMING_BOOL:Ljava/lang/String; = "unmetered_nr_nsa_when_roaming_bool"

.field public static final blacklist KEY_UNMETERED_NR_SA_BOOL:Ljava/lang/String; = "unmetered_nr_sa_bool"

.field public static final blacklist KEY_UNMETERED_NR_SA_MMWAVE_BOOL:Ljava/lang/String; = "unmetered_nr_sa_mmwave_bool"

.field public static final blacklist KEY_UNMETERED_NR_SA_SUB6_BOOL:Ljava/lang/String; = "unmetered_nr_sa_sub6_bool"

.field public static final blacklist KEY_UNTHROTTLE_DATA_RETRY_WHEN_TAC_CHANGES_BOOL:Ljava/lang/String; = "unthrottle_data_retry_when_tac_changes_bool"

.field public static final whitelist KEY_USE_ACS_FOR_RCS_BOOL:Ljava/lang/String; = "use_acs_for_rcs_bool"

.field public static final blacklist KEY_USE_CALLER_ID_USSD_BOOL:Ljava/lang/String; = "use_caller_id_ussd_bool"

.field public static final blacklist KEY_USE_CALL_FORWARDING_USSD_BOOL:Ljava/lang/String; = "use_call_forwarding_ussd_bool"

.field public static final blacklist KEY_USE_CALL_WAITING_USSD_BOOL:Ljava/lang/String; = "use_call_waiting_ussd_bool"

.field public static final whitelist KEY_USE_HFA_FOR_PROVISIONING_BOOL:Ljava/lang/String; = "use_hfa_for_provisioning_bool"

.field public static final whitelist KEY_USE_IP_FOR_CALLING_INDICATOR_BOOL:Ljava/lang/String; = "use_ip_for_calling_indicator_bool"

.field public static final blacklist KEY_USE_ONLY_DIALED_SIM_ECC_LIST_BOOL:Ljava/lang/String; = "use_only_dialed_sim_ecc_list_bool"

.field public static final greylist-max-o KEY_USE_ONLY_RSRP_FOR_LTE_SIGNAL_BAR_BOOL:Ljava/lang/String; = "use_only_rsrp_for_lte_signal_bar_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_USE_OTASP_FOR_PROVISIONING_BOOL:Ljava/lang/String; = "use_otasp_for_provisioning_bool"

.field public static final whitelist KEY_USE_RCS_PRESENCE_BOOL:Ljava/lang/String; = "use_rcs_presence_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_USE_RCS_SIP_OPTIONS_BOOL:Ljava/lang/String; = "use_rcs_sip_options_bool"

.field public static final blacklist KEY_USE_SMS_CALLBACK_MODE_BOOL:Ljava/lang/String; = "use_sms_callback_mode_bool"

.field public static final blacklist KEY_USE_USIM_BOOL:Ljava/lang/String; = "use_usim_bool"

.field public static final whitelist KEY_USE_WFC_HOME_NETWORK_MODE_IN_ROAMING_NETWORK_BOOL:Ljava/lang/String; = "use_wfc_home_network_mode_in_roaming_network_bool"

.field public static final greylist-max-o KEY_VIDEO_CALLS_CAN_BE_HD_AUDIO:Ljava/lang/String; = "video_calls_can_be_hd_audio"

.field public static final greylist-max-o KEY_VILTE_DATA_IS_METERED_BOOL:Ljava/lang/String; = "vilte_data_is_metered_bool"

.field public static final whitelist KEY_VOICEMAIL_NOTIFICATION_PERSISTENT_BOOL:Ljava/lang/String; = "voicemail_notification_persistent_bool"

.field public static final whitelist KEY_VOICE_PRIVACY_DISABLE_UI_BOOL:Ljava/lang/String; = "voice_privacy_disable_ui_bool"

.field public static final blacklist KEY_VOLTE_5G_LIMITED_ALERT_DIALOG_BOOL:Ljava/lang/String; = "volte_5g_limited_alert_dialog_bool"

.field public static final whitelist KEY_VOLTE_REPLACEMENT_RAT_INT:Ljava/lang/String; = "volte_replacement_rat_int"

.field public static final blacklist KEY_VONR_ENABLED_BOOL:Ljava/lang/String; = "vonr_enabled_bool"

.field public static final blacklist KEY_VONR_SETTING_VISIBILITY_BOOL:Ljava/lang/String; = "vonr_setting_visibility_bool"

.field public static final whitelist KEY_VT_UPGRADE_SUPPORTED_FOR_DOWNGRADED_RTT_CALL_BOOL:Ljava/lang/String; = "vt_upgrade_supported_for_downgraded_rtt_call"

.field public static final whitelist KEY_VVM_CELLULAR_DATA_REQUIRED_BOOL:Ljava/lang/String; = "vvm_cellular_data_required_bool"

.field public static final whitelist KEY_VVM_CLIENT_PREFIX_STRING:Ljava/lang/String; = "vvm_client_prefix_string"

.field public static final whitelist KEY_VVM_DESTINATION_NUMBER_STRING:Ljava/lang/String; = "vvm_destination_number_string"

.field public static final whitelist KEY_VVM_DISABLED_CAPABILITIES_STRING_ARRAY:Ljava/lang/String; = "vvm_disabled_capabilities_string_array"

.field public static final whitelist KEY_VVM_LEGACY_MODE_ENABLED_BOOL:Ljava/lang/String; = "vvm_legacy_mode_enabled_bool"

.field public static final whitelist KEY_VVM_PORT_NUMBER_INT:Ljava/lang/String; = "vvm_port_number_int"

.field public static final whitelist KEY_VVM_PREFETCH_BOOL:Ljava/lang/String; = "vvm_prefetch_bool"

.field public static final whitelist KEY_VVM_SSL_ENABLED_BOOL:Ljava/lang/String; = "vvm_ssl_enabled_bool"

.field public static final whitelist KEY_VVM_TYPE_STRING:Ljava/lang/String; = "vvm_type_string"

.field public static final greylist-max-o KEY_WCDMA_DEFAULT_SIGNAL_STRENGTH_MEASUREMENT_STRING:Ljava/lang/String; = "wcdma_default_signal_strength_measurement_string"

.field public static final greylist-max-o KEY_WCDMA_RSCP_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "wcdma_rscp_thresholds_int_array"

.field public static final blacklist KEY_WFC_CARRIER_NAME_OVERRIDE_BY_PNN_BOOL:Ljava/lang/String; = "wfc_carrier_name_override_by_pnn_bool"

.field public static final greylist-max-o KEY_WFC_DATA_SPN_FORMAT_IDX_INT:Ljava/lang/String; = "wfc_data_spn_format_idx_int"

.field public static final whitelist KEY_WFC_EMERGENCY_ADDRESS_CARRIER_APP_STRING:Ljava/lang/String; = "wfc_emergency_address_carrier_app_string"

.field public static final blacklist KEY_WFC_FLIGHT_MODE_SPN_FORMAT_IDX_INT:Ljava/lang/String; = "wfc_flight_mode_spn_format_idx_int"

.field public static final greylist-max-o KEY_WFC_OPERATOR_ERROR_CODES_STRING_ARRAY:Ljava/lang/String; = "wfc_operator_error_codes_string_array"

.field public static final greylist-max-o KEY_WFC_SPN_FORMAT_IDX_INT:Ljava/lang/String; = "wfc_spn_format_idx_int"

.field public static final blacklist KEY_WFC_SPN_USE_ROOT_LOCALE:Ljava/lang/String; = "wfc_spn_use_root_locale"

.field public static final greylist-max-o KEY_WIFI_CALLS_CAN_BE_HD_AUDIO:Ljava/lang/String; = "wifi_calls_can_be_hd_audio"

.field public static final whitelist KEY_WORLD_MODE_ENABLED_BOOL:Ljava/lang/String; = "world_mode_enabled_bool"

.field public static final whitelist KEY_WORLD_PHONE_BOOL:Ljava/lang/String; = "world_phone_bool"

.field public static final whitelist REMOVE_GROUP_UUID_STRING:Ljava/lang/String; = "00000000-0000-0000-0000-000000000000"

.field public static final whitelist SERVICE_CLASS_NONE:I = 0x0

.field public static final whitelist SERVICE_CLASS_VOICE:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CarrierConfigManager"

.field public static final whitelist USSD_OVER_CS_ONLY:I = 0x2

.field public static final whitelist USSD_OVER_CS_PREFERRED:I = 0x0

.field public static final whitelist USSD_OVER_IMS_ONLY:I = 0x3

.field public static final whitelist USSD_OVER_IMS_PREFERRED:I = 0x1

.field private static final greylist-max-o sDefaults:Landroid/os/PersistableBundle;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEVICE_TYPE_SUPPORT_SUPL_2_0_0()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/CarrierConfigManager;->DEVICE_TYPE_SUPPORT_SUPL_2_0_0:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;
    .registers 1

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 41

    .line 3985
    const-string/jumbo v0, "nabu,sweet,courbet,toco,phoenix"

    sput-object v0, Landroid/telephony/CarrierConfigManager;->DEVICE_TYPE_SUPPORT_SUPL_2_0_0:Ljava/lang/String;

    .line 8765
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    sput-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    .line 8766
    const-string v1, "carrier_config_version_string"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8767
    const-string v1, "allow_hold_in_ims_call"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8768
    const-string v1, "carrier_allow_deflect_ims_call_bool"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8769
    const-string v1, "carrier_allow_transfer_ims_call_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8770
    const-string v1, "always_play_remote_hold_tone_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8771
    const-string v1, "auto_retry_failed_wifi_emergency_call"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8772
    const-string v1, "additional_call_setting_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8773
    const-string v1, "allow_emergency_numbers_in_call_log_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8774
    const-string/jumbo v1, "unloggable_numbers_string_array"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8775
    const-string v1, "allow_local_dtmf_tones_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8776
    const-string/jumbo v1, "play_call_recording_tone_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8777
    const-string v1, "apn_expand_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8778
    const-string v1, "auto_retry_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8779
    const-string v1, "carrier_settings_enable_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8780
    const-string v1, "carrier_volte_available_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8781
    const-string v1, "carrier_vt_available_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8782
    const-string v1, "carrier_ussd_method_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8783
    const-string/jumbo v1, "volte_5g_limited_alert_dialog_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8784
    const-string/jumbo v1, "notify_handover_video_from_wifi_to_lte_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8785
    const-string v1, "allow_merging_rtt_calls_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8786
    const-string/jumbo v1, "notify_handover_video_from_lte_to_wifi_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8787
    const-string/jumbo v1, "support_downgrade_vt_to_audio_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8788
    const-string v1, "default_vm_number_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8789
    const-string v1, "default_vm_number_roaming_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8790
    const-string v1, "default_vm_number_roaming_and_ims_unregistered_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8791
    const-string v1, "config_telephony_use_own_number_for_voicemail_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8792
    const-string/jumbo v1, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8793
    const-string/jumbo v1, "vilte_data_is_metered_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8794
    const-string/jumbo v1, "ignore_reset_ut_capability_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8795
    const-string v1, "carrier_wfc_ims_available_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8796
    const-string v1, "carrier_cross_sim_ims_available_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8797
    const-string v1, "enable_cross_sim_calling_on_opportunistic_data_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8798
    const-string v1, "carrier_wfc_supports_wifi_only_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8799
    const-string v1, "carrier_wfc_supports_ims_preferred_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8800
    const-string v1, "carrier_default_wfc_ims_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8801
    const-string v1, "carrier_default_wfc_ims_roaming_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8802
    const-string v1, "carrier_promote_wfc_on_call_fail_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8803
    const-string v1, "carrier_default_wfc_ims_mode_int"

    const/4 v6, 0x2

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8804
    const-string v1, "carrier_default_wfc_ims_roaming_mode_int"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8805
    const-string v1, "carrier_force_disable_etws_cmas_test_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8806
    const-string v1, "carrier_rcs_provisioning_required_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8807
    const-string v1, "carrier_volte_provisioning_required_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8808
    const-string v1, "carrier_ut_provisioning_required_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8809
    const-string v1, "carrier_supports_ss_over_ut_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8810
    const-string v1, "carrier_volte_override_wfc_provisioning_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8811
    const-string v1, "carrier_volte_tty_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8812
    const-string v1, "carrier_vt_tty_support_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8813
    const-string v1, "carrier_vowifi_tty_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8814
    const-string v1, "carrier_allow_turnoff_ims_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8815
    const-string v1, "carrier_ims_gba_required_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8816
    const-string v1, "carrier_instant_lettering_available_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8817
    const-string v1, "carrier_use_ims_first_for_emergency_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8818
    const-string/jumbo v1, "use_only_dialed_sim_ecc_list_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8819
    const-string v1, "carrier_network_service_wwan_package_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8820
    const-string v1, "carrier_network_service_wlan_package_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8821
    const-string v1, "carrier_qualified_networks_service_package_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8822
    const-string v1, "carrier_data_service_wwan_package_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8823
    const-string v1, "carrier_data_service_wlan_package_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8824
    const-string v1, "carrier_instant_lettering_invalid_chars_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8825
    const-string v1, "carrier_instant_lettering_escaped_chars_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8826
    const-string v1, "carrier_instant_lettering_encoding_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8827
    const-string v1, "carrier_instant_lettering_length_limit_int"

    const/16 v7, 0x40

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8828
    const-string v1, "disable_cdma_activation_code_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8829
    const-string v1, "dtmf_type_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8830
    const-string v1, "enable_dialer_key_vibration_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8831
    const-string/jumbo v1, "has_in_call_noise_suppression_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8832
    const-string/jumbo v1, "hide_carrier_network_settings_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8833
    const-string/jumbo v1, "only_auto_select_in_home_network"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8834
    const-string/jumbo v1, "show_single_operator_row_in_choose_network_setting_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8835
    const-string/jumbo v1, "show_spn_for_home_in_choose_network_setting_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8836
    const-string/jumbo v1, "simplified_network_settings_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8837
    const-string/jumbo v1, "hide_sim_lock_settings_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8839
    const-string v1, "carrier_volte_provisioned_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8840
    const-string v1, "call_barring_visibility_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8841
    const-string v1, "call_barring_supports_password_change_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8842
    const-string v1, "call_barring_supports_deactivate_all_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8843
    const-string v1, "call_barring_default_service_class_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8844
    const-string/jumbo v1, "support_ss_over_cdma_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8845
    const-string v1, "call_forwarding_visibility_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8846
    const-string v1, "call_forwarding_when_unreachable_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8847
    const-string v1, "call_forwarding_when_unanswered_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8848
    const-string v1, "call_forwarding_when_busy_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8849
    const-string v1, "call_forwarding_when_not_logged_in_supported_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8850
    const-string v1, "additional_settings_caller_id_visibility_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8851
    const-string v1, "additional_settings_call_waiting_visibility_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8852
    const-string v1, "disable_supplementary_services_in_airplane_mode_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8853
    const-string/jumbo v1, "ignore_sim_network_locked_events_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8854
    const-string/jumbo v1, "mdn_is_additional_voicemail_number_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8855
    const-string/jumbo v1, "operator_selection_expand_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8856
    const-string/jumbo v1, "prefer_2g_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8857
    const-string v1, "4g_only_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8858
    const-string/jumbo v1, "show_apn_setting_cdma_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8859
    const-string/jumbo v1, "show_cdma_choices_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8860
    const-string/jumbo v1, "sms_requires_destination_number_conversion_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8861
    const-string/jumbo v1, "support_emergency_sms_over_ims_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8862
    const-string/jumbo v1, "show_onscreen_dial_button_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8863
    const-string/jumbo v1, "sim_network_unlock_allow_dismiss_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8864
    const-string/jumbo v1, "support_pause_ims_video_calls_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8865
    const-string/jumbo v1, "support_swap_after_merge_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8866
    const-string/jumbo v1, "use_hfa_for_provisioning_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8867
    const-string v1, "editable_voicemail_number_setting_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8868
    const-string v1, "editable_voicemail_number_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8869
    const-string/jumbo v1, "use_otasp_for_provisioning_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8870
    const-string/jumbo v1, "voicemail_notification_persistent_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8871
    const-string/jumbo v1, "voice_privacy_disable_ui_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8872
    const-string/jumbo v1, "world_phone_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8873
    const-string/jumbo v1, "require_entitlement_checks_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8874
    const-string v1, "carrier_supports_tethering_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8875
    const-string/jumbo v1, "restart_radio_on_pdp_fail_regular_deactivation_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8876
    new-array v1, v4, [I

    const-string/jumbo v7, "radio_restart_failure_causes_int_array"

    invoke-virtual {v0, v7, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8877
    const-string/jumbo v1, "volte_replacement_rat_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8878
    const-string v1, "default_sim_call_manager_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8879
    const-string/jumbo v1, "vvm_destination_number_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8880
    const-string/jumbo v1, "vvm_port_number_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8881
    const-string/jumbo v1, "vvm_type_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8882
    const-string/jumbo v1, "vvm_cellular_data_required_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8883
    const-string/jumbo v1, "vvm_client_prefix_string"

    const-string v7, "//VVM"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8884
    const-string/jumbo v1, "vvm_ssl_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8885
    const-string/jumbo v1, "vvm_disabled_capabilities_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8886
    const-string/jumbo v1, "vvm_legacy_mode_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8887
    const-string/jumbo v1, "vvm_prefetch_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8888
    const-string v1, "carrier_vvm_package_name_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8889
    const-string v1, "carrier_vvm_package_name_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8890
    const-string/jumbo v1, "show_iccid_in_sim_status_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8891
    const-string/jumbo v1, "show_signal_strength_in_sim_status_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8892
    const-string/jumbo v1, "inflate_signal_strength_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8893
    const-string v1, "ci_action_on_sys_update_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8894
    const-string v1, "ci_action_on_sys_update_intent_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8895
    const-string v1, "ci_action_on_sys_update_extra_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8896
    const-string v1, "ci_action_on_sys_update_extra_val_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8897
    const-string v1, "csp_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8898
    const-string v1, "allow_adding_apns_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8899
    const-string v1, "dun"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "read_only_apn_types_string_array"

    invoke-virtual {v0, v8, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8900
    const-string/jumbo v7, "read_only_apn_fields_string_array"

    invoke-virtual {v0, v7, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8901
    const-string v7, "apn_settings_default_apn_types_string_array"

    invoke-virtual {v0, v7, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8902
    invoke-static {}, Landroid/telephony/CarrierConfigManager$Apn;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 8904
    const-string v7, "broadcast_emergency_call_state_changes_bool"

    invoke-virtual {v0, v7, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8905
    const-string v7, "always_show_emergency_alert_onoff_bool"

    invoke-virtual {v0, v7, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8906
    const-string v7, "default_mtu_int"

    const/16 v8, 0x5dc

    invoke-virtual {v0, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8907
    const-string v7, "default:default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    const-string/jumbo v8, "mms:default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    const-string/jumbo v9, "ims:max_retries=10, 5000, 5000, 5000"

    const-string/jumbo v10, "others:max_retries=3, 5000, 5000, 5000"

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "carrier_data_call_retry_config_strings"

    invoke-virtual {v0, v8, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8914
    const-string v7, "carrier_data_call_apn_delay_default_long"

    const-wide/16 v8, 0x4e20

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 8915
    const-string v7, "carrier_data_call_apn_delay_faster_long"

    const-wide/16 v8, 0xbb8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 8916
    const-string v7, "carrier_data_call_apn_retry_after_disconnect_long"

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 8917
    const-string v7, "carrier_data_call_retry_network_requested_max_count_int"

    const/4 v10, 0x3

    invoke-virtual {v0, v7, v10}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8918
    const-string v7, "carrier_eri_file_name_string"

    const-string v10, "eri.xml"

    invoke-virtual {v0, v7, v10}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8919
    const-string v7, "duration_blocking_disabled_after_emergency_int"

    const/16 v10, 0x1c20

    invoke-virtual {v0, v7, v10}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8920
    const-string v7, "default"

    const-string/jumbo v10, "mms"

    const-string/jumbo v11, "supl"

    filled-new-array {v7, v10, v1, v11}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "carrier_metered_apn_types_strings"

    invoke-virtual {v0, v13, v12}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8922
    filled-new-array {v7, v10, v1, v11}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "carrier_metered_roaming_apn_types_strings"

    invoke-virtual {v0, v12, v11}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8924
    const-string v11, "cdma_cw_cf_enabled_bool"

    invoke-virtual {v0, v11, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8925
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "carrier_wwan_disallowed_apn_types_string_array"

    invoke-virtual {v0, v12, v11}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8927
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "carrier_wlan_disallowed_apn_types_string_array"

    invoke-virtual {v0, v12, v11}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8929
    const/4 v11, 0x5

    new-array v12, v11, [I

    fill-array-data v12, :array_ce4

    const-string/jumbo v13, "only_single_dc_allowed_int_array"

    invoke-virtual {v0, v13, v12}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8933
    const-string/jumbo v12, "gsm_roaming_networks_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8934
    const-string/jumbo v12, "gsm_nonroaming_networks_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8935
    const-string v12, "config_ims_package_override_string"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8936
    const-string v12, "config_ims_mmtel_package_override_string"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8937
    const-string v12, "config_ims_rcs_package_override_string"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8938
    const-string v12, "cdma_roaming_networks_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8939
    const-string v12, "cdma_nonroaming_networks_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8940
    const-string v12, "dial_string_replace_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8941
    const-string/jumbo v12, "international_roaming_dial_string_replace_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8942
    const-string v12, "force_home_network_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8943
    const-string/jumbo v12, "gsm_dtmf_tone_delay_int"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8944
    const-string/jumbo v12, "ims_dtmf_tone_delay_int"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8945
    const-string v12, "cdma_dtmf_tone_delay_int"

    const/16 v13, 0x64

    invoke-virtual {v0, v12, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8946
    const-string v12, "call_forwarding_map_non_number_to_voicemail_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8947
    const-string/jumbo v12, "ignore_rtt_mode_setting_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8948
    const-string v12, "cdma_3waycall_flash_delay_int"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8949
    const-string/jumbo v12, "support_adhoc_conference_calls_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8950
    const-string/jumbo v12, "support_add_conference_participants_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8951
    const-string/jumbo v12, "support_conference_call_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8952
    const-string/jumbo v12, "support_ims_conference_call_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8953
    const-string/jumbo v12, "local_disconnect_empty_ims_conference_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8954
    const-string/jumbo v12, "support_manage_ims_conference_call_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8955
    const-string/jumbo v12, "support_ims_conference_event_package_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8956
    const-string/jumbo v12, "support_ims_conference_event_package_on_peer_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8957
    const-string/jumbo v12, "supports_device_to_device_communication_using_rtp_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8958
    const-string/jumbo v12, "supports_sdp_negotiation_of_d2d_rtp_header_extensions_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8959
    const-string/jumbo v12, "supports_device_to_device_communication_using_dtmf_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8960
    const-string/jumbo v12, "support_video_conference_call_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8961
    const-string/jumbo v12, "is_ims_conference_size_enforced_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8962
    const-string/jumbo v12, "ims_conference_size_limit_int"

    invoke-virtual {v0, v12, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8963
    const-string v12, "display_hd_audio_property_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8964
    const-string v12, "editable_enhanced_4g_lte_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8965
    const-string/jumbo v12, "hide_enhanced_4g_lte_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8966
    const-string/jumbo v12, "hide_enabled_5g_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8967
    const-string v12, "enhanced_4g_lte_on_by_default_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8968
    const-string/jumbo v12, "hide_ims_apn_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8969
    const-string/jumbo v12, "hide_preferred_network_type_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8970
    const-string v12, "allow_emergency_video_calls_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8971
    const-string v12, "enable_apps_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8972
    const-string v12, "editable_wfc_mode_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8973
    const-string/jumbo v12, "wfc_operator_error_codes_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8974
    const-string/jumbo v12, "wfc_spn_format_idx_int"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8975
    const-string/jumbo v12, "wfc_data_spn_format_idx_int"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8976
    const-string/jumbo v12, "wfc_flight_mode_spn_format_idx_int"

    const/4 v13, -0x1

    invoke-virtual {v0, v12, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8977
    const-string/jumbo v12, "wfc_spn_use_root_locale"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8978
    const-string/jumbo v12, "wfc_emergency_address_carrier_app_string"

    invoke-virtual {v0, v12, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8979
    const-string v12, "config_wifi_disable_in_ecbm"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8980
    const-string v12, "carrier_name_override_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8981
    const-string v12, "carrier_name_string"

    invoke-virtual {v0, v12, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8982
    const-string/jumbo v12, "wfc_carrier_name_override_by_pnn_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8983
    const-string v12, "cross_sim_spn_format_int"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8984
    const-string/jumbo v12, "spn_display_condition_override_int"

    invoke-virtual {v0, v12, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8985
    const-string/jumbo v12, "spdi_override_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8986
    const-string/jumbo v12, "pnn_override_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8987
    const-string/jumbo v12, "opl_override_opl_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8988
    const-string v12, "ehplmn_override_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8989
    const-string v12, "allow_cdma_eri_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8990
    const-string v12, "enable_carrier_display_name_resolver_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8991
    const-string/jumbo v12, "sim_country_iso_override_string"

    invoke-virtual {v0, v12, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8992
    const-string v12, "call_screening_app"

    invoke-virtual {v0, v12, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8993
    const-string v12, "call_redirection_service_component_name_string"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8994
    const-string v12, "cdma_home_registered_plmn_name_override_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8995
    const-string v12, "cdma_home_registered_plmn_name_string"

    invoke-virtual {v0, v12, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8996
    const-string/jumbo v12, "support_direct_fdn_dialing_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8997
    const-string v12, "fdn_number_length_limit_int"

    const/16 v14, 0x14

    invoke-virtual {v0, v12, v14}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 8998
    const-string v12, "carrier_default_data_roaming_enabled_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8999
    const-string/jumbo v12, "skip_cf_fail_to_disable_dialog_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9000
    const-string/jumbo v12, "support_enhanced_call_blocking_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9003
    const-string v12, "aliasEnabled"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9004
    const-string v12, "allowAttachAudio"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9005
    const-string v12, "enabledTransID"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9006
    const-string v12, "enableGroupMms"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9007
    const-string v12, "enableMMSDeliveryReports"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9008
    const-string v12, "enabledMMS"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9009
    const-string v12, "enableMMSReadReports"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9010
    const-string v12, "enableMultipartSMS"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9011
    const-string v12, "enabledNotifyWapMMSC"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9012
    const-string/jumbo v12, "sendMultipartSmsAsSeparateMessages"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9013
    const-string v12, "config_cellBroadcastAppLinks"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9014
    const-string v12, "enableSMSDeliveryReports"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9015
    const-string/jumbo v12, "supportHttpCharsetHeader"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9016
    const-string/jumbo v12, "supportMmsContentDisposition"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9017
    const-string/jumbo v12, "mmsCloseConnection"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9018
    const-string v12, "aliasMaxChars"

    const/16 v14, 0x30

    invoke-virtual {v0, v12, v14}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9019
    const-string v12, "aliasMinChars"

    invoke-virtual {v0, v12, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9020
    const-string/jumbo v12, "httpSocketTimeout"

    const v14, 0xea60

    invoke-virtual {v0, v12, v14}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9021
    const-string/jumbo v12, "maxImageHeight"

    const/16 v14, 0x1e0

    invoke-virtual {v0, v12, v14}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9022
    const-string/jumbo v12, "maxImageWidth"

    const/16 v14, 0x280

    invoke-virtual {v0, v12, v14}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9023
    const-string/jumbo v12, "maxMessageSize"

    const v14, 0x4b000

    invoke-virtual {v0, v12, v14}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9024
    const-string/jumbo v12, "maxMessageTextSize"

    invoke-virtual {v0, v12, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9025
    const-string/jumbo v12, "recipientLimit"

    const v14, 0x7fffffff

    invoke-virtual {v0, v12, v14}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9026
    const-string/jumbo v12, "smsToMmsTextLengthThreshold"

    invoke-virtual {v0, v12, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9027
    const-string/jumbo v12, "smsToMmsTextThreshold"

    invoke-virtual {v0, v12, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9028
    const-string/jumbo v12, "maxSubjectLength"

    const/16 v15, 0x28

    invoke-virtual {v0, v12, v15}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9029
    const-string v12, "emailGatewayNumber"

    invoke-virtual {v0, v12, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9030
    const-string/jumbo v12, "httpParams"

    invoke-virtual {v0, v12, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9031
    const-string/jumbo v12, "naiSuffix"

    invoke-virtual {v0, v12, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9032
    const-string/jumbo v12, "uaProfTagName"

    const-string/jumbo v15, "x-wap-profile"

    invoke-virtual {v0, v12, v15}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9033
    const-string/jumbo v12, "uaProfUrl"

    invoke-virtual {v0, v12, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9034
    const-string/jumbo v12, "userAgent"

    invoke-virtual {v0, v12, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9035
    const-string v12, "allow_non_emergency_calls_in_ecm_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9036
    const-string v12, "emergency_sms_mode_timer_ms_int"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9037
    const-string v12, "allow_hold_call_during_emergency_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9038
    const-string/jumbo v12, "use_rcs_presence_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9039
    const-string/jumbo v12, "use_rcs_sip_options_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9040
    const-string v12, "force_imei_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9041
    const-string v12, "cdma_roaming_mode_int"

    invoke-virtual {v0, v12, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9043
    const-string/jumbo v12, "support_cdma_1x_voice_calls_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9044
    const-string/jumbo v12, "rcs_config_server_url_string"

    invoke-virtual {v0, v12, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9047
    const-string v12, "carrier_setup_app_string"

    invoke-virtual {v0, v12, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9048
    const-string v12, "com.android.carrierdefaultapp/.CarrierDefaultBroadcastReceiver:com.android.internal.telephony.CARRIER_SIGNAL_RESET"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const-string v15, "carrier_app_wake_signal_config"

    invoke-virtual {v0, v15, v12}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9053
    const-string v12, "carrier_app_no_wake_signal_config"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9054
    const-string v12, "carrier_app_required_during_setup_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9058
    const-string v12, "9, 4, 1"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const-string v15, "carrier_default_actions_on_redirection_string_array"

    invoke-virtual {v0, v15, v12}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9065
    const-string v12, "6, 8"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const-string v15, "carrier_default_actions_on_reset_string_array"

    invoke-virtual {v0, v15, v12}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9070
    new-array v12, v6, [Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 9071
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": 7"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 9072
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": 8"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v3

    .line 9070
    const-string v14, "carrier_default_actions_on_default_network_available_string_array"

    invoke-virtual {v0, v14, v12}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9074
    const-string v12, "carrier_default_redirection_url_string_array"

    invoke-virtual {v0, v12, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9076
    const-string/jumbo v12, "monthly_data_cycle_day_int"

    invoke-virtual {v0, v12, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9077
    const-string v12, "data_warning_threshold_bytes_long"

    const-wide/16 v14, -0x1

    invoke-virtual {v0, v12, v14, v15}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9078
    const-string v12, "data_warning_notification_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9079
    const-string/jumbo v12, "limited_sim_function_notification_for_dsds_bool"

    invoke-virtual {v0, v12, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9080
    const-string v12, "data_limit_threshold_bytes_long"

    invoke-virtual {v0, v12, v14, v15}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9081
    const-string v12, "data_limit_notification_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9082
    const-string v12, "data_rapid_notification_bool"

    invoke-virtual {v0, v12, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9087
    const-string v12, "1,2"

    const-string v14, "7,8,12"

    const-string v15, "3,11,9,10,15"

    const-string v8, "14,19"

    filled-new-array {v12, v14, v15, v8}, [Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ratchet_rat_families"

    invoke-virtual {v0, v9, v8}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9089
    const-string/jumbo v8, "treat_downgraded_video_calls_as_video_calls_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9090
    const-string v8, "drop_video_call_when_answering_audio_call_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9091
    const-string v8, "allow_merge_wifi_calls_when_vowifi_off_bool"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9092
    const-string v8, "allow_add_call_during_video_call"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9093
    const-string v8, "allow_hold_video_call_bool"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9094
    const-string v8, "allow_concurrent_call_during_video_call"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9095
    const-string/jumbo v8, "wifi_calls_can_be_hd_audio"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9096
    const-string/jumbo v8, "video_calls_can_be_hd_audio"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9097
    const-string/jumbo v8, "gsm_cdma_calls_can_be_hd_audio"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9098
    const-string v8, "allow_video_calling_fallback_bool"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9100
    const-string/jumbo v8, "ims_reasoninfo_mapping_string_array"

    invoke-virtual {v0, v8, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9101
    const-string v8, "enhanced_4g_lte_title_variant_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9102
    const-string v8, "enhanced_4g_lte_title_variant_int"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9103
    const-string/jumbo v8, "notify_vt_handover_to_wifi_failure_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9104
    const-string v8, "filtered_cnap_names_string_array"

    invoke-virtual {v0, v8, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9105
    const-string v8, "editable_wfc_roaming_mode_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9106
    const-string/jumbo v8, "show_blocking_pay_phone_option_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9107
    const-string/jumbo v8, "use_wfc_home_network_mode_in_roaming_network_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9108
    const-string/jumbo v8, "stk_disable_launch_browser_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9109
    const-string v8, "allow_metered_network_for_cert_download_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9110
    const-string/jumbo v8, "hide_digits_helper_text_on_stk_input_screen_bool"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9111
    const-string/jumbo v8, "network_notification_delay_int"

    invoke-virtual {v0, v8, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9112
    const-string v8, "emergency_notification_delay_int"

    invoke-virtual {v0, v8, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9113
    const-string v8, "allow_ussd_requests_via_telephony_manager_bool"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9114
    const-string/jumbo v8, "support_3gpp_call_forwarding_while_roaming_bool"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9115
    const-string v8, "display_voicemail_number_as_default_call_forwarding_number"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9117
    const-string/jumbo v8, "notify_international_call_on_wfc_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9118
    const-string/jumbo v8, "hide_preset_apn_details_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9119
    const-string/jumbo v8, "show_video_call_charges_alert_dialog_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9120
    const-string v8, "call_forwarding_blocks_while_roaming_string_array"

    invoke-virtual {v0, v8, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9122
    const-string/jumbo v8, "support_ims_call_forwarding_while_roaming_bool"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9123
    const-string/jumbo v8, "lte_earfcns_rsrp_boost_int"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9124
    const-string v8, "boosted_lte_earfcns_string_array"

    invoke-virtual {v0, v8, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9125
    const-string/jumbo v8, "nrarfcns_rsrp_boost_int_array"

    invoke-virtual {v0, v8, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9126
    const-string v8, "boosted_nrarfcns_string_array"

    invoke-virtual {v0, v8, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9127
    const-string/jumbo v8, "use_only_rsrp_for_lte_signal_bar_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9128
    const-string v8, "disable_voice_barring_notification_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9129
    const-string/jumbo v8, "imsi_key_availability_int"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9130
    const-string/jumbo v8, "imsi_key_download_url_string"

    invoke-virtual {v0, v8, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9131
    const-string/jumbo v8, "imsi_carrier_public_key_epdg_string"

    invoke-virtual {v0, v8, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9132
    const-string/jumbo v8, "imsi_carrier_public_key_wlan_string"

    invoke-virtual {v0, v8, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9133
    const-string v8, "convert_cdma_caller_id_mmi_codes_while_roaming_on_3gpp_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9135
    const-string/jumbo v8, "non_roaming_operator_string_array"

    invoke-virtual {v0, v8, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9136
    const-string/jumbo v8, "roaming_operator_string_array"

    invoke-virtual {v0, v8, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9137
    const-string/jumbo v8, "show_ims_registration_status_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9138
    const-string/jumbo v8, "rtt_supported_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9139
    const-string/jumbo v8, "tty_supported_bool"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9140
    const-string/jumbo v8, "hide_tty_hco_vco_with_rtt"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9141
    const-string/jumbo v8, "rtt_supported_while_roaming_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9142
    const-string/jumbo v8, "rtt_upgrade_supported_for_downgraded_vt_call"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9143
    const-string/jumbo v8, "vt_upgrade_supported_for_downgraded_rtt_call"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9144
    const-string v8, "disable_charge_indication_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9145
    const-string/jumbo v8, "support_no_reply_timer_for_cfnry_bool"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9146
    const-string v8, "feature_access_codes_string_array"

    invoke-virtual {v0, v8, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9147
    const-string/jumbo v8, "identify_high_definition_calls_in_call_log_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9148
    const-string/jumbo v8, "show_precise_failed_cause_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9149
    const-string/jumbo v8, "spn_display_rule_use_roaming_from_service_state_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9150
    const-string v8, "always_show_data_rat_icon_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9151
    const-string/jumbo v8, "show_4g_for_lte_data_icon_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9152
    const-string/jumbo v8, "show_4glte_for_lte_data_icon_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9153
    const-string/jumbo v8, "show_4g_for_3g_data_icon_bool"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9154
    const-string/jumbo v8, "operator_name_filter_pattern_string"

    invoke-virtual {v0, v8, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9155
    const-string/jumbo v8, "show_carrier_data_icon_pattern_string"

    invoke-virtual {v0, v8, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9156
    const-string/jumbo v8, "hide_lte_plus_data_icon_bool"

    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9157
    const-string/jumbo v8, "lte_plus_threshold_bandwidth_khz_int"

    const/16 v9, 0x4e20

    invoke-virtual {v0, v8, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9158
    const-string/jumbo v8, "nr_advanced_threshold_bandwidth_khz_int"

    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9159
    new-array v6, v6, [I

    fill-array-data v6, :array_cf2

    const-string v8, "carrier_nr_availabilities_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9161
    const-string/jumbo v6, "lte_enabled_bool"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9162
    const-string/jumbo v6, "support_tdscdma_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9163
    const-string/jumbo v6, "support_tdscdma_roaming_networks_string_array"

    invoke-virtual {v0, v6, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9164
    const-string/jumbo v5, "world_mode_enabled_bool"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9165
    const-string v5, "carrier_settings_activity_component_name_string"

    invoke-virtual {v0, v5, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9166
    const-string/jumbo v5, "show_operator_name_in_statusbar_bool"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9167
    const-string v5, "carrier_config_applied_bool"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9168
    const-string v5, "check_pricing_with_carrier_data_roaming_bool"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9169
    const-string/jumbo v5, "show_data_connected_roaming_notification"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9170
    const/4 v5, 0x4

    new-array v6, v5, [I

    fill-array-data v6, :array_cfa

    const-string/jumbo v8, "lte_rsrp_thresholds_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9177
    new-array v6, v5, [I

    fill-array-data v6, :array_d06

    const-string/jumbo v8, "lte_rsrq_thresholds_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9184
    new-array v6, v5, [I

    fill-array-data v6, :array_d12

    const-string/jumbo v8, "lte_rssnr_thresholds_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9191
    new-array v6, v5, [I

    fill-array-data v6, :array_d1e

    const-string/jumbo v8, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9198
    new-array v6, v5, [I

    fill-array-data v6, :array_d2a

    const-string v8, "5g_nr_ssrsrp_thresholds_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9206
    new-array v6, v5, [I

    fill-array-data v6, :array_d36

    const-string v8, "5g_nr_ssrsrq_thresholds_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9214
    new-array v6, v5, [I

    fill-array-data v6, :array_d42

    const-string v8, "5g_nr_sssinr_thresholds_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9222
    const-string/jumbo v6, "parameters_use_for_5g_nr_signal_bar_int"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9224
    const-string/jumbo v6, "signal_strength_nr_nsa_use_lte_as_primary_bool"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9225
    const-string v19, "GPRS:24,24"

    const-string v20, "EDGE:70,18"

    const-string v21, "UMTS:115,115"

    const-string v22, "CDMA:14,14"

    const-string v23, "1xRTT:30,30"

    const-string v24, "EvDo_0:750,48"

    const-string v25, "EvDo_A:950,550"

    const-string v26, "HSDPA:4300,620"

    const-string v27, "HSUPA:4300,1800"

    const-string v28, "HSPA:4300,1800"

    const-string v29, "EvDo_B:1500,550"

    const-string v30, "eHRPD:750,48"

    const-string/jumbo v31, "iDEN:14,14"

    const-string v32, "LTE:30000,15000"

    const-string v33, "HSPA+:13000,3400"

    const-string v34, "GSM:24,24"

    const-string v35, "TD_SCDMA:115,115"

    const-string v36, "LTE_CA:30000,15000"

    const-string v37, "NR_NSA:47000,18000"

    const-string v38, "NR_NSA_MMWAVE:145000,60000"

    const-string v39, "NR_SA:145000,60000"

    const-string v40, "NR_SA_MMWAVE:145000,60000"

    filled-new-array/range {v19 .. v40}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "bandwidth_string_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9232
    const-string v6, "bandwidth_nr_nsa_use_lte_value_for_uplink_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9233
    const-string/jumbo v6, "wcdma_default_signal_strength_measurement_string"

    const-string/jumbo v8, "rssi"

    invoke-virtual {v0, v6, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9234
    const-string v6, "config_show_orig_dial_string_for_cdma"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9235
    const-string/jumbo v6, "show_call_blocking_disabled_notification_always_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9236
    const-string v6, "call_forwarding_over_ut_warning_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9237
    const-string v6, "call_barring_over_ut_warning_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9238
    const-string v6, "caller_id_over_ut_warning_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9239
    const-string v6, "call_waiting_over_ut_warning_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9240
    const-string/jumbo v6, "support_clir_network_default_bool"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9241
    const-string/jumbo v6, "support_emergency_dialer_shortcut_bool"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9242
    const-string/jumbo v6, "use_call_forwarding_ussd_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9243
    const-string/jumbo v6, "use_caller_id_ussd_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9244
    const-string/jumbo v6, "use_call_waiting_ussd_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9245
    const-string v6, "call_waiting_service_class_int"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9246
    const-string v6, "5g_icon_configuration_string"

    const-string v8, "connected_mmwave:5G,connected:5G,not_restricted_rrc_idle:5G,not_restricted_rrc_con:5G"

    invoke-virtual {v0, v6, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9249
    const-string v6, "5g_icon_display_grace_period_string"

    invoke-virtual {v0, v6, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9250
    const-string v6, "5g_icon_display_secondary_grace_period_string"

    invoke-virtual {v0, v6, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9251
    const-string/jumbo v6, "nr_timers_reset_if_non_endc_and_rrc_idle_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9253
    const-string v6, "5g_watchdog_time_ms_long"

    const-wide/32 v8, 0x36ee80

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9254
    new-array v6, v4, [I

    const-string v8, "additional_nr_advanced_bands_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9255
    const-string/jumbo v6, "nr_advanced_capable_pco_id_int"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9256
    const-string v6, "enable_nr_advanced_for_roaming_bool"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9257
    const-string/jumbo v6, "lte_endc_using_user_data_for_rrc_detection_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9258
    const-string v6, "NR_NSA"

    const-string v8, "NR_NSA_MMWAVE"

    const-string v9, "NR_SA"

    const-string v12, "NR_SA_MMWAVE"

    filled-new-array {v6, v8, v9, v12}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "unmetered_network_types_string_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9260
    new-array v6, v4, [Ljava/lang/String;

    const-string/jumbo v8, "roaming_unmetered_network_types_string_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9261
    const-string/jumbo v6, "unmetered_nr_nsa_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9262
    const-string/jumbo v6, "unmetered_nr_nsa_mmwave_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9263
    const-string/jumbo v6, "unmetered_nr_nsa_sub6_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9264
    const-string/jumbo v6, "unmetered_nr_nsa_when_roaming_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9265
    const-string/jumbo v6, "unmetered_nr_sa_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9266
    const-string/jumbo v6, "unmetered_nr_sa_mmwave_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9267
    const-string/jumbo v6, "unmetered_nr_sa_sub6_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9268
    const-string v6, "ascii_7_bit_support_for_long_message_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9269
    const-string/jumbo v6, "show_wifi_calling_icon_in_status_bar_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9270
    const-string v6, "carrier_supports_opp_data_auto_provisioning_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9271
    const-string/jumbo v6, "smdp_server_address_string"

    invoke-virtual {v0, v6, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9272
    const-string v6, "esim_max_download_retry_attempts_int"

    invoke-virtual {v0, v6, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9273
    const-string v6, "esim_download_retry_backoff_timer_sec_int"

    const/16 v8, 0x3c

    invoke-virtual {v0, v6, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9274
    new-array v6, v3, [I

    aput v4, v6, v4

    const-string/jumbo v8, "opportunistic_carrier_ids_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9275
    const-string/jumbo v6, "opportunistic_esim_download_via_wifi_only_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9277
    const-string/jumbo v6, "opportunistic_network_entry_threshold_rsrp_int"

    const/16 v8, -0x6c

    invoke-virtual {v0, v6, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9279
    const-string/jumbo v6, "opportunistic_network_exit_threshold_rsrp_int"

    const/16 v8, -0x76

    invoke-virtual {v0, v6, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9281
    const-string/jumbo v6, "opportunistic_network_entry_threshold_rssnr_int"

    invoke-virtual {v0, v6, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9283
    const-string/jumbo v6, "opportunistic_network_exit_threshold_rssnr_int"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9285
    const-string/jumbo v6, "opportunistic_network_entry_threshold_bandwidth_int"

    const/16 v8, 0x400

    invoke-virtual {v0, v6, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9287
    const-string/jumbo v6, "opportunistic_network_entry_or_exit_hysteresis_time_long"

    const-wide/16 v8, 0x2710

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9289
    const-string/jumbo v6, "opportunistic_network_data_switch_hysteresis_time_long"

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9291
    const-string/jumbo v6, "opportunistic_network_data_switch_exit_hysteresis_time_long"

    const-wide/16 v14, 0xbb8

    invoke-virtual {v0, v6, v14, v15}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9292
    invoke-static {}, Landroid/telephony/CarrierConfigManager$OpportunisticNetwork;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9293
    const-string/jumbo v6, "ping_test_before_data_switch_bool"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9294
    const-string/jumbo v6, "switch_data_to_primary_if_primary_is_oos_bool"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9296
    const-string/jumbo v6, "opportunistic_network_ping_pong_time_long"

    const-wide/32 v14, 0xea60

    invoke-virtual {v0, v6, v14, v15}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9298
    const-string/jumbo v6, "opportunistic_network_backoff_time_long"

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9300
    const-string/jumbo v6, "opportunistic_network_max_backoff_time_long"

    invoke-virtual {v0, v6, v14, v15}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9301
    const-string v6, "enabled_4g_opportunistic_network_scan_bool"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9302
    const-string/jumbo v6, "time_to_switch_back_to_primary_if_opportunistic_oos_long"

    invoke-virtual {v0, v6, v14, v15}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9303
    const-string/jumbo v6, "opportunistic_time_to_scan_after_capability_switch_to_primary_long"

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9306
    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsServiceEntitlement;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9307
    invoke-static {}, Landroid/telephony/CarrierConfigManager$Gps;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9308
    new-array v6, v3, [I

    aput v3, v6, v4

    const-string v8, "cdma_enhanced_roaming_indicator_for_home_network_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9312
    new-array v6, v4, [Ljava/lang/String;

    const-string v8, "emergency_number_prefix_string_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9313
    const-string v6, "carrier_supports_caller_id_vertical_service_codes_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9314
    const-string/jumbo v6, "use_usim_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9315
    const-string/jumbo v6, "show_wfc_location_privacy_policy_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9316
    const-string v6, "carrier_auto_cancel_cs_notification"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9317
    const-string/jumbo v6, "smart_forwarding_config_component_name_string"

    invoke-virtual {v0, v6, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9318
    const-string v6, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9320
    const-string/jumbo v6, "subscription_group_uuid_string"

    invoke-virtual {v0, v6, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9321
    const-string/jumbo v6, "is_opportunistic_subscription_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9322
    new-array v6, v5, [I

    fill-array-data v6, :array_d4e

    const-string/jumbo v8, "gsm_rssi_thresholds_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9329
    const-string/jumbo v6, "support_wps_over_ims_bool"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9330
    invoke-static {}, Landroid/telephony/CarrierConfigManager$Ims;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9331
    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsVoice;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9332
    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsSms;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9333
    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsRtt;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9334
    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsEmergency;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9335
    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsVt;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9336
    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsWfc;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9337
    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsSs;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9338
    invoke-static {}, Landroid/telephony/CarrierConfigManager$Bsf;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9339
    invoke-static {}, Landroid/telephony/CarrierConfigManager$Iwlan;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9340
    new-array v6, v4, [Ljava/lang/String;

    const-string v8, "carrier_certificate_string_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9341
    const-string v6, "format_incoming_number_to_national_for_jp_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9342
    new-array v6, v3, [I

    aput v5, v6, v4

    const-string v8, "disconnect_cause_play_busytone_int_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9344
    const-string/jumbo v6, "prevent_clir_activation_and_deactivation_code_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9345
    const-string v6, "data_switch_validation_timeout_long"

    const-wide/16 v8, 0x7d0

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9346
    new-array v6, v4, [Ljava/lang/String;

    const-string/jumbo v8, "mmi_two_digit_number_pattern_string_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9347
    const-string/jumbo v6, "parameters_used_for_lte_signal_bar_int"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9350
    invoke-static {}, Landroid/telephony/CarrierConfigManager$Wifi;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 9351
    const-string v6, "enable_eap_method_prefix_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9352
    const-string v6, "gba_mode_int"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9353
    const-string v6, "gba_ua_security_organization_int"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9355
    const-string v6, "gba_ua_security_protocol_int"

    const/high16 v8, 0x10000

    invoke-virtual {v0, v6, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9357
    const-string v6, "gba_ua_tls_cipher_suite_int"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9359
    const-string/jumbo v6, "show_forwarded_number_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9360
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    const-string v6, "data_switch_validation_min_gap_long"

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 9361
    new-array v6, v4, [Ljava/lang/String;

    const-string/jumbo v8, "missed_incoming_call_sms_originator_string_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9363
    const-string v17, "enterprise:0"

    const-string v18, "default:1"

    const-string/jumbo v19, "mms:2"

    const-string/jumbo v20, "supl:2"

    const-string v21, "dun:2"

    const-string/jumbo v22, "hipri:3"

    const-string v23, "fota:2"

    const-string/jumbo v24, "ims:2"

    const-string v25, "cbs:2"

    const-string/jumbo v26, "ia:2"

    const-string v27, "emergency:2"

    const-string/jumbo v28, "mcx:3"

    const-string/jumbo v29, "xcap:3"

    filled-new-array/range {v17 .. v29}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "apn_priority_string_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9367
    const-string v6, "5g_ultra_wideband_icon_sib2_value"

    const v8, 0x7fffffff

    invoke-virtual {v0, v6, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9368
    const-string v6, "5g_ultra_wideband_icon_min_bandwidth_value"

    invoke-virtual {v0, v6, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9369
    const-string v6, "5g_ultra_wideband_icon_min_bandwidth_mode"

    invoke-virtual {v0, v6, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9370
    sget-object v6, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const-string v9, "5g_ultra_wideband_icon_refresh_timer_map"

    invoke-virtual {v0, v9, v6}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 9372
    const-string v6, "5g_ultra_wideband_icon_nsa_band_mode"

    invoke-virtual {v0, v6, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9373
    new-array v6, v4, [I

    const-string v9, "5g_ultra_wideband_icon_sa_band_array"

    invoke-virtual {v0, v9, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9374
    const-string v6, "5g_ultra_wideband_icon_sa_band_mode"

    invoke-virtual {v0, v6, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9375
    new-array v6, v4, [I

    const-string v8, "5g_ultra_wideband_icon_nsa_band_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9379
    const-string v14, "eims:90"

    const-string/jumbo v15, "supl:80"

    const-string/jumbo v16, "mms:70"

    const-string/jumbo v17, "xcap:70"

    const-string v18, "cbs:50"

    const-string/jumbo v19, "mcx:50"

    const-string v20, "fota:50"

    const-string/jumbo v21, "ims:40"

    const-string v22, "dun:30"

    const-string v23, "enterprise:20"

    const-string/jumbo v24, "internet:20"

    filled-new-array/range {v14 .. v24}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "telephony_network_capability_priorities_string_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9384
    const-string v6, "capabilities=eims, retry_interval=1000, maximum_retries=20"

    const-string v8, "fail_causes=8|27|28|29|30|32|33|35|50|51|111|-5|-6|65537|65538|-3|2252|2253|2254, maximum_retries=0"

    const-string v9, "capabilities=mms|supl|cbs, retry_interval=2000"

    const-string v12, "capabilities=internet|enterprise|dun|ims|fota, retry_interval=2500|3000|5000|10000|15000|20000|40000|60000|120000|240000|600000|1200000|1800000, maximum_retries=20"

    filled-new-array {v6, v8, v9, v12}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "telephony_data_setup_retry_rules_string_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9394
    const-string/jumbo v6, "retry_interval=1000|2000|4000|8000|16000, maximum_retries=5"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "telephony_data_handover_retry_rules_string_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9398
    const-string v6, "delay_ims_tear_down_until_call_end_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9399
    new-array v6, v4, [Ljava/lang/String;

    const-string/jumbo v8, "missed_incoming_call_sms_pattern_string_array"

    invoke-virtual {v0, v8, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9400
    const-string v6, "disable_dun_apn_while_roaming_with_preset_apn_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9401
    const-string v6, "default_preferred_apn_name_string"

    invoke-virtual {v0, v6, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9402
    const-string/jumbo v6, "supports_call_composer_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9403
    const-string v6, "call_composer_picture_server_url_string"

    invoke-virtual {v0, v6, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9404
    const-string/jumbo v6, "use_acs_for_rcs_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9405
    const-string/jumbo v6, "network_temp_not_metered_supported_bool"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9406
    const-string v6, "default_rtt_mode_int"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9407
    const-string/jumbo v6, "store_sim_pin_for_unattended_reboot_bool"

    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9408
    const-string/jumbo v6, "hide_enable_2g_bool"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9409
    const-string/jumbo v6, "ia"

    filled-new-array {v6, v7, v10, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v6, "allowed_initial_attach_apn_types_string_array"

    invoke-virtual {v0, v6, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9411
    const-string v1, "carrier_provisions_wifi_merged_networks_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9412
    const-string/jumbo v1, "use_ip_for_calling_indicator_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9413
    const-string v1, "display_call_strength_indicator_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9414
    const-string v1, "carrier_provisioning_app_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9415
    const-string v1, "display_no_data_notification_on_permanent_failure_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9417
    const-string/jumbo v1, "unthrottle_data_retry_when_tac_changes_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9419
    const-string v1, "carrier_supports_multianchor_conference"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9420
    const-string v14, "52FF:mms,supl,hipri,default,fota:SA:nrphone"

    const-string v15, "52FF:mms,supl,hipri,default,fota:NSA:nxtgenphone"

    const-string v16, "52FF:mms,supl,hipri,default,fota:LTE:nxtgenphone"

    const-string v17, "52FF:mms,supl,hipri,default,fota:TD_SCDMA:nxtgenphone"

    const-string v18, "52FF:mms,supl,hipri,default,fota:UMTS:nxtgenphone"

    const-string v19, "52FF:mms,supl,hipri,default,fota:GSM:nxtgenphone"

    const-string v20, "52FF:mms,supl,hipri,default,fota:HDR:nxtgenphone"

    const-string v21, "52FF:mms,supl,hipri,default,fota:1xRTT:nxtgenphone"

    const-string v22, "53FF:mms,supl,hipri,default,fota:SA:enhancedphone"

    const-string v23, "53FF:mms,supl,hipri,default,fota:NSA:enhancedphone"

    const-string v24, "53FF:mms,supl,hipri,default,fota:LTE:nxtgenphone"

    const-string v25, "53FF:mms,supl,hipri,default,fota:TD_SCDMA:nxtgenphone"

    const-string v26, "53FF:mms,supl,hipri,default,fota:UMTS:nxtgenphone"

    const-string v27, "53FF:mms,supl,hipri,default,fota:GSM:nxtgenphone"

    const-string v28, "53FF:mms,supl,hipri,default,fota:HDR:nxtgenphone"

    const-string v29, "53FF:mms,supl,hipri,default,fota:1xRTT:nxtgenphone"

    filled-new-array/range {v14 .. v29}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "multi_apn_array_for_same_gid"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9438
    const-string/jumbo v1, "require_apn_filtering_with_radio_capability_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9439
    const-string/jumbo v1, "use_sms_callback_mode_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9440
    const-string/jumbo v1, "vonr_setting_visibility_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9441
    const-string/jumbo v1, "vonr_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9442
    const-string/jumbo v1, "source=GERAN|UTRAN|EUTRAN|NGRAN|IWLAN, target=GERAN|UTRAN|EUTRAN|NGRAN|IWLAN, type=allowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "iwlan_handover_policy_string_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9445
    const-string v1, "cellular_usage_setting_int"

    invoke-virtual {v0, v1, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9448
    new-array v1, v5, [J

    fill-array-data v1, :array_d5a

    const-string v2, "data_stall_recovery_timers_long_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 9450
    new-array v1, v11, [Z

    fill-array-data v1, :array_d6e

    const-string v2, "data_stall_recovery_should_skip_bool_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 9454
    invoke-static {v0}, Landroid/telephony/TelephonyBaseUtilsStub;->putPostCarrierConfigForMiui(Landroid/os/PersistableBundle;)V

    .line 9455
    return-void

    :array_ce4
    .array-data 4
        0x4
        0x7
        0x5
        0x6
        0xc
    .end array-data

    :array_cf2
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_cfa
    .array-data 4
        -0x80
        -0x76
        -0x6c
        -0x62
    .end array-data

    :array_d06
    .array-data 4
        -0x14
        -0x11
        -0xe
        -0xb
    .end array-data

    :array_d12
    .array-data 4
        -0x3
        0x1
        0x5
        0xd
    .end array-data

    :array_d1e
    .array-data 4
        -0x73
        -0x69
        -0x5f
        -0x55
    .end array-data

    :array_d2a
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data

    :array_d36
    .array-data 4
        -0x1f
        -0x13
        -0x7
        0x6
    .end array-data

    :array_d42
    .array-data 4
        -0x5
        0x5
        0xf
        0x1e
    .end array-data

    :array_d4e
    .array-data 4
        -0x6b
        -0x67
        -0x61
        -0x59
    .end array-data

    :array_d5a
    .array-data 8
        0x2bf20
        0x2bf20
        0x2bf20
        0x2bf20
    .end array-data

    :array_d6e
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroid/telephony/CarrierConfigManager;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method

.method private blacklist addConfig(Ljava/lang/String;Ljava/lang/Object;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "configs"    # Landroid/os/PersistableBundle;

    .line 9794
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 9795
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, p1, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 9796
    :cond_c
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 9797
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p3, p1, v0}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 9798
    :cond_18
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_27

    .line 9799
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8a

    .line 9800
    :cond_27
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_36

    .line 9801
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_8a

    .line 9802
    :cond_36
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_45

    .line 9803
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_8a

    .line 9804
    :cond_45
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_54

    .line 9805
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p3, p1, v0}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_8a

    .line 9806
    :cond_54
    instance-of v0, p2, [I

    if-eqz v0, :cond_5f

    .line 9807
    move-object v0, p2

    check-cast v0, [I

    invoke-virtual {p3, p1, v0}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_8a

    .line 9808
    :cond_5f
    instance-of v0, p2, [D

    if-eqz v0, :cond_6a

    .line 9809
    move-object v0, p2

    check-cast v0, [D

    invoke-virtual {p3, p1, v0}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_8a

    .line 9810
    :cond_6a
    instance-of v0, p2, [Z

    if-eqz v0, :cond_75

    .line 9811
    move-object v0, p2

    check-cast v0, [Z

    invoke-virtual {p3, p1, v0}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_8a

    .line 9812
    :cond_75
    instance-of v0, p2, [J

    if-eqz v0, :cond_80

    .line 9813
    move-object v0, p2

    check-cast v0, [J

    invoke-virtual {p3, p1, v0}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_8a

    .line 9814
    :cond_80
    instance-of v0, p2, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_8a

    .line 9815
    move-object v0, p2

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {p3, p1, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 9817
    :cond_8a
    :goto_8a
    return-void
.end method

.method public static whitelist getDefaultConfig()Landroid/os/PersistableBundle;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9748
    new-instance v0, Landroid/os/PersistableBundle;

    sget-object v1, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method private greylist-max-o getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;
    .registers 2

    .line 9756
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 9757
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getCarrierConfigServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 9758
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 9754
    invoke-static {v0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z
    .registers 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 9657
    if-eqz p0, :cond_c

    const-string v0, "carrier_config_applied_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public whitelist getConfig()Landroid/os/PersistableBundle;
    .registers 2

    .line 9629
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConfigByComponentForSubId(Ljava/lang/String;I)Landroid/os/PersistableBundle;
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 9777
    invoke-virtual {p0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 9779
    .local v0, "configs":Landroid/os/PersistableBundle;
    if-nez v0, :cond_8

    .line 9780
    const/4 v1, 0x0

    return-object v1

    .line 9783
    :cond_8
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 9784
    .local v1, "ret":Landroid/os/PersistableBundle;
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9785
    .local v3, "configKey":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 9786
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Landroid/telephony/CarrierConfigManager;->addConfig(Ljava/lang/String;Ljava/lang/Object;Landroid/os/PersistableBundle;)V

    .line 9788
    .end local v3    # "configKey":Ljava/lang/String;
    :cond_2e
    goto :goto_15

    .line 9790
    :cond_2f
    return-object v1
.end method

.method public whitelist getConfigForSubId(I)Landroid/os/PersistableBundle;
    .registers 8
    .param p1, "subId"    # I

    .line 9535
    const-string v0, "Error getting config for subId "

    const-string v1, "CarrierConfigManager"

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v3

    .line 9536
    .local v3, "loader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    if-nez v3, :cond_26

    .line 9537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ICarrierConfigLoader is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9539
    return-object v2

    .line 9541
    :cond_26
    iget-object v4, p0, Landroid/telephony/CarrierConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/CarrierConfigManager;->mContext:Landroid/content/Context;

    .line 9542
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 9541
    invoke-interface {v3, p1, v4, v5}, Lcom/android/internal/telephony/ICarrierConfigLoader;->getConfigForSubIdWithFeature(ILjava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_36} :catch_37

    return-object v0

    .line 9543
    .end local v3    # "loader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    :catch_37
    move-exception v3

    .line 9544
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9545
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9544
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9547
    .end local v3    # "ex":Landroid/os/RemoteException;
    return-object v2
.end method

.method public whitelist getDefaultCarrierServicePackageName()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9725
    const-string v0, ""

    const-string v1, "getDefaultCarrierServicePackageName ICarrierConfigLoader is null"

    const-string v2, "CarrierConfigManager"

    :try_start_6
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v3

    .line 9726
    .local v3, "loader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    if-nez v3, :cond_10

    .line 9727
    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9728
    return-object v0

    .line 9730
    :cond_10
    invoke-interface {v3}, Lcom/android/internal/telephony/ICarrierConfigLoader;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return-object v0

    .line 9731
    .end local v3    # "loader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    :catch_15
    move-exception v3

    .line 9732
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9733
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9732
    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9734
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 9736
    .end local v3    # "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist notifyConfigChangedForSubId(I)V
    .registers 7
    .param p1, "subId"    # I

    .line 9678
    const-string v0, "Error reloading config for subId="

    const-string v1, "CarrierConfigManager"

    :try_start_4
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v2

    .line 9679
    .local v2, "loader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    if-nez v2, :cond_25

    .line 9680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ICarrierConfigLoader is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9682
    return-void

    .line 9684
    :cond_25
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ICarrierConfigLoader;->notifyConfigChangedForSubId(I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_28} :catch_29

    .line 9687
    .end local v2    # "loader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    goto :goto_4c

    .line 9685
    :catch_29
    move-exception v2

    .line 9686
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9688
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_4c
    return-void
.end method

.method public whitelist overrideConfig(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "subscriptionId"    # I
    .param p2, "overrideValues"    # Landroid/os/PersistableBundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9572
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/CarrierConfigManager;->overrideConfig(ILandroid/os/PersistableBundle;Z)V

    .line 9573
    return-void
.end method

.method public blacklist overrideConfig(ILandroid/os/PersistableBundle;Z)V
    .registers 9
    .param p1, "subscriptionId"    # I
    .param p2, "overrideValues"    # Landroid/os/PersistableBundle;
    .param p3, "persistent"    # Z

    .line 9601
    const-string v0, "Error setting config for subId "

    const-string v1, "CarrierConfigManager"

    :try_start_4
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v2

    .line 9602
    .local v2, "loader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    if-nez v2, :cond_25

    .line 9603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ICarrierConfigLoader is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9605
    return-void

    .line 9607
    :cond_25
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ICarrierConfigLoader;->overrideConfig(ILandroid/os/PersistableBundle;Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_28} :catch_29

    .line 9611
    .end local v2    # "loader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    goto :goto_4c

    .line 9608
    :catch_29
    move-exception v2

    .line 9609
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9610
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9609
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9612
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_4c
    return-void
.end method

.method public whitelist updateConfigForPhoneId(ILjava/lang/String;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "simState"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9702
    const-string v0, "Error updating config for phoneId="

    const-string v1, "CarrierConfigManager"

    :try_start_4
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v2

    .line 9703
    .local v2, "loader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    if-nez v2, :cond_25

    .line 9704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ICarrierConfigLoader is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9706
    return-void

    .line 9708
    :cond_25
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ICarrierConfigLoader;->updateConfigForPhoneId(ILjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_28} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_28} :catch_29

    .line 9711
    .end local v2    # "loader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    goto :goto_4c

    .line 9709
    :catch_29
    move-exception v2

    .line 9710
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9712
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_4c
    return-void
.end method
