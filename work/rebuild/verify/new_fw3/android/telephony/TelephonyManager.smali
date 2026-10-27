.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$MultiSimVariants;,
        Landroid/telephony/TelephonyManager$DeathRecipient;,
        Landroid/telephony/TelephonyManager$CellInfoCallback;,
        Landroid/telephony/TelephonyManager$UssdResponseCallback;,
        Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;,
        Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;,
        Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;,
        Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;,
        Landroid/telephony/TelephonyManager$ModemActivityInfoException;,
        Landroid/telephony/TelephonyManager$CallComposerException;,
        Landroid/telephony/TelephonyManager$SimType;,
        Landroid/telephony/TelephonyManager$EmergencyCallbackModeStopReason;,
        Landroid/telephony/TelephonyManager$EmergencyCallbackModeType;,
        Landroid/telephony/TelephonyManager$CellBroadcastResult;,
        Landroid/telephony/TelephonyManager$PurchasePremiumCapabilityResult;,
        Landroid/telephony/TelephonyManager$PremiumCapability;,
        Landroid/telephony/TelephonyManager$ModemErrorException;,
        Landroid/telephony/TelephonyManager$TimeoutException;,
        Landroid/telephony/TelephonyManager$NetworkSlicingException;,
        Landroid/telephony/TelephonyManager$PrepareUnattendedRebootResult;,
        Landroid/telephony/TelephonyManager$AuthenticationFailureReason;,
        Landroid/telephony/TelephonyManager$IncludeLocationData;,
        Landroid/telephony/TelephonyManager$RadioInterfaceCapability;,
        Landroid/telephony/TelephonyManager$NrDualConnectivityState;,
        Landroid/telephony/TelephonyManager$EnableNrDualConnectivityResult;,
        Landroid/telephony/TelephonyManager$MobileDataPolicy;,
        Landroid/telephony/TelephonyManager$CallWaitingStatus;,
        Landroid/telephony/TelephonyManager$HalService;,
        Landroid/telephony/TelephonyManager$IsMultiSimSupportedResult;,
        Landroid/telephony/TelephonyManager$UpdateAvailableNetworksResult;,
        Landroid/telephony/TelephonyManager$SetOpportunisticSubscriptionResult;,
        Landroid/telephony/TelephonyManager$NetworkTypeBitMask;,
        Landroid/telephony/TelephonyManager$DataEnabledChangedReason;,
        Landroid/telephony/TelephonyManager$DataEnabledReason;,
        Landroid/telephony/TelephonyManager$EnableVoNrResult;,
        Landroid/telephony/TelephonyManager$CarrierRestrictionStatus;,
        Landroid/telephony/TelephonyManager$SetSimPowerStateResult;,
        Landroid/telephony/TelephonyManager$SetCarrierRestrictionResult;,
        Landroid/telephony/TelephonyManager$SimPowerState;,
        Landroid/telephony/TelephonyManager$CdmaSubscription;,
        Landroid/telephony/TelephonyManager$CallComposerStatus;,
        Landroid/telephony/TelephonyManager$AllowedNetworkTypesReason;,
        Landroid/telephony/TelephonyManager$PrefNetworkMode;,
        Landroid/telephony/TelephonyManager$AuthType;,
        Landroid/telephony/TelephonyManager$EriIconMode;,
        Landroid/telephony/TelephonyManager$EriIconIndex;,
        Landroid/telephony/TelephonyManager$DataState;,
        Landroid/telephony/TelephonyManager$SimState;,
        Landroid/telephony/TelephonyManager$SimCombinationWarningType;,
        Landroid/telephony/TelephonyManager$DefaultSubscriptionSelectType;,
        Landroid/telephony/TelephonyManager$CdmaRoamingMode;,
        Landroid/telephony/TelephonyManager$KeyType;,
        Landroid/telephony/TelephonyManager$RadioPowerReason;,
        Landroid/telephony/TelephonyManager$NetworkSelectionMode;,
        Landroid/telephony/TelephonyManager$WifiCallingChoices;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ANOMALY_REPORTED:Ljava/lang/String; = "android.telephony.action.ANOMALY_REPORTED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_CALL_DISCONNECT_CAUSE_CHANGED:Ljava/lang/String; = "android.intent.action.CALL_DISCONNECT_CAUSE"

.field public static final whitelist ACTION_CARRIER_MESSAGING_CLIENT_SERVICE:Ljava/lang/String; = "android.telephony.action.CARRIER_MESSAGING_CLIENT_SERVICE"

.field public static final whitelist ACTION_CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

.field public static final whitelist ACTION_CARRIER_SIGNAL_PCO_VALUE:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_PCO_VALUE"

.field public static final whitelist ACTION_CARRIER_SIGNAL_REDIRECTED:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

.field public static final whitelist ACTION_CARRIER_SIGNAL_REQUEST_NETWORK_FAILED:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

.field public static final whitelist ACTION_CARRIER_SIGNAL_RESET:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_RESET"

.field public static final whitelist ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "android.telephony.action.CONFIGURE_VOICEMAIL"

.field public static final greylist-max-o ACTION_DATA_STALL_DETECTED:Ljava/lang/String; = "android.intent.action.DATA_STALL_DETECTED"

.field public static final whitelist ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_EMERGENCY_ASSISTANCE:Ljava/lang/String; = "android.telephony.action.EMERGENCY_ASSISTANCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_EMERGENCY_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MULTI_SIM_CONFIG_CHANGED:Ljava/lang/String; = "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

.field public static final whitelist ACTION_NETWORK_COUNTRY_CHANGED:Ljava/lang/String; = "android.telephony.action.NETWORK_COUNTRY_CHANGED"

.field public static final whitelist ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final blacklist ACTION_PRIMARY_SUBSCRIPTION_LIST_CHANGED:Ljava/lang/String; = "android.telephony.action.PRIMARY_SUBSCRIPTION_LIST_CHANGED"

.field public static final whitelist ACTION_REQUEST_OMADM_CONFIGURATION_UPDATE:Ljava/lang/String; = "com.android.omadm.service.CONFIGURATION_UPDATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_RESET_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "android.telephony.action.RESET_MOBILE_NETWORK_SETTINGS"

.field public static final whitelist ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final whitelist ACTION_SECRET_CODE:Ljava/lang/String; = "android.telephony.action.SECRET_CODE"

.field public static final blacklist ACTION_SERVICE_PROVIDERS_UPDATED:Ljava/lang/String; = "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

.field public static final whitelist ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String; = "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SHOW_VOICEMAIL_NOTIFICATION:Ljava/lang/String; = "android.telephony.action.SHOW_VOICEMAIL_NOTIFICATION"

.field public static final whitelist ACTION_SIM_APPLICATION_STATE_CHANGED:Ljava/lang/String; = "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SIM_CARD_STATE_CHANGED:Ljava/lang/String; = "android.telephony.action.SIM_CARD_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SIM_SLOT_STATUS_CHANGED:Ljava/lang/String; = "android.telephony.action.SIM_SLOT_STATUS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_STK_SETUP_EVENT_LIST:Ljava/lang/String; = "android.telephony.action.STK_SETUP_EVENT_LIST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SUBSCRIPTION_CARRIER_IDENTITY_CHANGED:Ljava/lang/String; = "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

.field public static final whitelist ACTION_SUBSCRIPTION_SPECIFIC_CARRIER_IDENTITY_CHANGED:Ljava/lang/String; = "android.telephony.action.SUBSCRIPTION_SPECIFIC_CARRIER_IDENTITY_CHANGED"

.field public static final whitelist ALLOWED_NETWORK_TYPES_REASON_CARRIER:I = 0x2

.field public static final whitelist ALLOWED_NETWORK_TYPES_REASON_ENABLE_2G:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ALLOWED_NETWORK_TYPES_REASON_POWER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ALLOWED_NETWORK_TYPES_REASON_TEST:I = 0x4

.field public static final whitelist ALLOWED_NETWORK_TYPES_REASON_USER:I = 0x0

.field public static final whitelist APPTYPE_CSIM:I = 0x4

.field public static final whitelist APPTYPE_ISIM:I = 0x5

.field public static final whitelist APPTYPE_RUIM:I = 0x3

.field public static final whitelist APPTYPE_SIM:I = 0x1

.field public static final whitelist APPTYPE_UNKNOWN:I = 0x0

.field public static final whitelist APPTYPE_USIM:I = 0x2

.field public static final whitelist AUTHTYPE_EAP_AKA:I = 0x81

.field public static final whitelist AUTHTYPE_EAP_SIM:I = 0x80

.field public static final whitelist AUTHTYPE_GBA_BOOTSTRAP:I = 0x84

.field public static final whitelist AUTHTYPE_GBA_NAF_KEY_EXTERNAL:I = 0x85

.field public static final blacklist CACHE_KEY_PHONE_ACCOUNT_TO_SUBID:Ljava/lang/String; = "cache_key.telephony.phone_account_to_subid"

.field private static final blacklist CACHE_MAX_SIZE:I = 0x4

.field private static final blacklist CALLBACK_ON_MORE_ERROR_CODE_CHANGE:J = 0x7c8ba7fL

.field public static final whitelist CALL_COMPOSER_STATUS_BUSINESS_ONLY:I = 0x2

.field public static final whitelist CALL_COMPOSER_STATUS_OFF:I = 0x0

.field public static final whitelist CALL_COMPOSER_STATUS_ON:I = 0x1

.field public static final whitelist CALL_STATE_IDLE:I = 0x0

.field public static final whitelist CALL_STATE_OFFHOOK:I = 0x2

.field public static final whitelist CALL_STATE_RINGING:I = 0x1

.field public static final whitelist CALL_WAITING_STATUS_DISABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_WAITING_STATUS_ENABLED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_WAITING_STATUS_FDN_CHECK_FAILURE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_WAITING_STATUS_NOT_SUPPORTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_WAITING_STATUS_UNKNOWN_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_NR_DUAL_CONNECTIVITY_CONFIGURATION_AVAILABLE:Ljava/lang/String; = "CAPABILITY_NR_DUAL_CONNECTIVITY_CONFIGURATION_AVAILABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CAPABILITY_PHYSICAL_CHANNEL_CONFIG_1_6_SUPPORTED:Ljava/lang/String; = "CAPABILITY_PHYSICAL_CHANNEL_CONFIG_1_6_SUPPORTED"

.field public static final whitelist CAPABILITY_SECONDARY_LINK_BANDWIDTH_VISIBLE:Ljava/lang/String; = "CAPABILITY_SECONDARY_LINK_BANDWIDTH_VISIBLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CAPABILITY_SIM_PHONEBOOK_IN_MODEM:Ljava/lang/String; = "CAPABILITY_SIM_PHONEBOOK_IN_MODEM"

.field public static final whitelist CAPABILITY_SLICING_CONFIG_SUPPORTED:Ljava/lang/String; = "CAPABILITY_SLICING_CONFIG_SUPPORTED"

.field public static final whitelist CAPABILITY_THERMAL_MITIGATION_DATA_THROTTLING:Ljava/lang/String; = "CAPABILITY_THERMAL_MITIGATION_DATA_THROTTLING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK:Ljava/lang/String; = "CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o CARD_POWER_DOWN:I = 0x0

.field public static final greylist-max-o CARD_POWER_UP:I = 0x1

.field public static final greylist-max-o CARD_POWER_UP_PASS_THROUGH:I = 0x2

.field public static final whitelist CARRIER_PRIVILEGE_STATUS_ERROR_LOADING_RULES:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CARRIER_PRIVILEGE_STATUS_HAS_ACCESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CARRIER_PRIVILEGE_STATUS_NO_ACCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CARRIER_PRIVILEGE_STATUS_RULES_NOT_LOADED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CARRIER_RESTRICTION_STATUS_NOT_RESTRICTED:I = 0x1

.field public static final whitelist CARRIER_RESTRICTION_STATUS_RESTRICTED:I = 0x2

.field public static final whitelist CARRIER_RESTRICTION_STATUS_RESTRICTED_TO_CALLER:I = 0x3

.field public static final whitelist CARRIER_RESTRICTION_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist CDMA_ROAMING_MODE_AFFILIATED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CDMA_ROAMING_MODE_ANY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CDMA_ROAMING_MODE_HOME:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CDMA_ROAMING_MODE_RADIO_DEFAULT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CDMA_SUBSCRIPTION_NV:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CDMA_SUBSCRIPTION_RUIM_SIM:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CDMA_SUBSCRIPTION_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CELL_BROADCAST_RESULT_FAIL_ACTIVATION:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CELL_BROADCAST_RESULT_FAIL_CONFIG:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CELL_BROADCAST_RESULT_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CELL_BROADCAST_RESULT_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CELL_BROADCAST_RESULT_UNSUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CHANGE_ICC_LOCK_SUCCESS:I = 0x7fffffff

.field public static final whitelist DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final whitelist DATA_ACTIVITY_IN:I = 0x1

.field public static final whitelist DATA_ACTIVITY_INOUT:I = 0x3

.field public static final whitelist DATA_ACTIVITY_NONE:I = 0x0

.field public static final whitelist DATA_ACTIVITY_OUT:I = 0x2

.field public static final whitelist DATA_CONNECTED:I = 0x2

.field public static final whitelist DATA_CONNECTING:I = 0x1

.field public static final whitelist DATA_DISCONNECTED:I = 0x0

.field public static final whitelist DATA_DISCONNECTING:I = 0x4

.field public static final whitelist DATA_ENABLED_REASON_CARRIER:I = 0x2

.field public static final whitelist DATA_ENABLED_REASON_OVERRIDE:I = 0x4

.field public static final whitelist DATA_ENABLED_REASON_POLICY:I = 0x1

.field public static final whitelist DATA_ENABLED_REASON_THERMAL:I = 0x3

.field public static final whitelist DATA_ENABLED_REASON_UNKNOWN:I = -0x1

.field public static final whitelist DATA_ENABLED_REASON_USER:I = 0x0

.field public static final whitelist DATA_HANDOVER_IN_PROGRESS:I = 0x5

.field public static final whitelist DATA_SUSPENDED:I = 0x3

.field public static final whitelist DATA_UNKNOWN:I = -0x1

.field public static final whitelist DEFAULT_PORT_INDEX:I = 0x0

.field public static final blacklist DEFAULT_PREFERRED_NETWORK_MODE:I

.field public static final greylist-max-o EMERGENCY_ASSISTANCE_ENABLED:Z = true

.field public static final whitelist EMERGENCY_CALLBACK_MODE_CALL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EMERGENCY_CALLBACK_MODE_SMS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ENABLE_FEATURE_MAPPING:J = 0x11c2f5c6L

.field public static final whitelist ENABLE_NR_DUAL_CONNECTIVITY_INVALID_STATE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENABLE_NR_DUAL_CONNECTIVITY_NOT_SUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENABLE_NR_DUAL_CONNECTIVITY_RADIO_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENABLE_NR_DUAL_CONNECTIVITY_RADIO_NOT_AVAILABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENABLE_NR_DUAL_CONNECTIVITY_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ENABLE_VONR_RADIO_ERROR:I = 0x3

.field public static final blacklist ENABLE_VONR_RADIO_INVALID_STATE:I = 0x4

.field public static final blacklist ENABLE_VONR_RADIO_NOT_AVAILABLE:I = 0x2

.field public static final blacklist ENABLE_VONR_REQUEST_NOT_SUPPORTED:I = 0x5

.field public static final blacklist ENABLE_VONR_SUCCESS:I = 0x0

.field public static final whitelist ERI_FLASH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ERI_ICON_MODE_FLASH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ERI_ICON_MODE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERI_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERI_ON:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EVENT_CALL_FORWARDED:Ljava/lang/String; = "android.telephony.event.EVENT_CALL_FORWARDED"

.field public static final whitelist EVENT_DISPLAY_EMERGENCY_MESSAGE:Ljava/lang/String; = "android.telephony.event.DISPLAY_EMERGENCY_MESSAGE"

.field public static final greylist-max-o EVENT_DOWNGRADE_DATA_DISABLED:Ljava/lang/String; = "android.telephony.event.EVENT_DOWNGRADE_DATA_DISABLED"

.field public static final greylist-max-o EVENT_DOWNGRADE_DATA_LIMIT_REACHED:Ljava/lang/String; = "android.telephony.event.EVENT_DOWNGRADE_DATA_LIMIT_REACHED"

.field public static final greylist-max-o EVENT_HANDOVER_TO_WIFI_FAILED:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_TO_WIFI_FAILED"

.field public static final greylist-max-o EVENT_HANDOVER_VIDEO_FROM_LTE_TO_WIFI:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_LTE_TO_WIFI"

.field public static final greylist-max-o EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE"

.field public static final greylist-max-o EVENT_NOTIFY_INTERNATIONAL_CALL_ON_WFC:Ljava/lang/String; = "android.telephony.event.EVENT_NOTIFY_INTERNATIONAL_CALL_ON_WFC"

.field public static final greylist-max-o EVENT_SUPPLEMENTARY_SERVICE_NOTIFICATION:Ljava/lang/String; = "android.telephony.event.EVENT_SUPPLEMENTARY_SERVICE_NOTIFICATION"

.field public static final blacklist EXCEPTION_RESULT_KEY:Ljava/lang/String; = "exception"

.field public static final whitelist EXTRA_ACTIVE_SIM_SUPPORTED_COUNT:Ljava/lang/String; = "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

.field public static final whitelist EXTRA_ANOMALY_DESCRIPTION:Ljava/lang/String; = "android.telephony.extra.ANOMALY_DESCRIPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ANOMALY_ID:Ljava/lang/String; = "android.telephony.extra.ANOMALY_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_APN_PROTOCOL:Ljava/lang/String; = "android.telephony.extra.APN_PROTOCOL"

.field public static final whitelist EXTRA_APN_TYPE:Ljava/lang/String; = "android.telephony.extra.APN_TYPE"

.field public static final whitelist EXTRA_CALL_VOICEMAIL_INTENT:Ljava/lang/String; = "android.telephony.extra.CALL_VOICEMAIL_INTENT"

.field public static final whitelist EXTRA_CARRIER_ID:Ljava/lang/String; = "android.telephony.extra.CARRIER_ID"

.field public static final whitelist EXTRA_CARRIER_NAME:Ljava/lang/String; = "android.telephony.extra.CARRIER_NAME"

.field public static final whitelist EXTRA_DATA_FAIL_CAUSE:Ljava/lang/String; = "android.telephony.extra.DATA_FAIL_CAUSE"

.field public static final blacklist EXTRA_DATA_SPN:Ljava/lang/String; = "android.telephony.extra.DATA_SPN"

.field public static final whitelist EXTRA_DEFAULT_NETWORK_AVAILABLE:Ljava/lang/String; = "android.telephony.extra.DEFAULT_NETWORK_AVAILABLE"

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE:Ljava/lang/String; = "android.telephony.extra.DEFAULT_SUBSCRIPTION_SELECT_TYPE"

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_ALL:I = 0x4

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_DATA:I = 0x1

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_DISMISS:I = 0x5

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_NONE:I = 0x0

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_SMS:I = 0x3

.field public static final blacklist EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_VOICE:I = 0x2

.field public static final greylist-max-o EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "disconnect_cause"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_EMERGENCY_CALL_TO_SATELLITE_HANDOVER_TYPE:Ljava/lang/String; = "android.telephony.extra.EMERGENCY_CALL_TO_SATELLITE_HANDOVER_TYPE"

.field public static final whitelist EXTRA_EMERGENCY_CALL_TO_SATELLITE_LAUNCH_INTENT:Ljava/lang/String; = "android.telephony.extra.EMERGENCY_CALL_TO_SATELLITE_LAUNCH_INTENT"

.field public static final whitelist EXTRA_HIDE_PUBLIC_SETTINGS:Ljava/lang/String; = "android.telephony.extra.HIDE_PUBLIC_SETTINGS"

.field public static final whitelist EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_IS_REFRESH:Ljava/lang/String; = "android.telephony.extra.IS_REFRESH"

.field public static final whitelist EXTRA_LAST_KNOWN_NETWORK_COUNTRY:Ljava/lang/String; = "android.telephony.extra.LAST_KNOWN_NETWORK_COUNTRY"

.field public static final whitelist EXTRA_LAUNCH_VOICEMAIL_SETTINGS_INTENT:Ljava/lang/String; = "android.telephony.extra.LAUNCH_VOICEMAIL_SETTINGS_INTENT"

.field public static final whitelist EXTRA_NETWORK_COUNTRY:Ljava/lang/String; = "android.telephony.extra.NETWORK_COUNTRY"

.field public static final greylist-max-o EXTRA_NOTIFICATION_CODE:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_CODE"

.field public static final whitelist EXTRA_NOTIFICATION_COUNT:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_COUNT"

.field public static final greylist-max-o EXTRA_NOTIFICATION_MESSAGE:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_MESSAGE"

.field public static final greylist-max-o EXTRA_NOTIFICATION_TYPE:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_TYPE"

.field public static final whitelist EXTRA_PCO_ID:Ljava/lang/String; = "android.telephony.extra.PCO_ID"

.field public static final whitelist EXTRA_PCO_VALUE:Ljava/lang/String; = "android.telephony.extra.PCO_VALUE"

.field public static final whitelist EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telephony.extra.PHONE_ACCOUNT_HANDLE"

.field public static final whitelist EXTRA_PHONE_IN_ECM_STATE:Ljava/lang/String; = "android.telephony.extra.PHONE_IN_ECM_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PHONE_IN_EMERGENCY_CALL:Ljava/lang/String; = "android.telephony.extra.PHONE_IN_EMERGENCY_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_PLMN:Ljava/lang/String; = "android.telephony.extra.PLMN"

.field public static final greylist-max-o EXTRA_PRECISE_DISCONNECT_CAUSE:Ljava/lang/String; = "precise_disconnect_cause"

.field public static final greylist-max-o EXTRA_RECOVERY_ACTION:Ljava/lang/String; = "recoveryAction"

.field public static final whitelist EXTRA_REDIRECTION_URL:Ljava/lang/String; = "android.telephony.extra.REDIRECTION_URL"

.field public static final blacklist EXTRA_SETUP_EVENT_LIST:Ljava/lang/String; = "android.telephony.extra.SETUP_EVENT_LIST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_SHOW_PLMN:Ljava/lang/String; = "android.telephony.extra.SHOW_PLMN"

.field public static final blacklist EXTRA_SHOW_SPN:Ljava/lang/String; = "android.telephony.extra.SHOW_SPN"

.field public static final blacklist EXTRA_SIM_COMBINATION_NAMES:Ljava/lang/String; = "android.telephony.extra.SIM_COMBINATION_NAMES"

.field public static final blacklist EXTRA_SIM_COMBINATION_WARNING_TYPE:Ljava/lang/String; = "android.telephony.extra.SIM_COMBINATION_WARNING_TYPE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_SIM_COMBINATION_WARNING_TYPE_DUAL_CDMA:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_SIM_COMBINATION_WARNING_TYPE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_SIM_SLOT_ID:Ljava/lang/String; = "simSlot"

.field public static final whitelist EXTRA_SIM_STATE:Ljava/lang/String; = "android.telephony.extra.SIM_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SPECIFIC_CARRIER_ID:Ljava/lang/String; = "android.telephony.extra.SPECIFIC_CARRIER_ID"

.field public static final whitelist EXTRA_SPECIFIC_CARRIER_NAME:Ljava/lang/String; = "android.telephony.extra.SPECIFIC_CARRIER_NAME"

.field public static final blacklist EXTRA_SPN:Ljava/lang/String; = "android.telephony.extra.SPN"

.field public static final whitelist EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final whitelist EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final whitelist EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final whitelist EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final whitelist EXTRA_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.extra.SUBSCRIPTION_ID"

.field public static final whitelist EXTRA_VISUAL_VOICEMAIL_ENABLED_BY_USER_BOOL:Ljava/lang/String; = "android.telephony.extra.VISUAL_VOICEMAIL_ENABLED_BY_USER_BOOL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_VOICEMAIL_NUMBER:Ljava/lang/String; = "android.telephony.extra.VOICEMAIL_NUMBER"

.field public static final whitelist EXTRA_VOICEMAIL_SCRAMBLED_PIN_STRING:Ljava/lang/String; = "android.telephony.extra.VOICEMAIL_SCRAMBLED_PIN_STRING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_FAILURE_REASON_FEATURE_NOT_READY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_FAILURE_REASON_FEATURE_NOT_SUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_FAILURE_REASON_INCORRECT_NAF_ID:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_FAILURE_REASON_NETWORK_FAILURE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_FAILURE_REASON_SECURITY_PROTOCOL_NOT_SUPPORTED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_FAILURE_REASON_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist GET_DATA_STATE_R_VERSION:J = 0x8da744cL

.field public static final blacklist HAL_SERVICE_DATA:I = 0x1

.field public static final blacklist HAL_SERVICE_IMS:I = 0x7

.field public static final blacklist HAL_SERVICE_MESSAGING:I = 0x2

.field public static final blacklist HAL_SERVICE_MODEM:I = 0x3

.field public static final blacklist HAL_SERVICE_NETWORK:I = 0x4

.field public static final blacklist HAL_SERVICE_RADIO:I = 0x0

.field public static final blacklist HAL_SERVICE_SIM:I = 0x5

.field public static final blacklist HAL_SERVICE_VOICE:I = 0x6

.field public static final blacklist HAL_VERSION_UNKNOWN:Landroid/util/Pair;

.field public static final blacklist HAL_VERSION_UNSUPPORTED:Landroid/util/Pair;

.field public static final whitelist INCLUDE_LOCATION_DATA_COARSE:I = 0x1

.field public static final whitelist INCLUDE_LOCATION_DATA_FINE:I = 0x2

.field public static final whitelist INCLUDE_LOCATION_DATA_NONE:I = 0x0

.field public static final greylist-max-o INDICATION_FILTER_DATA_CALL_DORMANCY_CHANGED:I = 0x4

.field public static final greylist-max-o INDICATION_FILTER_FULL_NETWORK_STATE:I = 0x2

.field public static final greylist-max-o INDICATION_FILTER_LINK_CAPACITY_ESTIMATE:I = 0x8

.field public static final greylist-max-o INDICATION_FILTER_PHYSICAL_CHANNEL_CONFIG:I = 0x10

.field public static final greylist-max-o INDICATION_FILTER_SIGNAL_STRENGTH:I = 0x1

.field public static final whitelist INVALID_EMERGENCY_NUMBER_DB_VERSION:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INVALID_PORT_INDEX:I = -0x1

.field public static final blacklist KEY_CALL_COMPOSER_PICTURE_HANDLE:Ljava/lang/String; = "call_composer_picture_handle"

.field public static final blacklist KEY_SLICING_CONFIG_HANDLE:Ljava/lang/String; = "slicing_config_handle"

.field public static final whitelist KEY_TYPE_EPDG:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_TYPE_WLAN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_UICC_IARI_EXCEPTION:Ljava/lang/String; = "uicc_iari_exception"

.field public static final blacklist KEY_UICC_IARI_LIST:Ljava/lang/String; = "uicc_iari_list"

.field private static final blacklist MAXIMUM_CALL_COMPOSER_PICTURE_SIZE:I = 0x13880

.field private static final blacklist MAX_NUMBER_VERIFICATION_TIMEOUT_MILLIS:J = 0xea60L

.field public static final whitelist METADATA_HIDE_VOICEMAIL_SETTINGS_MENU:Ljava/lang/String; = "android.telephony.HIDE_VOICEMAIL_SETTINGS_MENU"

.field public static final whitelist MOBILE_DATA_POLICY_AUTO_DATA_SWITCH:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MOBILE_DATA_POLICY_DATA_ON_NON_DEFAULT_DURING_VOICE_CALL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MOBILE_DATA_POLICY_MMS_ALWAYS_ALLOWED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MODEM_ACTIVITY_RESULT_KEY:Ljava/lang/String; = "controller_activity"

.field public static final whitelist MULTISIM_ALLOWED:I = 0x0

.field public static final whitelist MULTISIM_NOT_SUPPORTED_BY_CARRIER:I = 0x2

.field public static final whitelist MULTISIM_NOT_SUPPORTED_BY_HARDWARE:I = 0x1

.field public static final blacklist NETWORK_CLASS_BITMASK_2G:J = 0x804bL

.field public static final blacklist NETWORK_CLASS_BITMASK_3G:J = 0x16bb4L

.field public static final blacklist NETWORK_CLASS_BITMASK_4G:J = 0x61000L

.field public static final blacklist NETWORK_CLASS_BITMASK_5G:J = 0x80000L

.field public static final blacklist NETWORK_MODE_CDMA_EVDO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_CDMA_NO_EVDO:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_EVDO_NO_CDMA:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_GLOBAL:I = 0x7

.field public static final blacklist NETWORK_MODE_GSM_ONLY:I = 0x1

.field public static final blacklist NETWORK_MODE_GSM_UMTS:I = 0x3

.field public static final blacklist NETWORK_MODE_LTE_CDMA_EVDO:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_LTE_CDMA_EVDO_GSM_WCDMA:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final blacklist NETWORK_MODE_LTE_ONLY:I = 0xb

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA:I = 0xf

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA_GSM:I = 0x11

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA_GSM_WCDMA:I = 0x14

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA_WCDMA:I = 0x13

.field public static final blacklist NETWORK_MODE_LTE_WCDMA:I = 0xc

.field public static final blacklist NETWORK_MODE_NR_LTE:I = 0x18

.field public static final blacklist NETWORK_MODE_NR_LTE_CDMA_EVDO:I = 0x19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_NR_LTE_CDMA_EVDO_GSM_WCDMA:I = 0x1b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_NR_LTE_GSM_WCDMA:I = 0x1a

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA:I = 0x1d

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA_GSM:I = 0x1e

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA_GSM_WCDMA:I = 0x20

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA_WCDMA:I = 0x1f

.field public static final blacklist NETWORK_MODE_NR_LTE_WCDMA:I = 0x1c

.field public static final blacklist NETWORK_MODE_NR_ONLY:I = 0x17

.field public static final blacklist NETWORK_MODE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_MODE_TDSCDMA_GSM:I = 0x10

.field public static final blacklist NETWORK_MODE_TDSCDMA_GSM_WCDMA:I = 0x12

.field public static final blacklist NETWORK_MODE_TDSCDMA_ONLY:I = 0xd

.field public static final blacklist NETWORK_MODE_TDSCDMA_WCDMA:I = 0xe

.field public static final blacklist NETWORK_MODE_WCDMA_ONLY:I = 0x2

.field public static final blacklist NETWORK_MODE_WCDMA_PREF:I = 0x0

.field public static final whitelist NETWORK_SELECTION_MODE_AUTO:I = 0x1

.field public static final whitelist NETWORK_SELECTION_MODE_MANUAL:I = 0x2

.field public static final whitelist NETWORK_SELECTION_MODE_UNKNOWN:I = 0x0

.field public static final blacklist NETWORK_STANDARDS_FAMILY_BITMASK_3GPP:J = 0xdd387L

.field public static final blacklist NETWORK_STANDARDS_FAMILY_BITMASK_3GPP2:J = 0x2878L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist NETWORK_TYPES:[I

.field public static final whitelist NETWORK_TYPE_1xRTT:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_BITMASK_1xRTT:J = 0x40L

.field public static final whitelist NETWORK_TYPE_BITMASK_CDMA:J = 0x8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_BITMASK_EDGE:J = 0x2L

.field public static final whitelist NETWORK_TYPE_BITMASK_EHRPD:J = 0x2000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_BITMASK_EVDO_0:J = 0x10L

.field public static final whitelist NETWORK_TYPE_BITMASK_EVDO_A:J = 0x20L

.field public static final whitelist NETWORK_TYPE_BITMASK_EVDO_B:J = 0x800L

.field public static final whitelist NETWORK_TYPE_BITMASK_GPRS:J = 0x1L

.field public static final whitelist NETWORK_TYPE_BITMASK_GSM:J = 0x8000L

.field public static final whitelist NETWORK_TYPE_BITMASK_HSDPA:J = 0x80L

.field public static final whitelist NETWORK_TYPE_BITMASK_HSPA:J = 0x200L

.field public static final whitelist NETWORK_TYPE_BITMASK_HSPAP:J = 0x4000L

.field public static final whitelist NETWORK_TYPE_BITMASK_HSUPA:J = 0x100L

.field public static final blacklist NETWORK_TYPE_BITMASK_IDEN:J = 0x400L

.field public static final whitelist NETWORK_TYPE_BITMASK_IWLAN:J = 0x20000L

.field public static final whitelist NETWORK_TYPE_BITMASK_LTE:J = 0x1000L

.field public static final whitelist NETWORK_TYPE_BITMASK_LTE_CA:J = 0x40000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_BITMASK_NR:J = 0x80000L

.field public static final whitelist NETWORK_TYPE_BITMASK_TD_SCDMA:J = 0x10000L

.field public static final whitelist NETWORK_TYPE_BITMASK_UMTS:J = 0x4L

.field public static final whitelist NETWORK_TYPE_BITMASK_UNKNOWN:J = 0x0L

.field public static final whitelist NETWORK_TYPE_CDMA:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_EDGE:I = 0x2

.field public static final whitelist NETWORK_TYPE_EHRPD:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_EVDO_0:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_EVDO_A:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_EVDO_B:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_GPRS:I = 0x1

.field public static final whitelist NETWORK_TYPE_GSM:I = 0x10

.field public static final whitelist NETWORK_TYPE_HSDPA:I = 0x8

.field public static final whitelist NETWORK_TYPE_HSPA:I = 0xa

.field public static final whitelist NETWORK_TYPE_HSPAP:I = 0xf

.field public static final whitelist NETWORK_TYPE_HSUPA:I = 0x9

.field public static final whitelist NETWORK_TYPE_IDEN:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_IWLAN:I = 0x12

.field public static final whitelist NETWORK_TYPE_LTE:I = 0xd

.field public static final greylist-max-r NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final whitelist NETWORK_TYPE_NR:I = 0x14

.field public static final whitelist NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final whitelist NETWORK_TYPE_UMTS:I = 0x3

.field public static final whitelist NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist NR_DUAL_CONNECTIVITY_DISABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NR_DUAL_CONNECTIVITY_DISABLE_IMMEDIATE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NR_DUAL_CONNECTIVITY_ENABLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist NULL_TELEPHONY_THROW_NO_CB:J = 0xadbeeaaL

.field public static final greylist-max-o OTASP_NEEDED:I = 0x2

.field public static final greylist-max-o OTASP_NOT_NEEDED:I = 0x3

.field public static final greylist-max-o OTASP_SIM_UNPROVISIONED:I = 0x5

.field public static final greylist-max-o OTASP_UNINITIALIZED:I = 0x0

.field public static final greylist-max-o OTASP_UNKNOWN:I = 0x1

.field public static final greylist-max-o PHONE_PROCESS_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final whitelist PHONE_TYPE_CDMA:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PHONE_TYPE_GSM:I = 0x1

.field public static final blacklist PHONE_TYPE_IMS:I = 0x5

.field public static final whitelist PHONE_TYPE_NONE:I = 0x0

.field public static final whitelist PHONE_TYPE_SIP:I = 0x3

.field public static final blacklist PHONE_TYPE_THIRD_PARTY:I = 0x4

.field public static final whitelist PREMIUM_CAPABILITY_PRIORITIZE_LATENCY:I = 0x22

.field public static final whitelist PREPARE_UNATTENDED_REBOOT_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREPARE_UNATTENDED_REBOOT_PIN_REQUIRED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREPARE_UNATTENDED_REBOOT_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PROPERTY_ENABLE_NULL_CIPHER_TOGGLE:Ljava/lang/String; = "enable_null_cipher_toggle"

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_ALREADY_IN_PROGRESS:I = 0x4

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_ALREADY_PURCHASED:I = 0x3

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_CARRIER_DISABLED:I = 0x7

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_CARRIER_ERROR:I = 0x8

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_ENTITLEMENT_CHECK_FAILED:I = 0xd

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_FEATURE_NOT_SUPPORTED:I = 0xa

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_NETWORK_NOT_AVAILABLE:I = 0xc

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_NOT_DEFAULT_DATA_SUBSCRIPTION:I = 0xe

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_NOT_FOREGROUND:I = 0x5

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_PENDING_NETWORK_SETUP:I = 0xf

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_REQUEST_FAILED:I = 0xb

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_SUCCESS:I = 0x1

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_THROTTLED:I = 0x2

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_TIMEOUT:I = 0x9

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_USER_CANCELED:I = 0x6

.field public static final whitelist PURCHASE_PREMIUM_CAPABILITY_RESULT_USER_DISABLED:I = 0x10

.field public static final whitelist RADIO_POWER_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_ON:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_REASON_CARRIER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_REASON_NEARBY_DEVICE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_REASON_THERMAL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_REASON_USER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_UNAVAILABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_CARRIER_RESTRICTION_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_CARRIER_RESTRICTION_NOT_SUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_CARRIER_RESTRICTION_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_OPPORTUNISTIC_SUB_INACTIVE_SUBSCRIPTION:I = 0x2

.field public static final whitelist SET_OPPORTUNISTIC_SUB_NO_OPPORTUNISTIC_SUB_AVAILABLE:I = 0x3

.field public static final whitelist SET_OPPORTUNISTIC_SUB_REMOTE_SERVICE_EXCEPTION:I = 0x4

.field public static final whitelist SET_OPPORTUNISTIC_SUB_SUCCESS:I = 0x0

.field public static final whitelist SET_OPPORTUNISTIC_SUB_VALIDATION_FAILED:I = 0x1

.field public static final whitelist SET_SIM_POWER_STATE_ALREADY_IN_STATE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SIM_POWER_STATE_MODEM_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SIM_POWER_STATE_NOT_SUPPORTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SIM_POWER_STATE_SIM_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SET_SIM_POWER_STATE_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_ACTIVATION_STATE_ACTIVATED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_ACTIVATION_STATE_ACTIVATING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_ACTIVATION_STATE_DEACTIVATED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_ACTIVATION_STATE_RESTRICTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_ACTIVATION_STATE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_STATE_ABSENT:I = 0x1

.field public static final whitelist SIM_STATE_CARD_IO_ERROR:I = 0x8

.field public static final whitelist SIM_STATE_CARD_RESTRICTED:I = 0x9

.field public static final whitelist SIM_STATE_LOADED:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final whitelist SIM_STATE_NOT_READY:I = 0x6

.field public static final whitelist SIM_STATE_PERM_DISABLED:I = 0x7

.field public static final whitelist SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final whitelist SIM_STATE_PRESENT:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final whitelist SIM_STATE_READY:I = 0x5

.field public static final whitelist SIM_STATE_UNKNOWN:I = 0x0

.field public static final blacklist SIM_TYPE_EMBEDDED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SIM_TYPE_PHYSICAL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SIM_TYPE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SRVCC_STATE_HANDOVER_CANCELED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SRVCC_STATE_HANDOVER_COMPLETED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SRVCC_STATE_HANDOVER_FAILED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SRVCC_STATE_HANDOVER_NONE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SRVCC_STATE_HANDOVER_STARTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_EMERGENCY_SMS_SENT:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_NORMAL_SMS_SENT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_OUTGOING_EMERGENCY_CALL_INITIATED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_OUTGOING_NORMAL_CALL_INITIATED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_TIMER_EXPIRED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STOP_REASON_USER_ACTION:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TelephonyManager"

.field public static final whitelist THERMAL_MITIGATION_RESULT_INVALID_STATE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist THERMAL_MITIGATION_RESULT_MODEM_ERROR:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist THERMAL_MITIGATION_RESULT_MODEM_NOT_AVAILABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist THERMAL_MITIGATION_RESULT_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist THERMAL_MITIGATION_RESULT_UNKNOWN_ERROR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNINITIALIZED_CARD_ID:I = -0x2

.field public static final whitelist UNKNOWN_CARRIER_ID:I = -0x1

.field public static final blacklist UNKNOWN_CARRIER_ID_LIST_VERSION:I = -0x1

.field public static final whitelist UNSUPPORTED_CARD_ID:I = -0x1

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_ABORTED:I = 0x2

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_DISABLE_MODEM_FAIL:I = 0x5

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_ENABLE_MODEM_FAIL:I = 0x6

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_INVALID_ARGUMENTS:I = 0x3

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_MULTIPLE_NETWORKS_NOT_SUPPORTED:I = 0x7

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_NO_CARRIER_PRIVILEGE:I = 0x4

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_NO_OPPORTUNISTIC_SUB_AVAILABLE:I = 0x8

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_REMOTE_SERVICE_EXCEPTION:I = 0x9

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_SERVICE_IS_DISABLED:I = 0xa

.field public static final blacklist UPDATE_AVAILABLE_NETWORKS_SIM_PORT_NOT_AVAILABLE:I = 0xb

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_SUCCESS:I = 0x0

.field public static final whitelist UPDATE_AVAILABLE_NETWORKS_UNKNOWN_FAILURE:I = 0x1

.field public static final whitelist USSD_ERROR_SERVICE_UNAVAIL:I = -0x2

.field public static final greylist-max-o USSD_RESPONSE:Ljava/lang/String; = "USSD_RESPONSE"

.field public static final whitelist USSD_RETURN_FAILURE:I = -0x1

.field public static final greylist-max-o USSD_RETURN_SUCCESS:I = 0x64

.field public static final whitelist VVM_TYPE_CVVM:Ljava/lang/String; = "vvm_type_cvvm"

.field public static final whitelist VVM_TYPE_OMTP:Ljava/lang/String; = "vvm_type_omtp"

.field private static final blacklist sCacheLock:Ljava/lang/Object;

.field private static blacklist sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

.field private static blacklist sISms:Lcom/android/internal/telephony/ISms;

.field private static blacklist sISub:Lcom/android/internal/telephony/ISub;

.field private static blacklist sITelephony:Lcom/android/internal/telephony/ITelephony;

.field private static greylist-max-o sInstance:Landroid/telephony/TelephonyManager;

.field private static final blacklist sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

.field private static blacklist sServiceHandleCacheEnabled:Z


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSubId:I

.field private greylist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private greylist-max-o mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$u03PMP6iKZdBMAnqo06SCV9YlyU(Landroid/telephony/TelephonyManager;Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyManager;->lambda$uploadCallComposerPicture$1(Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/telephony/TelephonyManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/TelephonyManager;->createThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smresetServiceCache()V
    .registers 0

    invoke-static {}, Landroid/telephony/TelephonyManager;->resetServiceCache()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 444
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    .line 447
    const/4 v0, 0x1

    sput-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    .line 458
    new-instance v0, Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager$DeathRecipient;-><init>(Landroid/telephony/TelephonyManager-IA;)V

    sput-object v0, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    .line 537
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 951
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 957
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 963
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 3085
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_58

    sput-object v0, Landroid/telephony/TelephonyManager;->NETWORK_TYPES:[I

    .line 9525
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    sput v0, Landroid/telephony/TelephonyManager;->DEFAULT_PREFERRED_NETWORK_MODE:I

    .line 16117
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/TelephonyManager;->HAL_VERSION_UNKNOWN:Landroid/util/Pair;

    .line 16124
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/TelephonyManager;->HAL_VERSION_UNSUPPORTED:Landroid/util/Pair;

    return-void

    nop

    :array_58
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data
.end method

.method private constructor greylist <init>()V
    .registers 4

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance v0, Landroid/telephony/TelephonyManager$1;

    const/4 v1, 0x4

    const-string v2, "cache_key.telephony.phone_account_to_subid"

    invoke-direct {v0, p0, v1, v2}, Landroid/telephony/TelephonyManager$1;-><init>(Landroid/telephony/TelephonyManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 534
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 535
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 3

    .line 518
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 519
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;I)V
    .registers 6

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance v0, Landroid/telephony/TelephonyManager$1;

    const/4 v1, 0x4

    const-string v2, "cache_key.telephony.phone_account_to_subid"

    invoke-direct {v0, p0, v1, v2}, Landroid/telephony/TelephonyManager$1;-><init>(Landroid/telephony/TelephonyManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;

    .line 524
    iput p2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 525
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Landroid/telephony/TelephonyManager;->mergeAttributionAndRenouncedPermissions(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 527
    iget-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 528
    return-void
.end method

.method private blacklist checkNetworkTypeBitmask(J)J
    .registers 9

    .line 10101
    const-wide/32 v0, 0x40000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    .line 10102
    xor-long/2addr p1, v0

    .line 10103
    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    .line 10105
    :cond_f
    return-wide p1
.end method

.method public static blacklist convertNetworkTypeBitmaskToString(J)Ljava/lang/String;
    .registers 4

    .line 10331
    const/4 v0, 0x1

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda3;-><init>(J)V

    .line 10332
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance p1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda4;-><init>()V

    .line 10336
    invoke-interface {p0, p1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 10337
    const-string/jumbo p1, "|"

    invoke-static {p1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 10338
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const-string p0, "UNKNOWN"

    :cond_2e
    return-object p0
.end method

.method public static blacklist convertPremiumCapabilityToString(I)Ljava/lang/String;
    .registers 3

    .line 18465
    packed-switch p0, :pswitch_data_20

    .line 18469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18467
    :pswitch_1d
    const-string p0, "PRIORITIZE_LATENCY"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x22
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist convertPurchaseResultToString(I)Ljava/lang/String;
    .registers 3

    .line 18677
    packed-switch p0, :pswitch_data_4a

    .line 18709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18707
    :pswitch_1d
    const-string p0, "PENDING_NETWORK_SETUP"

    return-object p0

    .line 18705
    :pswitch_20
    const-string p0, "NOT_DEFAULT_DATA_SUBSCRIPTION"

    return-object p0

    .line 18703
    :pswitch_23
    const-string p0, "ENTITLEMENT_CHECK_FAILED"

    return-object p0

    .line 18701
    :pswitch_26
    const-string p0, "NETWORK_NOT_AVAILABLE"

    return-object p0

    .line 18699
    :pswitch_29
    const-string p0, "REQUEST_FAILED"

    return-object p0

    .line 18697
    :pswitch_2c
    const-string p0, "FEATURE_NOT_SUPPORTED"

    return-object p0

    .line 18695
    :pswitch_2f
    const-string p0, "TIMEOUT"

    return-object p0

    .line 18693
    :pswitch_32
    const-string p0, "CARRIER_ERROR"

    return-object p0

    .line 18691
    :pswitch_35
    const-string p0, "CARRIER_DISABLED"

    return-object p0

    .line 18689
    :pswitch_38
    const-string p0, "USER_CANCELED"

    return-object p0

    .line 18687
    :pswitch_3b
    const-string p0, "NOT_FOREGROUND"

    return-object p0

    .line 18685
    :pswitch_3e
    const-string p0, "ALREADY_IN_PROGRESS"

    return-object p0

    .line 18683
    :pswitch_41
    const-string p0, "ALREADY_PURCHASED"

    return-object p0

    .line 18681
    :pswitch_44
    const-string p0, "THROTTLED"

    return-object p0

    .line 18679
    :pswitch_47
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_data_4a
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method private static blacklist createThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 6

    .line 7244
    if-nez p0, :cond_4

    .line 7245
    const/4 p0, 0x0

    return-object p0

    .line 7248
    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 7249
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_1e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_1e} :catch_1f

    return-object v0

    .line 7250
    :catch_1f
    move-exception v0

    .line 7252
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist disableServiceHandleCaching()V
    .registers 1

    .line 17385
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    .line 17386
    return-void
.end method

.method public static blacklist enableServiceHandleCaching()V
    .registers 1

    .line 17394
    const/4 v0, 0x1

    sput-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    .line 17395
    return-void
.end method

.method public static greylist-max-p from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2

    .line 743
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static blacklist getAllNetworkTypes()[I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3117
    sget-object v0, Landroid/telephony/TelephonyManager;->NETWORK_TYPES:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static blacklist getAllNetworkTypesBitmask()J
    .registers 2

    .line 10319
    const-wide/32 v0, 0xdfbff

    return-wide v0
.end method

.method private blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 599
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 600
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 602
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getBitMaskForNetworkType(I)J
    .registers 3

    .line 3383
    packed-switch p0, :pswitch_data_44

    .line 3424
    const-wide/16 v0, 0x0

    return-wide v0

    .line 3418
    :pswitch_6
    const-wide/32 v0, 0x80000

    return-wide v0

    .line 3420
    :pswitch_a
    const-wide/32 v0, 0x20000

    return-wide v0

    .line 3413
    :pswitch_e
    const-wide/32 v0, 0x10000

    return-wide v0

    .line 3385
    :pswitch_12
    const-wide/32 v0, 0x8000

    return-wide v0

    .line 3409
    :pswitch_16
    const-wide/16 v0, 0x4000

    return-wide v0

    .line 3401
    :pswitch_19
    const-wide/16 v0, 0x2000

    return-wide v0

    .line 3416
    :pswitch_1c
    const-wide/16 v0, 0x1000

    return-wide v0

    .line 3399
    :pswitch_1f
    const-wide/16 v0, 0x800

    return-wide v0

    .line 3422
    :pswitch_22
    const-wide/16 v0, 0x400

    return-wide v0

    .line 3407
    :pswitch_25
    const-wide/16 v0, 0x200

    return-wide v0

    .line 3403
    :pswitch_28
    const-wide/16 v0, 0x100

    return-wide v0

    .line 3405
    :pswitch_2b
    const-wide/16 v0, 0x80

    return-wide v0

    .line 3393
    :pswitch_2e
    const-wide/16 v0, 0x40

    return-wide v0

    .line 3397
    :pswitch_31
    const-wide/16 v0, 0x20

    return-wide v0

    .line 3395
    :pswitch_34
    const-wide/16 v0, 0x10

    return-wide v0

    .line 3391
    :pswitch_37
    const-wide/16 v0, 0x8

    return-wide v0

    .line 3411
    :pswitch_3a
    const-wide/16 v0, 0x4

    return-wide v0

    .line 3389
    :pswitch_3d
    const-wide/16 v0, 0x2

    return-wide v0

    .line 3387
    :pswitch_40
    const-wide/16 v0, 0x1

    return-wide v0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_a
        :pswitch_1c
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-p getDefault()Landroid/telephony/TelephonyManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 544
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private blacklist getFirstActivePortIndex(I)I
    .registers 4

    .line 7321
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    .line 7322
    if-eqz v0, :cond_37

    if-ltz p1, :cond_37

    array-length v1, v0

    if-ge p1, v1, :cond_37

    aget-object v1, v0, p1

    if-eqz v1, :cond_37

    .line 7324
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;-><init>()V

    .line 7325
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 7326
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 7327
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result p1

    return p1

    .line 7330
    :cond_37
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist getIOns()Lcom/android/internal/telephony/IOns;
    .registers 2

    .line 6671
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 6672
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getOpportunisticNetworkServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 6673
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 6669
    invoke-static {v0}, Lcom/android/internal/telephony/IOns$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOns;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 4

    .line 6639
    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    .line 6642
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 6643
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 6644
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 6640
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0

    .line 6647
    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_4a

    .line 6650
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 6651
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 6652
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 6648
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6653
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6654
    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_47

    if-nez v2, :cond_45

    if-eqz v0, :cond_45

    .line 6656
    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 6657
    sget-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v2, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41
    .catchall {:try_start_32 .. :try_end_40} :catchall_47

    .line 6661
    goto :goto_45

    .line 6658
    :catch_41
    move-exception v0

    .line 6660
    const/4 v0, 0x0

    :try_start_43
    sput-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 6663
    :cond_45
    :goto_45
    monitor-exit v1

    goto :goto_4a

    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw v0

    .line 6665
    :cond_4a
    :goto_4a
    sget-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method public static greylist-max-r getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 8524
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8525
    if-eqz p0, :cond_1d

    .line 8526
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 8527
    if-ltz p2, :cond_1d

    array-length v0, p0

    if-ge p2, v0, :cond_1d

    aget-object v0, p0, p2

    if-eqz v0, :cond_1d

    .line 8529
    :try_start_15
    aget-object p0, p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1c

    return p0

    .line 8530
    :catch_1c
    move-exception p0

    .line 8535
    :cond_1d
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getLocationData()I
    .registers 4

    .line 17776
    nop

    .line 17777
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 17778
    nop

    .line 17779
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 17780
    if-eqz v0, :cond_1a

    .line 17781
    const/4 v0, 0x0

    return v0

    .line 17782
    :cond_1a
    if-eqz v1, :cond_1e

    .line 17783
    const/4 v0, 0x1

    return v0

    .line 17785
    :cond_1e
    const/4 v0, 0x2

    return v0
.end method

.method private blacklist getLogicalSlotIndex(II)I
    .registers 5

    .line 3800
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    .line 3801
    if-eqz v0, :cond_31

    if-ltz p1, :cond_31

    array-length v1, v0

    if-ge p1, v1, :cond_31

    aget-object v1, v0, p1

    if-eqz v1, :cond_31

    .line 3803
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/UiccPortInfo;

    .line 3804
    invoke-virtual {v0}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v1

    if-ne v1, p2, :cond_30

    .line 3805
    invoke-virtual {v0}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result p1

    return p1

    .line 3807
    :cond_30
    goto :goto_19

    .line 3810
    :cond_31
    const/4 p1, -0x1

    return p1
.end method

.method public static whitelist getMaxNumberVerificationTimeoutMillis()J
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2806
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public static whitelist getMaximumCallComposerPictureSize()J
    .registers 2

    .line 791
    const-wide/32 v0, 0x13880

    return-wide v0
.end method

.method private greylist-max-o getNaiBySubscriberId(I)Ljava/lang/String;
    .registers 7

    .line 2630
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2631
    if-nez v2, :cond_a

    .line 2632
    return-object v1

    .line 2633
    :cond_a
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2634
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 2633
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getNaiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2635
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nai = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_37} :catch_3a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_37} :catch_38

    .line 2638
    :cond_37
    return-object p1

    .line 2641
    :catch_38
    move-exception p1

    .line 2642
    return-object v1

    .line 2639
    :catch_3a
    move-exception p1

    .line 2640
    return-object v1
.end method

.method public static greylist getNetworkTypeName(I)Ljava/lang/String;
    .registers 3

    .line 3328
    packed-switch p0, :pswitch_data_5c

    .line 3372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3368
    :pswitch_1d
    const-string p0, "NR"

    return-object p0

    .line 3366
    :pswitch_20
    const-string p0, "LTE_CA"

    return-object p0

    .line 3364
    :pswitch_23
    const-string p0, "IWLAN"

    return-object p0

    .line 3362
    :pswitch_26
    const-string p0, "TD_SCDMA"

    return-object p0

    .line 3360
    :pswitch_29
    const-string p0, "GSM"

    return-object p0

    .line 3358
    :pswitch_2c
    const-string p0, "HSPA+"

    return-object p0

    .line 3354
    :pswitch_2f
    const-string p0, "CDMA - eHRPD"

    return-object p0

    .line 3352
    :pswitch_32
    const-string p0, "LTE"

    return-object p0

    .line 3348
    :pswitch_35
    const-string p0, "CDMA - EvDo rev. B"

    return-object p0

    .line 3356
    :pswitch_38
    const-string p0, "iDEN"

    return-object p0

    .line 3340
    :pswitch_3b
    const-string p0, "HSPA"

    return-object p0

    .line 3338
    :pswitch_3e
    const-string p0, "HSUPA"

    return-object p0

    .line 3336
    :pswitch_41
    const-string p0, "HSDPA"

    return-object p0

    .line 3350
    :pswitch_44
    const-string p0, "CDMA - 1xRTT"

    return-object p0

    .line 3346
    :pswitch_47
    const-string p0, "CDMA - EvDo rev. A"

    return-object p0

    .line 3344
    :pswitch_4a
    const-string p0, "CDMA - EvDo rev. 0"

    return-object p0

    .line 3342
    :pswitch_4d
    const-string p0, "CDMA"

    return-object p0

    .line 3334
    :pswitch_50
    const-string p0, "UMTS"

    return-object p0

    .line 3332
    :pswitch_53
    const-string p0, "EDGE"

    return-object p0

    .line 3330
    :pswitch_56
    const-string p0, "GPRS"

    return-object p0

    .line 3370
    :pswitch_59
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_data_5c
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private greylist-max-o getOpPackageName()Ljava/lang/String;
    .registers 3

    .line 580
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 581
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 583
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 584
    const/4 v1, 0x0

    if-nez v0, :cond_13

    return-object v1

    .line 586
    :cond_13
    :try_start_13
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_17} :catch_18

    return-object v0

    .line 589
    :catch_18
    move-exception v0

    .line 590
    return-object v1

    .line 587
    :catch_1a
    move-exception v0

    .line 588
    return-object v1
.end method

.method private greylist-max-o getPhoneId()I
    .registers 2

    .line 8367
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private greylist getPhoneId(I)I
    .registers 2

    .line 8382
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    return p1
.end method

.method private blacklist getRenouncedPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    .line 610
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 612
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getServiceStateForSlot(IZZ)Landroid/telephony/ServiceState;
    .registers 10

    .line 13308
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13309
    if-eqz v0, :cond_48

    .line 13310
    nop

    .line 13312
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v5
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_3f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_19

    .line 13310
    move v1, p1

    move v2, p2

    move v3, p3

    :try_start_12
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->getServiceStateForSlot(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_3f
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_16} :catch_17

    return-object p1

    .line 13316
    :catch_17
    move-exception v0

    goto :goto_1b

    :catch_19
    move-exception v0

    move v1, p1

    .line 13317
    :goto_1b
    nop

    .line 13318
    const-string p1, "e2bed88e-def9-476e-bd71-3e572a8de6d1"

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getServiceStateForSlot "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " NPE"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13317
    invoke-static {p1, p2}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_49

    .line 13314
    :catch_3f
    move-exception v0

    move-object p1, v0

    .line 13315
    const-string p2, "TelephonyManager"

    const-string p3, "Error calling ITelephony#getServiceStateForSlot"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13320
    :cond_48
    nop

    .line 13321
    :goto_49
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist getSimApplicationStateFromSimState(I)I
    .registers 2

    .line 3898
    sparse-switch p1, :sswitch_data_8

    .line 3909
    return p1

    .line 3907
    :sswitch_4
    const/4 p1, 0x6

    return p1

    .line 3903
    :sswitch_6
    const/4 p1, 0x0

    return p1

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x5 -> :sswitch_4
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
    .end sparse-switch
.end method

.method private blacklist getSimCardStateFromSimState(I)I
    .registers 2

    .line 3781
    sparse-switch p1, :sswitch_data_8

    .line 3788
    const/16 p1, 0xb

    return p1

    .line 3786
    :sswitch_6
    return p1

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
    .end sparse-switch
.end method

.method public static greylist-max-p getSimCountryIso(I)Ljava/lang/String;
    .registers 1

    .line 4114
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 4115
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getSimCountryIsoForPhone(I)Ljava/lang/String;
    .registers 3

    .line 4125
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_iso_country()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist getSimStateForSlotIndex(I)I
    .registers 3

    .line 18963
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18964
    if-eqz v0, :cond_b

    .line 18965
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ITelephony;->getSimStateForSlotIndex(I)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return p0

    .line 18969
    :cond_b
    goto :goto_25

    .line 18967
    :catch_c
    move-exception p0

    .line 18968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in getSimStateForSlotIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TelephonyManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18970
    :goto_25
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o getSimStateIncludingLoaded()I
    .registers 8

    .line 3683
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    .line 3686
    if-gez v0, :cond_66

    .line 3689
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const-string v4, "getSimState: default sim:"

    const-string v5, "TelephonyManager"

    const/4 v6, 0x1

    if-ge v2, v3, :cond_4b

    .line 3690
    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 3691
    if-eq v3, v6, :cond_48

    .line 3692
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", sim state for slotIndex="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", return state as unknown"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    return v1

    .line 3689
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3697
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", all SIMs absent, return state as absent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    return v6

    .line 3701
    :cond_66
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v0

    return v0
.end method

.method static blacklist getSmsService()Lcom/android/internal/telephony/ISms;
    .registers 4

    .line 17350
    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    .line 17353
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 17354
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 17355
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 17351
    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0

    .line 17358
    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    if-nez v0, :cond_4a

    .line 17361
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 17362
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 17363
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 17359
    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 17364
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 17365
    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_47

    if-nez v2, :cond_45

    if-eqz v0, :cond_45

    .line 17367
    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    .line 17368
    sget-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v2, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41
    .catchall {:try_start_32 .. :try_end_40} :catchall_47

    .line 17372
    goto :goto_45

    .line 17369
    :catch_41
    move-exception v0

    .line 17371
    const/4 v0, 0x0

    :try_start_43
    sput-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    .line 17374
    :cond_45
    :goto_45
    monitor-exit v1

    goto :goto_4a

    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw v0

    .line 17376
    :cond_4a
    :goto_4a
    sget-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    return-object v0
.end method

.method private greylist-max-o getSubId()I
    .registers 2

    .line 8335
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8336
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    return v0

    .line 8338
    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0
.end method

.method private greylist getSubId(I)I
    .registers 3

    .line 8353
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8354
    iget p1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    return p1

    .line 8356
    :cond_b
    return p1
.end method

.method static blacklist getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 4

    .line 17282
    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    .line 17285
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 17286
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 17287
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 17283
    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0

    .line 17290
    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    if-nez v0, :cond_4a

    .line 17293
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 17294
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 17295
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 17291
    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 17296
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 17297
    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_47

    if-nez v2, :cond_45

    if-eqz v0, :cond_45

    .line 17299
    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    .line 17300
    sget-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    invoke-interface {v0}, Lcom/android/internal/telephony/IPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v2, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41
    .catchall {:try_start_32 .. :try_end_40} :catchall_47

    .line 17304
    goto :goto_45

    .line 17301
    :catch_41
    move-exception v0

    .line 17303
    const/4 v0, 0x0

    :try_start_43
    sput-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    .line 17306
    :cond_45
    :goto_45
    monitor-exit v1

    goto :goto_4a

    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw v0

    .line 17308
    :cond_4a
    :goto_4a
    sget-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    return-object v0
.end method

.method static blacklist getSubscriptionService()Lcom/android/internal/telephony/ISub;
    .registers 4

    .line 17316
    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    .line 17319
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 17320
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 17321
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 17317
    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    return-object v0

    .line 17324
    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    if-nez v0, :cond_4a

    .line 17327
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 17328
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 17329
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 17325
    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 17330
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 17331
    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_47

    if-nez v2, :cond_45

    if-eqz v0, :cond_45

    .line 17333
    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    .line 17334
    sget-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v2, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41
    .catchall {:try_start_32 .. :try_end_40} :catchall_47

    .line 17338
    goto :goto_45

    .line 17335
    :catch_41
    move-exception v0

    .line 17337
    const/4 v0, 0x0

    :try_start_43
    sput-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    .line 17340
    :cond_45
    :goto_45
    monitor-exit v1

    goto :goto_4a

    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw v0

    .line 17342
    :cond_4a
    :goto_4a
    sget-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    return-object v0
.end method

.method private static blacklist getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 8612
    nop

    .line 8613
    if-ltz p0, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_e

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_f

    .line 8614
    :cond_e
    const/4 p0, 0x0

    :goto_f
    if-eqz p0, :cond_12

    move-object p2, p0

    :cond_12
    return-object p2
.end method

.method public static greylist getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 8597
    nop

    .line 8598
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8599
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 8600
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 8601
    if-ltz p0, :cond_1f

    array-length v0, p1

    if-ge p0, v0, :cond_1f

    aget-object v0, p1, p0

    if-eqz v0, :cond_1f

    .line 8602
    aget-object p0, p1, p0

    goto :goto_20

    .line 8605
    :cond_1f
    const/4 p0, 0x0

    :goto_20
    if-nez p0, :cond_23

    goto :goto_24

    :cond_23
    move-object p2, p0

    :goto_24
    return-object p2
.end method

.method public static greylist-max-r getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 8627
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8628
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    move-object p1, p0

    :goto_c
    return-object p1
.end method

.method private blacklist hasCapability(Ljava/lang/String;I)Z
    .registers 5

    .line 6883
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 6885
    :cond_6
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    return v1

    .line 6888
    :cond_13
    const-string/jumbo p1, "ro.vendor.api_level"

    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 6893
    const v0, 0x316a4

    if-ge p1, v0, :cond_2c

    .line 6894
    iget-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1

    .line 6896
    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist isDataEnabledForReason(II)Z
    .registers 4

    .line 14496
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14497
    if-eqz v0, :cond_b

    .line 14498
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isDataEnabledForReason(II)Z

    move-result p1

    return p1

    .line 14500
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 14502
    :catch_14
    move-exception p1

    .line 14503
    const-string p2, "TelephonyManager"

    const-string v0, "Telephony#isDataEnabledForReason RemoteException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14504
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 14506
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o isImsiEncryptionRequired(II)Z
    .registers 5

    .line 4765
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4766
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 4767
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 4768
    return v1

    .line 4770
    :cond_e
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 4771
    if-nez p1, :cond_15

    .line 4772
    return v1

    .line 4774
    :cond_15
    const-string v0, "imsi_key_availability_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 4775
    invoke-static {p1, p2}, Landroid/telephony/TelephonyManager;->isKeyEnabled(II)Z

    move-result p1

    return p1
.end method

.method private static greylist-max-o isKeyEnabled(II)Z
    .registers 3

    .line 4756
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    shr-int/2addr p0, p1

    and-int/2addr p0, v0

    .line 4757
    if-ne p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static blacklist isNetworkTypeValid(I)Z
    .registers 2

    .line 18099
    if-ltz p0, :cond_8

    const/16 v0, 0x14

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static blacklist isSlotMappingValid(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)Z"
        }
    .end annotation

    .line 4413
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda12;-><init>()V

    .line 4414
    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 4413
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4415
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4416
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4417
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_36

    .line 4419
    return v2

    .line 4421
    :cond_36
    goto :goto_1b

    .line 4425
    :cond_37
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda13;-><init>()V

    .line 4426
    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    .line 4425
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 4428
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4429
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4430
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_6b

    .line 4432
    return v2

    .line 4434
    :cond_6b
    goto :goto_52

    .line 4435
    :cond_6c
    return v3
.end method

.method public static blacklist isValidAllowedNetworkTypesReason(I)Z
    .registers 1

    .line 10301
    packed-switch p0, :pswitch_data_a

    .line 10310
    const/4 p0, 0x0

    return p0

    .line 10308
    :pswitch_5
    sget-boolean p0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    return p0

    .line 10306
    :pswitch_8
    const/4 p0, 0x1

    return p0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$bootstrapAuthenticationRequest$27(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 2

    .line 18056
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;->onAuthenticationFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$bootstrapAuthenticationRequest$28(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 2

    .line 18086
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;->onAuthenticationFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$convertNetworkTypeBitmaskToString$18(JI)Z
    .registers 5

    .line 10333
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v0

    and-long/2addr p0, v0

    .line 10334
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    .line 10333
    :goto_10
    return p0
.end method

.method static synthetic blacklist lambda$convertNetworkTypeBitmaskToString$19(I)Ljava/lang/String;
    .registers 1

    .line 10336
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getFirstActivePortIndex$8(Landroid/telephony/UiccPortInfo;)Z
    .registers 1

    .line 7325
    invoke-virtual {p0}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$getSimServiceTable$14(Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 9092
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getSimServiceTable: Subscriber Info is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getSimServiceTable$15(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 9108
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getSimServiceTable$16(Landroid/os/OutcomeReceiver;[B)V
    .registers 2

    .line 9111
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getSimServiceTable$17(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V
    .registers 2

    .line 9114
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$isSlotMappingValid$0(Landroid/telephony/UiccSlotMapping;)Ljava/util/List;
    .registers 2

    .line 4427
    invoke-virtual {p0}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$requestCellInfoUpdate$4(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 3

    .line 7171
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager$CellInfoCallback;->onError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCellInfoUpdate$5(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 4

    .line 7170
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCellInfoUpdate$6(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 3

    .line 7239
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager$CellInfoCallback;->onError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCellInfoUpdate$7(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 4

    .line 7238
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestModemActivityInfo$22(Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 13218
    new-instance v0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager$ModemActivityInfoException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNumberVerification$10(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
    .registers 3

    .line 8485
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/NumberVerificationCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNumberVerification$9(Landroid/telephony/NumberVerificationCallback;)V
    .registers 2

    .line 8486
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/telephony/NumberVerificationCallback;->onVerificationFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestUiccIari$11(Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 8765
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "requestUiccIari : Subscriber Info is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestUiccIari$12(Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 8799
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "requestUiccIari : ISIM or USIM application is not exist in UICC"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestUiccIari$13(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V
    .registers 2

    .line 8803
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$setPreferredOpportunisticDataSubscription$23(Ljava/util/function/Consumer;)V
    .registers 3

    .line 15657
    const-wide/32 v0, 0x7c8ba7f

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 15658
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1a

    .line 15660
    :cond_12
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15662
    :goto_1a
    return-void
.end method

.method static synthetic blacklist lambda$setPreferredOpportunisticDataSubscription$24(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    .line 15656
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$setSimPowerStateForSlot$20(Ljava/util/function/Consumer;)V
    .registers 2

    .line 12668
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$setSimPowerStateForSlot$21(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    .line 12667
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda29;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$updateAvailableNetworks$25(Ljava/util/function/Consumer;)V
    .registers 3

    .line 15758
    const-wide/32 v0, 0x7c8ba7f

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 15759
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1b

    .line 15761
    :cond_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15763
    :goto_1b
    return-void
.end method

.method static synthetic blacklist lambda$updateAvailableNetworks$26(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    .line 15757
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda17;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$uploadCallComposerPicture$1(Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .registers 10

    .line 4955
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4956
    const-string v1, "Uploading call composer picture on main thread! hic sunt dracones!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4959
    :cond_11
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v1

    .line 4960
    invoke-static {}, Landroid/telephony/TelephonyManager;->getMaximumCallComposerPictureSize()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_28

    .line 4961
    new-instance p1, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-direct {p1, p3, p4}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p2, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 4963
    return-void

    .line 4965
    :cond_28
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2f} :catch_5a

    .line 4967
    :try_start_2f
    new-instance v1, Landroid/telephony/TelephonyManager$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/TelephonyManager$2;-><init>(Landroid/telephony/TelephonyManager;Ljava/io/InputStream;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {p0, p1, p3, p4, v1}, Landroid/telephony/TelephonyManager;->uploadCallComposerPicture(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_5a

    .line 5003
    goto :goto_59

    .line 4993
    :catch_38
    move-exception p3

    .line 4994
    :try_start_39
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got exception calling into stream-version of uploadCallComposerPicture: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4f} :catch_5a

    .line 4997
    :try_start_4f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 5002
    goto :goto_59

    .line 4998
    :catch_53
    move-exception p1

    .line 5000
    :try_start_54
    const-string p1, "Error closing file input stream when uploading call composer pic"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_59} :catch_5a

    .line 5008
    :goto_59
    goto :goto_7a

    .line 5004
    :catch_5a
    move-exception p1

    .line 5005
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "IOException when uploading call composer pic:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5006
    new-instance p3, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 p4, 0x5

    invoke-direct {p3, p4, p1}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p2, p3}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 5009
    :goto_7a
    return-void
.end method

.method static synthetic blacklist lambda$uploadCallComposerPicture$2(Landroid/os/OutcomeReceiver;Ljava/io/IOException;)V
    .registers 4

    .line 5068
    new-instance v0, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$uploadCallComposerPicture$3(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 14

    .line 5104
    const-string v0, "Error closing fd pipe: "

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    const-string v2, "TelephonyManager"

    if-eqz v1, :cond_13

    .line 5105
    const-string v1, "Uploading call composer picture on main thread! hic sunt dracones!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5109
    :cond_13
    nop

    .line 5110
    const/16 v1, 0x4000

    new-array v1, v1, [B

    const/4 v3, 0x0

    move v4, v3

    .line 5115
    :goto_1a
    :try_start_1a
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_99
    .catchall {:try_start_1a .. :try_end_1e} :catchall_97

    .line 5129
    nop

    .line 5131
    if-gez v5, :cond_23

    .line 5132
    goto/16 :goto_d5

    .line 5135
    :cond_23
    add-int/2addr v4, v5

    .line 5136
    int-to-long v6, v4

    :try_start_25
    invoke-static {}, Landroid/telephony/TelephonyManager;->getMaximumCallComposerPictureSize()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_6b

    .line 5137
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read too many bytes from call composer pic stream: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_97

    .line 5140
    :try_start_43
    new-instance p0, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p1, p0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 5142
    const-string/jumbo p0, "too large"

    invoke-virtual {p2, p0}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_53} :catch_55
    .catchall {:try_start_43 .. :try_end_53} :catchall_97

    .line 5146
    goto/16 :goto_d5

    .line 5143
    :catch_55
    move-exception p0

    .line 5145
    :try_start_56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_97

    .line 5147
    goto :goto_d5

    .line 5151
    :cond_6b
    :try_start_6b
    invoke-virtual {p3, v1, v3, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_70
    .catchall {:try_start_6b .. :try_end_6e} :catchall_97

    .line 5162
    nop

    .line 5163
    goto :goto_1a

    .line 5152
    :catch_70
    move-exception p0

    .line 5153
    :try_start_71
    new-instance v1, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p0}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p1, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_97

    .line 5156
    :try_start_7a
    const-string/jumbo p0, "remote end closed"

    invoke-virtual {p2, p0}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_80} :catch_81
    .catchall {:try_start_7a .. :try_end_80} :catchall_97

    .line 5160
    goto :goto_96

    .line 5157
    :catch_81
    move-exception p0

    .line 5159
    :try_start_82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5161
    :goto_96
    goto :goto_d5

    .line 5165
    :catchall_97
    move-exception p0

    goto :goto_dc

    .line 5116
    :catch_99
    move-exception p0

    .line 5117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException reading from input while uploading pic: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5120
    new-instance v1, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v3, 0x4

    invoke-direct {v1, v3, p0}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p1, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_b9
    .catchall {:try_start_82 .. :try_end_b9} :catchall_97

    .line 5123
    :try_start_b9
    const-string p0, "input closed"

    invoke-virtual {p2, p0}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_be} :catch_bf
    .catchall {:try_start_b9 .. :try_end_be} :catchall_97

    .line 5127
    goto :goto_d4

    .line 5124
    :catch_bf
    move-exception p0

    .line 5126
    :try_start_c0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_c0 .. :try_end_d4} :catchall_97

    .line 5128
    :goto_d4
    nop

    .line 5166
    :goto_d5
    :try_start_d5
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_d9

    .line 5169
    goto :goto_db

    .line 5167
    :catch_d9
    move-exception p0

    .line 5170
    nop

    .line 5171
    :goto_db
    return-void

    .line 5166
    :goto_dc
    :try_start_dc
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_e0

    .line 5169
    goto :goto_e1

    .line 5167
    :catch_e0
    move-exception p1

    .line 5170
    :goto_e1
    throw p0
.end method

.method private blacklist mergeAttributionAndRenouncedPermissions(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;
    .registers 5

    .line 550
    nop

    .line 551
    if-eqz p1, :cond_59

    .line 552
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 553
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    goto :goto_1b

    .line 555
    :cond_1a
    move-object v0, p1

    .line 558
    :goto_1b
    nop

    .line 559
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object p2

    .line 560
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    .line 561
    invoke-virtual {p1}, Landroid/content/Context;->getParams()Landroid/content/ContextParams;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 562
    new-instance v1, Landroid/content/ContextParams$Builder;

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getParams()Landroid/content/ContextParams;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/ContextParams$Builder;-><init>(Landroid/content/ContextParams;)V

    .line 564
    invoke-virtual {v1, p2}, Landroid/content/ContextParams$Builder;->setRenouncedPermissions(Ljava/util/Set;)Landroid/content/ContextParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object p1

    .line 562
    invoke-virtual {v0, p1}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object p2

    goto :goto_59

    .line 566
    :cond_46
    new-instance p1, Landroid/content/ContextParams$Builder;

    invoke-direct {p1}, Landroid/content/ContextParams$Builder;-><init>()V

    .line 568
    invoke-virtual {p1, p2}, Landroid/content/ContextParams$Builder;->setRenouncedPermissions(Ljava/util/Set;)Landroid/content/ContextParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object p1

    .line 566
    invoke-virtual {v0, p1}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object p2

    goto :goto_59

    .line 560
    :cond_58
    move-object p2, v0

    .line 572
    :cond_59
    :goto_59
    return-object p2
.end method

.method public static greylist-max-r putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .registers 11

    .line 8556
    nop

    .line 8557
    nop

    .line 8558
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8560
    const v1, 0x7fffffff

    if-eq p2, v1, :cond_8e

    .line 8563
    if-ltz p2, :cond_74

    .line 8566
    const-string v1, ","

    if-eqz v0, :cond_16

    .line 8567
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 8566
    :cond_16
    const/4 v0, 0x0

    .line 8571
    :goto_17
    const-string v2, ""

    const/4 v3, 0x0

    move-object v4, v2

    :goto_1b
    if-ge v3, p2, :cond_3f

    .line 8572
    nop

    .line 8573
    if-eqz v0, :cond_26

    array-length v5, v0

    if-ge v3, v5, :cond_26

    .line 8574
    aget-object v5, v0, v3

    goto :goto_27

    .line 8576
    :cond_26
    move-object v5, v2

    :goto_27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8571
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 8579
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 8582
    if-eqz v0, :cond_6f

    .line 8583
    :goto_52
    add-int/lit8 p2, p2, 0x1

    array-length v2, v0

    if-ge p2, v2, :cond_6f

    .line 8584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget-object v2, v0, p2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_52

    .line 8587
    :cond_6f
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 8564
    :cond_74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "putIntAtIndex index < 0 index="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8561
    :cond_8e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "putIntAtIndex index == MAX_VALUE index="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist resetServiceCache()V
    .registers 5

    .line 17256
    sget-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 17257
    :try_start_3
    sget-object v1, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    .line 17258
    sget-object v1, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 17259
    sput-object v2, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 17261
    :cond_16
    sget-object v1, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    if-eqz v1, :cond_2a

    .line 17262
    sget-object v1, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 17263
    sput-object v2, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    .line 17264
    invoke-static {}, Landroid/telephony/SubscriptionManager;->clearCaches()V

    .line 17266
    :cond_2a
    sget-object v1, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_3b

    .line 17267
    sget-object v1, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 17268
    sput-object v2, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    .line 17270
    :cond_3b
    sget-object v1, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_4c

    .line 17271
    sget-object v1, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 17272
    sput-object v2, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    .line 17274
    :cond_4c
    monitor-exit v0

    .line 17275
    return-void

    .line 17274
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private static blacklist runOnBackgroundThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 629
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_7} :catch_9

    .line 633
    nop

    .line 634
    return-void

    .line 630
    :catch_9
    move-exception p0

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to post a callback from the caller\'s thread context."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist setDataEnabledForReason(IIZ)V
    .registers 6

    .line 14448
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14449
    if-eqz v0, :cond_e

    .line 14450
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/ITelephony;->setDataEnabledForReason(IIZLjava/lang/String;)V

    .line 14457
    goto :goto_22

    .line 14452
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    .line 14454
    :catch_17
    move-exception p1

    .line 14455
    const-string p2, "TelephonyManager"

    const-string p3, "Telephony#setDataEnabledForReason RemoteException"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14456
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 14458
    :goto_22
    return-void
.end method

.method private blacklist setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 16375
    if-nez p3, :cond_4

    const/4 p2, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Landroid/telephony/TelephonyManager$14;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/TelephonyManager$14;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    move-object p2, v0

    .line 16388
    :goto_a
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p3

    .line 16389
    if-eqz p3, :cond_17

    .line 16390
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-interface {p3, p1, v0, p2}, Lcom/android/internal/telephony/ITelephony;->setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    .line 16394
    :cond_17
    goto :goto_31

    .line 16392
    :catch_18
    move-exception p1

    .line 16393
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Telephony#setSystemSelectionChannels RemoteException"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TelephonyManager"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16395
    :goto_31
    return-void
.end method

.method public static blacklist setupIPhoneSubInfoForTest(Lcom/android/internal/telephony/IPhoneSubInfo;)V
    .registers 2

    .line 17413
    sget-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 17414
    :try_start_3
    sput-object p0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    .line 17415
    monitor-exit v0

    .line 17416
    return-void

    .line 17415
    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static blacklist setupISmsForTest(Lcom/android/internal/telephony/ISms;)V
    .registers 2

    .line 17437
    sget-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 17438
    :try_start_3
    sput-object p0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    .line 17439
    monitor-exit v0

    .line 17440
    return-void

    .line 17439
    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static blacklist setupISubForTest(Lcom/android/internal/telephony/ISub;)V
    .registers 2

    .line 17425
    sget-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 17426
    :try_start_3
    sput-object p0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    .line 17427
    monitor-exit v0

    .line 17428
    return-void

    .line 17427
    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static blacklist setupITelephonyForTest(Lcom/android/internal/telephony/ITelephony;)V
    .registers 1

    .line 17403
    sput-object p0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 17404
    return-void
.end method

.method public static blacklist simStateToString(I)Ljava/lang/String;
    .registers 3

    .line 19578
    packed-switch p0, :pswitch_data_42

    .line 19604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19602
    :pswitch_1d
    const-string p0, "PRESENT"

    return-object p0

    .line 19600
    :pswitch_20
    const-string p0, "LOADED"

    return-object p0

    .line 19598
    :pswitch_23
    const-string p0, "CARD_RESTRICTED"

    return-object p0

    .line 19596
    :pswitch_26
    const-string p0, "CARD_IO_ERROR"

    return-object p0

    .line 19594
    :pswitch_29
    const-string p0, "PERM_DISABLED"

    return-object p0

    .line 19592
    :pswitch_2c
    const-string p0, "NOT_READY"

    return-object p0

    .line 19590
    :pswitch_2f
    const-string p0, "READY"

    return-object p0

    .line 19588
    :pswitch_32
    const-string p0, "NETWORK_LOCKED"

    return-object p0

    .line 19586
    :pswitch_35
    const-string p0, "PUK_REQUIRED"

    return-object p0

    .line 19584
    :pswitch_38
    const-string p0, "PIN_REQUIRED"

    return-object p0

    .line 19582
    :pswitch_3b
    const-string p0, "ABSENT"

    return-object p0

    .line 19580
    :pswitch_3e
    const-string p0, "UNKNOWN"

    return-object p0

    nop

    :pswitch_data_42
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public static blacklist srvccStateToString(I)Ljava/lang/String;
    .registers 3

    .line 381
    packed-switch p0, :pswitch_data_2c

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 391
    :pswitch_1d
    const-string p0, "CANCELED"

    return-object p0

    .line 389
    :pswitch_20
    const-string p0, "FAILED"

    return-object p0

    .line 387
    :pswitch_23
    const-string p0, "COMPLETED"

    return-object p0

    .line 385
    :pswitch_26
    const-string p0, "STARTED"

    return-object p0

    .line 383
    :pswitch_29
    const-string p0, "NONE"

    return-object p0

    :pswitch_data_2c
    .packed-switch -0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private static blacklist updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 8495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8496
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-gt p0, p1, :cond_10

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 8497
    :cond_10
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8498
    return-object v0
.end method


# virtual methods
.method public blacklist addDevicePolicyOverrideApn(Landroid/content/Context;Landroid/telephony/data/ApnSetting;)I
    .registers 4

    .line 16229
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->toContentValues()Landroid/content/ContentValues;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 16231
    nop

    .line 16232
    if-eqz p1, :cond_37

    .line 16234
    :try_start_11
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_19} :catch_1a

    .line 16238
    goto :goto_38

    .line 16235
    :catch_1a
    move-exception p2

    .line 16236
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse inserted override APN id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 16237
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16236
    const-string p2, "TelephonyManager"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16240
    :cond_37
    const/4 p1, -0x1

    :goto_38
    return p1
.end method

.method public greylist answerRingingCall()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10985
    return-void
.end method

.method public whitelist bootstrapAuthenticationRequest(ILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18054
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18055
    if-nez v0, :cond_f

    .line 18056
    new-instance p1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p6}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    invoke-interface {p5, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18058
    return-void

    .line 18060
    :cond_f
    nop

    .line 18061
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    new-instance v6, Landroid/telephony/TelephonyManager$19;

    invoke-direct {v6, p0, p5, p6}, Landroid/telephony/TelephonyManager$19;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    .line 18060
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_21

    .line 18087
    goto :goto_32

    .line 18084
    :catch_21
    move-exception v0

    move-object p1, v0

    .line 18085
    const-string p2, "TelephonyManager"

    const-string p3, "Error calling ITelephony#bootstrapAuthenticationRequest"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18086
    new-instance p1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, p6}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    invoke-interface {p5, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18088
    :goto_32
    return-void
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10955
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10956
    if-eqz v0, :cond_9

    .line 10957
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 10960
    :cond_9
    goto :goto_12

    .line 10958
    :catch_a
    move-exception p1

    .line 10959
    const-string p2, "TelephonyManager"

    const-string v0, "Error calling ITelephony#call"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10961
    :goto_12
    return-void
.end method

.method public whitelist canChangeDtmfToneLength()Z
    .registers 6

    .line 12171
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12172
    if-eqz v1, :cond_24

    .line 12173
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 12174
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 12173
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_16} :catch_17

    return v0

    .line 12178
    :catch_17
    move-exception v1

    .line 12179
    const-string v2, "Permission error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 12176
    :catch_1e
    move-exception v1

    .line 12177
    const-string v2, "Error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12180
    :cond_24
    nop

    .line 12181
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canConnectTo5GInDsdsMode()Z
    .registers 3

    .line 17448
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17449
    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 17451
    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->canConnectTo5GInDsdsMode()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_d

    return v0

    .line 17454
    :catch_d
    move-exception v0

    .line 17455
    return v1

    .line 17452
    :catch_f
    move-exception v0

    .line 17453
    return v1
.end method

.method public whitelist changeIccLockPin(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17042
    const-string v0, "changeIccLockPin oldPin can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17043
    const-string v0, "changeIccLockPin newPin can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17045
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17046
    if-eqz v0, :cond_32

    .line 17047
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 17048
    const p2, 0x7fffffff

    if-ne p1, p2, :cond_24

    .line 17049
    new-instance p1, Landroid/telephony/PinResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/telephony/PinResult;-><init>(II)V

    return-object p1

    .line 17050
    :cond_24
    if-gez p1, :cond_2b

    .line 17051
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object p1

    return-object p1

    .line 17053
    :cond_2b
    new-instance p2, Landroid/telephony/PinResult;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1}, Landroid/telephony/PinResult;-><init>(II)V

    return-object p2

    .line 17056
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3b} :catch_3b

    .line 17058
    :catch_3b
    move-exception p1

    .line 17059
    const-string p2, "TelephonyManager"

    const-string v0, "changeIccLockPin RemoteException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17060
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17062
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object p1

    return-object p1
.end method

.method public whitelist checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10662
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10663
    if-eqz v1, :cond_1e

    .line 10664
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackage(ILjava/lang/String;)I

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_11

    return p1

    .line 10667
    :catch_11
    move-exception p1

    .line 10668
    const-string v1, "checkCarrierPrivilegesForPackage NPE"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 10665
    :catch_18
    move-exception p1

    .line 10666
    const-string v1, "checkCarrierPrivilegesForPackage RemoteException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10669
    :cond_1e
    nop

    .line 10670
    :goto_1f
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10683
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10684
    if-eqz v1, :cond_1a

    .line 10685
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_d

    return p1

    .line 10688
    :catch_d
    move-exception p1

    .line 10689
    const-string v1, "checkCarrierPrivilegesForPackageAnyPhone NPE"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 10686
    :catch_14
    move-exception p1

    .line 10687
    const-string v1, "checkCarrierPrivilegesForPackageAnyPhone RemoteException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10690
    :cond_1a
    nop

    .line 10691
    :goto_1b
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist clearRadioPowerOffForReason(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11515
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11516
    if-eqz v0, :cond_19

    .line 11517
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->clearRadioPowerOffForReason(II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 11526
    goto :goto_2c

    .line 11518
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is not available."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11521
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_21

    .line 11523
    :catch_21
    move-exception p1

    .line 11524
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#clearRadioPowerOffForReason"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11525
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 11527
    :goto_2c
    return-void
.end method

.method public whitelist clearSignalStrengthUpdateRequest(Landroid/telephony/SignalStrengthUpdateRequest;)V
    .registers 5

    .line 18179
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18182
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18183
    if-eqz v0, :cond_17

    .line 18184
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    .line 18188
    :cond_17
    goto :goto_20

    .line 18186
    :catch_18
    move-exception p1

    .line 18187
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#clearSignalStrengthUpdateRequest"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18189
    :goto_20
    return-void
.end method

.method public whitelist createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;
    .registers 4

    .line 765
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriptionId(Landroid/telecom/PhoneAccountHandle;)I

    move-result p1

    .line 766
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 767
    const/4 p1, 0x0

    return-object p1

    .line 769
    :cond_c
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist createForSubscriptionId(I)Landroid/telephony/TelephonyManager;
    .registers 4

    .line 753
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist dial(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10933
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10934
    if-eqz v0, :cond_9

    .line 10935
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 10938
    :cond_9
    goto :goto_12

    .line 10936
    :catch_a
    move-exception p1

    .line 10937
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#dial"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10939
    :goto_12
    return-void
.end method

.method public whitelist disableDataConnectivity()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11700
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11701
    if-eqz v0, :cond_f

    .line 11702
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    .line 11705
    :cond_f
    goto :goto_18

    .line 11703
    :catch_10
    move-exception v0

    .line 11704
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#disableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11706
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o disableIms(I)V
    .registers 4

    .line 9169
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9170
    if-eqz v0, :cond_9

    .line 9171
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableIms(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 9176
    :cond_9
    goto :goto_27

    .line 9173
    :catch_a
    move-exception p1

    .line 9174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableIms, RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9175
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9174
    const-string v0, "TelephonyManager"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9177
    :goto_27
    return-void
.end method

.method public greylist-max-o disableVisualVoicemailSmsFilter(I)V
    .registers 4

    .line 5828
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5829
    if-eqz v0, :cond_13

    .line 5830
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_13

    .line 5833
    :catch_10
    move-exception p1

    goto :goto_14

    .line 5832
    :catch_12
    move-exception p1

    .line 5834
    :cond_13
    :goto_13
    nop

    .line 5835
    :goto_14
    return-void
.end method

.method public whitelist doesSwitchMultiSimConfigTriggerReboot()Z
    .registers 5

    .line 16009
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16010
    if-eqz v0, :cond_17

    .line 16011
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 16012
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 16011
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return v0

    .line 16016
    :cond_17
    goto :goto_20

    .line 16014
    :catch_18
    move-exception v0

    .line 16015
    const-string v1, "TelephonyManager"

    const-string v2, "doesSwitchMultiSimConfigTriggerReboot RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16017
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableDataConnectivity()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11681
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11682
    if-eqz v0, :cond_f

    .line 11683
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    .line 11686
    :cond_f
    goto :goto_18

    .line 11684
    :catch_10
    move-exception v0

    .line 11685
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11687
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o enableIms(I)V
    .registers 4

    .line 9152
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9153
    if-eqz v0, :cond_9

    .line 9154
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableIms(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 9159
    :cond_9
    goto :goto_27

    .line 9156
    :catch_a
    move-exception p1

    .line 9157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableIms, RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9158
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9157
    const-string v0, "TelephonyManager"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9160
    :goto_27
    return-void
.end method

.method public whitelist enableModemForSlot(IZ)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15787
    nop

    .line 15789
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 15790
    if-eqz v1, :cond_d

    .line 15791
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->enableModemForSlot(IZ)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_e

    move v0, p1

    .line 15795
    :cond_d
    goto :goto_16

    .line 15793
    :catch_e
    move-exception p1

    .line 15794
    const-string p2, "TelephonyManager"

    const-string v1, "enableModem RemoteException"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15796
    :goto_16
    return v0
.end method

.method public whitelist enableVideoCalling(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12125
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12126
    if-eqz v0, :cond_9

    .line 12127
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableVideoCalling(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 12130
    :cond_9
    goto :goto_12

    .line 12128
    :catch_a
    move-exception p1

    .line 12129
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#enableVideoCalling"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12131
    :goto_12
    return-void
.end method

.method public greylist-max-o enableVisualVoicemailSmsFilter(ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .registers 5

    .line 5804
    if-eqz p2, :cond_17

    .line 5808
    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5809
    if-eqz v0, :cond_15

    .line 5810
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_15

    .line 5814
    :catch_12
    move-exception p1

    goto :goto_16

    .line 5813
    :catch_14
    move-exception p1

    .line 5815
    :cond_15
    :goto_15
    nop

    .line 5816
    :goto_16
    return-void

    .line 5805
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Settings cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist endCall()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10972
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o factoryReset(I)V
    .registers 5

    .line 13006
    :try_start_0
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factoryReset: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13007
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13008
    if-eqz v0, :cond_25

    .line 13009
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->factoryReset(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    .line 13012
    :cond_25
    goto :goto_27

    .line 13011
    :catch_26
    move-exception p1

    .line 13013
    :goto_27
    return-void
.end method

.method public blacklist filterEmergencyNumbersByCategories(Ljava/util/Map;I)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation

    .line 15344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15345
    if-eqz p1, :cond_44

    .line 15346
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 15347
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 15349
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 15350
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/emergency/EmergencyNumber;

    .line 15351
    invoke-virtual {v5, p2}, Landroid/telephony/emergency/EmergencyNumber;->isInEmergencyServiceCategories(I)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 15352
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15354
    :cond_3f
    goto :goto_2a

    .line 15355
    :cond_40
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15357
    goto :goto_f

    .line 15359
    :cond_44
    return-object v0
.end method

.method public whitelist getActiveModemCount()I
    .registers 3

    .line 690
    nop

    .line 691
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_28

    goto :goto_27

    .line 693
    :pswitch_e
    nop

    .line 695
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDeviceVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-nez v0, :cond_27

    .line 696
    const/4 v1, 0x0

    goto :goto_27

    .line 704
    :pswitch_23
    const/4 v1, 0x3

    goto :goto_27

    .line 701
    :pswitch_25
    nop

    .line 702
    const/4 v1, 0x2

    .line 707
    :cond_27
    :goto_27
    return v1

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_23
        :pswitch_e
    .end packed-switch
.end method

.method public greylist-max-o getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 3

    .line 5871
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5872
    if-eqz v0, :cond_e

    .line 5873
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 5876
    :catch_b
    move-exception p1

    goto :goto_f

    .line 5875
    :catch_d
    move-exception p1

    .line 5877
    :cond_e
    nop

    .line 5879
    :goto_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getAidForAppType(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13703
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getAidForAppType(II)Ljava/lang/String;
    .registers 4

    .line 13712
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13713
    if-eqz v0, :cond_b

    .line 13714
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getAidForAppType(II)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object p1

    .line 13718
    :cond_b
    goto :goto_14

    .line 13716
    :catch_c
    move-exception p1

    .line 13717
    const-string p2, "TelephonyManager"

    const-string v0, "Error calling ITelephony#getAidForAppType"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13719
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getAllCellInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 7036
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 7037
    if-nez v1, :cond_8

    .line 7038
    return-object v0

    .line 7039
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    .line 7041
    :catch_15
    move-exception v1

    goto :goto_19

    .line 7040
    :catch_17
    move-exception v1

    .line 7042
    nop

    .line 7043
    :goto_19
    return-object v0
.end method

.method public whitelist getAllowedCarriers(I)Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13968
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 13969
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCarrierRestrictionRules()Landroid/telephony/CarrierRestrictionRules;

    move-result-object p1

    .line 13970
    if-eqz p1, :cond_11

    .line 13971
    invoke-virtual {p1}, Landroid/telephony/CarrierRestrictionRules;->getAllowedCarriers()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 13974
    :cond_11
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method

.method public whitelist getAllowedNetworkTypes()J
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9625
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9626
    if-eqz v0, :cond_10

    .line 9627
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getAllowedNetworkTypesForReason(II)J

    move-result-wide v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-wide v0

    .line 9632
    :cond_10
    goto :goto_19

    .line 9630
    :catch_11
    move-exception v0

    .line 9631
    const-string v1, "TelephonyManager"

    const-string v2, "getAllowedNetworkTypes RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9633
    :goto_19
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getAllowedNetworkTypesBitmask()J
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9595
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9596
    if-eqz v0, :cond_10

    .line 9597
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getAllowedNetworkTypesBitmask(I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_11

    int-to-long v0, v0

    return-wide v0

    .line 9601
    :cond_10
    goto :goto_19

    .line 9599
    :catch_11
    move-exception v0

    .line 9600
    const-string v1, "TelephonyManager"

    const-string v2, "getAllowedNetworkTypesBitmask RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9602
    :goto_19
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getAllowedNetworkTypesForReason(I)J
    .registers 4

    .line 10279
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 10284
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10285
    if-eqz v0, :cond_15

    .line 10286
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getAllowedNetworkTypesForReason(II)J

    move-result-wide v0

    return-wide v0

    .line 10288
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1e} :catch_1e

    .line 10290
    :catch_1e
    move-exception p1

    .line 10291
    const-string v0, "TelephonyManager"

    const-string v1, "getAllowedNetworkTypesForReason RemoteException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10292
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10294
    const-wide/16 v0, -0x1

    return-wide v0

    .line 10280
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid AllowedNetworkTypesReason."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAndUpdateDefaultRespondViaMessageApplication()Landroid/content/ComponentName;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12798
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12799
    if-eqz v0, :cond_10

    .line 12800
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDefaultRespondViaMessageApplication(IZ)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v0

    .line 12804
    :cond_10
    goto :goto_2a

    .line 12802
    :catch_11
    move-exception v0

    .line 12803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getAndUpdateDefaultRespondViaMessageApplication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12805
    :goto_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAvailableNetworks()Lcom/android/internal/telephony/CellNetworkScanResult;
    .registers 6

    .line 9691
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9692
    if-eqz v1, :cond_26

    .line 9693
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9694
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 9693
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_18} :catch_19

    return-object v0

    .line 9698
    :catch_19
    move-exception v1

    .line 9699
    const-string v2, "getAvailableNetworks NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 9696
    :catch_20
    move-exception v1

    .line 9697
    const-string v2, "getAvailableNetworks RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9700
    :cond_26
    nop

    .line 9701
    :goto_27
    new-instance v0, Lcom/android/internal/telephony/CellNetworkScanResult;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CellNetworkScanResult;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public greylist-max-o getBasebandVersion()Ljava/lang/String;
    .registers 2

    .line 12698
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 12699
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getBasebandVersionForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBasebandVersionForPhone(I)Ljava/lang/String;
    .registers 4

    .line 12709
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public whitelist getCallComposerStatus()I
    .registers 4

    .line 10912
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10913
    if-eqz v0, :cond_f

    .line 10914
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCallComposerStatus(I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    .line 10919
    :cond_f
    goto :goto_1b

    .line 10916
    :catch_10
    move-exception v0

    .line 10917
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getCallComposerStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10918
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10920
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallForwarding(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16540
    if-ltz p1, :cond_24

    const/4 v0, 0x5

    if-gt p1, v0, :cond_24

    .line 16545
    new-instance v0, Landroid/telephony/TelephonyManager$15;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/TelephonyManager$15;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;)V

    .line 16562
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p2

    .line 16563
    if-eqz p2, :cond_17

    .line 16564
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result p3

    invoke-interface {p2, p3, p1, v0}, Lcom/android/internal/telephony/ITelephony;->getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    .line 16569
    :cond_17
    goto :goto_23

    .line 16566
    :catch_18
    move-exception p1

    .line 16567
    const-string p2, "TelephonyManager"

    const-string p3, "getCallForwarding RemoteException"

    invoke-static {p2, p3, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16568
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16570
    :goto_23
    return-void

    .line 16542
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callForwardingReason is out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getCallState()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6454
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 6455
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 6456
    if-eqz v0, :cond_15

    .line 6457
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v0

    return v0

    .line 6460
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getCallState(I)I
    .registers 6

    .line 6500
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6501
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 6502
    return v1

    .line 6505
    :cond_8
    :try_start_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 6506
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6505
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return p1

    .line 6507
    :catch_19
    move-exception p1

    .line 6508
    return v1
.end method

.method public whitelist getCallStateForSubscription()I
    .registers 2

    .line 6479
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public whitelist getCallWaitingStatus(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 16745
    const-string v0, "TelephonyManager"

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16746
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16748
    new-instance v1, Landroid/telephony/TelephonyManager$17;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/TelephonyManager$17;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 16757
    :try_start_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    .line 16758
    if-eqz p1, :cond_2b

    .line 16759
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result p2

    invoke-interface {p1, p2, v1}, Lcom/android/internal/telephony/ITelephony;->getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1a} :catch_1b

    goto :goto_2b

    .line 16764
    :catch_1b
    move-exception p1

    .line 16765
    const-string p2, "getCallWaitingStatus NPE"

    invoke-static {v0, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16766
    throw p1

    .line 16761
    :catch_22
    move-exception p1

    .line 16762
    const-string p2, "getCallWaitingStatus RemoteException"

    invoke-static {v0, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16763
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16767
    :cond_2b
    :goto_2b
    nop

    .line 16768
    return-void
.end method

.method public whitelist getCardIdForDefaultEuicc()I
    .registers 5

    .line 4256
    const/4 v0, -0x2

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4257
    if-nez v1, :cond_8

    .line 4258
    return v0

    .line 4260
    :cond_8
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCardIdForDefaultEuicc(ILjava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    .line 4261
    :catch_15
    move-exception v1

    .line 4262
    return v0
.end method

.method public whitelist getCarrierConfig()Landroid/os/PersistableBundle;
    .registers 3

    .line 2910
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    .line 2911
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2912
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCarrierIdFromCarrierIdentifier(Landroid/service/carrier/CarrierIdentifier;)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19676
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19677
    if-eqz v0, :cond_b

    .line 19678
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdFromIdentifier(Landroid/service/carrier/CarrierIdentifier;)I

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return p1

    .line 19682
    :cond_b
    goto :goto_d

    .line 19680
    :catch_c
    move-exception p1

    .line 19683
    :goto_d
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist getCarrierIdFromMccMnc(Ljava/lang/String;)I
    .registers 5

    .line 13651
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13652
    if-eqz v0, :cond_10

    .line 13653
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return p1

    .line 13657
    :cond_10
    goto :goto_12

    .line 13655
    :catch_11
    move-exception p1

    .line 13658
    :goto_12
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist getCarrierIdFromSimMccMnc()I
    .registers 5

    .line 13622
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13623
    if-eqz v0, :cond_14

    .line 13624
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    return v0

    .line 13628
    :cond_14
    goto :goto_16

    .line 13626
    :catch_15
    move-exception v0

    .line 13629
    :goto_16
    const/4 v0, -0x1

    return v0
.end method

.method public greylist getCarrierIdListVersion()I
    .registers 3

    .line 14767
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14768
    if-eqz v0, :cond_f

    .line 14769
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdListVersion(I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    .line 14773
    :cond_f
    goto :goto_11

    .line 14771
    :catch_10
    move-exception v0

    .line 14774
    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4691
    const-string v0, "IMSI error: key is required but not found"

    const-string v1, "TelephonyManager"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    .line 4692
    if-nez v3, :cond_11

    .line 4693
    const-string p1, "IMSI error: Subscriber Info is null"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4694
    return-object v2

    .line 4696
    :cond_11
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v4

    .line 4697
    const/4 v5, 0x1

    if-eq p1, v5, :cond_28

    const/4 v5, 0x2

    if-ne p1, v5, :cond_20

    goto :goto_28

    .line 4698
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "IMSI error: Invalid key type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4700
    :cond_28
    :goto_28
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4701
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4700
    invoke-interface {v3, v4, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCarrierInfoForImsiEncryption(IILjava/lang/String;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v3

    .line 4702
    if-nez v3, :cond_44

    invoke-direct {p0, v4, p1}, Landroid/telephony/TelephonyManager;->isImsiEncryptionRequired(II)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_44

    .line 4703
    :cond_3b
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4704
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_44} :catch_5d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_44} :catch_45

    .line 4706
    :cond_44
    :goto_44
    return-object v3

    .line 4709
    :catch_45
    move-exception p1

    .line 4711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierInfoForImsiEncryption NullPointerException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 4707
    :catch_5d
    move-exception p1

    .line 4708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierInfoForImsiEncryption RemoteException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    nop

    .line 4713
    :goto_75
    return-object v2
.end method

.method public whitelist getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10702
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10715
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10716
    if-eqz v1, :cond_1a

    .line 10717
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_d

    return-object p1

    .line 10720
    :catch_d
    move-exception p1

    .line 10721
    const-string p2, "getCarrierPackageNamesForIntentAndPhone NPE"

    invoke-static {v0, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 10718
    :catch_14
    move-exception p1

    .line 10719
    const-string p2, "getCarrierPackageNamesForIntentAndPhone RemoteException"

    invoke-static {v0, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10722
    :cond_1a
    nop

    .line 10723
    :goto_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getCarrierPrivilegeStatus(I)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16175
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16176
    if-eqz v0, :cond_f

    .line 16177
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatusForUid(II)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return p1

    .line 16181
    :cond_f
    goto :goto_18

    .line 16179
    :catch_10
    move-exception p1

    .line 16180
    const-string v0, "TelephonyManager"

    const-string v1, "getCarrierPrivilegeStatus RemoteException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16182
    :goto_18
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10817
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10818
    if-eqz v1, :cond_1a

    .line 10819
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_d

    return-object v0

    .line 10824
    :catch_d
    move-exception v1

    .line 10825
    const-string v2, "getCarrierPrivilegedPackagesForAllActiveSubscriptions NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 10821
    :catch_14
    move-exception v1

    .line 10822
    const-string v2, "getCarrierPrivilegedPackagesForAllActiveSubscriptions RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10826
    :cond_1a
    nop

    .line 10827
    :goto_1b
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCarrierRestrictionRules()Landroid/telephony/CarrierRestrictionRules;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13999
    const-string v0, "Error calling ITelephony#getAllowedCarriers"

    const-string v1, "TelephonyManager"

    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 14000
    if-eqz v2, :cond_18

    .line 14001
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v0

    .line 14005
    :catch_f
    move-exception v2

    .line 14006
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 14003
    :catch_14
    move-exception v2

    .line 14004
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14007
    :cond_18
    nop

    .line 14008
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCarrierRestrictionStatus(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 14070
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14071
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14073
    new-instance v0, Landroid/telephony/TelephonyManager$11;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager$11;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 14081
    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    .line 14082
    if-eqz p1, :cond_18

    .line 14083
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/android/internal/telephony/ITelephony;->getCarrierRestrictionStatus(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_1a

    .line 14088
    :cond_18
    nop

    .line 14089
    return-void

    .line 14085
    :catch_1a
    move-exception p1

    .line 14086
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCarrierRestrictionStatus: RemoteException = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TelephonyManager"

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14087
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getCarrierServicePackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10744
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10765
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10766
    if-eqz v1, :cond_1a

    .line 10767
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_d

    return-object p1

    .line 10771
    :catch_d
    move-exception p1

    .line 10772
    const-string v1, "getCarrierServicePackageNameForLogicalSlot NPE"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 10769
    :catch_14
    move-exception p1

    .line 10770
    const-string v1, "getCarrierServicePackageNameForLogicalSlot RemoteException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10773
    :cond_1a
    nop

    .line 10774
    :goto_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getCdmaEnhancedRoamingIndicatorDisplayNumber()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6824
    const/4 v0, -0x1

    return v0
.end method

.method public greylist getCdmaEriIconIndex(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6836
    const/4 p1, -0x1

    return p1
.end method

.method public greylist getCdmaEriIconMode(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6851
    const/4 p1, -0x1

    return p1
.end method

.method public greylist-max-o getCdmaEriText()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6863
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getCdmaEriText(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6876
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getCdmaMdn()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10607
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCdmaMdn(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10621
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getCdmaMin()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10635
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCdmaMin(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10649
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getCdmaPrlVersion()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13738
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getCdmaPrlVersion(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13753
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getCdmaRoamingMode()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11930
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCdmaSubscriptionMode()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12030
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCellBroadcastIdRanges()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation

    .line 19287
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19288
    if-eqz v0, :cond_f

    .line 19289
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCellBroadcastIdRanges(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 19291
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 19293
    :catch_18
    move-exception v0

    .line 19294
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getCellLocation()Landroid/telephony/CellLocation;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2665
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2666
    if-nez v2, :cond_f

    .line 2667
    const-string v2, "getCellLocation returning null because telephony is null"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    return-object v1

    .line 2671
    :cond_f
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2672
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 2671
    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v2

    .line 2673
    invoke-virtual {v2}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 2674
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    .line 2680
    :cond_2c
    return-object v2

    .line 2675
    :cond_2d
    :goto_2d
    const-string v2, "getCellLocation returning null because CellLocation is empty or phone type doesn\'t match CellLocation type"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_32} :catch_33

    .line 2677
    return-object v1

    .line 2681
    :catch_33
    move-exception v2

    .line 2682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    return-object v1
.end method

.method public blacklist getCertsFromCarrierPrivilegeAccessRules()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13672
    nop

    .line 13674
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 13675
    if-eqz v1, :cond_10

    .line 13676
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_11

    .line 13680
    :cond_10
    goto :goto_12

    .line 13678
    :catch_11
    move-exception v1

    .line 13681
    :goto_12
    if-nez v0, :cond_18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method public greylist-max-o getClientRequestStats(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 14520
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14521
    if-eqz v0, :cond_13

    .line 14522
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return-object p1

    .line 14527
    :cond_13
    goto :goto_1c

    .line 14525
    :catch_14
    move-exception p1

    .line 14526
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#getClientRequestStats"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14529
    :goto_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getCurrentPhoneType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2757
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getCurrentPhoneType(I)I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2777
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist getDataActivationState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6129
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataActivationState(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getDataActivationState(I)I
    .registers 4

    .line 6152
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6153
    if-eqz v0, :cond_12

    .line 6154
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivationState(ILjava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    return p1

    .line 6156
    :catch_f
    move-exception p1

    goto :goto_13

    .line 6155
    :catch_11
    move-exception p1

    .line 6157
    :cond_12
    nop

    .line 6158
    :goto_13
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getDataActivity()I
    .registers 4

    .line 6542
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6543
    if-nez v1, :cond_8

    .line 6544
    return v0

    .line 6545
    :cond_8
    nop

    .line 6546
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v2

    .line 6545
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivityForSubId(I)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_15} :catch_16

    return v0

    .line 6550
    :catch_16
    move-exception v1

    .line 6552
    return v0

    .line 6547
    :catch_18
    move-exception v1

    .line 6549
    return v0
.end method

.method public whitelist getDataEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11823
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist getDataEnabled(I)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12105
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;->isDataEnabledForReason(II)Z

    move-result p1
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_6

    return p1

    .line 12106
    :catch_6
    move-exception p1

    .line 12107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling isDataEnabledForReason e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TelephonyManager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12109
    return v0
.end method

.method public whitelist getDataNetworkType()I
    .registers 2

    .line 3230
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getDataNetworkType(I)I
    .registers 7

    .line 3245
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3246
    if-eqz v2, :cond_16

    .line 3247
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3248
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 3247
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3250
    :cond_16
    const-string p1, "getDataNetworkType: ITelephony interface is not up yet"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1b} :catch_1c

    .line 3251
    return v1

    .line 3253
    :catch_1c
    move-exception p1

    .line 3256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataNetworkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    return v1
.end method

.method public whitelist getDataState()I
    .registers 5

    .line 6618
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6619
    if-nez v1, :cond_8

    .line 6620
    return v0

    .line 6621
    :cond_8
    nop

    .line 6622
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v2

    .line 6621
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDataStateForSubId(I)I

    move-result v1

    .line 6623
    const/4 v2, 0x4

    if-ne v1, v2, :cond_23

    .line 6624
    const-wide/32 v2, 0x8da744c

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1f} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1f} :catch_24

    if-nez v0, :cond_23

    .line 6625
    const/4 v0, 0x2

    return v0

    .line 6628
    :cond_23
    return v1

    .line 6632
    :catch_24
    move-exception v1

    .line 6633
    return v0

    .line 6629
    :catch_26
    move-exception v1

    .line 6631
    return v0
.end method

.method public whitelist getDefaultRespondViaMessageApplication()Landroid/content/ComponentName;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12823
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12824
    if-eqz v0, :cond_10

    .line 12825
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDefaultRespondViaMessageApplication(IZ)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v0

    .line 12829
    :cond_10
    goto :goto_2a

    .line 12827
    :catch_11
    move-exception v0

    .line 12828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getDefaultRespondViaMessageApplication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12830
    :goto_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeviceId()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2311
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2312
    if-nez v1, :cond_8

    .line 2313
    return-object v0

    .line 2314
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2315
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2314
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    .line 2318
    :catch_19
    move-exception v1

    .line 2319
    return-object v0

    .line 2316
    :catch_1b
    move-exception v1

    .line 2317
    return-object v0
.end method

.method public whitelist getDeviceId(I)Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2365
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2366
    if-nez v1, :cond_8

    .line 2367
    return-object v0

    .line 2368
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2369
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2368
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdForPhone(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object p1

    .line 2372
    :catch_19
    move-exception p1

    .line 2373
    return-object v0

    .line 2370
    :catch_1b
    move-exception p1

    .line 2371
    return-object v0
.end method

.method public blacklist getDevicePolicyOverrideApns(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 16198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 16199
    if-nez p1, :cond_1a

    .line 16200
    :try_start_10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_38

    .line 16209
    if-eqz p1, :cond_19

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 16200
    :cond_19
    return-object v0

    .line 16202
    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16203
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 16204
    :goto_23
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 16205
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v1

    .line 16206
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_38

    .line 16207
    goto :goto_23

    .line 16208
    :cond_31
    nop

    .line 16209
    if-eqz p1, :cond_37

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 16208
    :cond_37
    return-object v0

    .line 16198
    :catchall_38
    move-exception v0

    move-object v1, v0

    if-eqz p1, :cond_45

    :try_start_3c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_45

    :catchall_40
    move-exception v0

    move-object p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw v1
.end method

.method public whitelist getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 2

    .line 2238
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceSoftwareVersion(I)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2259
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2260
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2263
    :cond_8
    :try_start_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2264
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2263
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_15

    return-object p1

    .line 2267
    :catch_15
    move-exception p1

    .line 2268
    return-object v1

    .line 2265
    :catch_17
    move-exception p1

    .line 2266
    return-object v1
.end method

.method public whitelist getEmergencyAssistancePackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15212
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isEmergencyAssistanceEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 15216
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 15217
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->getEmergencyRoleHolder(I)Ljava/lang/String;

    move-result-object v0

    .line 15216
    return-object v0

    .line 15213
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isEmergencyAssistanceEnabled() is false or device not voice capable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEmergencyCallbackMode()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14548
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getEmergencyCallbackMode(I)Z
    .registers 5

    .line 14559
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 14560
    if-nez v1, :cond_8

    .line 14561
    return v0

    .line 14563
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getEmergencyCallbackMode(I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    return p1

    .line 14564
    :catch_d
    move-exception p1

    .line 14565
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getEmergencyCallbackMode"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14567
    return v0
.end method

.method public whitelist getEmergencyNumberDbVersion()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15469
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15470
    if-eqz v0, :cond_f

    .line 15471
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getEmergencyNumberDbVersion(I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    .line 15476
    :cond_f
    goto :goto_1b

    .line 15473
    :catch_10
    move-exception v0

    .line 15474
    const-string v1, "TelephonyManager"

    const-string v2, "getEmergencyNumberDbVersion RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15475
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15477
    :goto_1b
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getEmergencyNumberList()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation

    .line 15253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15255
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 15256
    if-eqz v1, :cond_1c

    .line 15257
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 15258
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 15257
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 15260
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_25} :catch_25

    .line 15262
    :catch_25
    move-exception v1

    .line 15263
    const-string v2, "TelephonyManager"

    const-string v3, "getEmergencyNumberList RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15264
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15266
    return-object v0
.end method

.method public whitelist getEmergencyNumberList(I)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation

    .line 15316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15318
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 15319
    if-eqz v1, :cond_22

    .line 15320
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 15321
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 15322
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 15321
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 15323
    nop

    .line 15324
    invoke-virtual {p0, v1, p1}, Landroid/telephony/TelephonyManager;->filterEmergencyNumbersByCategories(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 15325
    nop

    .line 15331
    goto :goto_36

    .line 15326
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2b} :catch_2b

    .line 15328
    :catch_2b
    move-exception p1

    .line 15329
    const-string v1, "TelephonyManager"

    const-string v2, "getEmergencyNumberList with Categories RemoteException"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15330
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15332
    :goto_36
    return-object v0
.end method

.method public whitelist getEquivalentHomePlmns()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17478
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17479
    if-eqz v0, :cond_19

    .line 17480
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 17481
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 17480
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17483
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_22

    .line 17485
    :catch_22
    move-exception v0

    .line 17486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getEquivalentHomePlmns RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17489
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getForbiddenPlmns()[Ljava/lang/String;
    .registers 3

    .line 8953
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getForbiddenPlmns(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getForbiddenPlmns(II)[Ljava/lang/String;
    .registers 7

    .line 8968
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8969
    if-nez v1, :cond_8

    .line 8970
    return-object v0

    .line 8971
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 8972
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 8971
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_16} :catch_17

    return-object p1

    .line 8975
    :catch_17
    move-exception p1

    .line 8977
    return-object v0

    .line 8973
    :catch_19
    move-exception p1

    .line 8974
    return-object v0
.end method

.method public whitelist getGroupIdLevel1()Ljava/lang/String;
    .registers 6

    .line 5189
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5190
    if-nez v1, :cond_8

    .line 5191
    return-object v0

    .line 5192
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5193
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 5192
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1c} :catch_1d

    return-object v0

    .line 5196
    :catch_1d
    move-exception v1

    .line 5198
    return-object v0

    .line 5194
    :catch_1f
    move-exception v1

    .line 5195
    return-object v0
.end method

.method public greylist getGroupIdLevel1(I)Ljava/lang/String;
    .registers 6

    .line 5213
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5214
    if-nez v1, :cond_8

    .line 5215
    return-object v0

    .line 5216
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5217
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5216
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object p1

    .line 5220
    :catch_19
    move-exception p1

    .line 5222
    return-object v0

    .line 5218
    :catch_1b
    move-exception p1

    .line 5219
    return-object v0
.end method

.method public whitelist getGroupIdLevel2()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5241
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5242
    if-nez v1, :cond_8

    .line 5243
    return-object v0

    .line 5245
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5246
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 5245
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel2ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1c} :catch_1d

    return-object v0

    .line 5249
    :catch_1d
    move-exception v1

    .line 5251
    return-object v0

    .line 5247
    :catch_1f
    move-exception v1

    .line 5248
    return-object v0
.end method

.method public blacklist getHalVersion(I)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 16140
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16141
    if-eqz v0, :cond_21

    .line 16142
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getHalVersion(I)I

    move-result p1

    .line 16143
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1f

    .line 16144
    new-instance v0, Landroid/util/Pair;

    div-int/lit8 v1, p1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    rem-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 16146
    :cond_1f
    nop

    .line 16152
    goto :goto_35

    .line 16147
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2a

    .line 16149
    :catch_2a
    move-exception p1

    .line 16150
    const-string v0, "TelephonyManager"

    const-string v1, "getHalVersion() RemoteException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16151
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16153
    :goto_35
    sget-object p1, Landroid/telephony/TelephonyManager;->HAL_VERSION_UNKNOWN:Landroid/util/Pair;

    return-object p1
.end method

.method public greylist getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 8924
    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 8925
    if-nez v2, :cond_8

    .line 8926
    return-object v1

    .line 8927
    :cond_8
    nop

    .line 8928
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 8927
    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSimChallengeResponse(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_19} :catch_1a

    return-object p1

    .line 8931
    :catch_1a
    move-exception v0

    .line 8933
    return-object v1

    .line 8929
    :catch_1c
    move-exception v0

    .line 8930
    return-object v1
.end method

.method public whitelist getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 8891
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getImei()Ljava/lang/String;
    .registers 2

    .line 2387
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImei(I)Ljava/lang/String;
    .registers 6

    .line 2428
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2429
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2432
    :cond_8
    :try_start_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_15

    return-object p1

    .line 2435
    :catch_15
    move-exception p1

    .line 2436
    return-object v1

    .line 2433
    :catch_17
    move-exception p1

    .line 2434
    return-object v1
.end method

.method public greylist-max-r getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 4

    .line 9209
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9210
    if-eqz v0, :cond_b

    .line 9211
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object p1

    .line 9215
    :cond_b
    goto :goto_29

    .line 9213
    :catch_c
    move-exception p1

    .line 9214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getImsRegistration, RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TelephonyManager"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9216
    :goto_29
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getImsPcscfAddresses()Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8714
    const-string v0, "getImsPcscfAddresses Exception = "

    const-string v1, "TelephonyManager"

    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 8715
    if-eqz v2, :cond_17

    .line 8718
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImsPcscfAddresses(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8716
    :cond_17
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "P-CSCF error: Subscriber Info is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1f} :catch_38
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_1f} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_1f

    .line 8721
    :catch_1f
    move-exception v2

    .line 8722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8723
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_4e

    .line 8719
    :catch_38
    move-exception v2

    .line 8720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8724
    nop

    .line 8725
    :goto_4e
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getImsPrivateUserIdentity()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6302
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6303
    if-eqz v1, :cond_19

    .line 6307
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6308
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 6307
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImsPrivateUserIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6304
    :cond_19
    const-string v1, "getImsPrivateUserIdentity(): IPhoneSubInfo instance is NULL"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6305
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IMPI error: Subscriber Info is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_26} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_26} :catch_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_26} :catch_26

    .line 6309
    :catch_26
    move-exception v1

    .line 6310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsPrivateUserIdentity() Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6311
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getImsPublicUserIdentities()Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 6399
    const-string v0, "getImsPublicUserIdentities Exception = "

    const-string v1, "TelephonyManager"

    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 6400
    if-eqz v2, :cond_17

    .line 6403
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImsPublicUserIdentities(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6401
    :cond_17
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IMPU error: Subscriber Info is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1f} :catch_38
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_1f} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_1f

    .line 6406
    :catch_1f
    move-exception v2

    .line 6407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6408
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_4e

    .line 6404
    :catch_38
    move-exception v2

    .line 6405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6409
    nop

    .line 6410
    :goto_4e
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getImsRegTechnologyForMmTel()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12393
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getImsRegTechnologyForMmTel(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 12394
    :catch_d
    move-exception v0

    .line 12395
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-r getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 4

    .line 9189
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9190
    if-eqz v0, :cond_b

    .line 9191
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object p1

    .line 9195
    :cond_b
    goto :goto_29

    .line 9193
    :catch_c
    move-exception p1

    .line 9194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getImsRegistration, RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TelephonyManager"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9196
    :goto_29
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getIsimDomain()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6333
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6334
    if-nez v1, :cond_8

    .line 6335
    return-object v0

    .line 6337
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 6340
    :catch_11
    move-exception v1

    .line 6342
    return-object v0

    .line 6338
    :catch_13
    move-exception v1

    .line 6339
    return-object v0
.end method

.method public greylist getIsimImpi()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6270
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6271
    if-nez v1, :cond_8

    .line 6272
    return-object v0

    .line 6274
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 6277
    :catch_11
    move-exception v1

    .line 6279
    return-object v0

    .line 6275
    :catch_13
    move-exception v1

    .line 6276
    return-object v0
.end method

.method public greylist getIsimImpu()[Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6362
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6363
    if-nez v1, :cond_8

    .line 6364
    return-object v0

    .line 6366
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 6369
    :catch_11
    move-exception v1

    .line 6371
    return-object v0

    .line 6367
    :catch_13
    move-exception v1

    .line 6368
    return-object v0
.end method

.method public whitelist getIsimIst()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8656
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 8657
    if-nez v1, :cond_8

    .line 8658
    return-object v0

    .line 8660
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 8663
    :catch_11
    move-exception v1

    .line 8665
    return-object v0

    .line 8661
    :catch_13
    move-exception v1

    .line 8662
    return-object v0
.end method

.method public greylist getIsimPcscf()[Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8681
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 8682
    if-nez v1, :cond_8

    .line 8683
    return-object v0

    .line 8685
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 8688
    :catch_11
    move-exception v1

    .line 8690
    return-object v0

    .line 8686
    :catch_13
    move-exception v1

    .line 8687
    return-object v0
.end method

.method public blacklist getLastKnownCellIdentity()Landroid/telephony/CellIdentity;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18773
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18774
    if-eqz v0, :cond_17

    .line 18777
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 18778
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 18777
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v0

    return-object v0

    .line 18775
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    .line 18779
    :catch_20
    move-exception v0

    .line 18780
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 18782
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getLine1AlphaTag()Ljava/lang/String;
    .registers 2

    .line 5398
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLine1AlphaTag(I)Ljava/lang/String;
    .registers 6

    .line 5412
    nop

    .line 5414
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5415
    if-eqz v1, :cond_16

    .line 5416
    nop

    .line 5417
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5416
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_15} :catch_18

    goto :goto_17

    .line 5415
    :cond_16
    move-object v1, v0

    .line 5420
    :goto_17
    goto :goto_1d

    .line 5419
    :catch_18
    move-exception v1

    goto :goto_1c

    .line 5418
    :catch_1a
    move-exception v1

    .line 5420
    nop

    .line 5421
    :goto_1c
    move-object v1, v0

    :goto_1d
    if-eqz v1, :cond_20

    .line 5422
    return-object v1

    .line 5425
    :cond_20
    :try_start_20
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5426
    if-nez v1, :cond_27

    .line 5427
    return-object v0

    .line 5428
    :cond_27
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5429
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5428
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_33} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_33} :catch_34

    return-object p1

    .line 5432
    :catch_34
    move-exception p1

    .line 5434
    return-object v0

    .line 5430
    :catch_36
    move-exception p1

    .line 5431
    return-object v0
.end method

.method public whitelist getLine1Number()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5283
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLine1Number(I)Ljava/lang/String;
    .registers 6

    .line 5311
    nop

    .line 5313
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5314
    if-eqz v1, :cond_19

    .line 5315
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5316
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5315
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_18} :catch_1b

    goto :goto_1a

    .line 5314
    :cond_19
    move-object v1, v0

    .line 5319
    :goto_1a
    goto :goto_20

    .line 5318
    :catch_1b
    move-exception v1

    goto :goto_1f

    .line 5317
    :catch_1d
    move-exception v1

    .line 5319
    nop

    .line 5320
    :goto_1f
    move-object v1, v0

    :goto_20
    if-eqz v1, :cond_23

    .line 5321
    return-object v1

    .line 5324
    :cond_23
    :try_start_23
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5325
    if-nez v1, :cond_2a

    .line 5326
    return-object v0

    .line 5327
    :cond_2a
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5328
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5327
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3a} :catch_3d
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_3a} :catch_3b

    return-object p1

    .line 5331
    :catch_3b
    move-exception p1

    .line 5333
    return-object v0

    .line 5329
    :catch_3d
    move-exception p1

    .line 5330
    return-object v0
.end method

.method public whitelist getLogicalToPhysicalSlotMapping()Ljava/util/Map;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4542
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4544
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4545
    if-eqz v1, :cond_39

    .line 4546
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4547
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4546
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4548
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccSlotMapping;

    .line 4549
    invoke-virtual {v2}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_38} :catch_3a

    .line 4550
    goto :goto_19

    .line 4554
    :cond_39
    goto :goto_42

    .line 4552
    :catch_3a
    move-exception v1

    .line 4553
    const-string v2, "TelephonyManager"

    const-string v3, "getSlotsMapping RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4555
    :goto_42
    return-object v0
.end method

.method public whitelist getManualNetworkSelectionPlmn()Ljava/lang/String;
    .registers 4

    .line 9975
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9976
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isManualNetworkSelectionAllowed()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 9977
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getManualNetworkSelectionPlmn(I)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16

    return-object v0

    .line 9981
    :cond_15
    goto :goto_1e

    .line 9979
    :catch_16
    move-exception v0

    .line 9980
    const-string v1, "TelephonyManager"

    const-string v2, "getManualNetworkSelectionPlmn RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9982
    :goto_1e
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getManufacturerCode()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2569
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getManufacturerCode(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2586
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getMaxNumberOfSimultaneouslyActiveSims()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 729
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_10

    .line 737
    return v1

    .line 735
    :pswitch_d
    const/4 v0, 0x2

    return v0

    .line 733
    :pswitch_f
    return v1

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public whitelist getMeid()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2510
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMeid(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2554
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getMergedImsisFromGroup()[Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5483
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5484
    if-eqz v0, :cond_16

    .line 5485
    nop

    .line 5486
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_17

    .line 5487
    if-eqz v0, :cond_16

    .line 5488
    return-object v0

    .line 5492
    :cond_16
    goto :goto_18

    .line 5491
    :catch_17
    move-exception v0

    .line 5493
    :goto_18
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public greylist getMergedSubscriberIds()[Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5456
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5457
    if-eqz v0, :cond_1a

    .line 5458
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5459
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5458
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    .line 5461
    :catch_17
    move-exception v0

    goto :goto_1b

    .line 5460
    :catch_19
    move-exception v0

    .line 5462
    :cond_1a
    nop

    .line 5463
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMmsUAProfUrl()Ljava/lang/String;
    .registers 3

    .line 7305
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7306
    if-eqz v0, :cond_12

    .line 7307
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getMmsUAProfUrl(I)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 7310
    :catch_f
    move-exception v0

    goto :goto_13

    .line 7309
    :catch_11
    move-exception v0

    .line 7311
    :cond_12
    nop

    .line 7312
    :goto_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMmsUserAgent()Ljava/lang/String;
    .registers 3

    .line 7286
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7287
    if-eqz v0, :cond_12

    .line 7288
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getMmsUserAgent(I)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 7291
    :catch_f
    move-exception v0

    goto :goto_13

    .line 7290
    :catch_11
    move-exception v0

    .line 7292
    :cond_12
    nop

    .line 7293
    :goto_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMobileProvisioningUrl()Ljava/lang/String;
    .registers 4

    .line 11759
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11760
    if-eqz v0, :cond_b

    .line 11761
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11763
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 11765
    :catch_14
    move-exception v0

    .line 11766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getMobileProvisioningUrl RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11768
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getModemService()Ljava/lang/String;
    .registers 4

    .line 18230
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18231
    if-eqz v0, :cond_b

    .line 18232
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getModemService()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v0

    .line 18236
    :cond_b
    goto :goto_14

    .line 18234
    :catch_c
    move-exception v0

    .line 18235
    const-string v1, "TelephonyManager"

    const-string v2, "getModemService RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18237
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getMsisdn()Ljava/lang/String;
    .registers 2

    .line 5517
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getMsisdn(I)Ljava/lang/String;
    .registers 6

    .line 5544
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5545
    if-nez v1, :cond_8

    .line 5546
    return-object v0

    .line 5547
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdnForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object p1

    .line 5550
    :catch_15
    move-exception p1

    .line 5552
    return-object v0

    .line 5548
    :catch_17
    move-exception p1

    .line 5549
    return-object v0
.end method

.method public greylist getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;
    .registers 3

    .line 650
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->multi_sim_config()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 652
    sget-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v0

    .line 653
    :cond_17
    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 654
    sget-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v0

    .line 655
    :cond_22
    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 656
    sget-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v0

    .line 658
    :cond_2e
    sget-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v0
.end method

.method public whitelist getNai()Ljava/lang/String;
    .registers 2

    .line 2625
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getNaiBySubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getNeighboringCellInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2703
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2704
    if-nez v1, :cond_8

    .line 2705
    return-object v0

    .line 2706
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2707
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2706
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    .line 2710
    :catch_19
    move-exception v1

    .line 2711
    return-object v0

    .line 2708
    :catch_1b
    move-exception v1

    .line 2709
    return-object v0
.end method

.method public whitelist getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .line 2953
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkCountryIso(I)Ljava/lang/String;
    .registers 6

    .line 2976
    const v0, 0x7fffffff

    const-string v1, ""

    if-eq p1, v0, :cond_27

    .line 2977
    :try_start_7
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_27

    .line 2978
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid slot index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2981
    :cond_27
    :goto_27
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2982
    if-nez v0, :cond_2e

    return-object v1

    .line 2983
    :cond_2e
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object p1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_32} :catch_33

    return-object p1

    .line 2984
    :catch_33
    move-exception p1

    .line 2985
    return-object v1
.end method

.method public greylist-max-q getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2997
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getNetworkOperator()Ljava/lang/String;
    .registers 2

    .line 2842
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getNetworkOperator(I)Ljava/lang/String;
    .registers 2

    .line 2854
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    .line 2855
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist getNetworkOperatorForPhone(I)Ljava/lang/String;
    .registers 4

    .line 2868
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_numeric()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public whitelist getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .line 2820
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getNetworkOperatorName(I)Ljava/lang/String;
    .registers 4

    .line 2833
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    .line 2834
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_alpha()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public whitelist getNetworkSelectionMode()I
    .registers 5

    .line 9945
    nop

    .line 9947
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9948
    if-eqz v1, :cond_10

    .line 9949
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkSelectionMode(I)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_11

    .line 9953
    :cond_10
    goto :goto_19

    .line 9951
    :catch_11
    move-exception v1

    .line 9952
    const-string v2, "TelephonyManager"

    const-string v3, "getNetworkSelectionMode RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9954
    :goto_19
    return v0
.end method

.method public whitelist getNetworkSlicingConfiguration(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/data/NetworkSlicingConfig;",
            "Landroid/telephony/TelephonyManager$NetworkSlicingException;",
            ">;)V"
        }
    .end annotation

    .line 18409
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18410
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18413
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18414
    if-eqz v0, :cond_16

    .line 18417
    new-instance v1, Landroid/telephony/TelephonyManager$20;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/TelephonyManager$20;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSlicingConfig(Landroid/os/ResultReceiver;)V

    .line 18437
    goto :goto_23

    .line 18415
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1f} :catch_1f

    .line 18435
    :catch_1f
    move-exception p1

    .line 18436
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 18438
    :goto_23
    return-void
.end method

.method public whitelist getNetworkSpecifier()Ljava/lang/String;
    .registers 2

    .line 2884
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3133
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getNetworkType(I)I
    .registers 6

    .line 3167
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3168
    if-eqz v1, :cond_14

    .line 3169
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3170
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 3169
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_15

    return p1

    .line 3173
    :cond_14
    return v0

    .line 3178
    :catch_15
    move-exception p1

    .line 3180
    return v0

    .line 3175
    :catch_17
    move-exception p1

    .line 3177
    return v0
.end method

.method public greylist getNetworkTypeName()Ljava/lang/String;
    .registers 2

    .line 3315
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNumberOfModemsWithSimultaneousDataConnections()I
    .registers 5

    .line 14784
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14785
    if-eqz v0, :cond_18

    .line 14786
    nop

    .line 14787
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 14786
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    return v0

    .line 14791
    :cond_18
    goto :goto_1a

    .line 14789
    :catch_19
    move-exception v0

    .line 14792
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-p getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 12740
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 12741
    nop

    .line 12742
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->otasp_num_schema()Ljava/util/List;

    move-result-object v0

    .line 12741
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 12745
    :cond_12
    return-object p2
.end method

.method public blacklist getPackagesWithCarrierPrivileges()Ljava/util/Set;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10790
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10792
    :try_start_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 10793
    if-eqz v2, :cond_26

    .line 10794
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getPackagesWithCarrierPrivileges(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_18} :catch_19

    goto :goto_26

    .line 10798
    :catch_19
    move-exception v2

    .line 10799
    const-string v3, "getPackagesWithCarrierPrivileges NPE"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 10796
    :catch_20
    move-exception v2

    .line 10797
    const-string v3, "getPackagesWithCarrierPrivileges RemoteException"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10800
    :cond_26
    :goto_26
    nop

    .line 10801
    :goto_27
    return-object v1
.end method

.method public whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 12960
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;
    .registers 4

    .line 12972
    nop

    .line 12974
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12975
    if-eqz v1, :cond_d

    .line 12976
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_e

    move-object v0, p1

    .line 12979
    :cond_d
    goto :goto_f

    .line 12978
    :catch_e
    move-exception p1

    .line 12981
    :goto_f
    return-object v0
.end method

.method public whitelist getPhoneCapability()Landroid/telephony/PhoneCapability;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18207
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18208
    if-eqz v0, :cond_b

    .line 18209
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v0

    return-object v0

    .line 18211
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 18213
    :catch_14
    move-exception v0

    .line 18214
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 18216
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    .line 18217
    sget-object v0, Landroid/telephony/PhoneCapability;->DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object v0

    .line 18219
    :cond_22
    sget-object v0, Landroid/telephony/PhoneCapability;->DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object v0
.end method

.method public whitelist getPhoneCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    return v0
.end method

.method public whitelist getPhoneType()I
    .registers 2

    .line 2794
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDeviceVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2795
    const/4 v0, 0x0

    return v0

    .line 2797
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getPreferredNetworkType(I)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9544
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesBitmask()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result p1

    return p1
.end method

.method public whitelist getPreferredNetworkTypeBitmask()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9569
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesBitmask()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getPreferredOpportunisticDataSubscription()I
    .registers 5

    .line 15685
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 15686
    :goto_d
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 15687
    :goto_19
    nop

    .line 15689
    const/4 v2, -0x1

    :try_start_1b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v3

    .line 15690
    if-eqz v3, :cond_26

    .line 15691
    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/IOns;->getPreferredDataSubscriptionId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_25} :catch_27

    move v2, v0

    .line 15696
    :cond_26
    goto :goto_2f

    .line 15694
    :catch_27
    move-exception v0

    .line 15695
    const-string v1, "TelephonyManager"

    const-string v3, "getPreferredDataSubscriptionId RemoteException"

    invoke-static {v1, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15697
    :goto_2f
    return v2
.end method

.method public whitelist getPrimaryImei()Ljava/lang/String;
    .registers 5

    .line 19556
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 19557
    if-eqz v1, :cond_15

    .line 19561
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getPrimaryImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19558
    :cond_15
    const-string v1, "getPrimaryImei(): IPhoneSubInfo instance is NULL"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19559
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_22} :catch_22

    .line 19562
    :catch_22
    move-exception v1

    .line 19563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrimaryImei() RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19564
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist getRadioHalVersion()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16035
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getHalVersion(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRadioPowerOffReasons()Ljava/util/Set;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 11546
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11548
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 11549
    if-eqz v1, :cond_23

    .line 11550
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 11551
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 11550
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getRadioPowerOffReasons(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11558
    goto :goto_36

    .line 11553
    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2b} :catch_2b

    .line 11555
    :catch_2b
    move-exception v1

    .line 11556
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getRadioPowerOffReasons"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11557
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 11559
    :goto_36
    return-object v0
.end method

.method public whitelist getRadioPowerState()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11650
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11651
    if-eqz v0, :cond_1b

    .line 11652
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 11653
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 11652
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1c

    return v0

    .line 11657
    :cond_1b
    goto :goto_1d

    .line 11655
    :catch_1c
    move-exception v0

    .line 11658
    :goto_1d
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .line 13249
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getLocationData()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getServiceState(I)Landroid/telephony/ServiceState;
    .registers 6

    .line 13285
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    if-nez p1, :cond_13

    goto :goto_14

    :cond_13
    move v2, v3

    :goto_14
    invoke-direct {p0, v0, v1, v2}, Landroid/telephony/TelephonyManager;->getServiceStateForSlot(IZZ)Landroid/telephony/ServiceState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getServiceStateForSlot(I)Landroid/telephony/ServiceState;
    .registers 3

    .line 13362
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/TelephonyManager;->getServiceStateForSlot(IZZ)Landroid/telephony/ServiceState;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-p getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;
    .registers 3

    .line 13334
    nop

    .line 13335
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p1

    .line 13334
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/TelephonyManager;->getServiceStateForSlot(IZZ)Landroid/telephony/ServiceState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getShaIdFromAllowList(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14103
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14104
    if-eqz v0, :cond_b

    .line 14105
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getShaIdFromAllowList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_f

    return-object p1

    .line 14110
    :cond_b
    nop

    .line 14111
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 14107
    :catch_f
    move-exception p1

    .line 14108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getShaIdFromAllowList: RemoteException = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TelephonyManager"

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14109
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 4

    .line 14615
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14616
    if-eqz v0, :cond_f

    .line 14617
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSignalStrength(I)Landroid/telephony/SignalStrength;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    .line 14621
    :cond_f
    goto :goto_18

    .line 14619
    :catch_10
    move-exception v0

    .line 14620
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getSignalStrength"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14622
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSimApplicationState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3831
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSimStateIncludingLoaded()I

    move-result v0

    .line 3832
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimApplicationStateFromSimState(I)I

    move-result v0

    return v0
.end method

.method public whitelist getSimApplicationState(I)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3859
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v0

    .line 3860
    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result p1

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result p1

    .line 3861
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSimApplicationStateFromSimState(I)I

    move-result p1

    return p1
.end method

.method public whitelist getSimApplicationState(II)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3888
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result p1

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result p1

    .line 3889
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSimApplicationStateFromSimState(I)I

    move-result p1

    return p1
.end method

.method public whitelist getSimCardState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3720
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 3721
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCardStateFromSimState(I)I

    move-result v0

    return v0
.end method

.method public whitelist getSimCardState(I)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3745
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v0

    .line 3746
    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    .line 3747
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSimCardStateFromSimState(I)I

    move-result p1

    return p1
.end method

.method public whitelist getSimCardState(II)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3772
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    .line 3773
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSimCardStateFromSimState(I)I

    move-result p1

    return p1
.end method

.method public whitelist getSimCarrierId()I
    .registers 3

    .line 13493
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13494
    if-eqz v0, :cond_f

    .line 13495
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionCarrierId(I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    .line 13499
    :cond_f
    goto :goto_11

    .line 13497
    :catch_10
    move-exception v0

    .line 13500
    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSimCarrierIdName()Ljava/lang/CharSequence;
    .registers 3

    .line 13521
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13522
    if-eqz v0, :cond_f

    .line 13523
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionCarrierName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    .line 13527
    :cond_f
    goto :goto_11

    .line 13525
    :catch_10
    move-exception v0

    .line 13528
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getSimCount()I
    .registers 2

    .line 8636
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public whitelist getSimCountryIso()Ljava/lang/String;
    .registers 2

    .line 4103
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimLocale()Ljava/util/Locale;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13058
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13059
    if-eqz v0, :cond_19

    .line 13060
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSimLocaleForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    .line 13061
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 13062
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1a

    return-object v0

    .line 13066
    :cond_19
    goto :goto_1b

    .line 13065
    :catch_1a
    move-exception v0

    .line 13067
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSimOperator()Ljava/lang/String;
    .registers 2

    .line 3980
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getSimOperator(I)Ljava/lang/String;
    .registers 2

    .line 3996
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getSimOperatorName()Ljava/lang/String;
    .registers 2

    .line 4065
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getSimOperatorName(I)Ljava/lang/String;
    .registers 2

    .line 4080
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    .line 4081
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist getSimOperatorNameForPhone(I)Ljava/lang/String;
    .registers 4

    .line 4091
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_alpha()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public greylist-max-p getSimOperatorNumeric()Ljava/lang/String;
    .registers 3

    .line 4010
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 4011
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4012
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 4013
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4014
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 4015
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4016
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 4017
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4018
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 4023
    :cond_2a
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getSimOperatorNumeric(I)Ljava/lang/String;
    .registers 2

    .line 4039
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    .line 4040
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-p getSimOperatorNumericForPhone(I)Ljava/lang/String;
    .registers 4

    .line 4053
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_numeric()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public whitelist getSimSerialNumber()Ljava/lang/String;
    .registers 2

    .line 4165
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSimSerialNumber(I)Ljava/lang/String;
    .registers 6

    .line 4205
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 4206
    if-nez v1, :cond_8

    .line 4207
    return-object v0

    .line 4208
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4209
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 4208
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object p1

    .line 4212
    :catch_19
    move-exception p1

    .line 4214
    return-object v0

    .line 4210
    :catch_1b
    move-exception p1

    .line 4211
    return-object v0
.end method

.method public blacklist getSimServiceTable(I)Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9048
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 9049
    if-nez v2, :cond_f

    .line 9050
    const-string p1, "getSimServiceTable(): IPhoneSubInfo is null"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9051
    return-object v1

    .line 9054
    :cond_f
    const/4 v3, 0x5

    if-ne p1, v3, :cond_1b

    .line 9055
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result p1

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9056
    :cond_1b
    const/4 v3, 0x2

    if-ne p1, v3, :cond_27

    .line 9057
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result p1

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSimServiceTable(II)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_26} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_26} :catch_28

    return-object p1

    .line 9059
    :cond_27
    return-object v1

    .line 9063
    :catch_28
    move-exception p1

    .line 9064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimServiceTable(): NullPointerException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 9061
    :catch_44
    move-exception p1

    .line 9062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimServiceTable(): RemoteException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9065
    nop

    .line 9066
    :goto_60
    return-object v1
.end method

.method public whitelist getSimServiceTable(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "[B",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 9087
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9088
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9090
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 9091
    if-nez v0, :cond_15

    .line 9092
    new-instance p1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda25;

    invoke-direct {p1, p3}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda25;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9094
    return-void

    .line 9099
    :cond_15
    const/4 v1, 0x5

    if-ne p1, v1, :cond_23

    .line 9100
    :try_start_18
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    .line 9113
    :catch_21
    move-exception p1

    goto :goto_48

    .line 9101
    :cond_23
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2f

    .line 9102
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result p1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSimServiceTable(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    .line 9104
    :cond_2f
    const/4 p1, 0x0

    .line 9107
    :goto_30
    if-nez p1, :cond_3b

    .line 9108
    new-instance p1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda26;

    invoke-direct {p1, p3}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda26;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_47

    .line 9110
    :cond_3b
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 9111
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda27;

    invoke-direct {v0, p3, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda27;-><init>(Landroid/os/OutcomeReceiver;[B)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_47} :catch_21

    .line 9115
    :goto_47
    goto :goto_50

    .line 9114
    :goto_48
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda28;

    invoke-direct {v0, p3, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda28;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9116
    :goto_50
    return-void
.end method

.method public whitelist getSimSlotMapping()Ljava/util/Collection;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation

    .line 4578
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4579
    if-eqz v0, :cond_12

    .line 4580
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4586
    nop

    .line 4587
    return-object v0

    .line 4582
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1b

    .line 4584
    :catch_1b
    move-exception v0

    .line 4585
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getSimSpecificCarrierId()I
    .registers 3

    .line 13562
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13563
    if-eqz v0, :cond_f

    .line 13564
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionSpecificCarrierId(I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    .line 13568
    :cond_f
    goto :goto_11

    .line 13566
    :catch_10
    move-exception v0

    .line 13569
    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSimSpecificCarrierIdName()Ljava/lang/CharSequence;
    .registers 3

    .line 13591
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13592
    if-eqz v0, :cond_f

    .line 13593
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionSpecificCarrierName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    .line 13597
    :cond_f
    goto :goto_11

    .line 13595
    :catch_10
    move-exception v0

    .line 13598
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSimState()I
    .registers 3

    .line 3675
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSimStateIncludingLoaded()I

    move-result v0

    .line 3676
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 3677
    const/4 v0, 0x5

    .line 3679
    :cond_9
    return v0
.end method

.method public whitelist getSimState(I)I
    .registers 3

    .line 3963
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result p1

    .line 3964
    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    .line 3965
    const/4 p1, 0x5

    .line 3967
    :cond_9
    return p1
.end method

.method public greylist getSlotIndex()I
    .registers 3

    .line 8398
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 8399
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 8400
    const v0, 0x7fffffff

    .line 8402
    :cond_e
    return v0
.end method

.method public greylist-max-o getSmsReceiveCapableForPhone(IZ)Z
    .registers 4

    .line 12758
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 12759
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->sms_receive()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 12762
    :cond_19
    return p2
.end method

.method public greylist-max-o getSmsSendCapableForPhone(IZ)Z
    .registers 4

    .line 12775
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 12776
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->sms_send()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 12779
    :cond_19
    return p2
.end method

.method public greylist getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .registers 3

    .line 12932
    nop

    .line 12933
    if-eqz p1, :cond_13

    .line 12934
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 12935
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriptionId(Landroid/telecom/PhoneAccountHandle;)I

    move-result p1

    goto :goto_14

    .line 12937
    :cond_13
    const/4 p1, -0x1

    :goto_14
    return p1
.end method

.method public whitelist getSubscriberId()Ljava/lang/String;
    .registers 2

    .line 4634
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getSubscriberId(I)Ljava/lang/String;
    .registers 6

    .line 4652
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 4653
    if-nez v1, :cond_8

    .line 4654
    return-object v0

    .line 4655
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4656
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 4655
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object p1

    .line 4659
    :catch_19
    move-exception p1

    .line 4661
    return-object v0

    .line 4657
    :catch_1b
    move-exception p1

    .line 4658
    return-object v0
.end method

.method public whitelist getSubscriptionId()I
    .registers 2

    .line 8324
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    return v0
.end method

.method public whitelist getSubscriptionId(Landroid/telecom/PhoneAccountHandle;)I
    .registers 3

    .line 12996
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public whitelist getSupportedModemCount()I
    .registers 3

    .line 718
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->max_active_modems()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getSupportedRadioAccessFamily()J
    .registers 6

    .line 15057
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 15058
    if-eqz v2, :cond_16

    .line 15059
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_14} :catch_17

    int-to-long v0, v0

    return-wide v0

    .line 15062
    :cond_16
    return-wide v0

    .line 15067
    :catch_17
    move-exception v2

    .line 15069
    return-wide v0

    .line 15064
    :catch_19
    move-exception v2

    .line 15066
    return-wide v0
.end method

.method public whitelist getSystemSelectionChannels()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation

    .line 16417
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16418
    if-eqz v0, :cond_f

    .line 16419
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSystemSelectionChannels(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16421
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 16423
    :catch_18
    move-exception v0

    .line 16424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getSystemSelectionChannels RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getTelephonyHistograms()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 13768
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13769
    if-eqz v0, :cond_b

    .line 13770
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getTelephonyHistograms()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v0

    .line 13774
    :cond_b
    goto :goto_14

    .line 13772
    :catch_c
    move-exception v0

    .line 13773
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getTelephonyHistograms"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13775
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTestEuiccUiComponent()Landroid/content/ComponentName;
    .registers 5

    .line 19640
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 19641
    if-eqz v1, :cond_d

    .line 19645
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getTestEuiccUiComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 19642
    :cond_d
    const-string v1, "getTestEuiccUiComponent(): ITelephony instance is NULL"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19643
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_1a

    .line 19646
    :catch_1a
    move-exception v1

    .line 19647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTestEuiccUiComponent() RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19648
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getTypeAllocationCode()Ljava/lang/String;
    .registers 2

    .line 2446
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getTypeAllocationCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTypeAllocationCode(I)Ljava/lang/String;
    .registers 4

    .line 2457
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2458
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2461
    :cond_8
    :try_start_8
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getTypeAllocationCodeForSlot(I)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p1

    .line 2464
    :catch_d
    move-exception p1

    .line 2465
    return-object v1

    .line 2462
    :catch_f
    move-exception p1

    .line 2463
    return-object v1
.end method

.method public whitelist getUiccCardsInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation

    .line 4312
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4313
    if-nez v1, :cond_13

    .line 4314
    const-string v1, "Error in getUiccCardsInfo: unable to connect to Telephony service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 4317
    :cond_13
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1e

    return-object v0

    .line 4318
    :catch_1e
    move-exception v1

    .line 4319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getUiccCardsInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4339
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4340
    if-nez v1, :cond_8

    .line 4341
    return-object v0

    .line 4343
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_13

    return-object v0

    .line 4344
    :catch_13
    move-exception v1

    .line 4345
    return-object v0
.end method

.method public whitelist getVisualVoicemailPackageName()Ljava/lang/String;
    .registers 5

    .line 5721
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5722
    if-eqz v0, :cond_1c

    .line 5723
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5724
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    .line 5723
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    .line 5727
    :catch_19
    move-exception v0

    goto :goto_1d

    .line 5726
    :catch_1b
    move-exception v0

    .line 5728
    :cond_1c
    nop

    .line 5729
    :goto_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVisualVoicemailSettings()Landroid/os/Bundle;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5689
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5690
    if-eqz v0, :cond_16

    .line 5691
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5692
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    .line 5691
    return-object v0

    .line 5695
    :catch_13
    move-exception v0

    goto :goto_17

    .line 5694
    :catch_15
    move-exception v0

    .line 5696
    :cond_16
    nop

    .line 5697
    :goto_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 4

    .line 5849
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5850
    if-eqz v0, :cond_14

    .line 5851
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5852
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_11

    .line 5851
    return-object p1

    .line 5855
    :catch_11
    move-exception p1

    goto :goto_15

    .line 5854
    :catch_13
    move-exception p1

    .line 5856
    :cond_14
    nop

    .line 5858
    :goto_15
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getVoiceActivationState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6076
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceActivationState(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getVoiceActivationState(I)I
    .registers 4

    .line 6098
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6099
    if-eqz v0, :cond_12

    .line 6100
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceActivationState(ILjava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    return p1

    .line 6102
    :catch_f
    move-exception p1

    goto :goto_13

    .line 6101
    :catch_11
    move-exception p1

    .line 6103
    :cond_12
    nop

    .line 6104
    :goto_13
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    .line 6209
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getVoiceMailAlphaTag(I)Ljava/lang/String;
    .registers 6

    .line 6223
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6224
    if-nez v1, :cond_8

    .line 6225
    return-object v0

    .line 6226
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6227
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6226
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object p1

    .line 6230
    :catch_15
    move-exception p1

    .line 6232
    return-object v0

    .line 6228
    :catch_17
    move-exception p1

    .line 6229
    return-object v0
.end method

.method public whitelist getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .line 5569
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getVoiceMailNumber(I)Ljava/lang/String;
    .registers 6

    .line 5582
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5583
    if-nez v1, :cond_8

    .line 5584
    return-object v0

    .line 5585
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5586
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5585
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object p1

    .line 5589
    :catch_15
    move-exception p1

    .line 5591
    return-object v0

    .line 5587
    :catch_17
    move-exception p1

    .line 5588
    return-object v0
.end method

.method public greylist getVoiceMessageCount()I
    .registers 2

    .line 6169
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(I)I

    move-result v0

    return v0
.end method

.method public greylist getVoiceMessageCount(I)I
    .registers 6

    .line 6182
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6183
    if-nez v1, :cond_8

    .line 6184
    return v0

    .line 6185
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6186
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6185
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return p1

    .line 6189
    :catch_15
    move-exception p1

    .line 6191
    return v0

    .line 6187
    :catch_17
    move-exception p1

    .line 6188
    return v0
.end method

.method public whitelist getVoiceNetworkType()I
    .registers 2

    .line 3278
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getVoiceNetworkType(I)I
    .registers 6

    .line 3289
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3290
    if-eqz v1, :cond_14

    .line 3291
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3292
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 3291
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_15

    return p1

    .line 3295
    :cond_14
    return v0

    .line 3300
    :catch_15
    move-exception p1

    .line 3302
    return v0

    .line 3297
    :catch_17
    move-exception p1

    .line 3299
    return v0
.end method

.method public whitelist getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 4

    .line 13379
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13380
    if-eqz v0, :cond_b

    .line 13381
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object p1

    .line 13385
    :cond_b
    goto :goto_14

    .line 13383
    :catch_c
    move-exception p1

    .line 13384
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#getVoicemailRingtoneUri"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13386
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist handlePinMmi(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11347
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11348
    if-eqz v0, :cond_b

    .line 11349
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return p1

    .line 11352
    :cond_b
    goto :goto_14

    .line 11350
    :catch_c
    move-exception p1

    .line 11351
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#handlePinMmi"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11353
    :goto_14
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11366
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11367
    if-eqz v0, :cond_b

    .line 11368
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return p1

    .line 11371
    :cond_b
    goto :goto_14

    .line 11369
    :catch_c
    move-exception p1

    .line 11370
    const-string p2, "TelephonyManager"

    const-string v0, "Error calling ITelephony#handlePinMmi"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11372
    :goto_14
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist hasCarrierPrivileges()Z
    .registers 2

    .line 10438
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasCarrierPrivileges(I)Z
    .registers 6

    .line 10457
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 10458
    if-nez v2, :cond_f

    .line 10459
    const-string p1, "hasCarrierPrivileges: no Telephony service"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10460
    return v1

    .line 10462
    :cond_f
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatus(I)I

    move-result p1

    .line 10463
    packed-switch p1, :pswitch_data_40

    .line 10469
    goto :goto_1a

    .line 10465
    :pswitch_17
    const/4 p1, 0x1

    return p1

    .line 10467
    :pswitch_19
    return v1

    .line 10469
    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCarrierPrivileges: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_30} :catch_38
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_30} :catch_31

    .line 10470
    return v1

    .line 10474
    :catch_31
    move-exception p1

    .line 10475
    const-string v2, "hasCarrierPrivileges NPE"

    invoke-static {v0, v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 10472
    :catch_38
    move-exception p1

    .line 10473
    const-string v2, "hasCarrierPrivileges RemoteException"

    invoke-static {v0, v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10476
    nop

    .line 10477
    :goto_3f
    return v1

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_19
        :pswitch_17
    .end packed-switch
.end method

.method public whitelist hasIccCard()Z
    .registers 2

    .line 3629
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public greylist hasIccCard(I)Z
    .registers 4

    .line 3643
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3644
    if-nez v1, :cond_8

    .line 3645
    return v0

    .line 3646
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotIndex(I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_d

    return p1

    .line 3650
    :catch_d
    move-exception p1

    .line 3652
    return v0

    .line 3647
    :catch_f
    move-exception p1

    .line 3649
    return v0
.end method

.method public whitelist iccCloseLogicalChannel(I)Z
    .registers 4

    .line 7661
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(II)Z

    move-result p1
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 7662
    :catch_9
    move-exception p1

    .line 7663
    const-string v0, "TelephonyManager"

    const-string v1, "iccCloseLogicalChannel IllegalStateException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7665
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o iccCloseLogicalChannel(II)Z
    .registers 5

    .line 7685
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7686
    if-eqz v0, :cond_20

    .line 7687
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7688
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->subId:I

    .line 7689
    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    .line 7690
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_13} :catch_14

    return p1

    .line 7694
    :catch_14
    move-exception p1

    .line 7695
    const-string p2, "TelephonyManager"

    const-string v0, "iccCloseLogicalChannel IllegalStateException"

    invoke-static {p2, v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 7693
    :catch_1d
    move-exception p1

    goto :goto_20

    .line 7692
    :catch_1f
    move-exception p1

    .line 7696
    :cond_20
    :goto_20
    nop

    .line 7697
    :goto_21
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist iccCloseLogicalChannelByPort(III)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7623
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7624
    if-eqz v0, :cond_17

    .line 7625
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7626
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    .line 7627
    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    .line 7628
    iput p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    .line 7629
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    .line 7630
    nop

    .line 7635
    nop

    .line 7636
    return-void

    .line 7631
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    .line 7633
    :catch_20
    move-exception p1

    .line 7634
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist iccCloseLogicalChannelBySlot(II)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7580
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7581
    if-eqz v0, :cond_26

    .line 7582
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7583
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    .line 7584
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    .line 7585
    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    .line 7586
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_19} :catch_23
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_19} :catch_1a

    return p1

    .line 7590
    :catch_1a
    move-exception p1

    .line 7591
    const-string p2, "TelephonyManager"

    const-string v0, "iccCloseLogicalChannel IllegalStateException"

    invoke-static {p2, v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 7589
    :catch_23
    move-exception p1

    goto :goto_26

    .line 7588
    :catch_25
    move-exception p1

    .line 7592
    :cond_26
    :goto_26
    nop

    .line 7593
    :goto_27
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .registers 9

    .line 8071
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8072
    if-eqz v0, :cond_f

    .line 8073
    move-object p0, v0

    invoke-interface/range {p0 .. p7}, Lcom/android/internal/telephony/ITelephony;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    .line 8075
    :catch_c
    move-exception v0

    goto :goto_10

    .line 8074
    :catch_e
    move-exception v0

    .line 8076
    :cond_f
    nop

    .line 8077
    :goto_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .registers 15

    .line 8048
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyManager;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 6

    .line 7536
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7537
    if-eqz v0, :cond_26

    .line 7538
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7539
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->subId:I

    .line 7540
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->callingPackage:Ljava/lang/String;

    .line 7541
    iput-object p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->aid:Ljava/lang/String;

    .line 7542
    iput p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->p2:I

    .line 7543
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    .line 7544
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object p1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_22} :catch_23

    return-object p1

    .line 7547
    :catch_23
    move-exception p1

    goto :goto_27

    .line 7546
    :catch_25
    move-exception p1

    .line 7548
    :cond_26
    nop

    .line 7549
    :goto_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7352
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object p1

    return-object p1
.end method

.method public whitelist iccOpenLogicalChannel(Ljava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 4

    .line 7504
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object p1

    return-object p1
.end method

.method public whitelist iccOpenLogicalChannelByPort(IILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7451
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7452
    if-eqz v0, :cond_25

    .line 7453
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7454
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    .line 7455
    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    .line 7456
    iput-object p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->aid:Ljava/lang/String;

    .line 7457
    iput p4, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->p2:I

    .line 7458
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->callingPackage:Ljava/lang/String;

    .line 7459
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    .line 7460
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object p1

    return-object p1

    .line 7462
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2e

    .line 7464
    :catch_2e
    move-exception p1

    .line 7465
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist iccOpenLogicalChannelBySlot(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7396
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7397
    if-eqz v0, :cond_2c

    .line 7398
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7399
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    .line 7400
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    .line 7401
    iput-object p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->aid:Ljava/lang/String;

    .line 7402
    iput p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->p2:I

    .line 7403
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->callingPackage:Ljava/lang/String;

    .line 7404
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    .line 7405
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object p1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_28} :catch_29

    return-object p1

    .line 7408
    :catch_29
    move-exception p1

    goto :goto_2d

    .line 7407
    :catch_2b
    move-exception p1

    .line 7409
    :cond_2c
    nop

    .line 7410
    :goto_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 17

    .line 8017
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8018
    if-eqz v0, :cond_1a

    .line 8019
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(ILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p1

    .line 8022
    :catch_17
    move-exception v0

    goto :goto_1b

    .line 8021
    :catch_19
    move-exception v0

    .line 8023
    :cond_1a
    nop

    .line 8024
    :goto_1b
    const-string p1, ""

    return-object p1
.end method

.method public whitelist iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 7989
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyManager;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist iccTransmitApduBasicChannelByPort(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 19
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7952
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7953
    if-eqz v0, :cond_1c

    .line 7954
    nop

    .line 7955
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7954
    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7961
    nop

    .line 7962
    return-object p1

    .line 7957
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_25

    .line 7959
    :catch_25
    move-exception v0

    move-object p1, v0

    .line 7960
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist iccTransmitApduBasicChannelBySlot(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 18
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7907
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7908
    if-eqz v0, :cond_20

    .line 7909
    nop

    .line 7910
    invoke-direct/range {p0 .. p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7909
    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p1

    .line 7914
    :catch_1d
    move-exception v0

    goto :goto_21

    .line 7913
    :catch_1f
    move-exception v0

    .line 7915
    :cond_20
    nop

    .line 7916
    :goto_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 7860
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7861
    if-eqz v0, :cond_f

    .line 7862
    move-object p0, v0

    invoke-interface/range {p0 .. p8}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    .line 7865
    :catch_c
    move-exception v0

    goto :goto_10

    .line 7864
    :catch_e
    move-exception v0

    .line 7866
    :cond_f
    nop

    .line 7867
    :goto_10
    const-string p1, ""

    return-object p1
.end method

.method public whitelist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 17

    .line 7830
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/TelephonyManager;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7785
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7786
    if-eqz v0, :cond_d

    .line 7787
    move-object p0, v0

    invoke-interface/range {p0 .. p9}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7794
    nop

    .line 7795
    return-object p1

    .line 7790
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_16

    .line 7792
    :catch_16
    move-exception v0

    move-object p1, v0

    .line 7793
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist iccTransmitApduLogicalChannelBySlot(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 19
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7738
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7739
    if-eqz v0, :cond_1e

    .line 7740
    nop

    .line 7741
    invoke-direct/range {p0 .. p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v2

    .line 7740
    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p1

    .line 7745
    :catch_1b
    move-exception v0

    goto :goto_1f

    .line 7744
    :catch_1d
    move-exception v0

    .line 7746
    :cond_1e
    nop

    .line 7747
    :goto_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist isAnyRadioPoweredOn()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11601
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11602
    if-eqz v0, :cond_b

    .line 11603
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v0

    .line 11608
    :cond_b
    goto :goto_17

    .line 11605
    :catch_c
    move-exception v0

    .line 11606
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isAnyRadioPoweredOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11607
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 11609
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAospDomainSelectionService()Z
    .registers 4

    .line 19517
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19518
    if-eqz v0, :cond_b

    .line 19519
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isAospDomainSelectionService()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v0

    .line 19523
    :cond_b
    goto :goto_14

    .line 19521
    :catch_c
    move-exception v0

    .line 19522
    const-string v1, "TelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19524
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isApnMetered(I)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16315
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16316
    if-eqz v0, :cond_f

    .line 16317
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->isApnMetered(II)Z

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return p1

    .line 16321
    :cond_f
    goto :goto_29

    .line 16319
    :catch_10
    move-exception p1

    .line 16320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Telephony#isApnMetered RemoteException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelephonyManager"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16322
    :goto_29
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist isApplicationOnUicc(I)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3932
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3933
    if-eqz v0, :cond_f

    .line 3934
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->isApplicationOnUicc(II)Z

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return p1

    .line 3938
    :cond_f
    goto :goto_18

    .line 3936
    :catch_10
    move-exception p1

    .line 3937
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#isApplicationOnUicc"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3939
    :goto_18
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isCellularIdentifierDisclosureNotificationsEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19205
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19206
    if-eqz v0, :cond_b

    .line 19207
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isCellularIdentifierDisclosureNotificationsEnabled()Z

    move-result v0

    return v0

    .line 19209
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 19211
    :catch_14
    move-exception v0

    .line 19212
    const-string v1, "TelephonyManager"

    const-string v2, "isCellularIdentifierDisclosureNotificationsEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19213
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19215
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isConcurrentVoiceAndDataSupported()Z
    .registers 5

    .line 11329
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 11330
    if-nez v1, :cond_8

    :goto_7
    goto :goto_11

    .line 11331
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    .line 11330
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isConcurrentVoiceAndDataAllowed(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    goto :goto_7

    :goto_11
    return v0

    .line 11332
    :catch_12
    move-exception v1

    .line 11333
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isConcurrentVoiceAndDataAllowed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11335
    return v0
.end method

.method public whitelist isDataCapable()Z
    .registers 3

    .line 14666
    const-string v0, "android.hardware.telephony.data"

    const v1, 0x1110213

    invoke-direct {p0, v0, v1}, Landroid/telephony/TelephonyManager;->hasCapability(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDataConnectionAllowed()Z
    .registers 5

    .line 14646
    nop

    .line 14648
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 14649
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 14650
    if-eqz v2, :cond_14

    .line 14651
    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isDataEnabled(I)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_15

    .line 14654
    :cond_14
    goto :goto_1d

    .line 14652
    :catch_15
    move-exception v1

    .line 14653
    const-string v2, "TelephonyManager"

    const-string v3, "Error isDataConnectionAllowed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14655
    :goto_1d
    return v0
.end method

.method public whitelist isDataConnectivityPossible()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11718
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11719
    if-eqz v0, :cond_14

    .line 11720
    nop

    .line 11721
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v1

    .line 11720
    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible(I)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    return v0

    .line 11724
    :cond_14
    goto :goto_1d

    .line 11722
    :catch_15
    move-exception v0

    .line 11723
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isDataAllowed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11725
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDataEnabled()Z
    .registers 5

    .line 11856
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isDataEnabledForReason(I)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    .line 11857
    :catch_6
    move-exception v1

    .line 11859
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling #isDataEnabled, returning default (false)."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11860
    return v0
.end method

.method public whitelist isDataEnabledForApn(I)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16290
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 16292
    :goto_d
    :try_start_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 16293
    if-eqz v1, :cond_1c

    .line 16294
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/telephony/ITelephony;->isDataEnabledForApn(IILjava/lang/String;)Z

    move-result p1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1d

    return p1

    .line 16298
    :cond_1c
    goto :goto_36

    .line 16296
    :catch_1d
    move-exception p1

    .line 16297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Telephony#isDataEnabledForApn RemoteException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelephonyManager"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16299
    :goto_36
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isDataEnabledForReason(I)Z
    .registers 3

    .line 14491
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/telephony/TelephonyManager;->isDataEnabledForReason(II)Z

    move-result p1

    return p1
.end method

.method public whitelist isDataRoamingEnabled()Z
    .registers 5

    .line 11888
    nop

    .line 11890
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 11891
    if-eqz v1, :cond_15

    .line 11892
    nop

    .line 11893
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v2

    .line 11892
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isDataRoamingEnabled(I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_16

    .line 11897
    :cond_15
    goto :goto_1e

    .line 11895
    :catch_16
    move-exception v1

    .line 11896
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isDataRoamingEnabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11898
    :goto_1e
    return v0
.end method

.method public whitelist isDeviceSmsCapable()Z
    .registers 2

    .line 6984
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method public whitelist isDeviceVoiceCapable()Z
    .registers 3

    .line 6944
    const-string v0, "android.hardware.telephony.calling"

    const v1, 0x11102c8

    invoke-direct {p0, v0, v1}, Landroid/telephony/TelephonyManager;->hasCapability(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDomainSelectionSupported()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19497
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19498
    if-eqz v0, :cond_b

    .line 19499
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isDomainSelectionSupported()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v0

    .line 19503
    :cond_b
    goto :goto_14

    .line 19501
    :catch_c
    move-exception v0

    .line 19502
    const-string v1, "TelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19504
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEmergencyAssistanceEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15191
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "isEmergencyAssistanceEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15194
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isEmergencyNumber(Ljava/lang/String;)Z
    .registers 4

    .line 15388
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15389
    if-eqz v0, :cond_c

    .line 15390
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 15392
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_15

    .line 15394
    :catch_15
    move-exception p1

    .line 15395
    const-string v0, "TelephonyManager"

    const-string v1, "isEmergencyNumber RemoteException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15396
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15398
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isHearingAidCompatibilitySupported()Z
    .registers 4

    .line 12265
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12266
    if-eqz v1, :cond_1a

    .line 12267
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isHearingAidCompatibilitySupported()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_14
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_c} :catch_d

    return v0

    .line 12271
    :catch_d
    move-exception v1

    .line 12272
    const-string v2, "Permission error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 12269
    :catch_14
    move-exception v1

    .line 12270
    const-string v2, "Error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12273
    :cond_1a
    nop

    .line 12274
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isIccLockEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16963
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16964
    if-eqz v0, :cond_f

    .line 16965
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isIccLockEnabled(I)Z

    move-result v0

    return v0

    .line 16967
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 16969
    :catch_18
    move-exception v0

    .line 16970
    const-string v1, "TelephonyManager"

    const-string v2, "isIccLockEnabled RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16971
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 16973
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isIdle()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11039
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 11040
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-p isImsRegistered()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12311
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 12312
    :catch_d
    move-exception v0

    .line 12313
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isImsRegistered(I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12289
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered(I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 12290
    :catch_9
    move-exception p1

    .line 12291
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isInEmergencySmsMode()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10007
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10008
    if-eqz v0, :cond_b

    .line 10009
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isInEmergencySmsMode()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v0

    .line 10013
    :cond_b
    goto :goto_14

    .line 10011
    :catch_c
    move-exception v0

    .line 10012
    const-string v1, "TelephonyManager"

    const-string v2, "isInEmergencySmsMode RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10014
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLteCdmaEvdoGsmWcdmaEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4236
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isManualNetworkSelectionAllowed()Z
    .registers 4

    .line 14591
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14592
    if-eqz v0, :cond_f

    .line 14593
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isManualNetworkSelectionAllowed(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    .line 14597
    :cond_f
    goto :goto_18

    .line 14595
    :catch_10
    move-exception v0

    .line 14596
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isManualNetworkSelectionAllowed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14598
    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isMobileDataPolicyEnabled(I)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16925
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16926
    if-eqz v0, :cond_f

    .line 16927
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->isMobileDataPolicyEnabled(II)Z

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return p1

    .line 16931
    :cond_f
    goto :goto_29

    .line 16929
    :catch_10
    move-exception p1

    .line 16930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Telephony#isMobileDataPolicyEnabled RemoteException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelephonyManager"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16932
    :goto_29
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isModemEnabledForSlot(I)Z
    .registers 5

    .line 15821
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15822
    if-eqz v0, :cond_17

    .line 15823
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 15824
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 15823
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return p1

    .line 15828
    :cond_17
    goto :goto_20

    .line 15826
    :catch_18
    move-exception p1

    .line 15827
    const-string v0, "TelephonyManager"

    const-string v1, "enableModem RemoteException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15829
    :goto_20
    const/4 p1, 0x0

    return p1
.end method

.method public greylist isMultiSimEnabled()Z
    .registers 3

    .line 775
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public whitelist isMultiSimSupported()I
    .registers 4

    .line 15951
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15952
    if-eqz v0, :cond_13

    .line 15953
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v0

    .line 15957
    :cond_13
    goto :goto_1c

    .line 15955
    :catch_14
    move-exception v0

    .line 15956
    const-string v1, "TelephonyManager"

    const-string v2, "isMultiSimSupported RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15958
    :goto_1c
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isNetworkRoaming()Z
    .registers 2

    .line 2923
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public greylist isNetworkRoaming(I)Z
    .registers 4

    .line 2937
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    .line 2938
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_is_roaming()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public whitelist isNrDualConnectivityEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17230
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17231
    if-eqz v0, :cond_f

    .line 17232
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isNrDualConnectivityEnabled(I)Z

    move-result v0

    return v0

    .line 17234
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 17236
    :catch_18
    move-exception v0

    .line 17237
    const-string v1, "TelephonyManager"

    const-string v2, "isNRDualConnectivityEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17238
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17240
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNullCipherAndIntegrityPreferenceEnabled()Z
    .registers 4

    .line 19149
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19150
    if-eqz v0, :cond_b

    .line 19151
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isNullCipherAndIntegrityPreferenceEnabled()Z

    move-result v0

    return v0

    .line 19153
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 19155
    :catch_14
    move-exception v0

    .line 19156
    const-string v1, "TelephonyManager"

    const-string v2, "isNullCipherAndIntegrityPreferenceEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19157
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19159
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isNullCipherNotificationsEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19258
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19259
    if-eqz v0, :cond_b

    .line 19260
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isNullCipherNotificationsEnabled()Z

    move-result v0

    return v0

    .line 19262
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 19264
    :catch_14
    move-exception v0

    .line 19265
    const-string v1, "TelephonyManager"

    const-string v2, "isNullCipherNotificationsEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19266
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19268
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isOffhook()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11009
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 11010
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method public whitelist isOpportunisticNetworkEnabled()Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14848
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 14849
    :goto_d
    nop

    .line 14852
    const/4 v1, 0x0

    :try_start_f
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v2

    .line 14853
    if-eqz v2, :cond_1a

    .line 14854
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/IOns;->isEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b

    move v1, v0

    .line 14858
    :cond_1a
    goto :goto_23

    .line 14856
    :catch_1b
    move-exception v0

    .line 14857
    const-string v2, "TelephonyManager"

    const-string v3, "enableOpportunisticNetwork RemoteException"

    invoke-static {v2, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14860
    :goto_23
    return v1
.end method

.method public whitelist isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15437
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 15438
    if-eqz v1, :cond_c

    .line 15439
    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/ITelephony;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 15441
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_15

    .line 15443
    :catch_15
    move-exception p1

    .line 15444
    const-string v1, "TelephonyManager"

    const-string v2, "isEmergencyNumber RemoteException"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15445
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15447
    return v0
.end method

.method public whitelist isPremiumCapabilityAvailableForPurchase(I)Z
    .registers 4

    .line 18488
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18489
    if-eqz v0, :cond_f

    .line 18492
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->isPremiumCapabilityAvailableForPurchase(II)Z

    move-result p1

    return p1

    .line 18490
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 18493
    :catch_18
    move-exception p1

    .line 18494
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 18496
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z
    .registers 5

    .line 17596
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 17598
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 17599
    if-eqz v1, :cond_f

    .line 17600
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 17602
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_18

    .line 17604
    :catch_18
    move-exception p1

    .line 17605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#isRadioInterfaceCapabilitySupported RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TelephonyManager"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17607
    return v0
.end method

.method public whitelist isRadioOn()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11058
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11059
    if-eqz v0, :cond_13

    .line 11060
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v0

    .line 11063
    :cond_13
    goto :goto_1c

    .line 11061
    :catch_14
    move-exception v0

    .line 11062
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRadioOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11064
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRemovableEsimDefaultEuicc()Z
    .registers 4

    .line 18941
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18942
    if-eqz v0, :cond_f

    .line 18943
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    .line 18947
    :cond_f
    goto :goto_29

    .line 18945
    :catch_10
    move-exception v0

    .line 18946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in isRemovableEsimDefaultEuicc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18948
    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isRinging()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11024
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 11025
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    return v0
.end method

.method public whitelist isRttSupported()Z
    .registers 4

    .line 12242
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12243
    if-eqz v1, :cond_1c

    .line 12244
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRttSupported(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_16
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_e} :catch_f

    return v0

    .line 12248
    :catch_f
    move-exception v1

    .line 12249
    const-string v2, "Permission error calling ITelephony#isWorldPhone"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 12246
    :catch_16
    move-exception v1

    .line 12247
    const-string v2, "Error calling ITelephony#isRttSupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12250
    :cond_1c
    nop

    .line 12251
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSmsCapable()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6963
    const-string v0, "android.hardware.telephony.messaging"

    const v1, 0x1110274

    invoke-direct {p0, v0, v1}, Landroid/telephony/TelephonyManager;->hasCapability(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTetheringApnRequired()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10385
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isTetheringApnRequired(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isTetheringApnRequired(I)Z
    .registers 4

    .line 10397
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10398
    if-eqz v1, :cond_1a

    .line 10399
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isTetheringApnRequiredForSubscriber(I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_d

    return p1

    .line 10402
    :catch_d
    move-exception p1

    .line 10403
    const-string v1, "hasMatchedTetherApnSetting NPE"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 10400
    :catch_14
    move-exception p1

    .line 10401
    const-string v1, "hasMatchedTetherApnSetting RemoteException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10404
    :cond_1a
    nop

    .line 10405
    :goto_1b
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isTtyModeSupported()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12217
    nop

    .line 12218
    :try_start_1
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    .line 12219
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    goto :goto_11

    .line 12218
    :cond_10
    const/4 v0, 0x0

    .line 12221
    :goto_11
    if-eqz v0, :cond_18

    .line 12222
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isTtySupported()Z

    move-result v0
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_17} :catch_19

    return v0

    .line 12226
    :cond_18
    goto :goto_21

    .line 12224
    :catch_19
    move-exception v0

    .line 12225
    const-string v1, "TelephonyManager"

    const-string v2, "Permission error calling TelecomManager#isTtySupported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12227
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVideoCallingEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12151
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12152
    if-eqz v0, :cond_13

    .line 12153
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v0

    .line 12156
    :cond_13
    goto :goto_1c

    .line 12154
    :catch_14
    move-exception v0

    .line 12155
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isVideoCallingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12157
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isVideoTelephonyAvailable()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12352
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVideoTelephonyAvailable(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 12353
    :catch_d
    move-exception v0

    .line 12354
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVisualVoicemailEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5665
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isVoNrEnabled()Z
    .registers 4

    .line 14259
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14260
    if-eqz v0, :cond_f

    .line 14261
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVoNrEnabled(I)Z

    move-result v0

    return v0

    .line 14263
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 14265
    :catch_18
    move-exception v0

    .line 14266
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isVoNrEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14267
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 14269
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVoiceCapable()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6919
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 6920
    :cond_6
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 4

    .line 13432
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13433
    if-eqz v0, :cond_b

    .line 13434
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return p1

    .line 13438
    :cond_b
    goto :goto_14

    .line 13436
    :catch_c
    move-exception p1

    .line 13437
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#isVoicemailVibrationEnabled"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13439
    :goto_14
    const/4 p1, 0x0

    return p1
.end method

.method public greylist isVolteAvailable()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12331
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/ITelephony;->isAvailable(III)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_f

    return v0

    .line 12334
    :catch_f
    move-exception v1

    .line 12335
    return v0
.end method

.method public greylist isWifiCallingAvailable()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12369
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isWifiCallingAvailable(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 12370
    :catch_d
    move-exception v0

    .line 12371
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isWorldPhone()Z
    .registers 6

    .line 12195
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12196
    if-eqz v1, :cond_24

    .line 12197
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_16} :catch_17

    return v0

    .line 12201
    :catch_17
    move-exception v1

    .line 12202
    const-string v2, "Permission error calling ITelephony#isWorldPhone"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 12199
    :catch_1e
    move-exception v1

    .line 12200
    const-string v2, "Error calling ITelephony#isWorldPhone"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12203
    :cond_24
    nop

    .line 12204
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6719
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 6720
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move v9, v0

    .line 6721
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 6723
    const-string/jumbo v1, "telephony_registry"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 6724
    if-eqz v1, :cond_3f

    .line 6725
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 6726
    nop

    .line 6727
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 6728
    nop

    .line 6729
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 6730
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 6731
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 6730
    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v9}, Landroid/telephony/TelephonyRegistryManager;->listenFromListener(IZZLjava/lang/String;Ljava/lang/String;Landroid/telephony/PhoneStateListener;IZ)V

    .line 6733
    goto :goto_47

    .line 6734
    :cond_3f
    const-string p1, "TelephonyManager"

    const-string/jumbo p2, "telephony registry not ready."

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6736
    :goto_47
    return-void
.end method

.method public whitelist matchesCurrentSimOperator(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16448
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 16449
    return v0

    .line 16451
    :cond_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    .line 16452
    if-eqz p1, :cond_1b

    .line 16453
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    invoke-interface {p1, v1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->isMvnoMatched(IILjava/lang/String;)Z

    move-result p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1c

    return p1

    .line 16457
    :cond_1b
    goto :goto_35

    .line 16455
    :catch_1c
    move-exception p1

    .line 16456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Telephony#matchesCurrentSimOperator RemoteException"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TelephonyManager"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16458
    :goto_35
    return v0
.end method

.method public blacklist modifyDevicePolicyOverrideApn(Landroid/content/Context;ILandroid/telephony/data/ApnSetting;)Z
    .registers 5

    .line 16259
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    .line 16260
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 16261
    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->toContentValues()Landroid/content/ContentValues;

    move-result-object p3

    .line 16259
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method public whitelist needsOtaServiceProvisioning()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11741
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist notifyOtaEmergencyNumberDbInstalled()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15100
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15101
    if-eqz v0, :cond_a

    .line 15102
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->notifyOtaEmergencyNumberDbInstalled()V

    .line 15109
    goto :goto_1f

    .line 15104
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 15106
    :catch_13
    move-exception v0

    .line 15107
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "notifyOtaEmergencyNumberDatabaseInstalled RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15108
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15110
    :goto_1f
    return-void
.end method

.method public blacklist notifyUserActivity()V
    .registers 4

    .line 17073
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17074
    if-eqz v0, :cond_9

    .line 17075
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->userActivity()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 17081
    :cond_9
    goto :goto_28

    .line 17077
    :catch_a
    move-exception v0

    .line 17080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyUserActivity exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17082
    :goto_28
    return-void
.end method

.method public greylist nvReadItem(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8146
    const-string p1, ""

    return-object p1
.end method

.method public greylist-max-r nvResetConfig(I)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8209
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    .line 8210
    return v1

    .line 8213
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 8214
    if-eqz v3, :cond_3a

    .line 8215
    if-ne p1, v2, :cond_18

    .line 8216
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result p1

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->rebootModem(I)Z

    move-result p1

    return p1

    .line 8217
    :cond_18
    const/4 v2, 0x3

    if-ne p1, v2, :cond_24

    .line 8218
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result p1

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->resetModemConfig(I)Z

    move-result p1

    return p1

    .line 8220
    :cond_24
    const-string/jumbo p1, "nvResetConfig unsupported reset type"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2a} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_2a} :catch_2b

    goto :goto_3a

    .line 8225
    :catch_2b
    move-exception p1

    .line 8226
    const-string/jumbo v2, "nvResetConfig NPE"

    invoke-static {v0, v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 8223
    :catch_33
    move-exception p1

    .line 8224
    const-string/jumbo v2, "nvResetConfig RemoteException"

    invoke-static {v0, v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8227
    :cond_3a
    :goto_3a
    nop

    .line 8228
    :goto_3b
    return v1
.end method

.method public greylist-max-o nvWriteCdmaPrl([B)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8185
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o nvWriteItem(ILjava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8166
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist persistEmergencyCallDiagnosticData(Ljava/lang/String;Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19092
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 19093
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 19094
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 19090
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 19095
    if-eqz v1, :cond_27

    .line 19096
    nop

    .line 19097
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->isLogcatCollectionEnabled()Z

    move-result v3

    .line 19098
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->getLogcatCollectionStartTimeMillis()J

    move-result-wide v4

    .line 19099
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->isTelecomDumpsysCollectionEnabled()Z

    move-result v6

    .line 19100
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->isTelephonyDumpsysCollectionEnabled()Z

    move-result v7

    .line 19096
    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony;->persistEmergencyCallDiagnosticData(Ljava/lang/String;ZJZZ)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    .line 19104
    :cond_27
    goto :goto_42

    .line 19102
    :catch_28
    move-exception v0

    move-object p1, v0

    .line 19103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while persistEmergencyCallDiagnosticData: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TelephonyManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19105
    :goto_42
    return-void
.end method

.method public whitelist prepareForUnattendedReboot()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18297
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18298
    if-eqz v0, :cond_b

    .line 18299
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->prepareForUnattendedReboot()I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v0

    .line 18304
    :cond_b
    goto :goto_17

    .line 18301
    :catch_c
    move-exception v0

    .line 18302
    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#prepareForUnattendedReboot RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18303
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 18305
    :goto_17
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist purchasePremiumCapability(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 18735
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18736
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18738
    new-instance v0, Landroid/telephony/TelephonyManager$21;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/TelephonyManager$21;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 18746
    const/16 p2, 0xb

    :try_start_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 18747
    if-nez v1, :cond_1b

    .line 18748
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 18749
    return-void

    .line 18751
    :cond_1b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lcom/android/internal/telephony/ITelephony;->purchasePremiumCapability(ILcom/android/internal/telephony/IIntegerConsumer;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_22} :catch_23

    .line 18754
    goto :goto_2b

    .line 18752
    :catch_23
    move-exception p1

    .line 18753
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 18755
    :goto_2b
    return-void
.end method

.method public whitelist rebootModem()V
    .registers 4

    .line 8302
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8303
    if-eqz v0, :cond_1a

    .line 8306
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->rebootModem(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8312
    nop

    .line 8313
    return-void

    .line 8307
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t reboot modem (it may be not supported)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8304
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_23

    .line 8309
    :catch_23
    move-exception v0

    .line 8310
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "rebootRadio RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8311
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist rebootRadio()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8275
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8276
    if-eqz v1, :cond_20

    .line 8277
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->rebootModem(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_11

    return v0

    .line 8281
    :catch_11
    move-exception v1

    .line 8282
    const-string/jumbo v2, "rebootRadio NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 8279
    :catch_19
    move-exception v1

    .line 8280
    const-string/jumbo v2, "rebootRadio RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8283
    :cond_20
    nop

    .line 8284
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist refreshUiccProfile()V
    .registers 4

    .line 4358
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4359
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->refreshUiccProfile(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4362
    goto :goto_12

    .line 4360
    :catch_a
    move-exception v0

    .line 4361
    const-string v1, "TelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4363
    :goto_12
    return-void
.end method

.method public whitelist registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18880
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_29

    .line 18882
    if-eqz p2, :cond_21

    if-eqz p3, :cond_21

    .line 18887
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    .line 18889
    if-eqz v0, :cond_18

    .line 18891
    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->addCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 18892
    return-void

    .line 18889
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18883
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CarrierPrivilegesCallback and executor must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18881
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telephony service is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist registerTelephonyCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    .registers 15

    .line 17869
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony service is null."

    if-eqz v0, :cond_41

    .line 17873
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/TelephonyRegistryManager;

    .line 17875
    if-eqz v2, :cond_3b

    .line 17877
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_1c

    move v0, v3

    move v3, v1

    goto :goto_1d

    :cond_1c
    move v0, v3

    :goto_1d
    if-nez p1, :cond_21

    move v4, v1

    goto :goto_22

    :cond_21
    move v4, v0

    :goto_22
    iget v6, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 17880
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 17881
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    if-eqz p1, :cond_34

    move v10, v1

    goto :goto_35

    :cond_34
    move v10, v0

    .line 17877
    :goto_35
    move-object v5, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v10}, Landroid/telephony/TelephonyRegistryManager;->registerTelephonyCallback(ZZLjava/util/concurrent/Executor;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;Z)V

    .line 17882
    return-void

    .line 17875
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17870
    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    .registers 4

    .line 17772
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getLocationData()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 17773
    return-void
.end method

.method public whitelist reportDefaultNetworkStatus(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14293
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14294
    if-eqz v0, :cond_12

    .line 14295
    nop

    .line 14296
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 14295
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->carrierActionReportDefaultNetworkStatus(IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 14300
    :cond_12
    goto :goto_1b

    .line 14298
    :catch_13
    move-exception p1

    .line 14299
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#carrierActionReportDefaultNetworkStatus"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14301
    :goto_1b
    return-void
.end method

.method public whitelist requestCellInfoUpdate(Landroid/os/WorkSource;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7202
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7203
    if-nez v0, :cond_18

    .line 7204
    const-wide/32 v0, 0xadbeeaa

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p1

    if-nez p1, :cond_10

    .line 7207
    return-void

    .line 7205
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7211
    :cond_18
    nop

    .line 7212
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    new-instance v2, Landroid/telephony/TelephonyManager$5;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/TelephonyManager$5;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    .line 7236
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 7211
    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 7240
    goto :goto_39

    .line 7237
    :catch_2f
    move-exception v0

    move-object p1, v0

    .line 7238
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;

    invoke-direct {v0, p2, p3, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 7241
    :goto_39
    return-void
.end method

.method public whitelist requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
    .registers 8

    .line 7135
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7136
    if-nez v0, :cond_18

    .line 7137
    const-wide/32 v0, 0xadbeeaa

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 7140
    return-void

    .line 7138
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7144
    :cond_18
    nop

    .line 7145
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    new-instance v2, Landroid/telephony/TelephonyManager$4;

    invoke-direct {v2, p0, p1, p2}, Landroid/telephony/TelephonyManager$4;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    .line 7168
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 7144
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 7172
    goto :goto_37

    .line 7169
    :catch_2e
    move-exception v0

    .line 7170
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p2, v0}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 7173
    :goto_37
    return-void
.end method

.method public whitelist requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/ModemActivityInfo;",
            "Landroid/telephony/TelephonyManager$ModemActivityInfoException;",
            ">;)V"
        }
    .end annotation

    .line 13153
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13154
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13158
    new-instance v0, Landroid/telephony/TelephonyManager$10;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/telephony/TelephonyManager$10;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 13210
    :try_start_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 13211
    if-eqz v1, :cond_16

    .line 13212
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 13213
    return-void

    .line 13217
    :cond_16
    goto :goto_1f

    .line 13215
    :catch_17
    move-exception v0

    .line 13216
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getModemActivityInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13218
    :goto_1f
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda11;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13221
    return-void
.end method

.method public whitelist requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .registers 15

    .line 9799
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9800
    :try_start_3
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;

    if-nez v0, :cond_e

    .line 9801
    new-instance v0, Landroid/telephony/TelephonyScanManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyScanManager;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;

    .line 9803
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2c

    .line 9804
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    move v4, p1

    .line 9807
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 9804
    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v9}, Landroid/telephony/TelephonyScanManager;->requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/NetworkScan;

    move-result-object p1

    return-object p1

    .line 9803
    :catchall_2c
    move-exception v0

    move-object p1, v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2c

    throw p1
.end method

.method public greylist requestNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9827
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Landroid/telephony/TelephonyManager;->requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object p1

    return-object p1
.end method

.method public whitelist requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .registers 5

    .line 9747
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object p1

    return-object p1
.end method

.method public whitelist requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLjava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
    .registers 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8440
    if-eqz p4, :cond_47

    .line 8443
    if-eqz p5, :cond_3f

    .line 8447
    new-instance v4, Landroid/telephony/TelephonyManager$6;

    invoke-direct {v4, p0, p4, p5}, Landroid/telephony/TelephonyManager$6;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V

    .line 8472
    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8473
    if-nez v0, :cond_21

    .line 8474
    const-wide/32 p1, 0xadbeeaa

    invoke-static {p1, p2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p1

    if-nez p1, :cond_19

    .line 8477
    return-void

    .line 8475
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telephony is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8481
    :cond_21
    nop

    .line 8482
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 8481
    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2b} :catch_2c

    .line 8488
    goto :goto_3e

    .line 8483
    :catch_2c
    move-exception v0

    move-object p1, v0

    .line 8484
    const-string p2, "TelephonyManager"

    const-string/jumbo p3, "requestNumberVerification RemoteException"

    invoke-static {p2, p3, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8485
    new-instance p1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda18;

    invoke-direct {p1, p4, p5}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda18;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 8489
    :goto_3e
    return-void

    .line 8444
    :cond_3f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Callback must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8441
    :cond_47
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Executor must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist requestRadioPowerOffForReason(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11484
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11485
    if-eqz v0, :cond_19

    .line 11486
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestRadioPowerOffForReason(II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 11495
    goto :goto_2c

    .line 11487
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is not available."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11490
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_21

    .line 11492
    :catch_21
    move-exception p1

    .line 11493
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#requestRadioPowerOffForReason"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11494
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 11496
    :goto_2c
    return-void
.end method

.method public blacklist requestUiccIari(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 8760
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8761
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8763
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 8764
    if-nez v0, :cond_15

    .line 8765
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda8;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8767
    return-void

    .line 8770
    :cond_15
    new-instance v1, Landroid/telephony/TelephonyManager$7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/TelephonyManager$7;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 8794
    const/4 v2, 0x5

    :try_start_1c
    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->isApplicationOnUicc(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 8795
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4, v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getUiccIari(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_49

    .line 8796
    :cond_2e
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->isApplicationOnUicc(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 8797
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4, v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getUiccIari(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_49

    .line 8799
    :cond_41
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda9;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_49} :catch_4a

    .line 8804
    :goto_49
    goto :goto_53

    .line 8802
    :catch_4a
    move-exception v0

    .line 8803
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2, v0}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda10;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8805
    :goto_53
    return-void
.end method

.method public whitelist resetAllCarrierActions()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14321
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14322
    if-eqz v0, :cond_12

    .line 14323
    nop

    .line 14324
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 14323
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->carrierActionResetAll(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 14328
    :cond_12
    goto :goto_1b

    .line 14326
    :catch_13
    move-exception v0

    .line 14327
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#carrierActionResetAll"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14329
    :goto_1b
    return-void
.end method

.method public whitelist resetCarrierKeysForImsiEncryption()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4738
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 4739
    if-eqz v0, :cond_18

    .line 4742
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 4743
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->resetCarrierKeysForImsiEncryption(ILjava/lang/String;)V

    .line 4746
    goto :goto_39

    .line 4740
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IMSI error: Subscriber Info is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    .line 4744
    :catch_20
    move-exception v0

    .line 4745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getCarrierInfoForImsiEncryption RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4747
    :goto_39
    return-void
.end method

.method public whitelist resetIms(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9135
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9136
    if-eqz v0, :cond_9

    .line 9137
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->resetIms(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 9142
    :cond_9
    goto :goto_28

    .line 9139
    :catch_a
    move-exception p1

    .line 9140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggleImsOnOff, RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9141
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9140
    const-string v0, "TelephonyManager"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9143
    :goto_28
    return-void
.end method

.method public whitelist resetOtaEmergencyNumberDbFilePath()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15165
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15166
    if-eqz v0, :cond_a

    .line 15167
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->resetOtaEmergencyNumberDbFilePath()V

    .line 15174
    goto :goto_1f

    .line 15169
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 15171
    :catch_13
    move-exception v0

    .line 15172
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "resetOtaEmergencyNumberDbFilePath RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15173
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15175
    :goto_1f
    return-void
.end method

.method public whitelist resetRadioConfig()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8251
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist resetSettings()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13030
    :try_start_0
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetSettings: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13031
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13032
    if-eqz v0, :cond_2e

    .line 13033
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->factoryReset(ILjava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 13036
    :cond_2e
    goto :goto_30

    .line 13035
    :catch_2f
    move-exception v0

    .line 13037
    :goto_30
    return-void
.end method

.method public whitelist sendDialerSpecialCode(Ljava/lang/String;)V
    .registers 4

    .line 6250
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6251
    if-nez v0, :cond_7

    .line 6252
    return-void

    .line 6254
    :cond_7
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 6257
    goto :goto_2a

    .line 6255
    :catch_11
    move-exception p1

    .line 6256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Telephony#sendDialerSpecialCode RemoteException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelephonyManager"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6258
    :goto_2a
    return-void
.end method

.method public greylist-max-o sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 8120
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8121
    if-eqz v0, :cond_e

    .line 8122
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 8124
    :catch_b
    move-exception p1

    goto :goto_f

    .line 8123
    :catch_d
    move-exception p1

    .line 8125
    :cond_e
    nop

    .line 8126
    :goto_f
    const-string p1, ""

    return-object p1
.end method

.method public whitelist sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 8099
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist sendThermalMitigationRequest(Landroid/telephony/ThermalMitigationRequest;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17721
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17722
    if-eqz v0, :cond_13

    .line 17723
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 17724
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 17723
    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 17726
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1c

    .line 17727
    :catch_1c
    move-exception p1

    .line 17728
    const-string v0, "TelephonyManager"

    const-string v1, "Telephony#thermalMitigationRequest RemoteException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17729
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17731
    const/4 p1, 0x4

    return p1
.end method

.method public whitelist sendUssdRequest(Ljava/lang/String;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/os/Handler;)V
    .registers 6

    .line 11283
    const-string v0, "UssdResponseCallback cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11284
    nop

    .line 11286
    new-instance v0, Landroid/telephony/TelephonyManager$8;

    invoke-direct {v0, p0, p3, p2, p0}, Landroid/telephony/TelephonyManager$8;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/telephony/TelephonyManager;)V

    .line 11304
    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p2

    .line 11305
    if-eqz p2, :cond_18

    .line 11306
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result p3

    invoke-interface {p2, p3, p1, v0}, Lcom/android/internal/telephony/ITelephony;->handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 11314
    :cond_18
    goto :goto_36

    .line 11308
    :catch_19
    move-exception p2

    .line 11309
    const-string p3, "TelephonyManager"

    const-string v1, "Error calling ITelephony#sendUSSDCode"

    invoke-static {p3, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11310
    new-instance p2, Landroid/telephony/UssdResponse;

    const-string p3, ""

    invoke-direct {p2, p1, p3}, Landroid/telephony/UssdResponse;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11311
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 11312
    const-string p3, "USSD_RESPONSE"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11313
    const/4 p2, -0x2

    invoke-virtual {v0, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 11315
    :goto_36
    return-void
.end method

.method public whitelist sendVisualVoicemailSms(Ljava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 11

    .line 5784
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->sendVisualVoicemailSmsForSubscriber(ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 5785
    return-void
.end method

.method public greylist-max-o sendVisualVoicemailSmsForSubscriber(ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 14

    .line 5900
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5901
    if-eqz v0, :cond_1a

    .line 5902
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5903
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 5902
    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 5907
    :cond_1a
    goto :goto_1c

    .line 5906
    :catch_1b
    move-exception v0

    .line 5908
    :goto_1c
    return-void
.end method

.method public whitelist setAllowedCarriers(ILjava/util/List;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13802
    const/4 v0, -0x1

    if-eqz p2, :cond_2f

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2f

    .line 13808
    :cond_a
    invoke-static {}, Landroid/telephony/CarrierRestrictionRules;->newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p1

    .line 13809
    invoke-virtual {p1, p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p1

    .line 13811
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 13812
    const/4 v1, 0x1

    goto :goto_1b

    .line 13813
    :cond_1a
    const/4 v1, 0x0

    .line 13810
    :goto_1b
    invoke-virtual {p1, v1}, Landroid/telephony/CarrierRestrictionRules$Builder;->setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p1

    .line 13814
    invoke-virtual {p1}, Landroid/telephony/CarrierRestrictionRules$Builder;->build()Landroid/telephony/CarrierRestrictionRules;

    move-result-object p1

    .line 13816
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setCarrierRestrictionRules(Landroid/telephony/CarrierRestrictionRules;)I

    move-result p1

    .line 13819
    if-nez p1, :cond_2e

    .line 13820
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 13822
    :cond_2e
    return v0

    .line 13803
    :cond_2f
    :goto_2f
    return v0
.end method

.method public whitelist setAllowedNetworkTypes(J)Z
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10136
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10137
    if-eqz v0, :cond_18

    .line 10138
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->checkNetworkTypeBitmask(J)J

    move-result-wide v3

    .line 10139
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 10141
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 10139
    const/4 v2, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJLjava/lang/String;)Z

    move-result p1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    return p1

    .line 10145
    :cond_18
    goto :goto_23

    .line 10143
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 10144
    const-string p2, "TelephonyManager"

    const-string/jumbo v0, "setAllowedNetworkTypes RemoteException"

    invoke-static {p2, v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10146
    :goto_23
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setAllowedNetworkTypesForReason(IJ)V
    .registers 11

    .line 10238
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 10243
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10244
    if-eqz v1, :cond_1d

    .line 10245
    invoke-direct {p0, p2, p3}, Landroid/telephony/TelephonyManager;->checkNetworkTypeBitmask(J)J

    move-result-wide v4

    .line 10246
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    .line 10247
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 10246
    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJLjava/lang/String;)Z

    .line 10254
    goto :goto_33

    .line 10249
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_26} :catch_26

    .line 10251
    :catch_26
    move-exception v0

    move-object p1, v0

    .line 10252
    const-string p2, "TelephonyManager"

    const-string/jumbo p3, "setAllowedNetworkTypesForReason RemoteException"

    invoke-static {p2, p3, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10253
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10255
    :goto_33
    return-void

    .line 10239
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid AllowedNetworkTypesReason."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-p setBasebandVersionForPhone(ILjava/lang/String;)V
    .registers 4

    .line 12684
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12686
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v0

    .line 12685
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12687
    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->baseband_version(Ljava/util/List;)V

    .line 12689
    :cond_11
    return-void
.end method

.method public whitelist setCallComposerStatus(I)V
    .registers 4

    .line 10872
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->businessCallComposer()Z

    move-result v0

    const-string/jumbo v1, "requested status is invalid"

    if-eqz v0, :cond_15

    .line 10873
    const/4 v0, 0x2

    if-gt p1, v0, :cond_f

    if-ltz p1, :cond_f

    goto :goto_1a

    .line 10875
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10878
    :cond_15
    const/4 v0, 0x1

    if-gt p1, v0, :cond_34

    if-ltz p1, :cond_34

    .line 10884
    :goto_1a
    :try_start_1a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10885
    if-eqz v0, :cond_27

    .line 10886
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCallComposerStatus(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_28

    .line 10891
    :cond_27
    goto :goto_33

    .line 10888
    :catch_28
    move-exception p1

    .line 10889
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#setCallComposerStatus"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10890
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10892
    :goto_33
    return-void

    .line 10880
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setCallForwarding(Landroid/telephony/CallForwardingInfo;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CallForwardingInfo;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 16620
    const-string v0, "TelephonyManager"

    if-eqz p1, :cond_67

    .line 16623
    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->getReason()I

    move-result v1

    .line 16624
    if-ltz v1, :cond_5f

    const/4 v2, 0x5

    if-gt v1, v2, :cond_5f

    .line 16628
    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 16629
    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 16632
    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    .line 16633
    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->getTimeoutSeconds()I

    move-result v1

    if-lez v1, :cond_23

    goto :goto_33

    .line 16634
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callForwarding timeout isn\'t positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16630
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callForwarding number is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16637
    :cond_33
    :goto_33
    if-eqz p3, :cond_38

    .line 16638
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16641
    :cond_38
    new-instance v1, Landroid/telephony/TelephonyManager$16;

    invoke-direct {v1, p0, p2, p3}, Landroid/telephony/TelephonyManager$16;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 16650
    :try_start_3d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p2

    .line 16651
    if-eqz p2, :cond_5d

    .line 16652
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result p3

    invoke-interface {p2, p3, p1, v1}, Lcom/android/internal/telephony/ITelephony;->setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4a} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_4a} :catch_4b

    goto :goto_5d

    .line 16657
    :catch_4b
    move-exception p1

    .line 16658
    const-string/jumbo p2, "setCallForwarding NPE"

    invoke-static {v0, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16659
    throw p1

    .line 16654
    :catch_53
    move-exception p1

    .line 16655
    const-string/jumbo p2, "setCallForwarding RemoteException"

    invoke-static {v0, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16656
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16660
    :cond_5d
    :goto_5d
    nop

    .line 16661
    return-void

    .line 16626
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callForwardingReason is out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16621
    :cond_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callForwardingInfo is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setCallWaitingEnabled(ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 16798
    const-string v0, "TelephonyManager"

    if-eqz p3, :cond_7

    .line 16799
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16802
    :cond_7
    new-instance v1, Landroid/telephony/TelephonyManager$18;

    invoke-direct {v1, p0, p2, p3}, Landroid/telephony/TelephonyManager$18;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 16811
    :try_start_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p2

    .line 16812
    if-eqz p2, :cond_2c

    .line 16813
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result p3

    invoke-interface {p2, p3, p1, v1}, Lcom/android/internal/telephony/ITelephony;->setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_2c

    .line 16818
    :catch_1a
    move-exception p1

    .line 16819
    const-string/jumbo p2, "setCallWaitingStatus NPE"

    invoke-static {v0, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16820
    throw p1

    .line 16815
    :catch_22
    move-exception p1

    .line 16816
    const-string/jumbo p2, "setCallWaitingStatus RemoteException"

    invoke-static {v0, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16817
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16821
    :cond_2c
    :goto_2c
    nop

    .line 16822
    return-void
.end method

.method public whitelist setCarrierDataEnabled(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14141
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    .line 14144
    goto :goto_1e

    .line 14142
    :catch_5
    move-exception p1

    .line 14143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error calling setDataEnabledForReason e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelephonyManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14145
    :goto_1e
    return-void
.end method

.method public greylist-max-o setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .registers 5

    .line 4796
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 4797
    if-nez v0, :cond_7

    return-void

    .line 4798
    :cond_7
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->setCarrierInfoForImsiEncryption(ILjava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 4806
    nop

    .line 4807
    return-void

    .line 4803
    :catch_14
    move-exception p1

    .line 4804
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "setCarrierInfoForImsiEncryption RemoteException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4805
    return-void

    .line 4800
    :catch_1e
    move-exception p1

    .line 4802
    return-void
.end method

.method public whitelist setCarrierRestrictionRules(Landroid/telephony/CarrierRestrictionRules;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13933
    const-string v0, "Error calling ITelephony#setAllowedCarriers"

    const-string v1, "TelephonyManager"

    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 13934
    if-eqz v2, :cond_18

    .line 13935
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_f

    return p1

    .line 13939
    :catch_f
    move-exception p1

    .line 13940
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 13937
    :catch_14
    move-exception p1

    .line 13938
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13941
    :cond_18
    nop

    .line 13942
    :goto_19
    const/4 p1, 0x2

    return p1
.end method

.method public blacklist setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14717
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14718
    if-eqz v0, :cond_1a

    .line 14719
    nop

    .line 14720
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 14719
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/ITelephony;->setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 14725
    :cond_1a
    goto :goto_1c

    .line 14723
    :catch_1b
    move-exception v0

    .line 14726
    :goto_1c
    return-void
.end method

.method public blacklist setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    .line 14744
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14745
    if-eqz v0, :cond_1c

    .line 14746
    nop

    .line 14747
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 14746
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/ITelephony;->setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 14752
    :cond_1c
    goto :goto_1e

    .line 14750
    :catch_1d
    move-exception v0

    .line 14753
    :goto_1e
    return-void
.end method

.method public whitelist setCdmaRoamingMode(I)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11964
    return-void
.end method

.method public whitelist setCdmaSubscriptionMode(I)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12060
    return-void
.end method

.method public whitelist setCellBroadcastIdRanges(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 19461
    if-nez p3, :cond_4

    const/4 p2, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Landroid/telephony/TelephonyManager$22;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/TelephonyManager$22;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    move-object p2, v0

    .line 19474
    :goto_a
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p3

    .line 19475
    if-eqz p3, :cond_18

    .line 19476
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-interface {p3, v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setCellBroadcastIdRanges(ILjava/util/List;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 19482
    goto :goto_25

    .line 19478
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_21} :catch_21

    .line 19480
    :catch_21
    move-exception p1

    .line 19481
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19483
    :goto_25
    return-void
.end method

.method public blacklist setCellInfoListRate(II)V
    .registers 4

    .line 7269
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7270
    if-eqz v0, :cond_d

    .line 7271
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_d

    .line 7273
    :catch_a
    move-exception p1

    goto :goto_e

    .line 7272
    :catch_c
    move-exception p1

    .line 7274
    :cond_d
    :goto_d
    nop

    .line 7275
    :goto_e
    return-void
.end method

.method public whitelist setDataActivationState(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6025
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataActivationState(II)V

    .line 6026
    return-void
.end method

.method public greylist-max-o setDataActivationState(II)V
    .registers 4

    .line 6047
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6048
    if-eqz v0, :cond_d

    .line 6049
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setDataActivationState(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_d

    .line 6051
    :catch_a
    move-exception p1

    goto :goto_e

    .line 6050
    :catch_c
    move-exception p1

    .line 6052
    :cond_d
    :goto_d
    nop

    .line 6053
    :goto_e
    return-void
.end method

.method public whitelist setDataEnabled(IZ)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11806
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IIZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    .line 11809
    goto :goto_1e

    .line 11807
    :catch_5
    move-exception p1

    .line 11808
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error calling setDataEnabledForReason e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TelephonyManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11810
    :goto_1e
    return-void
.end method

.method public whitelist setDataEnabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11791
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 11792
    return-void
.end method

.method public whitelist setDataEnabledForReason(IZ)V
    .registers 4

    .line 14442
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IIZ)V

    .line 14443
    return-void
.end method

.method public greylist-max-o setDataNetworkType(I)V
    .registers 3

    .line 12906
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneId(I)I

    move-result v0

    .line 12907
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 12908
    return-void
.end method

.method public greylist-max-r setDataNetworkTypeForPhone(II)V
    .registers 4

    .line 12918
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 12920
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->data_network_type()Ljava/util/List;

    move-result-object v0

    .line 12921
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object p2

    .line 12919
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12922
    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->data_network_type(Ljava/util/List;)V

    .line 12924
    :cond_15
    return-void
.end method

.method public whitelist setDataRoamingEnabled(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12083
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12084
    if-eqz v0, :cond_12

    .line 12085
    nop

    .line 12086
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 12085
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabled(IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 12090
    :cond_12
    goto :goto_1b

    .line 12088
    :catch_13
    move-exception p1

    .line 12089
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#setDataRoamingEnabled"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12091
    :goto_1b
    return-void
.end method

.method public whitelist setEnableCellularIdentifierDisclosureNotifications(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19180
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19181
    if-eqz v0, :cond_a

    .line 19182
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setEnableCellularIdentifierDisclosureNotifications(Z)V

    .line 19189
    goto :goto_1f

    .line 19184
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 19186
    :catch_13
    move-exception p1

    .line 19187
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "setEnableCellularIdentifierDisclosureNotifications RemoteException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19188
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19190
    :goto_1f
    return-void
.end method

.method public whitelist setForbiddenPlmns(Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 9007
    const-string v1, "TelephonyManager"

    const/4 v2, -0x1

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 9008
    if-nez v3, :cond_a

    return v2

    .line 9009
    :cond_a
    nop

    .line 9010
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 9009
    const/4 v5, 0x2

    move-object v6, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/ITelephony;->setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1d} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1d} :catch_1e

    return p1

    .line 9013
    :catch_1e
    move-exception v0

    move-object p1, v0

    .line 9015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setForbiddenPlmns NullPointerException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 9011
    :catch_3c
    move-exception v0

    move-object p1, v0

    .line 9012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setForbiddenPlmns RemoteException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9016
    nop

    .line 9017
    :goto_5a
    return v2
.end method

.method public whitelist setIccLockEnabled(ZLjava/lang/String;)Landroid/telephony/PinResult;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16998
    const-string/jumbo v0, "setIccLockEnabled pin can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17000
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17001
    if-eqz v0, :cond_2e

    .line 17002
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setIccLockEnabled(IZLjava/lang/String;)I

    move-result p1

    .line 17003
    const p2, 0x7fffffff

    if-ne p1, p2, :cond_20

    .line 17004
    new-instance p1, Landroid/telephony/PinResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/telephony/PinResult;-><init>(II)V

    return-object p1

    .line 17005
    :cond_20
    if-gez p1, :cond_27

    .line 17006
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object p1

    return-object p1

    .line 17008
    :cond_27
    new-instance p2, Landroid/telephony/PinResult;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1}, Landroid/telephony/PinResult;-><init>(II)V

    return-object p2

    .line 17011
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_37} :catch_37

    .line 17013
    :catch_37
    move-exception p1

    .line 17014
    const-string p2, "TelephonyManager"

    const-string/jumbo v0, "setIccLockEnabled RemoteException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17015
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17017
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-r setImsRegistrationState(Z)V
    .registers 3

    .line 9233
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9234
    if-eqz v0, :cond_9

    .line 9235
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setImsRegistrationState(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 9237
    :cond_9
    goto :goto_b

    .line 9236
    :catch_a
    move-exception p1

    .line 9238
    :goto_b
    return-void
.end method

.method public greylist-max-o setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 5377
    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez p3, :cond_7

    const-string v1, ""

    goto :goto_8

    :cond_7
    move-object v1, p3

    :goto_8
    invoke-virtual {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->setCarrierPhoneNumber(ILjava/lang/String;)V

    .line 5379
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5380
    if-eqz v0, :cond_19

    .line 5381
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_16

    return p1

    .line 5383
    :catch_16
    move-exception p1

    goto :goto_1a

    .line 5382
    :catch_18
    move-exception p1

    .line 5384
    :cond_19
    nop

    .line 5385
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setLine1NumberForDisplay(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5356
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist setMobileDataPolicyEnabled(IZ)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16901
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16902
    if-eqz v0, :cond_d

    .line 16903
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setMobileDataPolicyEnabled(IIZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 16907
    :cond_d
    goto :goto_27

    .line 16905
    :catch_e
    move-exception p1

    .line 16906
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Telephony#setMobileDataPolicyEnabled RemoteException"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TelephonyManager"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16908
    :goto_27
    return-void
.end method

.method public whitelist setMultiSimCarrierRestriction(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15890
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15891
    if-eqz v0, :cond_9

    .line 15892
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setMultiSimCarrierRestriction(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 15896
    :cond_9
    goto :goto_13

    .line 15894
    :catch_a
    move-exception p1

    .line 15895
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "setMultiSimCarrierRestriction RemoteException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15897
    :goto_13
    return-void
.end method

.method public greylist-max-r setNetworkOperatorNameForPhone(ILjava/lang/String;)V
    .registers 6

    .line 12841
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 12843
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_alpha()Ljava/util/List;

    move-result-object v0

    .line 12842
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12845
    :try_start_e
    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->operator_alpha(Ljava/util/List;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_11} :catch_12

    .line 12862
    goto :goto_5a

    .line 12846
    :catch_12
    move-exception p2

    .line 12847
    const-string/jumbo v0, "setNetworkOperatorNameForPhone: "

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12849
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 12850
    rsub-int/lit8 v0, p2, 0x5b

    div-int/2addr v0, p2

    .line 12854
    const/4 p2, 0x0

    :goto_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_40

    .line 12855
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 12856
    nop

    .line 12857
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->truncateStringForUtf8Storage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 12856
    invoke-interface {p1, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12854
    :cond_3d
    add-int/lit8 p2, p2, 0x1

    goto :goto_23

    .line 12860
    :cond_40
    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->operator_alpha(Ljava/util/List;)V

    .line 12861
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "successfully truncated operator_alpha: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12864
    :cond_5a
    :goto_5a
    return-void
.end method

.method public greylist-max-r setNetworkOperatorNumericForPhone(ILjava/lang/String;)V
    .registers 4

    .line 12874
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12876
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_numeric()Ljava/util/List;

    move-result-object v0

    .line 12875
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12877
    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->operator_numeric(Ljava/util/List;)V

    .line 12879
    :cond_11
    return-void
.end method

.method public greylist-max-r setNetworkRoamingForPhone(IZ)V
    .registers 4

    .line 12889
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 12891
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_is_roaming()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 12890
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12892
    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->operator_is_roaming(Ljava/util/List;)V

    .line 12894
    :cond_15
    return-void
.end method

.method public whitelist setNetworkSelectionModeAutomatic()V
    .registers 4

    .line 9654
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9655
    if-eqz v1, :cond_1f

    .line 9656
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeAutomatic(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_1f

    .line 9660
    :catch_10
    move-exception v1

    .line 9661
    const-string/jumbo v2, "setNetworkSelectionModeAutomatic NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 9658
    :catch_18
    move-exception v1

    .line 9659
    const-string/jumbo v2, "setNetworkSelectionModeAutomatic RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9662
    :cond_1f
    :goto_1f
    nop

    .line 9663
    :goto_20
    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z
    .registers 5

    .line 9913
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9914
    if-eqz v0, :cond_10

    .line 9915
    nop

    .line 9916
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 9915
    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return p1

    .line 9920
    :cond_10
    goto :goto_1a

    .line 9918
    :catch_11
    move-exception p1

    .line 9919
    const-string p2, "TelephonyManager"

    const-string/jumbo v0, "setNetworkSelectionModeManual RemoteException"

    invoke-static {p2, v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9921
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setNetworkSelectionModeManual(Ljava/lang/String;Z)Z
    .registers 5

    .line 9853
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist setNetworkSelectionModeManual(Ljava/lang/String;ZI)Z
    .registers 6

    .line 9887
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p1, p3}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist setNrDualConnectivityState(I)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17195
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17196
    if-eqz v0, :cond_f

    .line 17197
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setNrDualConnectivityState(II)I

    move-result p1

    return p1

    .line 17199
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 17201
    :catch_18
    move-exception p1

    .line 17202
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "setNrDualConnectivityState RemoteException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17203
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17206
    const/4 p1, 0x4

    return p1
.end method

.method public blacklist setNullCipherAndIntegrityEnabled(Z)V
    .registers 4

    .line 19123
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19124
    if-eqz v0, :cond_a

    .line 19125
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setNullCipherAndIntegrityEnabled(Z)V

    .line 19132
    goto :goto_1f

    .line 19127
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 19129
    :catch_13
    move-exception p1

    .line 19130
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "setNullCipherAndIntegrityEnabled RemoteException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19131
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19133
    :goto_1f
    return-void
.end method

.method public whitelist setNullCipherNotificationsEnabled(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 19232
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 19233
    if-eqz v0, :cond_a

    .line 19234
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setNullCipherNotificationsEnabled(Z)V

    .line 19241
    goto :goto_1f

    .line 19236
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 19238
    :catch_13
    move-exception p1

    .line 19239
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "setEnableNullCipherNotifications RemoteException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19240
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19242
    :goto_1f
    return-void
.end method

.method public greylist-max-o setOperatorBrandOverride(ILjava/lang/String;)Z
    .registers 5

    .line 10518
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10519
    if-eqz v1, :cond_1c

    .line 10520
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_d

    return p1

    .line 10523
    :catch_d
    move-exception p1

    .line 10524
    const-string/jumbo p2, "setOperatorBrandOverride NPE"

    invoke-static {v0, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 10521
    :catch_15
    move-exception p1

    .line 10522
    const-string/jumbo p2, "setOperatorBrandOverride RemoteException"

    invoke-static {v0, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10525
    :cond_1c
    nop

    .line 10526
    :goto_1d
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setOperatorBrandOverride(Ljava/lang/String;)Z
    .registers 3

    .line 10498
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist setOpportunisticNetworkState(Z)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14816
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 14817
    :goto_d
    nop

    .line 14819
    const/4 v1, 0x0

    :try_start_f
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v2

    .line 14820
    if-eqz v2, :cond_1a

    .line 14821
    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/IOns;->setEnable(ZLjava/lang/String;)Z

    move-result p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b

    move v1, p1

    .line 14825
    :cond_1a
    goto :goto_23

    .line 14823
    :catch_1b
    move-exception p1

    .line 14824
    const-string v0, "TelephonyManager"

    const-string v2, "enableOpportunisticNetwork RemoteException"

    invoke-static {v0, v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14827
    :goto_23
    return v1
.end method

.method public greylist-max-p setPhoneType(II)V
    .registers 4

    .line 12722
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 12724
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->current_active_phone()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 12723
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12725
    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->current_active_phone(Ljava/util/List;)V

    .line 12727
    :cond_15
    return-void
.end method

.method public blacklist setPolicyDataEnabled(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14342
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    .line 14345
    goto :goto_1e

    .line 14343
    :catch_5
    move-exception p1

    .line 14344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error calling setDataEnabledForReason e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelephonyManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14346
    :goto_1e
    return-void
.end method

.method public greylist-max-r setPreferredNetworkType(II)Z
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10039
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10040
    if-eqz v0, :cond_17

    .line 10041
    nop

    .line 10043
    invoke-static {p2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p2

    int-to-long v3, p2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 10041
    const/4 v2, 0x0

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJLjava/lang/String;)Z

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return p1

    .line 10047
    :cond_17
    goto :goto_22

    .line 10045
    :catch_18
    move-exception v0

    move-object p1, v0

    .line 10046
    const-string p2, "TelephonyManager"

    const-string/jumbo v0, "setPreferredNetworkType RemoteException"

    invoke-static {p2, v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10048
    :goto_22
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setPreferredNetworkTypeBitmask(J)Z
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10081
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10082
    if-eqz v0, :cond_18

    .line 10083
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->checkNetworkTypeBitmask(J)J

    move-result-wide v3

    .line 10084
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 10086
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 10084
    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJLjava/lang/String;)Z

    move-result p1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    return p1

    .line 10090
    :cond_18
    goto :goto_23

    .line 10088
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 10089
    const-string p2, "TelephonyManager"

    const-string/jumbo v0, "setPreferredNetworkTypeBitmask RemoteException"

    invoke-static {p2, v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10091
    :goto_23
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setPreferredNetworkTypeToGlobal()Z
    .registers 2

    .line 10354
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkTypeToGlobal(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setPreferredNetworkTypeToGlobal(I)Z
    .registers 3

    .line 10367
    const/16 v0, 0x1b

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result p1

    return p1
.end method

.method public whitelist setPreferredOpportunisticDataSubscription(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 15620
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 15622
    :goto_d
    :try_start_d
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v1

    .line 15623
    if-nez v1, :cond_2c

    .line 15624
    const-wide/32 p1, 0xadbeeaa

    invoke-static {p1, p2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 15625
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Opportunistic Network Service is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15628
    :cond_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Null Opportunistic Network Service!"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15631
    :cond_2c
    new-instance v2, Landroid/telephony/TelephonyManager$12;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/TelephonyManager$12;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 15648
    nop

    .line 15649
    invoke-interface {v1, p1, p2, v2, v0}, Lcom/android/internal/telephony/IOns;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_35} :catch_36

    .line 15663
    goto :goto_4c

    .line 15651
    :catch_36
    move-exception p1

    .line 15652
    const-string p2, "TelephonyManager"

    const-string/jumbo v0, "setPreferredOpportunisticDataSubscription RemoteException"

    invoke-static {p2, v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15653
    if-eqz p3, :cond_4d

    if-nez p4, :cond_44

    goto :goto_4d

    .line 15656
    :cond_44
    new-instance p1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda15;

    invoke-direct {p1, p3, p4}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda15;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 15664
    :goto_4c
    return-void

    .line 15654
    :cond_4d
    :goto_4d
    return-void
.end method

.method public whitelist setRadio(Z)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11406
    nop

    .line 11408
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 11409
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->clearRadioPowerOffForReason(I)V

    goto :goto_b

    .line 11411
    :cond_8
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->requestRadioPowerOffForReason(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_d

    .line 11418
    :goto_b
    const/4 v0, 0x1

    goto :goto_2f

    .line 11413
    :catch_d
    move-exception v1

    .line 11415
    if-eqz p1, :cond_13

    const-string p1, "clearRadioPowerOffForReason"

    goto :goto_16

    :cond_13
    const-string/jumbo p1, "requestRadioPowerOffForReason"

    .line 11416
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TelephonyManager"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11417
    nop

    .line 11419
    :goto_2f
    return v0
.end method

.method public whitelist setRadioEnabled(Z)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14171
    const/4 v0, 0x2

    if-eqz p1, :cond_7

    .line 14172
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->clearRadioPowerOffForReason(I)V

    goto :goto_a

    .line 14174
    :cond_7
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->requestRadioPowerOffForReason(I)V

    .line 14176
    :goto_a
    return-void
.end method

.method public whitelist setRadioPower(Z)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11435
    nop

    .line 11437
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 11438
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->clearRadioPowerOffForReason(I)V

    goto :goto_b

    .line 11440
    :cond_8
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->requestRadioPowerOffForReason(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_d

    .line 11447
    :goto_b
    const/4 v0, 0x1

    goto :goto_2f

    .line 11442
    :catch_d
    move-exception v1

    .line 11444
    if-eqz p1, :cond_13

    const-string p1, "clearRadioPowerOffForReason"

    goto :goto_16

    :cond_13
    const-string/jumbo p1, "requestRadioPowerOffForReason"

    .line 11445
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TelephonyManager"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11446
    nop

    .line 11448
    :goto_2f
    return v0
.end method

.method public blacklist setRemovableEsimAsDefaultEuicc(Z)V
    .registers 4

    .line 18923
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18924
    if-eqz v0, :cond_d

    .line 18925
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 18929
    :cond_d
    goto :goto_27

    .line 18927
    :catch_e
    move-exception p1

    .line 18928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in setRemovableEsimAsDefault: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelephonyManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18930
    :goto_27
    return-void
.end method

.method public greylist-max-o setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 10580
    const-string v1, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10581
    if-eqz v0, :cond_1f

    .line 10582
    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/telephony/ITelephony;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_d} :catch_e

    return p1

    .line 10586
    :catch_e
    move-exception v0

    move-object p1, v0

    .line 10587
    const-string/jumbo p2, "setRoamingOverride NPE"

    invoke-static {v1, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 10584
    :catch_17
    move-exception v0

    move-object p1, v0

    .line 10585
    const-string/jumbo p2, "setRoamingOverride RemoteException"

    invoke-static {v1, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10588
    :cond_1f
    nop

    .line 10589
    :goto_20
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-r setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 10552
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public whitelist setSignalStrengthUpdateRequest(Landroid/telephony/SignalStrengthUpdateRequest;)V
    .registers 5

    .line 18146
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18149
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18150
    if-eqz v0, :cond_17

    .line 18151
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    .line 18155
    :cond_17
    goto :goto_20

    .line 18153
    :catch_18
    move-exception p1

    .line 18154
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#setSignalStrengthUpdateRequest"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18156
    :goto_20
    return-void
.end method

.method public greylist-max-o setSimCountryIso(Ljava/lang/String;)V
    .registers 3

    .line 12433
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 12434
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 12435
    return-void
.end method

.method public greylist-max-p setSimCountryIsoForPhone(ILjava/lang/String;)V
    .registers 4

    .line 12444
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12446
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_iso_country()Ljava/util/List;

    move-result-object v0

    .line 12445
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12447
    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->icc_operator_iso_country(Ljava/util/List;)V

    .line 12449
    :cond_11
    return-void
.end method

.method public greylist-max-p setSimOperatorNameForPhone(ILjava/lang/String;)V
    .registers 4

    .line 12420
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12422
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_alpha()Ljava/util/List;

    move-result-object v0

    .line 12421
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12423
    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->icc_operator_alpha(Ljava/util/List;)V

    .line 12425
    :cond_11
    return-void
.end method

.method public greylist-max-r setSimOperatorNumericForPhone(ILjava/lang/String;)V
    .registers 4

    .line 12406
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12408
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_numeric()Ljava/util/List;

    move-result-object v0

    .line 12407
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12409
    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->icc_operator_numeric(Ljava/util/List;)V

    .line 12411
    :cond_11
    return-void
.end method

.method public whitelist setSimPowerState(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12540
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimPowerStateForSlot(II)V

    .line 12541
    return-void
.end method

.method public whitelist setSimPowerState(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 12609
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setSimPowerStateForSlot(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 12610
    return-void
.end method

.method public whitelist setSimPowerStateForSlot(II)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12570
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12571
    if-eqz v1, :cond_19

    .line 12572
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setSimPowerStateForSlot(II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_13
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_19

    .line 12576
    :catch_c
    move-exception p1

    .line 12577
    const-string p2, "Permission error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 12574
    :catch_13
    move-exception p1

    .line 12575
    const-string p2, "Error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12578
    :cond_19
    :goto_19
    nop

    .line 12579
    :goto_1a
    return-void
.end method

.method public whitelist setSimPowerStateForSlot(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 12642
    const-string v0, "TelephonyManager"

    if-eqz p2, :cond_14

    const/4 v1, 0x1

    if-eq p2, v1, :cond_14

    const/4 v1, 0x2

    if-ne p2, v1, :cond_b

    goto :goto_14

    .line 12644
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "requested SIM state is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12647
    :cond_14
    :goto_14
    :try_start_14
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12648
    if-eqz v1, :cond_37

    .line 12650
    new-instance v2, Landroid/telephony/TelephonyManager$9;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/TelephonyManager$9;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 12657
    if-nez v1, :cond_33

    .line 12658
    const-wide/32 p1, 0xadbeeaa

    invoke-static {p1, p2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 12661
    return-void

    .line 12659
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telephony is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12664
    :cond_33
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/ITelephony;->setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V

    goto :goto_54

    .line 12648
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telephony is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3f} :catch_46
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_3f} :catch_3f

    .line 12669
    :catch_3f
    move-exception p1

    .line 12670
    const-string p2, "Permission error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 12665
    :catch_46
    move-exception p1

    .line 12666
    const-string p2, "Error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12667
    new-instance p1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;

    invoke-direct {p1, p3, p4}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 12672
    :goto_54
    nop

    .line 12673
    :goto_55
    return-void
.end method

.method public whitelist setSimSlotMapping(Ljava/util/Collection;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)V"
        }
    .end annotation

    .line 4506
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4507
    if-eqz v0, :cond_2b

    .line 4508
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isSlotMappingValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4509
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setSimSlotMapping(Ljava/util/List;)Z

    move-result p1

    .line 4510
    if-eqz p1, :cond_1a

    .line 4513
    nop

    .line 4521
    nop

    .line 4522
    return-void

    .line 4511
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setSimSlotMapping has failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4514
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate UiccSlotMapping data found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4517
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_34

    .line 4519
    :catch_34
    move-exception p1

    .line 4520
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setSimState(Ljava/lang/String;)V
    .registers 3

    .line 12457
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 12458
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 12459
    return-void
.end method

.method public greylist-max-p setSimStateForPhone(ILjava/lang/String;)V
    .registers 4

    .line 12468
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12470
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->sim_state()Ljava/util/List;

    move-result-object v0

    .line 12469
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12471
    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->sim_state(Ljava/util/List;)V

    .line 12473
    :cond_11
    return-void
.end method

.method public whitelist setSystemSelectionChannels(Ljava/util/List;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;)V"
        }
    .end annotation

    .line 16367
    const-string v0, "Specifiers must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16368
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/TelephonyManager;->setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 16369
    return-void
.end method

.method public whitelist setSystemSelectionChannels(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 16348
    const-string v0, "Specifiers must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16349
    const-string v0, "Executor must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16350
    const-string v0, "Callback must not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16351
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 16352
    return-void
.end method

.method public blacklist setTestEuiccUiComponent(Landroid/content/ComponentName;)V
    .registers 5

    .line 19618
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 19619
    if-eqz v1, :cond_d

    .line 19623
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setTestEuiccUiComponent(Landroid/content/ComponentName;)V

    .line 19627
    nop

    .line 19628
    return-void

    .line 19620
    :cond_d
    const-string/jumbo p1, "setTestEuiccUiComponent(): ITelephony instance is NULL"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19621
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony service not available."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1b} :catch_1b

    .line 19624
    :catch_1b
    move-exception p1

    .line 19625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTestEuiccUiComponent() RemoteException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19626
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setVisualVoicemailEnabled(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5649
    return-void
.end method

.method public whitelist setVisualVoicemailSmsFilterSettings(Landroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .registers 3

    .line 5750
    if-nez p1, :cond_8

    .line 5751
    iget p1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->disableVisualVoicemailSmsFilter(I)V

    goto :goto_d

    .line 5753
    :cond_8
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->enableVisualVoicemailSmsFilter(ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    .line 5755
    :goto_d
    return-void
.end method

.method public blacklist setVoNrEnabled(Z)I
    .registers 4

    .line 14234
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14235
    if-eqz v0, :cond_14

    .line 14236
    nop

    .line 14237
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 14236
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVoNrEnabled(IZ)I

    move-result p1

    return p1

    .line 14239
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1d

    .line 14241
    :catch_1d
    move-exception p1

    .line 14242
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#setVoNrEnabled"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14245
    const/4 p1, 0x4

    return p1
.end method

.method public whitelist setVoiceActivationState(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5974
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setVoiceActivationState(II)V

    .line 5975
    return-void
.end method

.method public greylist-max-o setVoiceActivationState(II)V
    .registers 4

    .line 5995
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5996
    if-eqz v0, :cond_d

    .line 5997
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoiceActivationState(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_d

    .line 5999
    :catch_a
    move-exception p1

    goto :goto_e

    .line 5998
    :catch_c
    move-exception p1

    .line 6000
    :cond_d
    :goto_d
    nop

    .line 6001
    :goto_e
    return-void
.end method

.method public greylist-max-o setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 5623
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5624
    if-eqz v0, :cond_e

    .line 5625
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    .line 5627
    :catch_b
    move-exception p1

    goto :goto_f

    .line 5626
    :catch_d
    move-exception p1

    .line 5628
    :cond_e
    nop

    .line 5629
    :goto_f
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 5608
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist setVoiceServiceStateOverride(Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18854
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 18855
    if-eqz v0, :cond_12

    .line 18858
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setVoiceServiceStateOverride(IZLjava/lang/String;)V

    .line 18861
    goto :goto_1e

    .line 18856
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1a

    .line 18859
    :catch_1a
    move-exception p1

    .line 18860
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 18862
    :goto_1e
    return-void
.end method

.method public whitelist setVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13410
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13411
    if-eqz v0, :cond_d

    .line 13412
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 13416
    :cond_d
    goto :goto_16

    .line 13414
    :catch_e
    move-exception p1

    .line 13415
    const-string p2, "TelephonyManager"

    const-string v0, "Error calling ITelephony#setVoicemailRingtoneUri"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13417
    :goto_16
    return-void
.end method

.method public whitelist setVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13464
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13465
    if-eqz v0, :cond_d

    .line 13466
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 13471
    :cond_d
    goto :goto_16

    .line 13469
    :catch_e
    move-exception p1

    .line 13470
    const-string p2, "TelephonyManager"

    const-string v0, "Error calling ITelephony#isVoicemailVibrationEnabled"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13472
    :goto_16
    return-void
.end method

.method public whitelist shutdownAllRadios()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11577
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11578
    if-eqz v0, :cond_9

    .line 11579
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 11584
    :cond_9
    goto :goto_15

    .line 11581
    :catch_a
    move-exception v0

    .line 11582
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#shutdownAllRadios"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11583
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 11585
    :goto_15
    return-void
.end method

.method public greylist silenceRinger()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10996
    return-void
.end method

.method public whitelist supplyIccLockPin(Ljava/lang/String;)Landroid/telephony/PinResult;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11172
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11173
    if-eqz v0, :cond_1a

    .line 11174
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object p1

    .line 11175
    new-instance v0, Landroid/telephony/PinResult;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-direct {v0, v1, p1}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v0

    .line 11177
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_23

    .line 11179
    :catch_23
    move-exception p1

    .line 11180
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#supplyIccLockPin"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11181
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11183
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object p1

    return-object p1
.end method

.method public whitelist supplyIccLockPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11210
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11211
    if-eqz v0, :cond_1a

    .line 11212
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    .line 11213
    new-instance p2, Landroid/telephony/PinResult;

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-direct {p2, v0, p1}, Landroid/telephony/PinResult;-><init>(II)V

    return-object p2

    .line 11215
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "telephony service is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_23

    .line 11217
    :catch_23
    move-exception p1

    .line 11218
    const-string p2, "TelephonyManager"

    const-string v0, "Error calling ITelephony#supplyIccLockPuk"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11219
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11221
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object p1

    return-object p1
.end method

.method public whitelist supplyPin(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11077
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11078
    if-eqz v0, :cond_f

    .line 11079
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return p1

    .line 11082
    :cond_f
    goto :goto_18

    .line 11080
    :catch_10
    move-exception p1

    .line 11081
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#supplyPinForSubscriber"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11083
    :goto_18
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist supplyPinReportResult(Ljava/lang/String;)[I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11118
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11119
    if-eqz v0, :cond_f

    .line 11120
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object p1

    .line 11123
    :cond_f
    goto :goto_18

    .line 11121
    :catch_10
    move-exception p1

    .line 11122
    const-string v0, "TelephonyManager"

    const-string v1, "Error calling ITelephony#supplyPinReportResultForSubscriber"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11124
    :goto_18
    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public whitelist supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11096
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11097
    if-eqz v0, :cond_f

    .line 11098
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return p1

    .line 11101
    :cond_f
    goto :goto_18

    .line 11099
    :catch_10
    move-exception p1

    .line 11100
    const-string p2, "TelephonyManager"

    const-string v0, "Error calling ITelephony#supplyPukForSubscriber"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11102
    :goto_18
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11140
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11141
    if-eqz v0, :cond_f

    .line 11142
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object p1

    .line 11145
    :cond_f
    goto :goto_18

    .line 11143
    :catch_10
    move-exception p1

    .line 11144
    const-string p2, "TelephonyManager"

    const-string v0, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11146
    :goto_18
    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public whitelist switchMultiSimConfig(I)V
    .registers 4

    .line 15980
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15981
    if-eqz v0, :cond_9

    .line 15982
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->switchMultiSimConfig(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 15986
    :cond_9
    goto :goto_13

    .line 15984
    :catch_a
    move-exception p1

    .line 15985
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "switchMultiSimConfig RemoteException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15987
    :goto_13
    return-void
.end method

.method public whitelist switchSlots([I)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4390
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4391
    if-nez v1, :cond_8

    .line 4392
    return v0

    .line 4394
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->switchSlots([I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    return p1

    .line 4395
    :catch_d
    move-exception p1

    .line 4396
    return v0
.end method

.method public whitelist toggleRadioOnOff()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11385
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11386
    if-eqz v0, :cond_9

    .line 11387
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 11390
    :cond_9
    goto :goto_12

    .line 11388
    :catch_a
    move-exception v0

    .line 11389
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11391
    :goto_12
    return-void
.end method

.method public whitelist unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 18902
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_27

    .line 18904
    if-eqz p1, :cond_1f

    .line 18907
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    .line 18909
    if-eqz v0, :cond_16

    .line 18911
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyRegistryManager;->removeCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 18912
    return-void

    .line 18909
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18905
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CarrierPrivilegesCallback must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18903
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
    .registers 10

    .line 17890
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony service is null."

    if-eqz v0, :cond_3e

    .line 17894
    const-string/jumbo v0, "unregisterTelephonyCallback: cannot unregister a null callback"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17897
    iget-object v0, p1, Landroid/telephony/TelephonyCallback;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-nez v0, :cond_12

    return-void

    .line 17899
    :cond_12
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/TelephonyRegistryManager;

    .line 17901
    if-eqz v2, :cond_38

    .line 17903
    iget v3, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 17904
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    move v7, v0

    .line 17903
    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/TelephonyRegistryManager;->unregisterTelephonyCallback(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;Z)V

    .line 17905
    return-void

    .line 17901
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17891
    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist updateAvailableNetworks(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/AvailableNetworkInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 15725
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "<unknown>"

    .line 15726
    :goto_d
    const-string v1, "availableNetworks must not be null."

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15728
    :try_start_12
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v1

    .line 15729
    if-nez v1, :cond_31

    .line 15730
    const-wide/32 v0, 0xadbeeaa

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 15731
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Opportunistic Network Service is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15734
    :cond_29
    new-instance p1, Landroid/os/RemoteException;

    const-string v0, "Null Opportunistic Network Service!"

    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15738
    :cond_31
    new-instance v2, Landroid/telephony/TelephonyManager$13;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/TelephonyManager$13;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 15750
    nop

    .line 15751
    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/telephony/IOns;->updateAvailableNetworks(Ljava/util/List;Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_3a} :catch_3b

    .line 15764
    goto :goto_51

    .line 15752
    :catch_3b
    move-exception p1

    .line 15753
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "updateAvailableNetworks RemoteException"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15754
    if-eqz p2, :cond_52

    if-nez p3, :cond_49

    goto :goto_52

    .line 15757
    :cond_49
    new-instance p1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;

    invoke-direct {p1, p2, p3}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 15765
    :goto_51
    return-void

    .line 15755
    :cond_52
    :goto_52
    return-void
.end method

.method public whitelist updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15134
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15135
    if-eqz v0, :cond_a

    .line 15136
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    .line 15143
    goto :goto_1f

    .line 15138
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telephony service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 15140
    :catch_13
    move-exception p1

    .line 15141
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "updateOtaEmergencyNumberDbFilePath RemoteException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15142
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15144
    :goto_1f
    return-void
.end method

.method public whitelist updateServiceLocation()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11668
    const-string v0, "TelephonyManager"

    const-string v1, "Do not call TelephonyManager#updateServiceLocation()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11669
    return-void
.end method

.method public whitelist uploadCallComposerPicture(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/ParcelUuid;",
            "Landroid/telephony/TelephonyManager$CallComposerException;",
            ">;)V"
        }
    .end annotation

    .line 5052
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5053
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5054
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5056
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5057
    if-eqz v0, :cond_65

    .line 5064
    :try_start_f
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createReliablePipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 5065
    const/4 v2, 0x1

    aget-object v6, v1, v2

    .line 5066
    const/4 v2, 0x0

    aget-object v4, v1, v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_5a

    .line 5071
    nop

    .line 5073
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v7, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 5076
    :try_start_1f
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/telephony/TelephonyManager$3;

    const/4 v3, 0x0

    invoke-direct {v5, p0, v3, p3, p4}, Landroid/telephony/TelephonyManager$3;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_33} :catch_34

    .line 5101
    goto :goto_51

    .line 5098
    :catch_34
    move-exception v0

    move-object p2, v0

    .line 5099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception uploading call composer pic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5100
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 5103
    :goto_51
    new-instance p2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda22;

    invoke-direct {p2, p1, p4, v6, v7}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda22;-><init>(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    invoke-interface {p3, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5172
    return-void

    .line 5067
    :catch_5a
    move-exception v0

    move-object p1, v0

    .line 5068
    new-instance p2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda21;

    invoke-direct {p2, p4, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda21;-><init>(Landroid/os/OutcomeReceiver;Ljava/io/IOException;)V

    invoke-interface {p3, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5070
    return-void

    .line 5058
    :cond_65
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telephony service not available."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist uploadCallComposerPicture(Ljava/nio/file/Path;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/ParcelUuid;",
            "Landroid/telephony/TelephonyManager$CallComposerException;",
            ">;)V"
        }
    .end annotation

    .line 4942
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4943
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4944
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4948
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 4949
    const-string v1, "android.app.role.DIALER"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4953
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/TelephonyManager;Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    invoke-interface {v6, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5011
    return-void

    .line 4950
    :cond_29
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "You must hold RoleManager.ROLE_DIALER to do this"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
