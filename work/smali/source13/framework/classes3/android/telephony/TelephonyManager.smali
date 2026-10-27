.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;,
        Landroid/telephony/TelephonyManager$ModemErrorException;,
        Landroid/telephony/TelephonyManager$TimeoutException;,
        Landroid/telephony/TelephonyManager$NetworkSlicingException;,
        Landroid/telephony/TelephonyManager$PrepareUnattendedRebootResult;,
        Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;,
        Landroid/telephony/TelephonyManager$AuthenticationFailureReason;,
        Landroid/telephony/TelephonyManager$IncludeLocationData;,
        Landroid/telephony/TelephonyManager$RadioInterfaceCapability;,
        Landroid/telephony/TelephonyManager$DeathRecipient;,
        Landroid/telephony/TelephonyManager$NrDualConnectivityState;,
        Landroid/telephony/TelephonyManager$EnableNrDualConnectivityResult;,
        Landroid/telephony/TelephonyManager$MobileDataPolicy;,
        Landroid/telephony/TelephonyManager$CallWaitingStatus;,
        Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;,
        Landroid/telephony/TelephonyManager$IsMultiSimSupportedResult;,
        Landroid/telephony/TelephonyManager$UpdateAvailableNetworksResult;,
        Landroid/telephony/TelephonyManager$SetOpportunisticSubscriptionResult;,
        Landroid/telephony/TelephonyManager$NetworkTypeBitMask;,
        Landroid/telephony/TelephonyManager$DataEnabledChangedReason;,
        Landroid/telephony/TelephonyManager$DataEnabledReason;,
        Landroid/telephony/TelephonyManager$EnableVoNrResult;,
        Landroid/telephony/TelephonyManager$SetSimPowerStateResult;,
        Landroid/telephony/TelephonyManager$SetCarrierRestrictionResult;,
        Landroid/telephony/TelephonyManager$ModemActivityInfoException;,
        Landroid/telephony/TelephonyManager$SimPowerState;,
        Landroid/telephony/TelephonyManager$CdmaSubscription;,
        Landroid/telephony/TelephonyManager$UssdResponseCallback;,
        Landroid/telephony/TelephonyManager$CallComposerStatus;,
        Landroid/telephony/TelephonyManager$AllowedNetworkTypesReason;,
        Landroid/telephony/TelephonyManager$PrefNetworkMode;,
        Landroid/telephony/TelephonyManager$CellInfoCallback;,
        Landroid/telephony/TelephonyManager$EriIconMode;,
        Landroid/telephony/TelephonyManager$EriIconIndex;,
        Landroid/telephony/TelephonyManager$DataState;,
        Landroid/telephony/TelephonyManager$CallComposerException;,
        Landroid/telephony/TelephonyManager$SimState;,
        Landroid/telephony/TelephonyManager$SimCombinationWarningType;,
        Landroid/telephony/TelephonyManager$DefaultSubscriptionSelectType;,
        Landroid/telephony/TelephonyManager$CdmaRoamingMode;,
        Landroid/telephony/TelephonyManager$MultiSimVoiceCapability;,
        Landroid/telephony/TelephonyManager$MultiSimVariants;,
        Landroid/telephony/TelephonyManager$KeyType;,
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

.field public static final whitelist ALLOWED_NETWORK_TYPES_REASON_USER:I = 0x0

.field public static final whitelist APPTYPE_CSIM:I = 0x4

.field public static final whitelist APPTYPE_ISIM:I = 0x5

.field public static final whitelist APPTYPE_RUIM:I = 0x3

.field public static final whitelist APPTYPE_SIM:I = 0x1

.field public static final whitelist APPTYPE_UNKNOWN:I = 0x0

.field public static final whitelist APPTYPE_USIM:I = 0x2

.field public static final whitelist AUTHTYPE_EAP_AKA:I = 0x81

.field public static final whitelist AUTHTYPE_EAP_SIM:I = 0x80

.field public static final blacklist CACHE_KEY_PHONE_ACCOUNT_TO_SUBID:Ljava/lang/String; = "cache_key.telephony.phone_account_to_subid"

.field private static final blacklist CACHE_MAX_SIZE:I = 0x4

.field private static final blacklist CALLBACK_ON_MORE_ERROR_CODE_CHANGE:J = 0x7c8ba7fL

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

.field public static final whitelist CDMA_ROAMING_MODE_AFFILIATED:I = 0x1

.field public static final whitelist CDMA_ROAMING_MODE_ANY:I = 0x2

.field public static final whitelist CDMA_ROAMING_MODE_HOME:I = 0x0

.field public static final whitelist CDMA_ROAMING_MODE_RADIO_DEFAULT:I = -0x1

.field public static final whitelist CDMA_SUBSCRIPTION_NV:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CDMA_SUBSCRIPTION_RUIM_SIM:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CDMA_SUBSCRIPTION_UNKNOWN:I = -0x1
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

.field public static final blacklist ERI_ICON_MODE_FLASH:I = 0x1

.field public static final blacklist ERI_ICON_MODE_NORMAL:I = 0x0

.field public static final whitelist ERI_OFF:I = 0x1

.field public static final whitelist ERI_ON:I = 0x0

.field public static final greylist-max-o EVENT_CALL_FORWARDED:Ljava/lang/String; = "android.telephony.event.EVENT_CALL_FORWARDED"

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

.field public static final whitelist EXTRA_HIDE_PUBLIC_SETTINGS:Ljava/lang/String; = "android.telephony.extra.HIDE_PUBLIC_SETTINGS"

.field public static final whitelist EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_IS_REFRESH:Ljava/lang/String; = "android.telephony.extra.IS_REFRESH"

.field public static final blacklist EXTRA_LAST_KNOWN_NETWORK_COUNTRY:Ljava/lang/String; = "android.telephony.extra.LAST_KNOWN_NETWORK_COUNTRY"

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

.field public static final blacklist EXTRA_SHOW_PLMN:Ljava/lang/String; = "android.telephony.extra.SHOW_PLMN"

.field public static final blacklist EXTRA_SHOW_SPN:Ljava/lang/String; = "android.telephony.extra.SHOW_SPN"

.field public static final blacklist EXTRA_SIM_COMBINATION_NAMES:Ljava/lang/String; = "android.telephony.extra.SIM_COMBINATION_NAMES"

.field public static final blacklist EXTRA_SIM_COMBINATION_WARNING_TYPE:Ljava/lang/String; = "android.telephony.extra.SIM_COMBINATION_WARNING_TYPE"

.field public static final blacklist EXTRA_SIM_COMBINATION_WARNING_TYPE_DUAL_CDMA:I = 0x1

.field public static final blacklist EXTRA_SIM_COMBINATION_WARNING_TYPE_NONE:I = 0x0

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

.field private static final blacklist MAXIMUM_CALL_COMPOSER_PICTURE_SIZE:I = 0x13880

.field private static final blacklist MAX_NUMBER_VERIFICATION_TIMEOUT_MILLIS:J = 0xea60L

.field public static final whitelist METADATA_HIDE_VOICEMAIL_SETTINGS_MENU:Ljava/lang/String; = "android.telephony.HIDE_VOICEMAIL_SETTINGS_MENU"

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

.field public static final blacklist NETWORK_MODE_CDMA_NO_EVDO:I = 0x5

.field public static final blacklist NETWORK_MODE_EVDO_NO_CDMA:I = 0x6

.field public static final blacklist NETWORK_MODE_GLOBAL:I = 0x7

.field public static final blacklist NETWORK_MODE_GSM_ONLY:I = 0x1

.field public static final blacklist NETWORK_MODE_GSM_UMTS:I = 0x3

.field public static final blacklist NETWORK_MODE_LTE_CDMA_EVDO:I = 0x8

.field public static final blacklist NETWORK_MODE_LTE_CDMA_EVDO_GSM_WCDMA:I = 0xa

.field public static final blacklist NETWORK_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final blacklist NETWORK_MODE_LTE_ONLY:I = 0xb

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA:I = 0xf

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x16

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA_GSM:I = 0x11

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA_GSM_WCDMA:I = 0x14

.field public static final blacklist NETWORK_MODE_LTE_TDSCDMA_WCDMA:I = 0x13

.field public static final blacklist NETWORK_MODE_LTE_WCDMA:I = 0xc

.field public static final blacklist NETWORK_MODE_NR_LTE:I = 0x18

.field public static final blacklist NETWORK_MODE_NR_LTE_CDMA_EVDO:I = 0x19

.field public static final blacklist NETWORK_MODE_NR_LTE_CDMA_EVDO_GSM_WCDMA:I = 0x1b

.field public static final blacklist NETWORK_MODE_NR_LTE_GSM_WCDMA:I = 0x1a

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA:I = 0x1d

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x21

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA_GSM:I = 0x1e

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA_GSM_WCDMA:I = 0x20

.field public static final blacklist NETWORK_MODE_NR_LTE_TDSCDMA_WCDMA:I = 0x1f

.field public static final blacklist NETWORK_MODE_NR_LTE_WCDMA:I = 0x1c

.field public static final blacklist NETWORK_MODE_NR_ONLY:I = 0x17

.field public static final blacklist NETWORK_MODE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x15

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

.field private static final blacklist NETWORK_TYPES:[I

.field public static final whitelist NETWORK_TYPE_1xRTT:I = 0x7

.field public static final whitelist NETWORK_TYPE_BITMASK_1xRTT:J = 0x40L

.field public static final whitelist NETWORK_TYPE_BITMASK_CDMA:J = 0x8L

.field public static final whitelist NETWORK_TYPE_BITMASK_EDGE:J = 0x2L

.field public static final whitelist NETWORK_TYPE_BITMASK_EHRPD:J = 0x2000L

.field public static final whitelist NETWORK_TYPE_BITMASK_EVDO_0:J = 0x10L

.field public static final whitelist NETWORK_TYPE_BITMASK_EVDO_A:J = 0x20L

.field public static final whitelist NETWORK_TYPE_BITMASK_EVDO_B:J = 0x800L

.field public static final whitelist NETWORK_TYPE_BITMASK_GPRS:J = 0x1L

.field public static final whitelist NETWORK_TYPE_BITMASK_GSM:J = 0x8000L

.field public static final whitelist NETWORK_TYPE_BITMASK_HSDPA:J = 0x80L

.field public static final whitelist NETWORK_TYPE_BITMASK_HSPA:J = 0x200L

.field public static final whitelist NETWORK_TYPE_BITMASK_HSPAP:J = 0x4000L

.field public static final whitelist NETWORK_TYPE_BITMASK_HSUPA:J = 0x100L

.field public static final whitelist NETWORK_TYPE_BITMASK_IWLAN:J = 0x20000L

.field public static final whitelist NETWORK_TYPE_BITMASK_LTE:J = 0x1000L

.field public static final whitelist NETWORK_TYPE_BITMASK_LTE_CA:J = 0x40000L

.field public static final whitelist NETWORK_TYPE_BITMASK_NR:J = 0x80000L

.field public static final whitelist NETWORK_TYPE_BITMASK_TD_SCDMA:J = 0x10000L

.field public static final whitelist NETWORK_TYPE_BITMASK_UMTS:J = 0x4L

.field public static final whitelist NETWORK_TYPE_BITMASK_UNKNOWN:J = 0x0L

.field public static final whitelist NETWORK_TYPE_CDMA:I = 0x4

.field public static final whitelist NETWORK_TYPE_EDGE:I = 0x2

.field public static final whitelist NETWORK_TYPE_EHRPD:I = 0xe

.field public static final whitelist NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final whitelist NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final whitelist NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final whitelist NETWORK_TYPE_GPRS:I = 0x1

.field public static final whitelist NETWORK_TYPE_GSM:I = 0x10

.field public static final whitelist NETWORK_TYPE_HSDPA:I = 0x8

.field public static final whitelist NETWORK_TYPE_HSPA:I = 0xa

.field public static final whitelist NETWORK_TYPE_HSPAP:I = 0xf

.field public static final whitelist NETWORK_TYPE_HSUPA:I = 0x9

.field public static final whitelist NETWORK_TYPE_IDEN:I = 0xb

.field public static final whitelist NETWORK_TYPE_IWLAN:I = 0x12

.field public static final whitelist NETWORK_TYPE_LTE:I = 0xd

.field public static final greylist-max-r NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final whitelist NETWORK_TYPE_NR:I = 0x14

.field public static final whitelist NETWORK_TYPE_NR_CA:I = 0x1e

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

.field public static final whitelist PHONE_TYPE_GSM:I = 0x1

.field public static final blacklist PHONE_TYPE_IMS:I = 0x5

.field public static final whitelist PHONE_TYPE_NONE:I = 0x0

.field public static final whitelist PHONE_TYPE_SIP:I = 0x3

.field public static final blacklist PHONE_TYPE_THIRD_PARTY:I = 0x4

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

.field public static final whitelist RADIO_POWER_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RADIO_POWER_ON:I = 0x1
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

.field private static final blacklist WECHAT_PKG_NAME:Ljava/lang/String; = "com.tencent.mm"

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

.field private blacklist mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

.field private greylist-max-o mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/telephony/TelephonyManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetITelephony(Landroid/telephony/TelephonyManager;)Lcom/android/internal/telephony/ITelephony;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/TelephonyManager;->createThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smresetServiceCache()V
    .registers 0

    invoke-static {}, Landroid/telephony/TelephonyManager;->resetServiceCache()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 353
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    .line 356
    const/4 v0, 0x1

    sput-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    .line 367
    new-instance v0, Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager$DeathRecipient;-><init>(Landroid/telephony/TelephonyManager$DeathRecipient-IA;)V

    sput-object v0, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    .line 446
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 889
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 895
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 901
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 3010
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Landroid/telephony/TelephonyManager;->NETWORK_TYPES:[I

    .line 8846
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    sput v0, Landroid/telephony/TelephonyManager;->DEFAULT_PREFERRED_NETWORK_MODE:I

    return-void

    nop

    :array_40
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

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Landroid/telephony/TelephonyManager$1;

    const/4 v1, 0x4

    const-string v2, "cache_key.telephony.phone_account_to_subid"

    invoke-direct {v0, p0, v1, v2}, Landroid/telephony/TelephonyManager$1;-><init>(Landroid/telephony/TelephonyManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 443
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 444
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 427
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 428
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Landroid/telephony/TelephonyManager$1;

    const/4 v1, 0x4

    const-string v2, "cache_key.telephony.phone_account_to_subid"

    invoke-direct {v0, p0, v1, v2}, Landroid/telephony/TelephonyManager$1;-><init>(Landroid/telephony/TelephonyManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;

    .line 433
    iput p2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 434
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/telephony/TelephonyManager;->mergeAttributionAndRenouncedPermissions(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 436
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 437
    return-void
.end method

.method private blacklist checkNetworkTypeBitmask(J)J
    .registers 9
    .param p1, "networkTypeBitmask"    # J

    .line 9377
    const-wide/32 v0, 0x40000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    .line 9378
    xor-long/2addr p1, v0

    .line 9379
    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    .line 9381
    :cond_f
    return-wide p1
.end method

.method public static blacklist convertNetworkTypeBitmaskToString(J)Ljava/lang/String;
    .registers 4
    .param p0, "networkTypeBitmask"    # J

    .line 9578
    const/4 v0, 0x1

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda11;-><init>(J)V

    .line 9579
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda12;-><init>()V

    .line 9583
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 9584
    const-string/jumbo v1, "|"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9585
    .local v0, "networkTypeName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "UNKNOWN"

    goto :goto_30

    :cond_2f
    move-object v1, v0

    :goto_30
    return-object v1
.end method

.method private static blacklist createThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 6891
    if-nez p0, :cond_4

    .line 6892
    const/4 v0, 0x0

    return-object v0

    .line 6895
    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 6896
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_1e} :catch_1f

    return-object v1

    .line 6897
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1f
    move-exception v0

    .line 6899
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist disableServiceHandleCaching()V
    .registers 1

    .line 15948
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    .line 15949
    return-void
.end method

.method public static blacklist enableServiceHandleCaching()V
    .registers 1

    .line 15957
    const/4 v0, 0x1

    sput-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    .line 15958
    return-void
.end method

.method public static greylist-max-p from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 679
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static blacklist getAllNetworkTypes()[I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3042
    sget-object v0, Landroid/telephony/TelephonyManager;->NETWORK_TYPES:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static blacklist getAllNetworkTypesBitmask()J
    .registers 2

    .line 9566
    const-wide/32 v0, 0xdfbff

    return-wide v0
.end method

.method private blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 508
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 509
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 511
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getBitMaskForNetworkType(I)J
    .registers 3
    .param p0, "networkType"    # I

    .line 3301
    packed-switch p0, :pswitch_data_48

    .line 3343
    const-wide/16 v0, 0x0

    return-wide v0

    .line 3337
    :pswitch_6
    const-wide/32 v0, 0x80000

    return-wide v0

    .line 3335
    :pswitch_a
    const-wide/32 v0, 0x40000

    return-wide v0

    .line 3339
    :pswitch_e
    const-wide/32 v0, 0x20000

    return-wide v0

    .line 3331
    :pswitch_12
    const-wide/32 v0, 0x10000

    return-wide v0

    .line 3303
    :pswitch_16
    const-wide/32 v0, 0x8000

    return-wide v0

    .line 3327
    :pswitch_1a
    const-wide/16 v0, 0x4000

    return-wide v0

    .line 3319
    :pswitch_1d
    const-wide/16 v0, 0x2000

    return-wide v0

    .line 3333
    :pswitch_20
    const-wide/16 v0, 0x1000

    return-wide v0

    .line 3317
    :pswitch_23
    const-wide/16 v0, 0x800

    return-wide v0

    .line 3341
    :pswitch_26
    const-wide/16 v0, 0x400

    return-wide v0

    .line 3325
    :pswitch_29
    const-wide/16 v0, 0x200

    return-wide v0

    .line 3321
    :pswitch_2c
    const-wide/16 v0, 0x100

    return-wide v0

    .line 3323
    :pswitch_2f
    const-wide/16 v0, 0x80

    return-wide v0

    .line 3311
    :pswitch_32
    const-wide/16 v0, 0x40

    return-wide v0

    .line 3315
    :pswitch_35
    const-wide/16 v0, 0x20

    return-wide v0

    .line 3313
    :pswitch_38
    const-wide/16 v0, 0x10

    return-wide v0

    .line 3309
    :pswitch_3b
    const-wide/16 v0, 0x8

    return-wide v0

    .line 3329
    :pswitch_3e
    const-wide/16 v0, 0x4

    return-wide v0

    .line 3307
    :pswitch_41
    const-wide/16 v0, 0x2

    return-wide v0

    .line 3305
    :pswitch_44
    const-wide/16 v0, 0x1

    return-wide v0

    nop

    :pswitch_data_48
    .packed-switch 0x1
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
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-p getDefault()Landroid/telephony/TelephonyManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private blacklist getFirstActivePortIndex(I)I
    .registers 5
    .param p1, "physicalSlotIndex"    # I

    .line 6962
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    .line 6963
    .local v0, "slotInfos":[Landroid/telephony/UiccSlotInfo;
    if-eqz v0, :cond_37

    if-ltz p1, :cond_37

    array-length v1, v0

    if-ge p1, v1, :cond_37

    aget-object v1, v0, p1

    if-eqz v1, :cond_37

    .line 6965
    aget-object v1, v0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda2;-><init>()V

    .line 6966
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 6967
    .local v1, "result":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/telephony/UiccPortInfo;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 6968
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v2}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v2

    return v2

    .line 6971
    .end local v1    # "result":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/telephony/UiccPortInfo;>;"
    :cond_37
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist getIOns()Lcom/android/internal/telephony/IOns;
    .registers 2

    .line 6397
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 6398
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getOpportunisticNetworkServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 6399
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 6395
    invoke-static {v0}, Lcom/android/internal/telephony/IOns$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOns;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-p getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 6

    .line 6365
    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    .line 6368
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 6369
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 6370
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 6366
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0

    .line 6373
    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_48

    .line 6376
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 6377
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 6378
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 6374
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6379
    .local v0, "temp":Lcom/android/internal/telephony/ITelephony;
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6380
    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_45

    if-nez v2, :cond_43

    if-eqz v0, :cond_43

    .line 6382
    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 6383
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_3f
    .catchall {:try_start_32 .. :try_end_3e} :catchall_45

    .line 6387
    goto :goto_43

    .line 6384
    :catch_3f
    move-exception v2

    .line 6386
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_41
    sput-object v3, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 6389
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    monitor-exit v1

    goto :goto_48

    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw v2

    .line 6391
    .end local v0    # "temp":Lcom/android/internal/telephony/ITelephony;
    :cond_48
    :goto_48
    sget-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method public static greylist-max-r getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 8131
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8132
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 8133
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8134
    .local v1, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_1d

    array-length v2, v1

    if-ge p2, v2, :cond_1d

    aget-object v2, v1, p2

    if-eqz v2, :cond_1d

    .line 8136
    :try_start_15
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1c

    return v2

    .line 8137
    :catch_1c
    move-exception v2

    .line 8142
    .end local v1    # "valArray":[Ljava/lang/String;
    :cond_1d
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getLocationData()I
    .registers 4

    .line 16290
    nop

    .line 16291
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 16292
    .local v0, "renounceCoarseLocation":Z
    nop

    .line 16293
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 16294
    .local v1, "renounceFineLocation":Z
    if-eqz v0, :cond_1a

    .line 16295
    const/4 v2, 0x0

    return v2

    .line 16296
    :cond_1a
    if-eqz v1, :cond_1e

    .line 16297
    const/4 v2, 0x1

    return v2

    .line 16299
    :cond_1e
    const/4 v2, 0x2

    return v2
.end method

.method private blacklist getLogicalSlotIndex(II)I
    .registers 7
    .param p1, "physicalSlotIndex"    # I
    .param p2, "portIndex"    # I

    .line 3697
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    .line 3698
    .local v0, "slotInfos":[Landroid/telephony/UiccSlotInfo;
    if-eqz v0, :cond_31

    if-ltz p1, :cond_31

    array-length v1, v0

    if-ge p1, v1, :cond_31

    aget-object v1, v0, p1

    if-eqz v1, :cond_31

    .line 3700
    aget-object v1, v0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccPortInfo;

    .line 3701
    .local v2, "portInfo":Landroid/telephony/UiccPortInfo;
    invoke-virtual {v2}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v3

    if-ne v3, p2, :cond_30

    .line 3702
    invoke-virtual {v2}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v1

    return v1

    .line 3704
    .end local v2    # "portInfo":Landroid/telephony/UiccPortInfo;
    :cond_30
    goto :goto_19

    .line 3707
    :cond_31
    const/4 v1, -0x1

    return v1
.end method

.method public static whitelist getMaxNumberVerificationTimeoutMillis()J
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2741
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public static whitelist getMaximumCallComposerPictureSize()J
    .registers 2

    .line 729
    const-wide/32 v0, 0x13880

    return-wide v0
.end method

.method private greylist-max-o getNaiBySubscriberId(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 2469
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2470
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_a

    .line 2471
    return-object v1

    .line 2472
    :cond_a
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2473
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 2472
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getNaiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2474
    .local v3, "nai":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nai = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_37} :catch_3a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_37} :catch_38

    .line 2477
    :cond_37
    return-object v3

    .line 2480
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v3    # "nai":Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 2481
    .local v0, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 2478
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_3a
    move-exception v0

    .line 2479
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public static greylist getNetworkTypeName(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 3244
    packed-switch p0, :pswitch_data_60

    .line 3290
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3286
    :pswitch_1d
    const-string v0, "NR_CA"

    return-object v0

    .line 3284
    :pswitch_20
    const-string v0, "NR"

    return-object v0

    .line 3282
    :pswitch_23
    const-string v0, "LTE_CA"

    return-object v0

    .line 3280
    :pswitch_26
    const-string v0, "IWLAN"

    return-object v0

    .line 3278
    :pswitch_29
    const-string v0, "TD_SCDMA"

    return-object v0

    .line 3276
    :pswitch_2c
    const-string v0, "GSM"

    return-object v0

    .line 3274
    :pswitch_2f
    const-string v0, "HSPA+"

    return-object v0

    .line 3270
    :pswitch_32
    const-string v0, "CDMA - eHRPD"

    return-object v0

    .line 3268
    :pswitch_35
    const-string v0, "LTE"

    return-object v0

    .line 3264
    :pswitch_38
    const-string v0, "CDMA - EvDo rev. B"

    return-object v0

    .line 3272
    :pswitch_3b
    const-string/jumbo v0, "iDEN"

    return-object v0

    .line 3256
    :pswitch_3f
    const-string v0, "HSPA"

    return-object v0

    .line 3254
    :pswitch_42
    const-string v0, "HSUPA"

    return-object v0

    .line 3252
    :pswitch_45
    const-string v0, "HSDPA"

    return-object v0

    .line 3266
    :pswitch_48
    const-string v0, "CDMA - 1xRTT"

    return-object v0

    .line 3262
    :pswitch_4b
    const-string v0, "CDMA - EvDo rev. A"

    return-object v0

    .line 3260
    :pswitch_4e
    const-string v0, "CDMA - EvDo rev. 0"

    return-object v0

    .line 3258
    :pswitch_51
    const-string v0, "CDMA"

    return-object v0

    .line 3250
    :pswitch_54
    const-string v0, "UMTS"

    return-object v0

    .line 3248
    :pswitch_57
    const-string v0, "EDGE"

    return-object v0

    .line 3246
    :pswitch_5a
    const-string v0, "GPRS"

    return-object v0

    .line 3288
    :pswitch_5d
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
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
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1d
    .end packed-switch
.end method

.method private greylist-max-o getOpPackageName()Ljava/lang/String;
    .registers 4

    .line 489
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 490
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 492
    :cond_9
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 493
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    return-object v1

    .line 495
    :cond_11
    :try_start_11
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_15} :catch_16

    return-object v1

    .line 498
    :catch_16
    move-exception v2

    .line 499
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 496
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_18
    move-exception v2

    .line 497
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method private greylist-max-o getPhoneId()I
    .registers 2

    .line 7977
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private greylist getPhoneId(I)I
    .registers 3
    .param p1, "preferredSubId"    # I

    .line 7992
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static greylist getPhoneType(I)I
    .registers 5
    .param p0, "networkMode"    # I

    .line 2693
    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_20

    .line 2731
    return v1

    .line 2724
    :pswitch_6
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->lte_on_cdma_device()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    .line 2725
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2724
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1c

    .line 2726
    return v0

    .line 2728
    :cond_1c
    return v1

    .line 2721
    :pswitch_1d
    return v0

    .line 2697
    :pswitch_1e
    return v0

    .line 2715
    :pswitch_1f
    return v1

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1f
        :pswitch_1f
        :pswitch_6
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
        :pswitch_1f
    .end packed-switch
.end method

.method private greylist-max-o getPhoneTypeFromNetworkType()I
    .registers 2

    .line 2667
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getPhoneTypeFromNetworkType(I)I
    .registers 4
    .param p1, "phoneId"    # I

    .line 2675
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->default_network()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2676
    .local v0, "mode":Ljava/lang/Integer;
    if-eqz v0, :cond_16

    .line 2677
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    return v1

    .line 2679
    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o getPhoneTypeFromProperty()I
    .registers 2

    .line 2654
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v0

    return v0
.end method

.method private greylist getPhoneTypeFromProperty(I)I
    .registers 4
    .param p1, "phoneId"    # I

    .line 2660
    nop

    .line 2661
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->current_active_phone()Ljava/util/List;

    move-result-object v0

    .line 2660
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2662
    .local v0, "type":Ljava/lang/Integer;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 2663
    :cond_13
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    return v1
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

    .line 518
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 519
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 521
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getServiceStateForSubscriber(IZZ)Landroid/telephony/ServiceState;
    .registers 11
    .param p1, "subId"    # I
    .param p2, "renounceFineLocationAccess"    # Z
    .param p3, "renounceCoarseLocationAccess"    # Z

    .line 12334
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12335
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_18

    .line 12336
    nop

    .line 12337
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 12336
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony;->getServiceStateForSubscriber(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_3e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_19

    return-object v1

    .line 12335
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_18
    goto :goto_46

    .line 12341
    :catch_19
    move-exception v0

    .line 12342
    .local v0, "e":Ljava/lang/NullPointerException;
    nop

    .line 12343
    const-string v1, "a3ab0b9d-f2aa-4baf-911d-7096c0d4645a"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceStateForSubscriber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NPE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12342
    invoke-static {v1, v2}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_47

    .line 12339
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_3e
    move-exception v0

    .line 12340
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getServiceStateForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12345
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_46
    nop

    .line 12346
    :goto_47
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getSimApplicationStateFromSimState(I)I
    .registers 3
    .param p1, "simState"    # I

    .line 3792
    sparse-switch p1, :sswitch_data_8

    .line 3803
    return p1

    .line 3801
    :sswitch_4
    const/4 v0, 0x6

    return v0

    .line 3797
    :sswitch_6
    const/4 v0, 0x0

    return v0

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
    .registers 3
    .param p1, "simState"    # I

    .line 3678
    sparse-switch p1, :sswitch_data_8

    .line 3685
    const/16 v0, 0xb

    return v0

    .line 3683
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
    .registers 3
    .param p0, "subId"    # I

    .line 4002
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 4003
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getSimCountryIsoForPhone(I)Ljava/lang/String;
    .registers 3
    .param p0, "phoneId"    # I

    .line 4013
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_iso_country()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private greylist-max-o getSimStateIncludingLoaded()I
    .registers 7

    .line 3587
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    .line 3590
    .local v0, "slotIndex":I
    if-gez v0, :cond_66

    .line 3593
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const-string v3, "getSimState: default sim:"

    const-string v4, "TelephonyManager"

    const/4 v5, 0x1

    if-ge v1, v2, :cond_4b

    .line 3594
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 3595
    .local v2, "simState":I
    if-eq v2, v5, :cond_48

    .line 3596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", sim state for slotIndex="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", return state as unknown"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    const/4 v3, 0x0

    return v3

    .line 3593
    .end local v2    # "simState":I
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3601
    .end local v1    # "i":I
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", all SIMs absent, return state as absent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    return v5

    .line 3605
    :cond_66
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v1

    return v1
.end method

.method static blacklist getSmsService()Lcom/android/internal/telephony/ISms;
    .registers 5

    .line 15913
    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    .line 15916
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 15917
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 15918
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 15914
    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0

    .line 15921
    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    if-nez v0, :cond_48

    .line 15924
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 15925
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 15926
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 15922
    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 15927
    .local v0, "temp":Lcom/android/internal/telephony/ISms;
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 15928
    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_45

    if-nez v2, :cond_43

    if-eqz v0, :cond_43

    .line 15930
    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    .line 15931
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_3f
    .catchall {:try_start_32 .. :try_end_3e} :catchall_45

    .line 15935
    goto :goto_43

    .line 15932
    :catch_3f
    move-exception v2

    .line 15934
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_41
    sput-object v3, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    .line 15937
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    monitor-exit v1

    goto :goto_48

    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw v2

    .line 15939
    .end local v0    # "temp":Lcom/android/internal/telephony/ISms;
    :cond_48
    :goto_48
    sget-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    return-object v0
.end method

.method private greylist-max-o getSubId()I
    .registers 2

    .line 7945
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7946
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    return v0

    .line 7948
    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0
.end method

.method private greylist getSubId(I)I
    .registers 3
    .param p1, "preferredSubId"    # I

    .line 7963
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7964
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    return v0

    .line 7966
    :cond_b
    return p1
.end method

.method private greylist getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    .line 6205
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 5

    .line 15845
    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    .line 15848
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 15849
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 15850
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 15846
    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0

    .line 15853
    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    if-nez v0, :cond_48

    .line 15856
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 15857
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 15858
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 15854
    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 15859
    .local v0, "temp":Lcom/android/internal/telephony/IPhoneSubInfo;
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 15860
    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_45

    if-nez v2, :cond_43

    if-eqz v0, :cond_43

    .line 15862
    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    .line 15863
    invoke-interface {v0}, Lcom/android/internal/telephony/IPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_3f
    .catchall {:try_start_32 .. :try_end_3e} :catchall_45

    .line 15867
    goto :goto_43

    .line 15864
    :catch_3f
    move-exception v2

    .line 15866
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_41
    sput-object v3, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    .line 15869
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    monitor-exit v1

    goto :goto_48

    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw v2

    .line 15871
    .end local v0    # "temp":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_48
    :goto_48
    sget-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    return-object v0
.end method

.method static blacklist getSubscriptionService()Lcom/android/internal/telephony/ISub;
    .registers 5

    .line 15879
    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    .line 15882
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 15883
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 15884
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 15880
    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    return-object v0

    .line 15887
    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    if-nez v0, :cond_48

    .line 15890
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 15891
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 15892
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 15888
    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 15893
    .local v0, "temp":Lcom/android/internal/telephony/ISub;
    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 15894
    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_45

    if-nez v2, :cond_43

    if-eqz v0, :cond_43

    .line 15896
    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    .line 15897
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_3f
    .catchall {:try_start_32 .. :try_end_3e} :catchall_45

    .line 15901
    goto :goto_43

    .line 15898
    :catch_3f
    move-exception v2

    .line 15900
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_41
    sput-object v3, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    .line 15903
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    monitor-exit v1

    goto :goto_48

    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw v2

    .line 15905
    .end local v0    # "temp":Lcom/android/internal/telephony/ISub;
    :cond_48
    :goto_48
    sget-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    return-object v0
.end method

.method private static blacklist getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 8219
    .local p1, "prop":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 8220
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    if-ltz p0, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_d

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 8221
    :cond_d
    if-eqz v0, :cond_11

    move-object v1, v0

    goto :goto_12

    :cond_11
    move-object v1, p2

    :goto_12
    return-object v1
.end method

.method public static greylist getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 8204
    const/4 v0, 0x0

    .line 8205
    .local v0, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8206
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e

    .line 8207
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 8208
    .local v2, "values":[Ljava/lang/String;
    if-ltz p0, :cond_1e

    array-length v3, v2

    if-ge p0, v3, :cond_1e

    aget-object v3, v2, p0

    if-eqz v3, :cond_1e

    .line 8209
    aget-object v0, v2, p0

    .line 8212
    .end local v2    # "values":[Ljava/lang/String;
    :cond_1e
    if-nez v0, :cond_22

    move-object v2, p2

    goto :goto_23

    :cond_22
    move-object v2, v0

    :goto_23
    return-object v2
.end method

.method public static greylist-max-r getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultVal"    # Ljava/lang/String;

    .line 8234
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8235
    .local v0, "propVal":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, p1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public static blacklist isConcurrentCallsPossible()Z
    .registers 3

    .line 594
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->multi_sim_voice_capability()Ljava/util/Optional;

    move-result-object v0

    .line 595
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 594
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 596
    .local v0, "mSimVoiceConfig":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private blacklist isDataEnabledForReason(II)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "reason"    # I

    .line 13364
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13365
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 13366
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isDataEnabledForReason(II)Z

    move-result v1

    return v1

    .line 13368
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "subId":I
    .end local p2    # "reason":I
    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 13370
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "subId":I
    .restart local p2    # "reason":I
    :catch_14
    move-exception v0

    .line 13371
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#isDataEnabledForReason RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13372
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 13374
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o isImsiEncryptionRequired(II)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "keyType"    # I

    .line 4614
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4615
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 4616
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 4617
    return v1

    .line 4619
    :cond_e
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 4620
    .local v2, "pb":Landroid/os/PersistableBundle;
    if-nez v2, :cond_15

    .line 4621
    return v1

    .line 4623
    :cond_15
    const-string/jumbo v1, "imsi_key_availability_int"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 4624
    .local v1, "keyAvailability":I
    invoke-static {v1, p2}, Landroid/telephony/TelephonyManager;->isKeyEnabled(II)Z

    move-result v3

    return v3
.end method

.method private static greylist-max-o isKeyEnabled(II)Z
    .registers 4
    .param p0, "keyAvailability"    # I
    .param p1, "keyType"    # I

    .line 4605
    add-int/lit8 v0, p1, -0x1

    shr-int v0, p0, v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    .line 4606
    .local v0, "returnValue":I
    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public static blacklist isNetworkTypeValid(I)Z
    .registers 2
    .param p0, "networkType"    # I

    .line 16615
    if-ltz p0, :cond_8

    const/16 v0, 0x14

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist isSlotMappingValid(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)Z"
        }
    .end annotation

    .line 4294
    .local p0, "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda17;-><init>()V

    .line 4295
    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 4294
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4296
    .local v0, "slotMappingInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4297
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 4298
    .local v5, "logicalSlotMap":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_36

    .line 4300
    return v3

    .line 4302
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;>;"
    .end local v5    # "logicalSlotMap":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    :cond_36
    goto :goto_1b

    .line 4306
    :cond_37
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda18;-><init>()V

    .line 4307
    invoke-static {v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 4306
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 4309
    .local v1, "slotMapInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4310
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 4311
    .local v6, "portAndPhysicalSlotList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v4, :cond_6b

    .line 4313
    return v3

    .line 4315
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;>;"
    .end local v6    # "portAndPhysicalSlotList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    :cond_6b
    goto :goto_52

    .line 4316
    :cond_6c
    return v4
.end method

.method public static blacklist isValidAllowedNetworkTypesReason(I)Z
    .registers 2
    .param p0, "reason"    # I

    .line 9550
    packed-switch p0, :pswitch_data_8

    .line 9557
    const/4 v0, 0x0

    return v0

    .line 9555
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$bootstrapAuthenticationRequest$20(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    .line 16572
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;->onAuthenticationFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$bootstrapAuthenticationRequest$21(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    .line 16602
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;->onAuthenticationFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$convertNetworkTypeBitmaskToString$11(JI)Z
    .registers 7
    .param p0, "networkTypeBitmask"    # J
    .param p2, "x"    # I

    .line 9580
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v0

    and-long/2addr v0, p0

    .line 9581
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 9580
    :goto_10
    return v0
.end method

.method static synthetic blacklist lambda$convertNetworkTypeBitmaskToString$12(I)Ljava/lang/String;
    .registers 2
    .param p0, "x"    # I

    .line 9583
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getFirstActivePortIndex$8(Landroid/telephony/UiccPortInfo;)Z
    .registers 2
    .param p0, "portInfo"    # Landroid/telephony/UiccPortInfo;

    .line 6966
    invoke-virtual {p0}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$isSlotMappingValid$0(Landroid/telephony/UiccSlotMapping;)Ljava/util/List;
    .registers 4
    .param p0, "slot"    # Landroid/telephony/UiccSlotMapping;

    .line 4308
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$requestCellInfoUpdate$4(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .param p1, "ex"    # Landroid/os/RemoteException;

    .line 6821
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager$CellInfoCallback;->onError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCellInfoUpdate$5(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .param p2, "ex"    # Landroid/os/RemoteException;

    .line 6820
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCellInfoUpdate$6(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .param p1, "ex"    # Landroid/os/RemoteException;

    .line 6886
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager$CellInfoCallback;->onError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCellInfoUpdate$7(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .param p2, "ex"    # Landroid/os/RemoteException;

    .line 6885
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestModemActivityInfo$15(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 12254
    new-instance v0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager$ModemActivityInfoException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNumberVerification$10(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/telephony/NumberVerificationCallback;

    .line 8092
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/NumberVerificationCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNumberVerification$9(Landroid/telephony/NumberVerificationCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/NumberVerificationCallback;

    .line 8093
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/telephony/NumberVerificationCallback;->onVerificationFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setPreferredOpportunisticDataSubscription$16(Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 14418
    const-wide/32 v0, 0x7c8ba7f

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 14419
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1a

    .line 14421
    :cond_12
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 14423
    :goto_1a
    return-void
.end method

.method static synthetic blacklist lambda$setPreferredOpportunisticDataSubscription$17(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;

    .line 14417
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$setSimPowerStateForSlot$13(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 11635
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$setSimPowerStateForSlot$14(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;

    .line 11634
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$updateAvailableNetworks$18(Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 14515
    const-wide/32 v0, 0x7c8ba7f

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 14516
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1b

    .line 14518
    :cond_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 14520
    :goto_1b
    return-void
.end method

.method static synthetic blacklist lambda$updateAvailableNetworks$19(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;

    .line 14514
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda13;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$uploadCallComposerPicture$2(Landroid/os/OutcomeReceiver;Ljava/io/IOException;)V
    .registers 4
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/io/IOException;

    .line 4911
    new-instance v0, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$uploadCallComposerPicture$3(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 13
    .param p0, "pictureToUpload"    # Ljava/io/InputStream;
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;
    .param p2, "writeFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "output"    # Ljava/io/OutputStream;

    .line 4947
    const-string v0, "Error closing fd pipe: "

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    const-string v2, "TelephonyManager"

    if-eqz v1, :cond_13

    .line 4948
    const-string v1, "Uploading call composer picture on main thread! hic sunt dracones!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    :cond_13
    const/4 v1, 0x0

    .line 4953
    .local v1, "totalBytesRead":I
    const/16 v3, 0x4000

    new-array v3, v3, [B

    .line 4958
    .local v3, "buffer":[B
    :goto_18
    :try_start_18
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_99
    .catchall {:try_start_18 .. :try_end_1c} :catchall_97

    .line 4972
    .local v4, "numRead":I
    nop

    .line 4974
    if-gez v4, :cond_21

    .line 4975
    goto/16 :goto_d6

    .line 4978
    :cond_21
    add-int/2addr v1, v4

    .line 4979
    int-to-long v5, v1

    :try_start_23
    invoke-static {}, Landroid/telephony/TelephonyManager;->getMaximumCallComposerPictureSize()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_6a

    .line 4980
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read too many bytes from call composer pic stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_97

    .line 4983
    :try_start_41
    new-instance v5, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p1, v5}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 4985
    const-string/jumbo v5, "too large"

    invoke-virtual {p2, v5}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_51} :catch_53
    .catchall {:try_start_41 .. :try_end_51} :catchall_97

    .line 4989
    goto/16 :goto_d6

    .line 4986
    :catch_53
    move-exception v5

    .line 4988
    .local v5, "e1":Ljava/io/IOException;
    :try_start_54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_54 .. :try_end_68} :catchall_97

    .line 4990
    nop

    .end local v5    # "e1":Ljava/io/IOException;
    goto :goto_d6

    .line 4994
    :cond_6a
    const/4 v5, 0x0

    :try_start_6b
    invoke-virtual {p3, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_70
    .catchall {:try_start_6b .. :try_end_6e} :catchall_97

    .line 5005
    nop

    .line 5006
    .end local v4    # "numRead":I
    goto :goto_18

    .line 4995
    .restart local v4    # "numRead":I
    :catch_70
    move-exception v5

    .line 4996
    .local v5, "e":Ljava/io/IOException;
    :try_start_71
    new-instance v6, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p1, v6}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_97

    .line 4999
    :try_start_7a
    const-string/jumbo v6, "remote end closed"

    invoke-virtual {p2, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_80} :catch_81
    .catchall {:try_start_7a .. :try_end_80} :catchall_97

    .line 5003
    goto :goto_96

    .line 5000
    :catch_81
    move-exception v6

    .line 5002
    .local v6, "e1":Ljava/io/IOException;
    :try_start_82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    .end local v6    # "e1":Ljava/io/IOException;
    :goto_96
    goto :goto_d6

    .line 5008
    .end local v4    # "numRead":I
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_97
    move-exception v0

    goto :goto_dd

    .line 4959
    :catch_99
    move-exception v4

    .line 4960
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException reading from input while uploading pic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4963
    new-instance v5, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v4}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p1, v5}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_b9
    .catchall {:try_start_82 .. :try_end_b9} :catchall_97

    .line 4966
    :try_start_b9
    const-string/jumbo v5, "input closed"

    invoke-virtual {p2, v5}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bf} :catch_c0
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_97

    .line 4970
    goto :goto_d5

    .line 4967
    :catch_c0
    move-exception v5

    .line 4969
    .local v5, "e1":Ljava/io/IOException;
    :try_start_c1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catchall {:try_start_c1 .. :try_end_d5} :catchall_97

    .line 4971
    .end local v5    # "e1":Ljava/io/IOException;
    :goto_d5
    nop

    .line 5009
    .end local v4    # "e":Ljava/io/IOException;
    :goto_d6
    :try_start_d6
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_da

    .line 5012
    goto :goto_dc

    .line 5010
    :catch_da
    move-exception v0

    .line 5013
    nop

    .line 5014
    :goto_dc
    return-void

    .line 5009
    :goto_dd
    :try_start_dd
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    .line 5012
    goto :goto_e2

    .line 5010
    :catch_e1
    move-exception v2

    .line 5013
    :goto_e2
    throw v0
.end method

.method private blacklist mergeAttributionAndRenouncedPermissions(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;
    .registers 7
    .param p1, "to"    # Landroid/content/Context;
    .param p2, "from"    # Landroid/content/Context;

    .line 459
    move-object v0, p2

    .line 460
    .local v0, "contextToReturn":Landroid/content/Context;
    if-eqz p1, :cond_57

    .line 461
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 462
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    goto :goto_1b

    .line 464
    :cond_1a
    move-object v0, p1

    .line 467
    :goto_1b
    nop

    .line 468
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 469
    .local v1, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_57

    .line 470
    invoke-virtual {p1}, Landroid/content/Context;->getParams()Landroid/content/ContextParams;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 471
    new-instance v2, Landroid/content/ContextParams$Builder;

    .line 472
    invoke-virtual {p1}, Landroid/content/Context;->getParams()Landroid/content/ContextParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/ContextParams$Builder;-><init>(Landroid/content/ContextParams;)V

    .line 473
    invoke-virtual {v2, v1}, Landroid/content/ContextParams$Builder;->setRenouncedPermissions(Ljava/util/Set;)Landroid/content/ContextParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v2

    .line 471
    invoke-virtual {v0, v2}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    goto :goto_57

    .line 475
    :cond_46
    new-instance v2, Landroid/content/ContextParams$Builder;

    invoke-direct {v2}, Landroid/content/ContextParams$Builder;-><init>()V

    .line 477
    invoke-virtual {v2, v1}, Landroid/content/ContextParams$Builder;->setRenouncedPermissions(Ljava/util/Set;)Landroid/content/ContextParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v2

    .line 475
    invoke-virtual {v0, v2}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    .line 481
    .end local v1    # "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_57
    :goto_57
    return-object v0
.end method

.method public static greylist-max-r putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .line 8163
    const-string v0, ""

    .line 8164
    .local v0, "data":Ljava/lang/String;
    const/4 v1, 0x0

    .line 8165
    .local v1, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8167
    .local v2, "v":Ljava/lang/String;
    const v3, 0x7fffffff

    if-eq p2, v3, :cond_8b

    .line 8170
    if-ltz p2, :cond_71

    .line 8173
    const-string v3, ","

    if-eqz v2, :cond_16

    .line 8174
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8178
    :cond_16
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, p2, :cond_3a

    .line 8179
    const-string v5, ""

    .line 8180
    .local v5, "str":Ljava/lang/String;
    if-eqz v1, :cond_22

    array-length v6, v1

    if-ge v4, v6, :cond_22

    .line 8181
    aget-object v5, v1, v4

    .line 8183
    :cond_22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8178
    .end local v5    # "str":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 8186
    .end local v4    # "i":I
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8189
    if-eqz v1, :cond_6c

    .line 8190
    add-int/lit8 v4, p2, 0x1

    .restart local v4    # "i":I
    :goto_4f
    array-length v5, v1

    if-ge v4, v5, :cond_6c

    .line 8191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8190
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 8194
    .end local v4    # "i":I
    :cond_6c
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 8171
    :cond_71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putIntAtIndex index < 0 index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8168
    :cond_8b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putIntAtIndex index == MAX_VALUE index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist resetServiceCache()V
    .registers 5

    .line 15819
    sget-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 15820
    :try_start_3
    sget-object v1, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    .line 15821
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 15822
    sput-object v2, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 15824
    :cond_14
    sget-object v1, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    if-eqz v1, :cond_26

    .line 15825
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 15826
    sput-object v2, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    .line 15827
    invoke-static {}, Landroid/telephony/SubscriptionManager;->clearCaches()V

    .line 15829
    :cond_26
    sget-object v1, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_35

    .line 15830
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 15831
    sput-object v2, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    .line 15833
    :cond_35
    sget-object v1, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_44

    .line 15834
    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 15835
    sput-object v2, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    .line 15837
    :cond_44
    monitor-exit v0

    .line 15838
    return-void

    .line 15837
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private static blacklist runOnBackgroundThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 538
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_7} :catch_9

    .line 542
    nop

    .line 543
    return-void

    .line 539
    :catch_9
    move-exception v0

    .line 540
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to post a callback from the caller\'s thread context."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist setDataEnabledForReason(IIZ)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .param p3, "enabled"    # Z

    .line 13318
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13319
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_e

    .line 13320
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/ITelephony;->setDataEnabledForReason(IIZLjava/lang/String;)V

    .line 13327
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    goto :goto_22

    .line 13322
    .restart local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "subId":I
    .end local p2    # "reason":I
    .end local p3    # "enabled":Z
    throw v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    .line 13324
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "subId":I
    .restart local p2    # "reason":I
    .restart local p3    # "enabled":Z
    :catch_17
    move-exception v0

    .line 13325
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#setDataEnabledForReason RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13326
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 13328
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method

.method private blacklist setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 14986
    .local p1, "specifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    if-nez p3, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/telephony/TelephonyManager$12;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/TelephonyManager$12;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 14999
    .local v0, "aidlConsumer":Lcom/android/internal/telephony/IBooleanConsumer;
    :goto_9
    :try_start_9
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 15000
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_16

    .line 15001
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/telephony/ITelephony;->setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 15005
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_16
    goto :goto_30

    .line 15003
    :catch_17
    move-exception v1

    .line 15004
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony#setSystemSelectionChannels RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15006
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method public static blacklist setupITelephonyForTest(Lcom/android/internal/telephony/ITelephony;)V
    .registers 1
    .param p0, "telephony"    # Lcom/android/internal/telephony/ITelephony;

    .line 15966
    sput-object p0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 15967
    return-void
.end method

.method private static blacklist updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .registers 5
    .param p1, "phoneId"    # I
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

    .line 8102
    .local p0, "prop":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8103
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_10

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 8104
    :cond_10
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8105
    return-object v0
.end method


# virtual methods
.method public blacklist addDevicePolicyOverrideApn(Landroid/content/Context;Landroid/telephony/data/ApnSetting;)I
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 14850
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 14852
    .local v0, "resultUri":Landroid/net/Uri;
    const/4 v1, -0x1

    .line 14853
    .local v1, "resultId":I
    if-eqz v0, :cond_38

    .line 14855
    :try_start_11
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_19} :catch_1b

    move v1, v2

    .line 14859
    goto :goto_38

    .line 14856
    :catch_1b
    move-exception v2

    .line 14857
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse inserted override APN id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 14858
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14857
    const-string v4, "TelephonyManager"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14861
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_38
    :goto_38
    return v1
.end method

.method public greylist answerRingingCall()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10141
    return-void
.end method

.method public whitelist bootstrapAuthenticationRequest(ILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 15
    .param p1, "appType"    # I
    .param p2, "nafId"    # Landroid/net/Uri;
    .param p3, "securityProtocol"    # Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .param p4, "forceBootStrapping"    # Z
    .param p5, "e"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16570
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16571
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_f

    .line 16572
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p6}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    invoke-interface {p5, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16574
    return-void

    .line 16576
    :cond_f
    nop

    .line 16577
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    new-instance v7, Landroid/telephony/TelephonyManager$17;

    invoke-direct {v7, p0, p5, p6}, Landroid/telephony/TelephonyManager$17;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    .line 16576
    move-object v1, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony;->bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    .line 16603
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    goto :goto_32

    .line 16600
    :catch_22
    move-exception v0

    .line 16601
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#bootstrapAuthenticationRequest"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16602
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;

    invoke-direct {v1, p6}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    invoke-interface {p5, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16604
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10111
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10112
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 10113
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 10116
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_12

    .line 10114
    :catch_a
    move-exception v0

    .line 10115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist canChangeDtmfToneLength()Z
    .registers 6

    .line 11146
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 11147
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 11148
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 11149
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 11148
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_16} :catch_18

    return v0

    .line 11147
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_25

    .line 11153
    :catch_18
    move-exception v1

    .line 11154
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 11151
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1f
    move-exception v1

    .line 11152
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11155
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_25
    nop

    .line 11156
    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canConnectTo5GInDsdsMode()Z
    .registers 4

    .line 15975
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15976
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 15978
    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->canConnectTo5GInDsdsMode()Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 15981
    :catch_d
    move-exception v2

    .line 15982
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v1

    .line 15979
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v2

    .line 15980
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist changeIccLockPin(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;
    .registers 7
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15609
    const-string v0, "changeIccLockPin oldPin can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15610
    const-string v0, "changeIccLockPin newPin can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15612
    :try_start_a
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15613
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_32

    .line 15614
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 15615
    .local v1, "result":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_24

    .line 15616
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    .line 15617
    :cond_24
    if-gez v1, :cond_2b

    .line 15618
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v2

    return-object v2

    .line 15620
    :cond_2b
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    .line 15623
    .end local v1    # "result":I
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "oldPin":Ljava/lang/String;
    .end local p2    # "newPin":Ljava/lang/String;
    throw v1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3b} :catch_3b

    .line 15625
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "oldPin":Ljava/lang/String;
    .restart local p2    # "newPin":Ljava/lang/String;
    :catch_3b
    move-exception v0

    .line 15626
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "changeIccLockPin RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15627
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 15629
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9877
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9878
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_11

    .line 9879
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackage(ILjava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_12

    return v0

    .line 9878
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    goto :goto_1f

    .line 9882
    :catch_12
    move-exception v1

    .line 9883
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "checkCarrierPrivilegesForPackage NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 9880
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_19
    move-exception v1

    .line 9881
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "checkCarrierPrivilegesForPackage RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9884
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1f
    nop

    .line 9885
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9894
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9895
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 9896
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    .line 9895
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1b

    .line 9899
    :catch_e
    move-exception v1

    .line 9900
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "checkCarrierPrivilegesForPackageAnyPhone NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 9897
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v1

    .line 9898
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "checkCarrierPrivilegesForPackageAnyPhone RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9901
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1b
    nop

    .line 9902
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearSignalStrengthUpdateRequest(Landroid/telephony/SignalStrengthUpdateRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/telephony/SignalStrengthUpdateRequest;

    .line 16690
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16693
    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16694
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 16695
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    .line 16699
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_20

    .line 16697
    :catch_18
    move-exception v0

    .line 16698
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#clearSignalStrengthUpdateRequest"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16700
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public whitelist createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;
    .registers 5
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 701
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriptionId(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 702
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 703
    const/4 v1, 0x0

    return-object v1

    .line 705
    :cond_c
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method public whitelist createForSubscriptionId(I)Landroid/telephony/TelephonyManager;
    .registers 4
    .param p1, "subId"    # I

    .line 689
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist dial(Ljava/lang/String;)V
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10093
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10094
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 10095
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 10098
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_12

    .line 10096
    :catch_a
    move-exception v0

    .line 10097
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#dial"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10099
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist disableDataConnectivity()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10660
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10661
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 10662
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 10665
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 10663
    :catch_10
    move-exception v0

    .line 10664
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#disableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10666
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o disableIms(I)V
    .registers 5
    .param p1, "slotId"    # I

    .line 8510
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8511
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 8512
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableIms(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 8517
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_27

    .line 8514
    :catch_a
    move-exception v0

    .line 8515
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableIms, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8516
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8515
    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8518
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method public greylist-max-o disableVisualVoicemailSmsFilter(I)V
    .registers 4
    .param p1, "subId"    # I

    .line 5610
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5611
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 5612
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_13

    .line 5615
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v0

    goto :goto_14

    .line 5614
    :catch_12
    move-exception v0

    .line 5616
    :cond_13
    :goto_13
    nop

    .line 5617
    :goto_14
    return-void
.end method

.method public whitelist doesSwitchMultiSimConfigTriggerReboot()Z
    .registers 5

    .line 14743
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14744
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 14745
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 14746
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 14745
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return v1

    .line 14750
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_20

    .line 14748
    :catch_18
    move-exception v0

    .line 14749
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "doesSwitchMultiSimConfigTriggerReboot RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14751
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableDataConnectivity()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10645
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10646
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 10647
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 10650
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 10648
    :catch_10
    move-exception v0

    .line 10649
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10651
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o enableIms(I)V
    .registers 5
    .param p1, "slotId"    # I

    .line 8493
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8494
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 8495
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableIms(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 8500
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_27

    .line 8497
    :catch_a
    move-exception v0

    .line 8498
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableIms, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8499
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8498
    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8501
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method public whitelist enableModemForSlot(IZ)Z
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14541
    const/4 v0, 0x0

    .line 14543
    .local v0, "ret":Z
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 14544
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 14545
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->enableModemForSlot(IZ)Z

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 14549
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_c
    goto :goto_15

    .line 14547
    :catch_d
    move-exception v1

    .line 14548
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "enableModem RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14550
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_15
    return v0
.end method

.method public whitelist enableVideoCalling(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11106
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11107
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 11108
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableVideoCalling(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 11111
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_12

    .line 11109
    :catch_a
    move-exception v0

    .line 11110
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableVideoCalling"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11112
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public greylist-max-o enableVisualVoicemailSmsFilter(ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "settings"    # Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .line 5586
    if-eqz p2, :cond_17

    .line 5590
    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5591
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_15

    .line 5592
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_15

    .line 5596
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_12
    move-exception v0

    goto :goto_16

    .line 5595
    :catch_14
    move-exception v0

    .line 5597
    :cond_15
    :goto_15
    nop

    .line 5598
    :goto_16
    return-void

    .line 5587
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Settings cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist endCall()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10128
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o factoryReset(I)V
    .registers 5
    .param p1, "subId"    # I

    .line 12037
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

    .line 12038
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12039
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_25

    .line 12040
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->factoryReset(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    .line 12043
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_25
    goto :goto_27

    .line 12042
    :catch_26
    move-exception v0

    .line 12044
    :goto_27
    return-void
.end method

.method public blacklist filterEmergencyNumbersByCategories(Ljava/util/Map;I)Ljava/util/Map;
    .registers 11
    .param p2, "categories"    # I
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

    .line 14129
    .local p1, "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14130
    .local v0, "emergencyNumberListForCategories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    if-eqz p1, :cond_44

    .line 14131
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

    .line 14132
    .local v2, "subscriptionId":Ljava/lang/Integer;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 14134
    .local v3, "allNumbersForSub":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14135
    .local v4, "numbersForCategoriesPerSub":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/emergency/EmergencyNumber;

    .line 14136
    .local v6, "number":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual {v6, p2}, Landroid/telephony/emergency/EmergencyNumber;->isInEmergencyServiceCategories(I)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 14137
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14139
    .end local v6    # "number":Landroid/telephony/emergency/EmergencyNumber;
    :cond_3f
    goto :goto_2a

    .line 14140
    :cond_40
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14142
    .end local v2    # "subscriptionId":Ljava/lang/Integer;
    .end local v3    # "allNumbersForSub":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;"
    .end local v4    # "numbersForCategoriesPerSub":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;"
    goto :goto_f

    .line 14144
    :cond_44
    return-object v0
.end method

.method public whitelist getActiveModemCount()I
    .registers 4

    .line 621
    const/4 v0, 0x1

    .line 622
    .local v0, "modemCount":I
    sget-object v1, Landroid/telephony/TelephonyManager$19;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    goto :goto_34

    .line 640
    :pswitch_11
    const/4 v0, 0x3

    goto :goto_34

    .line 637
    :pswitch_13
    const/4 v0, 0x2

    .line 638
    goto :goto_34

    .line 624
    :pswitch_15
    const/4 v0, 0x1

    .line 626
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v1

    if-nez v1, :cond_29

    .line 627
    const/4 v0, 0x0

    .line 630
    :cond_29
    const/4 v1, 0x0

    const-string/jumbo v2, "ro.radio.noril"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 631
    const/4 v0, 0x1

    .line 643
    :cond_34
    :goto_34
    return v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_15
        :pswitch_13
        :pswitch_13
        :pswitch_11
    .end packed-switch
.end method

.method public greylist-max-o getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 4
    .param p1, "subId"    # I

    .line 5653
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5654
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 5655
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 5654
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_f

    .line 5658
    :catch_c
    move-exception v0

    goto :goto_10

    .line 5657
    :catch_e
    move-exception v0

    .line 5659
    :goto_f
    nop

    .line 5661
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAidForAppType(I)Ljava/lang/String;
    .registers 3
    .param p1, "appType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12670
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAidForAppType(II)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I
    .param p2, "appType"    # I

    .line 12679
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12680
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 12681
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 12685
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 12683
    :catch_c
    move-exception v0

    .line 12684
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getAidForAppType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12686
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return-object v0
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

    .line 6689
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6690
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 6691
    return-object v0

    .line 6692
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

    .line 6694
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    goto :goto_19

    .line 6693
    :catch_17
    move-exception v1

    .line 6695
    nop

    .line 6696
    :goto_19
    return-object v0
.end method

.method public whitelist getAllowedCarriers(I)Ljava/util/List;
    .registers 4
    .param p1, "slotIndex"    # I
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

    .line 12958
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12959
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCarrierRestrictionRules()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v0

    .line 12960
    .local v0, "carrierRestrictionRule":Landroid/telephony/CarrierRestrictionRules;
    if-eqz v0, :cond_11

    .line 12961
    invoke-virtual {v0}, Landroid/telephony/CarrierRestrictionRules;->getAllowedCarriers()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 12964
    .end local v0    # "carrierRestrictionRule":Landroid/telephony/CarrierRestrictionRules;
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public whitelist getAllowedNetworkTypes()J
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8937
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8938
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_10

    .line 8939
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getAllowedNetworkTypesForReason(II)J

    move-result-wide v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-wide v1

    .line 8944
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_19

    .line 8942
    :catch_11
    move-exception v0

    .line 8943
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getAllowedNetworkTypes RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8945
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getAllowedNetworkTypesBitmask()J
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8911
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8912
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_10

    .line 8913
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getAllowedNetworkTypesBitmask(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_11

    int-to-long v1, v1

    return-wide v1

    .line 8917
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_19

    .line 8915
    :catch_11
    move-exception v0

    .line 8916
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getAllowedNetworkTypesBitmask RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8918
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getAllowedNetworkTypesForReason(I)J
    .registers 5
    .param p1, "reason"    # I

    .line 9528
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 9533
    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9534
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_15

    .line 9535
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getAllowedNetworkTypesForReason(II)J

    move-result-wide v1

    return-wide v1

    .line 9537
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "reason":I
    throw v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1e} :catch_1e

    .line 9539
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "reason":I
    :catch_1e
    move-exception v0

    .line 9540
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getAllowedNetworkTypesForReason RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9541
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9543
    .end local v0    # "ex":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0

    .line 9529
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid AllowedNetworkTypesReason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAndUpdateDefaultRespondViaMessageApplication()Landroid/content/ComponentName;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11822
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAvailableNetworks()Lcom/android/internal/telephony/CellNetworkScanResult;
    .registers 6

    .line 9000
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9001
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_19

    .line 9002
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9003
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 9002
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_18} :catch_1a

    return-object v0

    .line 9001
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_19
    goto :goto_27

    .line 9007
    :catch_1a
    move-exception v1

    .line 9008
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "getAvailableNetworks NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 9005
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_21
    move-exception v1

    .line 9006
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "getAvailableNetworks RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9009
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_27
    nop

    .line 9010
    :goto_28
    new-instance v0, Lcom/android/internal/telephony/CellNetworkScanResult;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CellNetworkScanResult;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public greylist-max-o getBasebandVersion()Ljava/lang/String;
    .registers 3

    .line 11676
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11677
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getBasebandVersionForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getBasebandVersionForPhone(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .line 11687
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCallComposerStatus()I
    .registers 4

    .line 10076
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10077
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 10078
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCallComposerStatus(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 10083
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_1b

    .line 10080
    :catch_10
    move-exception v0

    .line 10081
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getCallComposerStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10082
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10084
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallForwarding(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;)V
    .registers 8
    .param p1, "callForwardingReason"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15145
    if-ltz p1, :cond_24

    const/4 v0, 0x5

    if-gt p1, v0, :cond_24

    .line 15150
    new-instance v0, Landroid/telephony/TelephonyManager$13;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/TelephonyManager$13;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;)V

    .line 15167
    .local v0, "internalCallback":Lcom/android/internal/telephony/ICallForwardingInfoCallback;
    :try_start_a
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 15168
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 15169
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/telephony/ITelephony;->getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    .line 15174
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_23

    .line 15171
    :catch_18
    move-exception v1

    .line 15172
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getCallForwarding RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15173
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15175
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_23
    return-void

    .line 15147
    .end local v0    # "internalCallback":Lcom/android/internal/telephony/ICallForwardingInfoCallback;
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callForwardingReason is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCallState()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6139
    invoke-static {}, Landroid/telephony/TelephonyBaseUtilsStub;->isSupportWechatAndCallCoexist()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 6140
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6141
    const-string v0, "TelephonyManager"

    const-string v2, "always return idle state for wetchat app..."

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6142
    return v1

    .line 6145
    :cond_1d
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_30

    .line 6146
    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 6147
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_30

    .line 6148
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v1

    return v1

    .line 6151
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_30
    return v1
.end method

.method public greylist getCallState(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 6188
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6189
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 6190
    return v1

    .line 6193
    :cond_8
    :try_start_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 6194
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6193
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v1

    .line 6195
    :catch_19
    move-exception v2

    .line 6196
    .local v2, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public greylist-max-o getCallStateForSlot(I)I
    .registers 8
    .param p1, "slotIndex"    # I

    .line 6226
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 6227
    .local v1, "subId":[I
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 6228
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_24

    if-eqz v1, :cond_24

    array-length v3, v1

    if-nez v3, :cond_11

    goto :goto_24

    .line 6231
    :cond_11
    aget v3, v1, v0

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 6232
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 6231
    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_23} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_23} :catch_25

    return v0

    .line 6229
    :cond_24
    :goto_24
    return v0

    .line 6233
    .end local v1    # "subId":[I
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_25
    move-exception v1

    .line 6235
    .local v1, "ex":Ljava/lang/Exception;
    return v0
.end method

.method public whitelist getCallStateForSubscription()I
    .registers 2

    .line 6167
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public whitelist getCallWaitingStatus(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 15345
    .local p2, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "TelephonyManager"

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15346
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15348
    new-instance v1, Landroid/telephony/TelephonyManager$15;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/TelephonyManager$15;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 15357
    .local v1, "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    :try_start_d
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 15358
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_2b

    .line 15359
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/ITelephony;->getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1a} :catch_1b

    goto :goto_2b

    .line 15364
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1b
    move-exception v2

    .line 15365
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v3, "getCallWaitingStatus NPE"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15366
    throw v2

    .line 15361
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_22
    move-exception v2

    .line 15362
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "getCallWaitingStatus RemoteException"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15363
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15367
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    nop

    .line 15368
    return-void
.end method

.method public whitelist getCardIdForDefaultEuicc()I
    .registers 5

    .line 4164
    const/4 v0, -0x2

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4165
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 4166
    return v0

    .line 4168
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

    .line 4169
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 4170
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getCarrierConfig()Landroid/os/PersistableBundle;
    .registers 3

    .line 2859
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    .line 2860
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2861
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getCarrierIdFromMccMnc(Ljava/lang/String;)I
    .registers 5
    .param p1, "mccmnc"    # Ljava/lang/String;

    .line 12621
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12622
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_10

    .line 12623
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return v1

    .line 12627
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_12

    .line 12625
    :catch_11
    move-exception v0

    .line 12628
    :goto_12
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCarrierIdFromSimMccMnc()I
    .registers 5

    .line 12592
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12593
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_14

    .line 12594
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    return v1

    .line 12598
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_14
    goto :goto_16

    .line 12596
    :catch_15
    move-exception v0

    .line 12599
    :goto_16
    const/4 v0, -0x1

    return v0
.end method

.method public greylist getCarrierIdListVersion()I
    .registers 3

    .line 13628
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13629
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 13630
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdListVersion(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 13634
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_11

    .line 13632
    :catch_10
    move-exception v0

    .line 13635
    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;
    .registers 9
    .param p1, "keyType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4543
    const-string v0, "IMSI error: key is required but not found"

    const-string v1, "TelephonyManager"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    .line 4544
    .local v3, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v3, :cond_11

    .line 4545
    const-string v0, "IMSI error: Subscriber Info is null"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    return-object v2

    .line 4548
    :cond_11
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v4

    .line 4549
    .local v4, "subId":I
    const/4 v5, 0x1

    if-eq p1, v5, :cond_28

    const/4 v5, 0x2

    if-ne p1, v5, :cond_20

    goto :goto_28

    .line 4550
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "IMSI error: Invalid key type"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "keyType":I
    throw v0

    .line 4552
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "keyType":I
    :cond_28
    :goto_28
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4553
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4552
    invoke-interface {v3, v4, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCarrierInfoForImsiEncryption(IILjava/lang/String;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v5

    .line 4554
    .local v5, "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    if-nez v5, :cond_44

    invoke-direct {p0, v4, p1}, Landroid/telephony/TelephonyManager;->isImsiEncryptionRequired(II)Z

    move-result v6

    if-nez v6, :cond_3b

    goto :goto_44

    .line 4555
    :cond_3b
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "keyType":I
    throw v6
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_44} :catch_5d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_44} :catch_45

    .line 4558
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "keyType":I
    :cond_44
    :goto_44
    return-object v5

    .line 4561
    .end local v3    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v4    # "subId":I
    .end local v5    # "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    :catch_45
    move-exception v0

    .line 4563
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarrierInfoForImsiEncryption NullPointerException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 4559
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_5d
    move-exception v0

    .line 4560
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarrierInfoForImsiEncryption RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4564
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 4565
    :goto_75
    return-object v2
.end method

.method public whitelist getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
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

    .line 9909
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
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

    .line 9918
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9919
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 9920
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return-object v0

    .line 9919
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1b

    .line 9923
    :catch_e
    move-exception v1

    .line 9924
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "getCarrierPackageNamesForIntentAndPhone NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 9921
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v1

    .line 9922
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "getCarrierPackageNamesForIntentAndPhone RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9925
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1b
    nop

    .line 9926
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCarrierPrivilegeStatus(I)I
    .registers 5
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14796
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14797
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 14798
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatusForUid(II)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 14802
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 14800
    :catch_10
    move-exception v0

    .line 14801
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getCarrierPrivilegeStatus RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14803
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return v0
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

    .line 10001
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10002
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 10003
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return-object v0

    .line 10002
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1b

    .line 10008
    :catch_e
    move-exception v1

    .line 10009
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "getCarrierPrivilegedPackagesForAllActiveSubscriptions NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 10005
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v1

    .line 10006
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "getCarrierPrivilegedPackagesForAllActiveSubscriptions RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10010
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1b
    nop

    .line 10011
    :goto_1c
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCarrierRestrictionRules()Landroid/telephony/CarrierRestrictionRules;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12986
    const-string v0, "Error calling ITelephony#getAllowedCarriers"

    const-string v1, "TelephonyManager"

    :try_start_4
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 12987
    .local v2, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_f

    .line 12988
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    return-object v0

    .line 12987
    .end local v2    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_19

    .line 12992
    :catch_10
    move-exception v2

    .line 12993
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 12990
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v2

    .line 12991
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12994
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_19
    nop

    .line 12995
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCarrierServicePackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9944
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;
    .registers 5
    .param p1, "logicalSlotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9962
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9963
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 9964
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return-object v0

    .line 9963
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1b

    .line 9968
    :catch_e
    move-exception v1

    .line 9969
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "getCarrierServicePackageNameForLogicalSlot NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 9966
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v1

    .line 9967
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "getCarrierServicePackageNameForLogicalSlot RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9970
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1b
    nop

    .line 9971
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCdmaEnhancedRoamingIndicatorDisplayNumber()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6526
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(I)I

    move-result v0

    return v0
.end method

.method public greylist getCdmaEriIconIndex(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 6537
    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6538
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 6539
    return v0

    .line 6540
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6541
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6540
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    .line 6545
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 6546
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 6542
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 6544
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public greylist getCdmaEriIconMode(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 6561
    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6562
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 6563
    return v0

    .line 6564
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6565
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6564
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    .line 6569
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 6570
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 6566
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 6568
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public greylist-max-o getCdmaEriText()Ljava/lang/String;
    .registers 2

    .line 6581
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getCdmaEriText(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 6593
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6594
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 6595
    return-object v0

    .line 6596
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6597
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 6596
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriTextForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    .line 6601
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 6602
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 6598
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 6600
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getCdmaMdn()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9826
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCdmaMdn(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9835
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9836
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 9837
    return-object v0

    .line 9838
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_d

    return-object v0

    .line 9841
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v1

    .line 9842
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 9839
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v1

    .line 9840
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getCdmaMin()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9851
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCdmaMin(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9860
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9861
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 9862
    return-object v0

    .line 9863
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_d

    return-object v0

    .line 9866
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v1

    .line 9867
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 9864
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v1

    .line 9865
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getCdmaPrlVersion()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12733
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCdmaPrlVersion(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .line 12747
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12748
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 12749
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 12753
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 12751
    :catch_c
    move-exception v0

    .line 12752
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getCdmaPrlVersion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12754
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCdmaRoamingMode()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10864
    const/4 v0, -0x1

    .line 10866
    .local v0, "mode":I
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10867
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_11

    .line 10868
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaRoamingMode(I)I

    move-result v2

    move v0, v2

    .line 10875
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_25

    .line 10870
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mode":I
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1a

    .line 10872
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "mode":I
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_1a
    move-exception v1

    .line 10873
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getCdmaRoamingMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10874
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10876
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_25
    return v0
.end method

.method public whitelist getCdmaSubscriptionMode()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10974
    const/4 v0, 0x0

    .line 10976
    .local v0, "mode":I
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10977
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_11

    .line 10978
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaSubscriptionMode(I)I

    move-result v2

    move v0, v2

    .line 10985
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_25

    .line 10980
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mode":I
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1a

    .line 10982
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "mode":I
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_1a
    move-exception v1

    .line 10983
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getCdmaSubscriptionMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10984
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10986
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_25
    return v0
.end method

.method public whitelist getCellLocation()Landroid/telephony/CellLocation;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2499
    const-string v0, "TelephonyManager"

    const/16 v1, 0x31

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 2501
    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2502
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_14

    .line 2503
    const-string v3, "getCellLocation returning null because telephony is null"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    return-object v1

    .line 2507
    :cond_14
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2508
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 2507
    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v3

    .line 2509
    .local v3, "cellIdentity":Landroid/telephony/CellIdentity;
    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    goto :goto_2c

    :cond_2b
    move-object v4, v1

    .line 2510
    .local v4, "cl":Landroid/telephony/CellLocation;
    :goto_2c
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_36

    .line 2516
    :cond_35
    return-object v4

    .line 2511
    :cond_36
    :goto_36
    const-string v5, "getCellLocation returning null because CellLocation is empty or phone type doesn\'t match CellLocation type"

    invoke-static {v0, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_3b} :catch_3c

    .line 2513
    return-object v1

    .line 2517
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local v4    # "cl":Landroid/telephony/CellLocation;
    :catch_3c
    move-exception v2

    .line 2518
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
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

    .line 12642
    const/4 v0, 0x0

    .line 12644
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12645
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_10

    .line 12646
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;

    move-result-object v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 12650
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_12

    .line 12648
    :catch_11
    move-exception v1

    .line 12651
    :goto_12
    if-nez v0, :cond_19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1a

    :cond_19
    move-object v1, v0

    :goto_1a
    return-object v1
.end method

.method public greylist-max-o getClientRequestStats(I)Ljava/util/List;
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 13388
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13389
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 13390
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return-object v1

    .line 13395
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_13
    goto :goto_1c

    .line 13393
    :catch_14
    move-exception v0

    .line 13394
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getClientRequestStats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13397
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentPhoneType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2585
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public whitelist getCurrentPhoneType(I)I
    .registers 4
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2601
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 2604
    const/4 v0, 0x0

    .local v0, "phoneId":I
    goto :goto_9

    .line 2606
    .end local v0    # "phoneId":I
    :cond_5
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2609
    .restart local v0    # "phoneId":I
    :goto_9
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v1

    return v1
.end method

.method public greylist-max-o getCurrentPhoneTypeForSlot(I)I
    .registers 4
    .param p1, "slotIndex"    # I

    .line 2619
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2620
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 2621
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSlot(I)I

    move-result v1

    return v1

    .line 2624
    :cond_b
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_10

    return v1

    .line 2630
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v0

    .line 2633
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v1

    return v1

    .line 2626
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v0

    .line 2629
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v1

    return v1
.end method

.method public whitelist getDataActivationState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5899
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataActivationState(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getDataActivationState(I)I
    .registers 4
    .param p1, "subId"    # I

    .line 5922
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5923
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 5924
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivationState(ILjava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 5923
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_13

    .line 5926
    :catch_10
    move-exception v0

    goto :goto_14

    .line 5925
    :catch_12
    move-exception v0

    .line 5927
    :goto_13
    nop

    .line 5928
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDataActivity()I
    .registers 4

    .line 6267
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6268
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 6269
    return v0

    .line 6270
    :cond_8
    nop

    .line 6271
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v2

    .line 6270
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivityForSubId(I)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_15} :catch_16

    return v0

    .line 6275
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_16
    move-exception v1

    .line 6277
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 6272
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_18
    move-exception v1

    .line 6274
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getDataEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10767
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist getDataEnabled(I)Z
    .registers 6
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11066
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;->isDataEnabledForReason(II)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    .line 11067
    :catch_6
    move-exception v1

    .line 11068
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling isDataEnabledForReason e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11070
    .end local v1    # "e":Ljava/lang/RuntimeException;
    return v0
.end method

.method public whitelist getDataNetworkType()I
    .registers 2

    .line 3148
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getDataNetworkType(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 3163
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3164
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 3165
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3166
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 3165
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_15

    return v0

    .line 3169
    :cond_14
    return v0

    .line 3174
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 3176
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 3171
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 3173
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getDataState()I
    .registers 6

    .line 6340
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6341
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 6342
    return v0

    .line 6343
    :cond_8
    nop

    .line 6344
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v2

    .line 6343
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDataStateForSubId(I)I

    move-result v2

    .line 6345
    .local v2, "state":I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_23

    const-wide/32 v3, 0x8da744c

    .line 6346
    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1f} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1f} :catch_24

    if-nez v0, :cond_23

    .line 6347
    const/4 v0, 0x2

    return v0

    .line 6350
    :cond_23
    return v2

    .line 6354
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "state":I
    :catch_24
    move-exception v1

    .line 6355
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 6351
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_26
    move-exception v1

    .line 6353
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getDefaultRespondViaMessageApplication()Landroid/content/ComponentName;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11835
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceId()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2100
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2101
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 2102
    return-object v0

    .line 2103
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2104
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2103
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    .line 2107
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_19
    move-exception v1

    .line 2108
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 2105
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v1

    .line 2106
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getDeviceId(I)Ljava/lang/String;
    .registers 6
    .param p1, "slotIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 2155
    const/4 v0, 0x0

    :try_start_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2156
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_20

    .line 2157
    return-object v0

    .line 2158
    :cond_20
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2159
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2158
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdForPhone(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_30} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_30} :catch_31

    return-object v0

    .line 2162
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_31
    move-exception v1

    .line 2163
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 2160
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_33
    move-exception v1

    .line 2161
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public blacklist getDevicePolicyOverrideApns(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
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

    .line 14819
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 14820
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1a

    .line 14821
    :try_start_10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_39

    .line 14830
    if-eqz v0, :cond_19

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 14821
    :cond_19
    return-object v1

    .line 14823
    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14824
    .local v1, "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 14825
    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 14826
    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    .line 14827
    .local v2, "apn":Landroid/telephony/data/ApnSetting;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_39

    .line 14828
    nop

    .end local v2    # "apn":Landroid/telephony/data/ApnSetting;
    goto :goto_23

    .line 14829
    :cond_32
    nop

    .line 14830
    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 14829
    :cond_38
    return-object v1

    .line 14819
    .end local v1    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    :catchall_39
    move-exception v1

    if-eqz v0, :cond_44

    :try_start_3c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw v1
.end method

.method public whitelist getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 2

    .line 2030
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceSoftwareVersion(I)Ljava/lang/String;
    .registers 6
    .param p1, "slotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2048
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2049
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2052
    :cond_8
    :try_start_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2053
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2052
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_15

    return-object v1

    .line 2056
    :catch_15
    move-exception v2

    .line 2057
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 2054
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v2

    .line 2055
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getEmergencyCallbackMode()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13413
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getEmergencyCallbackMode(I)Z
    .registers 6
    .param p1, "subId"    # I

    .line 13424
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 13425
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 13426
    return v0

    .line 13428
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getEmergencyCallbackMode(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    return v0

    .line 13429
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v1

    .line 13430
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getEmergencyCallbackMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13432
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getEmergencyNumberDbVersion()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14233
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14234
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 14235
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getEmergencyNumberDbVersion(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 14240
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_1b

    .line 14237
    :catch_10
    move-exception v0

    .line 14238
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getEmergencyNumberDbVersion RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14239
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 14241
    .end local v0    # "ex":Landroid/os/RemoteException;
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

    .line 14044
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14046
    .local v0, "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    :try_start_5
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 14047
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1c

    .line 14048
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 14049
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 14048
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 14051
    :cond_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_25} :catch_25

    .line 14053
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_25
    move-exception v1

    .line 14054
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getEmergencyNumberList RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14055
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 14057
    .end local v1    # "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getEmergencyNumberList(I)Ljava/util/Map;
    .registers 6
    .param p1, "categories"    # I
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

    .line 14101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14103
    .local v0, "emergencyNumberListForCategories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    :try_start_5
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 14104
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_23

    .line 14105
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 14106
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 14107
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 14106
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 14108
    .local v2, "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    nop

    .line 14109
    invoke-virtual {p0, v2, p1}, Landroid/telephony/TelephonyManager;->filterEmergencyNumbersByCategories(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    .line 14110
    .end local v2    # "emergencyNumberList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    nop

    .line 14116
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_37

    .line 14111
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "emergencyNumberListForCategories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "categories":I
    throw v2
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2c} :catch_2c

    .line 14113
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "emergencyNumberListForCategories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;>;"
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "categories":I
    :catch_2c
    move-exception v1

    .line 14114
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getEmergencyNumberList with Categories RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14115
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 14117
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_37
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

    .line 16003
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16004
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 16005
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 16006
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 16005
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 16008
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_22

    .line 16010
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_22
    move-exception v0

    .line 16011
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getEquivalentHomePlmns RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16014
    .end local v0    # "ex":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getEsn()Ljava/lang/String;
    .registers 2

    .line 12698
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getEsn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getEsn(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .line 12712
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12713
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 12714
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getEsn(I)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 12718
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 12716
    :catch_c
    move-exception v0

    .line 12717
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getEsn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12719
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getForbiddenPlmns()[Ljava/lang/String;
    .registers 3

    .line 8398
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getForbiddenPlmns(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getForbiddenPlmns(II)[Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .param p2, "appType"    # I

    .line 8413
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8414
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 8415
    return-object v0

    .line 8416
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 8417
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 8416
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_16} :catch_17

    return-object v0

    .line 8420
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_17
    move-exception v1

    .line 8422
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 8418
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_19
    move-exception v1

    .line 8419
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getGroupIdLevel1()Ljava/lang/String;
    .registers 6

    .line 5029
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5030
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 5031
    return-object v0

    .line 5032
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5033
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 5032
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1c} :catch_1d

    return-object v0

    .line 5036
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_1d
    move-exception v1

    .line 5038
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 5034
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1f
    move-exception v1

    .line 5035
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getGroupIdLevel1(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 5053
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5054
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 5055
    return-object v0

    .line 5056
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5057
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5056
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    .line 5060
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_19
    move-exception v1

    .line 5062
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 5058
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v1

    .line 5059
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "authType"    # I
    .param p4, "data"    # Ljava/lang/String;

    .line 8372
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 8373
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 8374
    return-object v0

    .line 8375
    :cond_8
    nop

    .line 8376
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 8375
    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSimChallengeResponse(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1a} :catch_1b

    return-object v0

    .line 8379
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_1b
    move-exception v1

    .line 8381
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 8377
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1d
    move-exception v1

    .line 8378
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "appType"    # I
    .param p2, "authType"    # I
    .param p3, "data"    # Ljava/lang/String;

    .line 8344
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImei()Ljava/lang/String;
    .registers 2

    .line 2178
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImei(I)Ljava/lang/String;
    .registers 6
    .param p1, "slotIndex"    # I

    .line 2221
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string v1, "disallow_imeiread"

    invoke-static {v0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2222
    const-string v0, ""

    return-object v0

    .line 2225
    :cond_d
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2226
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    if-nez v0, :cond_15

    return-object v1

    .line 2229
    :cond_15
    :try_start_15
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_21} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_21} :catch_22

    return-object v1

    .line 2232
    :catch_22
    move-exception v2

    .line 2233
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 2230
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_24
    move-exception v2

    .line 2231
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-r getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "feature"    # I

    .line 8550
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8551
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 8552
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 8556
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_29

    .line 8554
    :catch_c
    move-exception v0

    .line 8555
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsRegistration, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8557
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getImsRegTechnologyForMmTel()I
    .registers 3

    .line 11350
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getImsRegTechnologyForMmTel(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 11351
    :catch_d
    move-exception v0

    .line 11352
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public greylist-max-r getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "feature"    # I

    .line 8530
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8531
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 8532
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 8536
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_29

    .line 8534
    :catch_c
    move-exception v0

    .line 8535
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsRegistration, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8537
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getIsimDomain()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6060
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6061
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 6062
    return-object v0

    .line 6064
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 6067
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v1

    .line 6069
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 6065
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_13
    move-exception v1

    .line 6066
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getIsimImpi()Ljava/lang/String;
    .registers 4

    .line 6032
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6033
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 6034
    return-object v0

    .line 6036
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 6039
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v1

    .line 6041
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 6037
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_13
    move-exception v1

    .line 6038
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getIsimImpu()[Ljava/lang/String;
    .registers 4

    .line 6084
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 6085
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 6086
    return-object v0

    .line 6088
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 6091
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v1

    .line 6093
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 6089
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_13
    move-exception v1

    .line 6090
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getIsimIst()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8260
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 8261
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 8262
    return-object v0

    .line 8264
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 8267
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v1

    .line 8269
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 8265
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_13
    move-exception v1

    .line 8266
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getIsimPcscf()[Ljava/lang/String;
    .registers 4

    .line 8282
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 8283
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 8284
    return-object v0

    .line 8286
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    .line 8289
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v1

    .line 8291
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 8287
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_13
    move-exception v1

    .line 8288
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public blacklist getLastKnownCellIdentity()Landroid/telephony/CellIdentity;
    .registers 5

    .line 16938
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16939
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 16942
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 16943
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 16942
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v1

    return-object v1

    .line 16940
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    .line 16944
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_20
    move-exception v0

    .line 16945
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16947
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getLine1AlphaTag()Ljava/lang/String;
    .registers 2

    .line 5203
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLine1AlphaTag(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I

    .line 5217
    const/4 v0, 0x0

    .line 5219
    .local v0, "alphaTag":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5220
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_15

    .line 5221
    nop

    .line 5222
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5221
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_16

    move-object v0, v2

    .line 5225
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_15
    :goto_15
    goto :goto_1a

    .line 5224
    :catch_16
    move-exception v1

    goto :goto_1a

    .line 5223
    :catch_18
    move-exception v1

    goto :goto_15

    .line 5226
    :goto_1a
    if-eqz v0, :cond_1d

    .line 5227
    return-object v0

    .line 5230
    :cond_1d
    const/4 v1, 0x0

    :try_start_1e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 5231
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_25

    .line 5232
    return-object v1

    .line 5233
    :cond_25
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5234
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 5233
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_31} :catch_34
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_31} :catch_32

    return-object v1

    .line 5237
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_32
    move-exception v2

    .line 5239
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 5235
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_34
    move-exception v2

    .line 5236
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getLine1Number()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5091
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLine1Number(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I

    .line 5119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 5120
    const/4 v0, 0x0

    .line 5122
    .local v0, "number":Ljava/lang/String;
    :try_start_19
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5123
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_30

    .line 5124
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5125
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5124
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2f} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_2f} :catch_31

    move-object v0, v2

    .line 5128
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_30
    :goto_30
    goto :goto_35

    .line 5127
    :catch_31
    move-exception v1

    goto :goto_35

    .line 5126
    :catch_33
    move-exception v1

    goto :goto_30

    .line 5129
    :goto_35
    if-eqz v0, :cond_38

    .line 5130
    return-object v0

    .line 5133
    :cond_38
    const/4 v1, 0x0

    :try_start_39
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 5134
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_40

    .line 5135
    return-object v1

    .line 5136
    :cond_40
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5137
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 5136
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_50} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_39 .. :try_end_50} :catch_51

    return-object v1

    .line 5140
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_51
    move-exception v2

    .line 5142
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 5138
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_53
    move-exception v2

    .line 5139
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-o getLocaleFromDefaultSim()Ljava/lang/String;
    .registers 3

    .line 12101
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12102
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 12103
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSimLocaleForSubscriber(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 12106
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_11

    .line 12105
    :catch_10
    move-exception v0

    .line 12107
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLogicalToPhysicalSlotMapping()Ljava/util/Map;
    .registers 8
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

    .line 4401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4403
    .local v0, "slotMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_5
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4404
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_3a

    .line 4405
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4406
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4405
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 4407
    .local v2, "simSlotsMapping":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccSlotMapping;

    .line 4408
    .local v4, "slotMap":Landroid/telephony/UiccSlotMapping;
    invoke-virtual {v4}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_38} :catch_3b

    .line 4409
    nop

    .end local v4    # "slotMap":Landroid/telephony/UiccSlotMapping;
    goto :goto_19

    .line 4413
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "simSlotsMapping":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    :cond_3a
    goto :goto_43

    .line 4411
    :catch_3b
    move-exception v1

    .line 4412
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getSlotsMapping RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4414
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_43
    return-object v0
.end method

.method public greylist getLteOnCdmaMode(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 4136
    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4137
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 4138
    return v0

    .line 4139
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4140
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 4139
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    .line 4144
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 4146
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 4141
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 4143
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getManualNetworkSelectionPlmn()Ljava/lang/String;
    .registers 4

    .line 9258
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9259
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isManualNetworkSelectionAllowed()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 9260
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getManualNetworkSelectionPlmn(I)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16

    return-object v1

    .line 9264
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_15
    goto :goto_1e

    .line 9262
    :catch_16
    move-exception v0

    .line 9263
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getManualNetworkSelectionPlmn RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9265
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1e
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getManufacturerCode()Ljava/lang/String;
    .registers 2

    .line 2366
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getManufacturerCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getManufacturerCode(I)Ljava/lang/String;
    .registers 5
    .param p1, "slotIndex"    # I

    .line 2378
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2379
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2382
    :cond_8
    :try_start_8
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getManufacturerCodeForSlot(I)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 2385
    :catch_d
    move-exception v2

    .line 2386
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 2383
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v2

    .line 2384
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getMaxNumberOfSimultaneouslyActiveSims()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 665
    sget-object v0, Landroid/telephony/TelephonyManager$19;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_14

    .line 673
    return v1

    .line 671
    :pswitch_11
    const/4 v0, 0x2

    return v0

    .line 669
    :pswitch_13
    return v1

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method public whitelist getMeid()Ljava/lang/String;
    .registers 2

    .line 2302
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMeid(I)Ljava/lang/String;
    .registers 7
    .param p1, "slotIndex"    # I

    .line 2341
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2342
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2345
    :cond_8
    :try_start_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2346
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2345
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getMeidForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2347
    .local v2, "meid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2348
    const-string v3, "TelephonyManager"

    const-string v4, "getMeid: return null because MEID is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_21} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_21} :catch_23

    .line 2349
    return-object v1

    .line 2351
    :cond_22
    return-object v2

    .line 2354
    .end local v2    # "meid":Ljava/lang/String;
    :catch_23
    move-exception v2

    .line 2355
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 2352
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_25
    move-exception v2

    .line 2353
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getMergedImsisFromGroup()[Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5286
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5287
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 5288
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return-object v1

    .line 5291
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_13
    goto :goto_15

    .line 5290
    :catch_14
    move-exception v0

    .line 5292
    :goto_15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public greylist getMergedSubscriberIds()[Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5261
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5262
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 5263
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5264
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5263
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_18

    return-object v1

    .line 5262
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_1b

    .line 5266
    :catch_18
    move-exception v0

    goto :goto_1c

    .line 5265
    :catch_1a
    move-exception v0

    .line 5267
    :goto_1b
    nop

    .line 5268
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMmsUAProfUrl()Ljava/lang/String;
    .registers 3

    .line 6946
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6947
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 6948
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getMmsUAProfUrl(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 6947
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_13

    .line 6951
    :catch_10
    move-exception v0

    goto :goto_14

    .line 6950
    :catch_12
    move-exception v0

    .line 6952
    :goto_13
    nop

    .line 6953
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMmsUserAgent()Ljava/lang/String;
    .registers 3

    .line 6930
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6931
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 6932
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getMmsUserAgent(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 6931
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_13

    .line 6935
    :catch_10
    move-exception v0

    goto :goto_14

    .line 6934
    :catch_12
    move-exception v0

    .line 6936
    :goto_13
    nop

    .line 6937
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMobileProvisioningUrl()Ljava/lang/String;
    .registers 4

    .line 10713
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10714
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 10715
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 10717
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 10719
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_14
    move-exception v0

    .line 10720
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getMobileProvisioningUrl RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10722
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getMsisdn()Ljava/lang/String;
    .registers 2

    .line 5316
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getMsisdn(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 5343
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5344
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 5345
    return-object v0

    .line 5346
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdnForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    .line 5349
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_15
    move-exception v1

    .line 5351
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 5347
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 5348
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;
    .registers 3

    .line 556
    invoke-static {}, Landroid/telephony/TelephonyBaseUtilsStub;->isCustSingleSimDevice()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v0

    .line 558
    :cond_9
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->multi_sim_config()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 559
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 560
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 561
    :cond_20
    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 562
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 563
    :cond_2b
    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 564
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 566
    :cond_37
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1
.end method

.method public whitelist getNai()Ljava/lang/String;
    .registers 2

    .line 2423
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getNaiBySubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getNai(I)Ljava/lang/String;
    .registers 4
    .param p1, "slotIndex"    # I

    .line 2460
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2461
    .local v0, "subId":[I
    if-nez v0, :cond_8

    .line 2462
    const/4 v1, 0x0

    return-object v1

    .line 2464
    :cond_8
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getNaiBySubscriberId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
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

    .line 2535
    const/16 v0, 0x32

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 2537
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2538
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_d

    .line 2539
    return-object v0

    .line 2540
    :cond_d
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 2541
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2540
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1d} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_1d} :catch_1e

    return-object v0

    .line 2544
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1e
    move-exception v1

    .line 2545
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 2542
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_20
    move-exception v1

    .line 2543
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .line 2902
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkCountryIso(I)Ljava/lang/String;
    .registers 6
    .param p1, "slotIndex"    # I

    .line 2927
    const v0, 0x7fffffff

    const-string v1, ""

    if-eq p1, v0, :cond_28

    .line 2928
    :try_start_7
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    .line 2929
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid slot index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    throw v0

    .line 2932
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    :cond_28
    :goto_28
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2933
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_2f

    return-object v1

    .line 2934
    :cond_2f
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_33} :catch_34

    return-object v1

    .line 2935
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_34
    move-exception v0

    .line 2936
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-q getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .registers 3
    .param p1, "phoneId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2948
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperator()Ljava/lang/String;
    .registers 2

    .line 2787
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getNetworkOperator(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 2803
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2804
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getNetworkOperatorForPhone(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .line 2820
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_numeric()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .line 2759
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getNetworkOperatorName(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .line 2774
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2775
    .local v0, "phoneId":I
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_alpha()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public whitelist getNetworkSelectionMode()I
    .registers 5

    .line 9231
    const/4 v0, 0x0

    .line 9233
    .local v0, "mode":I
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9234
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_10

    .line 9235
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkSelectionMode(I)I

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v2

    .line 9239
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_19

    .line 9237
    :catch_11
    move-exception v1

    .line 9238
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getNetworkSelectionMode RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9240
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_19
    return v0
.end method

.method public whitelist getNetworkSlicingConfiguration(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 16892
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telephony/data/NetworkSlicingConfig;Landroid/telephony/TelephonyManager$NetworkSlicingException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16893
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16896
    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16897
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 16900
    new-instance v1, Landroid/telephony/TelephonyManager$18;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/TelephonyManager$18;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSlicingConfig(Landroid/os/ResultReceiver;)V

    .line 16920
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_23

    .line 16898
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telephony/data/NetworkSlicingConfig;Landroid/telephony/TelephonyManager$NetworkSlicingException;>;"
    throw v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1f} :catch_1f

    .line 16918
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telephony/data/NetworkSlicingConfig;Landroid/telephony/TelephonyManager$NetworkSlicingException;>;"
    :catch_1f
    move-exception v0

    .line 16919
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16921
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method

.method public whitelist getNetworkSpecifier()Ljava/lang/String;
    .registers 2

    .line 2836
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

    .line 3054
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
    .param p1, "subId"    # I

    .line 3088
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3089
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 3090
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3091
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 3090
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_15

    return v0

    .line 3094
    :cond_14
    return v0

    .line 3099
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 3101
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 3096
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 3098
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public greylist getNetworkTypeName()Ljava/lang/String;
    .registers 2

    .line 3231
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNumberOfModemsWithSimultaneousDataConnections()I
    .registers 5

    .line 13645
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13646
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_18

    .line 13647
    nop

    .line 13648
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 13647
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    return v1

    .line 13652
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_18
    goto :goto_1a

    .line 13650
    :catch_19
    move-exception v0

    .line 13653
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getOtaSpNumberSchema(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 11728
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11729
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-p getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 11743
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 11744
    nop

    .line 11745
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->otasp_num_schema()Ljava/util/List;

    move-result-object v0

    .line 11744
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11748
    :cond_12
    return-object p2
.end method

.method public greylist-max-o getPackagesWithCarrierPrivileges()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9978
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9979
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_11

    .line 9980
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getPackagesWithCarrierPrivileges(I)Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_12

    return-object v0

    .line 9979
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    goto :goto_1f

    .line 9984
    :catch_12
    move-exception v1

    .line 9985
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "getPackagesWithCarrierPrivileges NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 9982
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_19
    move-exception v1

    .line 9983
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "getPackagesWithCarrierPrivileges RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9986
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1f
    nop

    .line 9987
    :goto_20
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 11991
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;
    .registers 5
    .param p1, "subscriptionId"    # I

    .line 12003
    const/4 v0, 0x0

    .line 12005
    .local v0, "returnValue":Landroid/telecom/PhoneAccountHandle;
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12006
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 12007
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v2

    .line 12010
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_c
    goto :goto_e

    .line 12009
    :catch_d
    move-exception v1

    .line 12012
    :goto_e
    return-object v0
.end method

.method public whitelist getPhoneCapability()Landroid/telephony/PhoneCapability;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16714
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16715
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 16716
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v1

    return-object v1

    .line 16718
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 16720
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_14
    move-exception v0

    .line 16721
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16723
    .end local v0    # "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    .line 16724
    sget-object v0, Landroid/telephony/PhoneCapability;->DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object v0

    .line 16726
    :cond_22
    sget-object v0, Landroid/telephony/PhoneCapability;->DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object v0
.end method

.method public whitelist getPhoneCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 609
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    return v0
.end method

.method public whitelist getPhoneType()I
    .registers 2

    .line 2647
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2648
    const/4 v0, 0x0

    return v0

    .line 2650
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    return v0
.end method

.method public greylist getPreferredNetworkType(I)I
    .registers 4
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8865
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesBitmask()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    return v0
.end method

.method public whitelist getPreferredNetworkTypeBitmask()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8887
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesBitmask()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getPreferredOpportunisticDataSubscription()I
    .registers 7

    .line 14444
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    .line 14445
    .local v0, "packageName":Ljava/lang/String;
    :goto_b
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 14446
    .local v1, "attributionTag":Ljava/lang/String;
    :goto_15
    const/4 v2, -0x1

    .line 14448
    .local v2, "subId":I
    :try_start_16
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v3

    .line 14449
    .local v3, "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    if-eqz v3, :cond_21

    .line 14450
    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/IOns;->getPreferredDataSubscriptionId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_22

    move v2, v4

    .line 14455
    .end local v3    # "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    :cond_21
    goto :goto_2a

    .line 14453
    :catch_22
    move-exception v3

    .line 14454
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v4, "TelephonyManager"

    const-string v5, "getPreferredDataSubscriptionId RemoteException"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14456
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_2a
    return v2
.end method

.method public greylist getRadioHalVersion()Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 14767
    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 14768
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2d

    .line 14769
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getRadioHalVersion()I

    move-result v2

    .line 14770
    .local v2, "version":I
    if-ne v2, v0, :cond_1b

    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 14771
    :cond_1b
    new-instance v3, Landroid/util/Pair;

    div-int/lit8 v4, v2, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    rem-int/lit8 v5, v2, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2c} :catch_2e

    return-object v3

    .line 14775
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "version":I
    :cond_2d
    goto :goto_36

    .line 14773
    :catch_2e
    move-exception v1

    .line 14774
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getRadioHalVersion() RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14776
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_36
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public whitelist getRadioPowerState()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10618
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10619
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 10620
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 10621
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 10620
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1c

    return v1

    .line 10625
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1b
    goto :goto_1d

    .line 10623
    :catch_1c
    move-exception v0

    .line 10626
    :goto_1d
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .line 12281
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getLocationData()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getServiceState(I)Landroid/telephony/ServiceState;
    .registers 6
    .param p1, "includeLocationData"    # I

    .line 12312
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v2

    :goto_c
    if-nez p1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    invoke-direct {p0, v0, v3, v1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(IZZ)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;
    .registers 4
    .param p1, "subId"    # I

    .line 12359
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(IZZ)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 4

    .line 13474
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13475
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 13476
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSignalStrength(I)Landroid/telephony/SignalStrength;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 13480
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 13478
    :catch_10
    move-exception v0

    .line 13479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getSignalStrength"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13481
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSimApplicationState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3726
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSimStateIncludingLoaded()I

    move-result v0

    .line 3727
    .local v0, "simState":I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimApplicationStateFromSimState(I)I

    move-result v1

    return v1
.end method

.method public whitelist getSimApplicationState(I)I
    .registers 5
    .param p1, "physicalSlotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3751
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v0

    .line 3752
    .local v0, "activePort":I
    nop

    .line 3753
    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v1

    .line 3755
    .local v1, "simState":I
    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSimApplicationStateFromSimState(I)I

    move-result v2

    return v2
.end method

.method public whitelist getSimApplicationState(II)I
    .registers 5
    .param p1, "physicalSlotIndex"    # I
    .param p2, "portIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3780
    nop

    .line 3781
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 3783
    .local v0, "simState":I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimApplicationStateFromSimState(I)I

    move-result v1

    return v1
.end method

.method public whitelist getSimCardState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3622
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 3623
    .local v0, "simState":I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCardStateFromSimState(I)I

    move-result v1

    return v1
.end method

.method public whitelist getSimCardState(I)I
    .registers 5
    .param p1, "physicalSlotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3644
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v0

    .line 3645
    .local v0, "activePort":I
    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 3646
    .local v1, "simState":I
    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSimCardStateFromSimState(I)I

    move-result v2

    return v2
.end method

.method public whitelist getSimCardState(II)I
    .registers 5
    .param p1, "physicalSlotIndex"    # I
    .param p2, "portIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3669
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 3670
    .local v0, "simState":I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCardStateFromSimState(I)I

    move-result v1

    return v1
.end method

.method public whitelist getSimCarrierId()I
    .registers 3

    .line 12475
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12476
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 12477
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionCarrierId(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 12481
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_11

    .line 12479
    :catch_10
    move-exception v0

    .line 12482
    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSimCarrierIdName()Ljava/lang/CharSequence;
    .registers 3

    .line 12500
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12501
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 12502
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionCarrierName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 12506
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_11

    .line 12504
    :catch_10
    move-exception v0

    .line 12507
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getSimCount()I
    .registers 2

    .line 8243
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public whitelist getSimCountryIso()Ljava/lang/String;
    .registers 2

    .line 3991
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimLocale()Ljava/util/Locale;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12083
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12084
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 12085
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSimLocaleForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 12086
    .local v1, "languageTag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 12087
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1a

    return-object v2

    .line 12091
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "languageTag":Ljava/lang/String;
    :cond_19
    goto :goto_1b

    .line 12090
    :catch_1a
    move-exception v0

    .line 12092
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSimOperator()Ljava/lang/String;
    .registers 2

    .line 3868
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getSimOperator(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 3884
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorName()Ljava/lang/String;
    .registers 2

    .line 3953
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getSimOperatorName(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 3968
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 3969
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getSimOperatorNameForPhone(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .line 3979
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_alpha()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-p getSimOperatorNumeric()Ljava/lang/String;
    .registers 3

    .line 3898
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 3899
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 3900
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 3901
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 3902
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 3903
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 3904
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 3905
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 3906
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 3911
    :cond_2a
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-p getSimOperatorNumeric(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 3927
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 3928
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-p getSimOperatorNumericForPhone(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .line 3941
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_numeric()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSimSerialNumber()Ljava/lang/String;
    .registers 2

    .line 4050
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSimSerialNumber(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 4089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x184

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 4091
    const/4 v0, 0x0

    :try_start_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 4092
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_20

    .line 4093
    return-object v0

    .line 4094
    :cond_20
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4095
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 4094
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_30} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_30} :catch_31

    return-object v0

    .line 4098
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_31
    move-exception v1

    .line 4100
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 4096
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_33
    move-exception v1

    .line 4097
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getSimSlotMapping()Ljava/util/Collection;
    .registers 4
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

    .line 4434
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4435
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 4436
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4442
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .local v1, "slotMap":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    nop

    .line 4443
    return-object v1

    .line 4438
    .end local v1    # "slotMap":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1b

    .line 4440
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_1b
    move-exception v0

    .line 4441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSimSpecificCarrierId()I
    .registers 3

    .line 12538
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12539
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 12540
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionSpecificCarrierId(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 12544
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_11

    .line 12542
    :catch_10
    move-exception v0

    .line 12545
    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSimSpecificCarrierIdName()Ljava/lang/CharSequence;
    .registers 3

    .line 12564
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12565
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 12566
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionSpecificCarrierName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 12570
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_11

    .line 12568
    :catch_10
    move-exception v0

    .line 12571
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSimState()I
    .registers 3

    .line 3579
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSimStateIncludingLoaded()I

    move-result v0

    .line 3580
    .local v0, "simState":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 3581
    const/4 v0, 0x5

    .line 3583
    :cond_9
    return v0
.end method

.method public whitelist getSimState(I)I
    .registers 4
    .param p1, "slotIndex"    # I

    .line 3851
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 3852
    .local v0, "simState":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 3853
    const/4 v0, 0x5

    .line 3855
    :cond_9
    return v0
.end method

.method public greylist getSlotIndex()I
    .registers 3

    .line 8008
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 8009
    .local v0, "slotIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 8010
    const v0, 0x7fffffff

    .line 8012
    :cond_e
    return v0
.end method

.method public greylist-max-o getSmsReceiveCapable(Z)Z
    .registers 4
    .param p1, "defaultValue"    # Z

    .line 11760
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11761
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result v1

    return v1
.end method

.method public greylist-max-o getSmsReceiveCapableForPhone(IZ)Z
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    .line 11774
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 11775
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->sms_receive()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 11778
    :cond_19
    return p2
.end method

.method public greylist-max-o getSmsSendCapable(Z)Z
    .registers 4
    .param p1, "defaultValue"    # Z

    .line 11790
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11791
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    move-result v1

    return v1
.end method

.method public greylist-max-o getSmsSendCapableForPhone(IZ)Z
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    .line 11804
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 11805
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->sms_send()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 11808
    :cond_19
    return p2
.end method

.method public greylist getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .registers 4
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .line 11967
    const/4 v0, -0x1

    .line 11968
    .local v0, "retval":I
    if-eqz p1, :cond_12

    const/4 v1, 0x4

    .line 11969
    invoke-virtual {p1, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 11970
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSubscriptionId(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 11972
    :cond_12
    return v0
.end method

.method public whitelist getSubscriberId()Ljava/lang/String;
    .registers 2

    .line 4487
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getSubscriberId(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 4504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x185

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 4506
    const/4 v0, 0x0

    :try_start_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 4507
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_20

    .line 4508
    return-object v0

    .line 4509
    :cond_20
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 4510
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 4509
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_30} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_30} :catch_31

    return-object v0

    .line 4513
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_31
    move-exception v1

    .line 4515
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 4511
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_33
    move-exception v1

    .line 4512
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getSubscriptionId()I
    .registers 2

    .line 7934
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    return v0
.end method

.method public whitelist getSubscriptionId(Landroid/telecom/PhoneAccountHandle;)I
    .registers 3
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 12027
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getSupportedModemCount()I
    .registers 3

    .line 654
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

    .line 13896
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 13897
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_16

    .line 13898
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

    .line 13901
    :cond_16
    return-wide v0

    .line 13906
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_17
    move-exception v2

    .line 13908
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-wide v0

    .line 13903
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_19
    move-exception v2

    .line 13905
    .local v2, "ex":Landroid/os/RemoteException;
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

    .line 15026
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15027
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 15028
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSystemSelectionChannels(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 15030
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 15032
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_18
    move-exception v0

    .line 15033
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getSystemSelectionChannels RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15035
    .end local v0    # "ex":Landroid/os/RemoteException;
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

    .line 12769
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12770
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 12771
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getTelephonyHistograms()Ljava/util/List;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 12775
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 12773
    :catch_c
    move-exception v0

    .line 12774
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getTelephonyHistograms"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12776
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTypeAllocationCode()Ljava/lang/String;
    .registers 2

    .line 2244
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getTypeAllocationCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTypeAllocationCode(I)Ljava/lang/String;
    .registers 5
    .param p1, "slotIndex"    # I

    .line 2256
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2257
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2260
    :cond_8
    :try_start_8
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getTypeAllocationCodeForSlot(I)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 2263
    :catch_d
    move-exception v2

    .line 2264
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 2261
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v2

    .line 2262
    .local v2, "ex":Landroid/os/RemoteException;
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

    .line 4199
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4200
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_13

    .line 4201
    const-string v2, "Error in getUiccCardsInfo: unable to connect to Telephony service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 4204
    :cond_13
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1e

    return-object v0

    .line 4205
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1e
    move-exception v1

    .line 4206
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getUiccCardsInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4224
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4225
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 4226
    return-object v0

    .line 4228
    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_13

    return-object v0

    .line 4229
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_13
    move-exception v1

    .line 4230
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getVisualVoicemailPackageName()Ljava/lang/String;
    .registers 5

    .line 5509
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5510
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 5511
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5512
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    .line 5511
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18} :catch_1a

    return-object v1

    .line 5510
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_19
    goto :goto_1d

    .line 5515
    :catch_1a
    move-exception v0

    goto :goto_1e

    .line 5514
    :catch_1c
    move-exception v0

    .line 5516
    :goto_1d
    nop

    .line 5517
    :goto_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVisualVoicemailSettings()Landroid/os/Bundle;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5480
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5481
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 5482
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5483
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_14

    .line 5482
    return-object v1

    .line 5481
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_13
    goto :goto_17

    .line 5486
    :catch_14
    move-exception v0

    goto :goto_18

    .line 5485
    :catch_16
    move-exception v0

    .line 5487
    :goto_17
    nop

    .line 5488
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 4
    .param p1, "subId"    # I

    .line 5631
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5632
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_11

    .line 5633
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5634
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_12

    .line 5633
    return-object v1

    .line 5632
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    goto :goto_15

    .line 5637
    :catch_12
    move-exception v0

    goto :goto_16

    .line 5636
    :catch_14
    move-exception v0

    .line 5638
    :goto_15
    nop

    .line 5640
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVoiceActivationState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5849
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceActivationState(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getVoiceActivationState(I)I
    .registers 4
    .param p1, "subId"    # I

    .line 5871
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5872
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 5873
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceActivationState(ILjava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 5872
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_13

    .line 5875
    :catch_10
    move-exception v0

    goto :goto_14

    .line 5874
    :catch_12
    move-exception v0

    .line 5876
    :goto_13
    nop

    .line 5877
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    .line 5976
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getVoiceMailAlphaTag(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 5990
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5991
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 5992
    return-object v0

    .line 5993
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5994
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5993
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    .line 5997
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_15
    move-exception v1

    .line 5999
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 5995
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 5996
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .line 5365
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getVoiceMailNumber(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 5378
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 5379
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 5380
    return-object v0

    .line 5381
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5382
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5381
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    .line 5385
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_15
    move-exception v1

    .line 5387
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 5383
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 5384
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist getVoiceMessageCount()I
    .registers 2

    .line 5939
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(I)I

    move-result v0

    return v0
.end method

.method public greylist getVoiceMessageCount(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 5952
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5953
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 5954
    return v0

    .line 5955
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5956
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5955
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    .line 5959
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 5961
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 5957
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 5958
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getVoiceNetworkType()I
    .registers 2

    .line 3194
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getVoiceNetworkType(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 3205
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3206
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 3207
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3208
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 3207
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_15

    return v0

    .line 3211
    :cond_14
    return v0

    .line 3216
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_15
    move-exception v1

    .line 3218
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 3213
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 3215
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 12373
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12374
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 12375
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 12379
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 12377
    :catch_c
    move-exception v0

    .line 12378
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getVoicemailRingtoneUri"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12380
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist handlePinMmi(Ljava/lang/String;)Z
    .registers 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10470
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10471
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 10472
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 10475
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 10473
    :catch_c
    move-exception v0

    .line 10474
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#handlePinMmi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10476
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10484
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10485
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 10486
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 10489
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 10487
    :catch_c
    move-exception v0

    .line 10488
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#handlePinMmi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10490
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasCarrierPrivileges()Z
    .registers 2

    .line 9676
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasCarrierPrivileges(I)Z
    .registers 6
    .param p1, "subId"    # I

    .line 9695
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 9696
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_12

    .line 9697
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatus(I)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_d} :catch_13

    const/4 v3, 0x1

    if-ne v0, v3, :cond_11

    move v1, v3

    :cond_11
    return v1

    .line 9696
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    goto :goto_22

    .line 9702
    :catch_13
    move-exception v2

    .line 9703
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "hasCarrierPrivileges NPE"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 9700
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v2

    .line 9701
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "hasCarrierPrivileges RemoteException"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9704
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_22
    nop

    .line 9705
    :goto_23
    return v1
.end method

.method public whitelist hasIccCard()Z
    .registers 2

    .line 3536
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public greylist hasIccCard(I)Z
    .registers 4
    .param p1, "slotIndex"    # I

    .line 3550
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3551
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 3552
    return v0

    .line 3553
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotIndex(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_d

    return v0

    .line 3557
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v1

    .line 3559
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 3554
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v1

    .line 3556
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist iccCloseLogicalChannel(I)Z
    .registers 5
    .param p1, "channel"    # I

    .line 7281
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(II)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 7282
    :catch_9
    move-exception v0

    .line 7283
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "iccCloseLogicalChannel IllegalStateException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7285
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o iccCloseLogicalChannel(II)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "channel"    # I

    .line 7305
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7306
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_14

    .line 7307
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7308
    .local v1, "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->subId:I

    .line 7309
    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    .line 7310
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_13} :catch_15

    return v2

    .line 7306
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    :cond_14
    goto :goto_22

    .line 7314
    :catch_15
    move-exception v0

    .line 7315
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "iccCloseLogicalChannel IllegalStateException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 7313
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catch_1f
    move-exception v0

    goto :goto_22

    .line 7312
    :catch_21
    move-exception v0

    .line 7316
    :goto_22
    nop

    .line 7317
    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist iccCloseLogicalChannelByPort(III)V
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "channel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7245
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7246
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 7247
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7248
    .local v1, "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    .line 7249
    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    .line 7250
    iput p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    .line 7251
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    .line 7252
    nop

    .line 7257
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    nop

    .line 7258
    return-void

    .line 7253
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    .end local p2    # "portIndex":I
    .end local p3    # "channel":I
    throw v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    .line 7255
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "portIndex":I
    .restart local p3    # "channel":I
    :catch_20
    move-exception v0

    .line 7256
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist iccCloseLogicalChannelBySlot(II)Z
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "channel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7205
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7206
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1a

    .line 7207
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7208
    .local v1, "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    .line 7209
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    .line 7210
    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    .line 7211
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_19} :catch_25
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_19} :catch_1b

    return v2

    .line 7206
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    :cond_1a
    goto :goto_28

    .line 7215
    :catch_1b
    move-exception v0

    .line 7216
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "iccCloseLogicalChannel IllegalStateException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 7214
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catch_25
    move-exception v0

    goto :goto_28

    .line 7213
    :catch_27
    move-exception v0

    .line 7217
    :goto_28
    nop

    .line 7218
    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .registers 17
    .param p1, "subId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;

    .line 7669
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7670
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_14

    .line 7671
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_15

    return-object v1

    .line 7670
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_14
    goto :goto_18

    .line 7673
    :catch_15
    move-exception v0

    goto :goto_19

    .line 7672
    :catch_17
    move-exception v0

    .line 7674
    :goto_18
    nop

    .line 7675
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .registers 15
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    .line 7646
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

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 7
    .param p1, "subId"    # I
    .param p2, "AID"    # Ljava/lang/String;
    .param p3, "p2"    # I

    .line 7164
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7165
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_23

    .line 7166
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7167
    .local v1, "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->subId:I

    .line 7168
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->callingPackage:Ljava/lang/String;

    .line 7169
    iput-object p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->aid:Ljava/lang/String;

    .line 7170
    iput p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->p2:I

    .line 7171
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    .line 7172
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v2
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_22} :catch_24

    return-object v2

    .line 7165
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    :cond_23
    goto :goto_27

    .line 7175
    :catch_24
    move-exception v0

    goto :goto_28

    .line 7174
    :catch_26
    move-exception v0

    .line 7176
    :goto_27
    nop

    .line 7177
    :goto_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 4
    .param p1, "AID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6989
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0

    return-object v0
.end method

.method public whitelist iccOpenLogicalChannel(Ljava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 4
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # I

    .line 7132
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0

    return-object v0
.end method

.method public whitelist iccOpenLogicalChannelByPort(IILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 8
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "p2"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7082
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7083
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_25

    .line 7084
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7085
    .local v1, "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    .line 7086
    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    .line 7087
    iput-object p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->aid:Ljava/lang/String;

    .line 7088
    iput p4, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->p2:I

    .line 7089
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->callingPackage:Ljava/lang/String;

    .line 7090
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    .line 7091
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v2

    return-object v2

    .line 7093
    .end local v1    # "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    .end local p2    # "portIndex":I
    .end local p3    # "aid":Ljava/lang/String;
    .end local p4    # "p2":I
    throw v1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2e

    .line 7095
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "portIndex":I
    .restart local p3    # "aid":Ljava/lang/String;
    .restart local p4    # "p2":I
    :catch_2e
    move-exception v0

    .line 7096
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist iccOpenLogicalChannelBySlot(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 7
    .param p1, "slotIndex"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "p2"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7031
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7032
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_29

    .line 7033
    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 7034
    .local v1, "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    .line 7035
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    .line 7036
    iput-object p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->aid:Ljava/lang/String;

    .line 7037
    iput p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->p2:I

    .line 7038
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->callingPackage:Ljava/lang/String;

    .line 7039
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    .line 7040
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_28} :catch_2a

    return-object v2

    .line 7032
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "request":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    :cond_29
    goto :goto_2d

    .line 7043
    :catch_2a
    move-exception v0

    goto :goto_2e

    .line 7042
    :catch_2c
    move-exception v0

    .line 7044
    :goto_2d
    nop

    .line 7045
    :goto_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p1, "subId"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .line 7618
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7619
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 7620
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(ILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18} :catch_1a

    return-object v1

    .line 7619
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_19
    goto :goto_1d

    .line 7623
    :catch_1a
    move-exception v0

    goto :goto_1e

    .line 7622
    :catch_1c
    move-exception v0

    .line 7624
    :goto_1d
    nop

    .line 7625
    :goto_1e
    const-string v0, ""

    return-object v0
.end method

.method public whitelist iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .line 7590
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

    move-result-object v0

    return-object v0
.end method

.method public whitelist iccTransmitApduBasicChannelByPort(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7556
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7557
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1e

    .line 7558
    nop

    .line 7559
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7558
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7565
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .local v1, "response":Ljava/lang/String;
    nop

    .line 7566
    return-object v1

    .line 7561
    .end local v1    # "response":Ljava/lang/String;
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    .end local p2    # "portIndex":I
    .end local p3    # "cla":I
    .end local p4    # "instruction":I
    .end local p5    # "p1":I
    .end local p6    # "p2":I
    .end local p7    # "p3":I
    .end local p8    # "data":Ljava/lang/String;
    throw v1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_27

    .line 7563
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "portIndex":I
    .restart local p3    # "cla":I
    .restart local p4    # "instruction":I
    .restart local p5    # "p1":I
    .restart local p6    # "p2":I
    .restart local p7    # "p3":I
    .restart local p8    # "data":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 7564
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist iccTransmitApduBasicChannelBySlot(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p1, "slotIndex"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7515
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7516
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1f

    .line 7517
    nop

    .line 7518
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7517
    move-object v1, v0

    move v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1e} :catch_20

    return-object v1

    .line 7516
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1f
    goto :goto_23

    .line 7522
    :catch_20
    move-exception v0

    goto :goto_24

    .line 7521
    :catch_22
    move-exception v0

    .line 7523
    :goto_23
    nop

    .line 7524
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;

    .line 7471
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7472
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 7473
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_18

    return-object v1

    .line 7472
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_1b

    .line 7476
    :catch_18
    move-exception v0

    goto :goto_1c

    .line 7475
    :catch_1a
    move-exception v0

    .line 7477
    :goto_1b
    nop

    .line 7478
    :goto_1c
    const-string v0, ""

    return-object v0
.end method

.method public whitelist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 17
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .line 7441
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

    move-result-object v0

    return-object v0
.end method

.method public whitelist iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "channel"    # I
    .param p4, "cla"    # I
    .param p5, "instruction"    # I
    .param p6, "p1"    # I
    .param p7, "p2"    # I
    .param p8, "p3"    # I
    .param p9, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7399
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7400
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 7401
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7408
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .local v1, "response":Ljava/lang/String;
    nop

    .line 7409
    return-object v1

    .line 7404
    .end local v1    # "response":Ljava/lang/String;
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    .end local p2    # "portIndex":I
    .end local p3    # "channel":I
    .end local p4    # "cla":I
    .end local p5    # "instruction":I
    .end local p6    # "p1":I
    .end local p7    # "p2":I
    .end local p8    # "p3":I
    .end local p9    # "data":Ljava/lang/String;
    throw v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_24

    .line 7406
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "portIndex":I
    .restart local p3    # "channel":I
    .restart local p4    # "cla":I
    .restart local p5    # "instruction":I
    .restart local p6    # "p1":I
    .restart local p7    # "p2":I
    .restart local p8    # "p3":I
    .restart local p9    # "data":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 7407
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist iccTransmitApduLogicalChannelBySlot(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p1, "slotIndex"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7356
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7357
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1d

    .line 7358
    nop

    .line 7359
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v3

    .line 7358
    move-object v1, v0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1c} :catch_1e

    return-object v1

    .line 7357
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1d
    goto :goto_21

    .line 7363
    :catch_1e
    move-exception v0

    goto :goto_22

    .line 7362
    :catch_20
    move-exception v0

    .line 7364
    :goto_21
    nop

    .line 7365
    :goto_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o invokeOemRilRequestRaw([B[B)I
    .registers 5
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11087
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11088
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 11089
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 11088
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_f

    .line 11091
    :catch_c
    move-exception v0

    goto :goto_10

    .line 11090
    :catch_e
    move-exception v0

    .line 11092
    :goto_f
    nop

    .line 11093
    :goto_10
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist isAnyRadioPoweredOn()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10571
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10572
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 10573
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 10578
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_17

    .line 10575
    :catch_c
    move-exception v0

    .line 10576
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isAnyRadioPoweredOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10577
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10579
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isApnMetered(I)Z
    .registers 5
    .param p1, "apnType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14932
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14933
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 14934
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->isApnMetered(II)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 14938
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_29

    .line 14936
    :catch_10
    move-exception v0

    .line 14937
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#isApnMetered RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14939
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_29
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isApplicationOnUicc(I)Z
    .registers 5
    .param p1, "appType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3823
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3824
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 3825
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->isApplicationOnUicc(II)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 3829
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 3827
    :catch_10
    move-exception v0

    .line 3828
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isApplicationOnUicc"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3830
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isConcurrentVoiceAndDataSupported()Z
    .registers 5

    .line 10456
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10457
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    :goto_7
    goto :goto_11

    .line 10458
    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    .line 10457
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isConcurrentVoiceAndDataAllowed(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    goto :goto_7

    :goto_11
    return v0

    .line 10459
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_12
    move-exception v1

    .line 10460
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isConcurrentVoiceAndDataAllowed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10462
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist isDataCapable()Z
    .registers 3

    .line 13523
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 13525
    :cond_6
    const-string/jumbo v0, "ro.radio.noril"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 13527
    :cond_11
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111017d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDataConnectionAllowed()Z
    .registers 5

    .line 13502
    const/4 v0, 0x0

    .line 13504
    .local v0, "retVal":Z
    :try_start_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 13505
    .local v1, "subId":I
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 13506
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_14

    .line 13507
    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isDataEnabled(I)Z

    move-result v3
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_15

    move v0, v3

    .line 13510
    .end local v1    # "subId":I
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_14
    goto :goto_1d

    .line 13508
    :catch_15
    move-exception v1

    .line 13509
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error isDataConnectionAllowed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13511
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1d
    return v0
.end method

.method public whitelist isDataConnectivityPossible()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10674
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10675
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_14

    .line 10676
    nop

    .line 10677
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v1

    .line 10676
    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible(I)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    return v1

    .line 10680
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_14
    goto :goto_1d

    .line 10678
    :catch_15
    move-exception v0

    .line 10679
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isDataAllowed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10681
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDataEnabled()Z
    .registers 5

    .line 10797
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isDataEnabledForReason(I)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    .line 10798
    :catch_6
    move-exception v1

    .line 10800
    .local v1, "ise":Ljava/lang/IllegalStateException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling #isDataEnabled, returning default (false)."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10801
    return v0
.end method

.method public whitelist isDataEnabledForApn(I)Z
    .registers 6
    .param p1, "apnType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14909
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    .line 14911
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_b
    :try_start_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 14912
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1a

    .line 14913
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/telephony/ITelephony;->isDataEnabledForApn(IILjava/lang/String;)Z

    move-result v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1b

    return v2

    .line 14917
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_1a
    goto :goto_34

    .line 14915
    :catch_1b
    move-exception v1

    .line 14916
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony#isDataEnabledForApn RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14918
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_34
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isDataEnabledForReason(I)Z
    .registers 3
    .param p1, "reason"    # I

    .line 13359
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/telephony/TelephonyManager;->isDataEnabledForReason(II)Z

    move-result v0

    return v0
.end method

.method public whitelist isDataRoamingEnabled()Z
    .registers 5

    .line 10826
    const/4 v0, 0x0

    .line 10828
    .local v0, "isDataRoamingEnabled":Z
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 10829
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_15

    .line 10830
    nop

    .line 10831
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v2

    .line 10830
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isDataRoamingEnabled(I)Z

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    move v0, v2

    .line 10835
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_15
    goto :goto_1e

    .line 10833
    :catch_16
    move-exception v1

    .line 10834
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isDataRoamingEnabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10836
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1e
    return v0
.end method

.method public whitelist isEmergencyAssistanceEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14012
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v2, "isEmergencyAssistanceEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14015
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isEmergencyNumber(Ljava/lang/String;)Z
    .registers 5
    .param p1, "number"    # Ljava/lang/String;

    .line 14167
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14168
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_c

    .line 14169
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 14171
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "number":Ljava/lang/String;
    throw v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_15

    .line 14173
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "number":Ljava/lang/String;
    :catch_15
    move-exception v0

    .line 14174
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isEmergencyNumber RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14175
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 14177
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isHearingAidCompatibilitySupported()Z
    .registers 4

    .line 11230
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 11231
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 11232
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isHearingAidCompatibilitySupported()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    .line 11231
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1b

    .line 11236
    :catch_e
    move-exception v1

    .line 11237
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 11234
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_15
    move-exception v1

    .line 11235
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11238
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    nop

    .line 11239
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isIccLockEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15534
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15535
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 15536
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isIccLockEnabled(I)Z

    move-result v1

    return v1

    .line 15538
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 15540
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_18
    move-exception v0

    .line 15541
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isIccLockEnabled RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15542
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 15544
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isIdle()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10195
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 10196
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public greylist-max-p isImsRegistered()Z
    .registers 3

    .line 11273
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 11274
    :catch_d
    move-exception v0

    .line 11275
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o isImsRegistered(I)Z
    .registers 4
    .param p1, "subId"    # I

    .line 11253
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 11254
    :catch_9
    move-exception v0

    .line 11255
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isInEmergencySmsMode()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9288
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9289
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 9290
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isInEmergencySmsMode()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 9294
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_15

    .line 9292
    :catch_c
    move-exception v0

    .line 9293
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isInEmergencySmsMode RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9295
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLteCdmaEvdoGsmWcdmaEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4119
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public whitelist isManualNetworkSelectionAllowed()Z
    .registers 4

    .line 13453
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13454
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 13455
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isManualNetworkSelectionAllowed(I)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 13459
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 13457
    :catch_10
    move-exception v0

    .line 13458
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isManualNetworkSelectionAllowed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13460
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isMobileDataPolicyEnabled(I)Z
    .registers 5
    .param p1, "policy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15498
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15499
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 15500
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->isMobileDataPolicyEnabled(II)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 15504
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_29

    .line 15502
    :catch_10
    move-exception v0

    .line 15503
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#isMobileDataPolicyEnabled RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15505
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isModemEnabledForSlot(I)Z
    .registers 5
    .param p1, "slotIndex"    # I

    .line 14568
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14569
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 14570
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 14571
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 14570
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return v1

    .line 14575
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_20

    .line 14573
    :catch_18
    move-exception v0

    .line 14574
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "enableModem RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14576
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isMultiSimEnabled()Z
    .registers 4

    .line 712
    invoke-static {}, Landroid/telephony/TelephonyBaseUtilsStub;->isCustSingleSimDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 713
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method

.method public whitelist isMultiSimSupported()I
    .registers 5

    .line 14686
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_9

    .line 14687
    return v1

    .line 14690
    :cond_9
    :try_start_9
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14691
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1c

    .line 14692
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1b} :catch_1d

    return v1

    .line 14696
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_1c
    goto :goto_26

    .line 14694
    :catch_1d
    move-exception v0

    .line 14695
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "isMultiSimSupported RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14697
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return v1
.end method

.method public whitelist isNetworkRoaming()Z
    .registers 2

    .line 2872
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public greylist isNetworkRoaming(I)Z
    .registers 5
    .param p1, "subId"    # I

    .line 2886
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2887
    .local v0, "phoneId":I
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_is_roaming()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public whitelist isNrDualConnectivityEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15793
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15794
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 15795
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isNrDualConnectivityEnabled(I)Z

    move-result v1

    return v1

    .line 15797
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 15799
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_18
    move-exception v0

    .line 15800
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isNRDualConnectivityEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15801
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 15803
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isOffhook()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10165
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 10166
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    return v1
.end method

.method public whitelist isOpportunisticNetworkEnabled()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13703
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    .line 13704
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_b
    const/4 v1, 0x0

    .line 13707
    .local v1, "isEnabled":Z
    :try_start_c
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v2

    .line 13708
    .local v2, "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    if-eqz v2, :cond_17

    .line 13709
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/IOns;->isEnabled(Ljava/lang/String;)Z

    move-result v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_18

    move v1, v3

    .line 13713
    .end local v2    # "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    :cond_17
    goto :goto_20

    .line 13711
    :catch_18
    move-exception v2

    .line 13712
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    const-string v4, "enableOpportunisticNetwork RemoteException"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13715
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_20
    return v1
.end method

.method public whitelist isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .registers 6
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14207
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 14208
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 14209
    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/ITelephony;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 14211
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "number":Ljava/lang/String;
    throw v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_15

    .line 14213
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "number":Ljava/lang/String;
    :catch_15
    move-exception v1

    .line 14214
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "isEmergencyNumber RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14215
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 14217
    .end local v1    # "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z
    .registers 6
    .param p1, "capability"    # Ljava/lang/String;

    .line 16118
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 16120
    :cond_4
    :try_start_4
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 16121
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_f

    .line 16122
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 16124
    :cond_f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "capability":Ljava/lang/String;
    throw v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_18

    .line 16126
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "capability":Ljava/lang/String;
    :catch_18
    move-exception v1

    .line 16127
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony#isRadioInterfaceCapabilitySupported RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16129
    .end local v1    # "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist isRadioOn()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10211
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10212
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 10213
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v1

    .line 10216
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_13
    goto :goto_1c

    .line 10214
    :catch_14
    move-exception v0

    .line 10215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRadioOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10217
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRemovableEsimDefaultEuicc()Z
    .registers 4

    .line 17107
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17108
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 17109
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 17113
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_29

    .line 17111
    :catch_10
    move-exception v0

    .line 17112
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in isRemovableEsimDefaultEuicc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17114
    .end local v0    # "e":Landroid/os/RemoteException;
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

    .line 10180
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 10181
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    return v1
.end method

.method public whitelist isRttSupported()Z
    .registers 4

    .line 11210
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 11211
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_f

    .line 11212
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRttSupported(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_17
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_e} :catch_10

    return v0

    .line 11211
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_1d

    .line 11216
    :catch_10
    move-exception v1

    .line 11217
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#isWorldPhone"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 11214
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_17
    move-exception v1

    .line 11215
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#isRttSupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11218
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1d
    nop

    .line 11219
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSmsCapable()Z
    .registers 3

    .line 6638
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 6639
    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTetheringApnRequired()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9626
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isTetheringApnRequired(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isTetheringApnRequired(I)Z
    .registers 5
    .param p1, "subId"    # I

    .line 9638
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9639
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 9640
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isTetheringApnRequiredForSubscriber(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    .line 9639
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1d

    .line 9643
    :catch_e
    move-exception v1

    .line 9644
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "hasMatchedTetherApnSetting NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 9641
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v1

    .line 9642
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "hasMatchedTetherApnSetting RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9645
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1d
    nop

    .line 9646
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isTtyModeSupported()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11188
    const/4 v0, 0x0

    .line 11189
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    :try_start_1
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_e

    .line 11190
    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    move-object v0, v1

    .line 11192
    :cond_e
    if-eqz v0, :cond_15

    .line 11193
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isTtySupported()Z

    move-result v1
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_14} :catch_16

    return v1

    .line 11197
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_15
    goto :goto_1e

    .line 11195
    :catch_16
    move-exception v0

    .line 11196
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "TelephonyManager"

    const-string v2, "Permission error calling TelecomManager#isTtySupported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11198
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVideoCallingEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11129
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11130
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 11131
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v1

    .line 11134
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_13
    goto :goto_1c

    .line 11132
    :catch_14
    move-exception v0

    .line 11133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isVideoCallingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11135
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isVideoTelephonyAvailable()Z
    .registers 3

    .line 11312
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVideoTelephonyAvailable(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 11313
    :catch_d
    move-exception v0

    .line 11314
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isVisualVoicemailEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 3
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5458
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoNrEnabled()Z
    .registers 4

    .line 13136
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13137
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 13138
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVoNrEnabled(I)Z

    move-result v1

    return v1

    .line 13140
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 13142
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_18
    move-exception v0

    .line 13143
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isVoNrEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13144
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 13146
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVoiceCapable()Z
    .registers 3

    .line 6622
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 6623
    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 12420
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12421
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 12422
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 12426
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 12424
    :catch_c
    move-exception v0

    .line 12425
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isVoicemailVibrationEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12427
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isVolteAvailable()Z
    .registers 5

    .line 11292
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

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

    .line 11295
    :catch_f
    move-exception v1

    .line 11296
    .local v1, "ex":Ljava/lang/Exception;
    return v0
.end method

.method public greylist isWifiCallingAvailable()Z
    .registers 3

    .line 11328
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isWifiCallingAvailable(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 11329
    :catch_d
    move-exception v0

    .line 11330
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isWorldPhone()Z
    .registers 6

    .line 11166
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 11167
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 11168
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_16} :catch_18

    return v0

    .line 11167
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_25

    .line 11172
    :catch_18
    move-exception v1

    .line 11173
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#isWorldPhone"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 11170
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1f
    move-exception v1

    .line 11171
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#isWorldPhone"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11174
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_25
    nop

    .line 11175
    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method synthetic blacklist lambda$uploadCallComposerPicture$1$android-telephony-TelephonyManager(Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .registers 12
    .param p1, "pictureToUpload"    # Ljava/nio/file/Path;
    .param p2, "callback"    # Landroid/os/OutcomeReceiver;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .line 4801
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4802
    const-string v1, "Uploading call composer picture on main thread! hic sunt dracones!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4805
    :cond_11
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v1

    .line 4806
    .local v1, "size":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getMaximumCallComposerPictureSize()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_28

    .line 4807
    new-instance v3, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p2, v3}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 4809
    return-void

    .line 4811
    :cond_28
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2f} :catch_5a

    .line 4813
    .local v3, "fileStream":Ljava/io/InputStream;
    :try_start_2f
    new-instance v4, Landroid/telephony/TelephonyManager$2;

    invoke-direct {v4, p0, v3, p2}, Landroid/telephony/TelephonyManager$2;-><init>(Landroid/telephony/TelephonyManager;Ljava/io/InputStream;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {p0, v3, p3, p4, v4}, Landroid/telephony/TelephonyManager;->uploadCallComposerPicture(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_5a

    .line 4849
    goto :goto_59

    .line 4839
    :catch_38
    move-exception v4

    .line 4840
    .local v4, "e":Ljava/lang/Exception;
    :try_start_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception calling into stream-version of uploadCallComposerPicture: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4f} :catch_5a

    .line 4843
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 4848
    goto :goto_59

    .line 4844
    :catch_53
    move-exception v5

    .line 4846
    .local v5, "e1":Ljava/io/IOException;
    :try_start_54
    const-string v6, "Error closing file input stream when uploading call composer pic"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_59} :catch_5a

    .line 4854
    .end local v1    # "size":J
    .end local v3    # "fileStream":Ljava/io/InputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "e1":Ljava/io/IOException;
    :goto_59
    goto :goto_7a

    .line 4850
    :catch_5a
    move-exception v1

    .line 4851
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException when uploading call composer pic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4852
    new-instance v0, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 4855
    .end local v1    # "e":Ljava/io/IOException;
    :goto_7a
    return-void
.end method

.method public whitelist listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 16
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6445
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 6446
    :cond_5
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move v9, v0

    .line 6447
    .local v9, "notifyNow":Z
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 6449
    const-string/jumbo v1, "telephony_registry"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    .line 6450
    .local v0, "telephonyRegistry":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v0, :cond_41

    .line 6451
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v10

    .line 6452
    .local v10, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 6453
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 6454
    .local v11, "renounceFineLocationAccess":Z
    nop

    .line 6455
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 6456
    .local v12, "renounceCoarseLocationAccess":Z
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 6457
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 6456
    move-object v1, v0

    move v3, v11

    move v4, v12

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v9}, Landroid/telephony/TelephonyRegistryManager;->listenFromListener(IZZLjava/lang/String;Ljava/lang/String;Landroid/telephony/PhoneStateListener;IZ)V

    .line 6459
    .end local v10    # "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "renounceFineLocationAccess":Z
    .end local v12    # "renounceCoarseLocationAccess":Z
    goto :goto_49

    .line 6460
    :cond_41
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "telephony registry not ready."

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6462
    :goto_49
    return-void
.end method

.method public whitelist matchesCurrentSimOperator(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "mvnoType"    # I
    .param p3, "mvnoMatchData"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15055
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 15056
    return v0

    .line 15058
    :cond_c
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 15059
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1b

    .line 15060
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/telephony/ITelephony;->isMvnoMatched(IILjava/lang/String;)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1c

    return v0

    .line 15064
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_1b
    goto :goto_35

    .line 15062
    :catch_1c
    move-exception v1

    .line 15063
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony#matchesCurrentSimOperator RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15065
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_35
    return v0
.end method

.method public blacklist modifyDevicePolicyOverrideApn(Landroid/content/Context;ILandroid/telephony/data/ApnSetting;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apnId"    # I
    .param p3, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 14880
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    .line 14881
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 14882
    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 14880
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public whitelist needsOtaServiceProvisioning()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10689
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10690
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 10691
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 10694
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 10692
    :catch_c
    move-exception v0

    .line 10693
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#needsOtaServiceProvisioning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10695
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist notifyOtaEmergencyNumberDbInstalled()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13933
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13934
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_a

    .line 13935
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->notifyOtaEmergencyNumberDbInstalled()V

    .line 13942
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_1f

    .line 13937
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 13939
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_13
    move-exception v0

    .line 13940
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "notifyOtaEmergencyNumberDatabaseInstalled RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13941
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 13943
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method public blacklist notifyUserActivity()V
    .registers 4

    .line 15640
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15641
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 15642
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->userActivity()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 15648
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_28

    .line 15644
    :catch_a
    move-exception v0

    .line 15647
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyUserActivity exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15649
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method public greylist nvReadItem(I)Ljava/lang/String;
    .registers 5
    .param p1, "itemID"    # I

    .line 7740
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 7741
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 7742
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->nvReadItem(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return-object v0

    .line 7741
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1d

    .line 7745
    :catch_e
    move-exception v1

    .line 7746
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "nvReadItem NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 7743
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v1

    .line 7744
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "nvReadItem RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7747
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1d
    nop

    .line 7748
    :goto_1e
    const-string v0, ""

    return-object v0
.end method

.method public greylist-max-r nvResetConfig(I)Z
    .registers 5
    .param p1, "resetType"    # I

    .line 7824
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 7825
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_36

    .line 7826
    const/4 v2, 0x1

    if-ne p1, v2, :cond_14

    .line 7827
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->rebootModem(I)Z

    move-result v0

    return v0

    .line 7828
    :cond_14
    const/4 v2, 0x3

    if-ne p1, v2, :cond_20

    .line 7829
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->resetModemConfig(I)Z

    move-result v0

    return v0

    .line 7831
    :cond_20
    const-string/jumbo v2, "nvResetConfig unsupported reset type"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_26} :catch_2f
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_26} :catch_27

    goto :goto_36

    .line 7836
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_27
    move-exception v1

    .line 7837
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "nvResetConfig NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 7834
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_2f
    move-exception v1

    .line 7835
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "nvResetConfig RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7838
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_36
    :goto_36
    nop

    .line 7839
    :goto_37
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o nvWriteCdmaPrl([B)Z
    .registers 5
    .param p1, "preferredRoamingList"    # [B

    .line 7793
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 7794
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 7795
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->nvWriteCdmaPrl([B)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    .line 7794
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1d

    .line 7798
    :catch_e
    move-exception v1

    .line 7799
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "nvWriteCdmaPrl NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 7796
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v1

    .line 7797
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "nvWriteCdmaPrl RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7800
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1d
    nop

    .line 7801
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o nvWriteItem(ILjava/lang/String;)Z
    .registers 6
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .line 7767
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 7768
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 7769
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->nvWriteItem(ILjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    .line 7768
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1d

    .line 7772
    :catch_e
    move-exception v1

    .line 7773
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "nvWriteItem NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 7770
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v1

    .line 7771
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "nvWriteItem RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7774
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1d
    nop

    .line 7775
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist prepareForUnattendedReboot()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16783
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16784
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 16785
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->prepareForUnattendedReboot()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 16790
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_17

    .line 16787
    :catch_c
    move-exception v0

    .line 16788
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#prepareForUnattendedReboot RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16789
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 16791
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist rebootModem()V
    .registers 4

    .line 7914
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7915
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 7918
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->rebootModem(I)Z

    .line 7922
    nop

    .line 7923
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    return-void

    .line 7916
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 7919
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_18
    move-exception v0

    .line 7920
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "rebootRadio RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7921
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist rebootRadio()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7889
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 7890
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_11

    .line 7891
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->rebootModem(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_12

    return v0

    .line 7890
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    goto :goto_21

    .line 7895
    :catch_12
    move-exception v1

    .line 7896
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "rebootRadio NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 7893
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1a
    move-exception v1

    .line 7894
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "rebootRadio RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7897
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_21
    nop

    .line 7898
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist refreshUiccProfile()V
    .registers 4

    .line 4243
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4244
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->refreshUiccProfile(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4247
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_12

    .line 4245
    :catch_a
    move-exception v0

    .line 4246
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4248
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 6
    .param p1, "logicalSlotIndex"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17047
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_28

    .line 17049
    if-eqz p2, :cond_20

    if-eqz p3, :cond_20

    .line 17053
    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 17054
    if-eqz v0, :cond_18

    .line 17057
    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->addCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 17058
    return-void

    .line 17055
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony registry service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17050
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CarrierPrivilegesCallback and executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17048
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerTelephonyCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    .registers 15
    .param p1, "includeLocationData"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyCallback;

    .line 16382
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony service is null."

    if-eqz v0, :cond_4f

    .line 16386
    if-eqz p2, :cond_47

    if-eqz p3, :cond_47

    .line 16389
    nop

    .line 16390
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/TelephonyRegistryManager;

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 16391
    if-eqz v2, :cond_41

    .line 16392
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v3

    :goto_22
    if-nez p1, :cond_26

    move v4, v1

    goto :goto_27

    :cond_26
    move v4, v3

    :goto_27
    iget v6, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 16395
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 16396
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    if-eqz v5, :cond_39

    move v10, v1

    goto :goto_3a

    :cond_39
    move v10, v3

    .line 16392
    :goto_3a
    move v3, v0

    move-object v5, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v10}, Landroid/telephony/TelephonyRegistryManager;->registerTelephonyCallback(ZZLjava/util/concurrent/Executor;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;Z)V

    .line 16400
    return-void

    .line 16398
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16387
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TelephonyCallback and executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16383
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/TelephonyCallback;

    .line 16286
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getLocationData()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 16287
    return-void
.end method

.method public whitelist reportDefaultNetworkStatus(Z)V
    .registers 5
    .param p1, "report"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13167
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13168
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 13169
    nop

    .line 13170
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 13169
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->carrierActionReportDefaultNetworkStatus(IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 13174
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    goto :goto_1b

    .line 13172
    :catch_13
    move-exception v0

    .line 13173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#carrierActionReportDefaultNetworkStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13175
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public whitelist requestCellInfoUpdate(Landroid/os/WorkSource;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
    .registers 11
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6849
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6850
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_18

    .line 6851
    const-wide/32 v1, 0xadbeeaa

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_10

    .line 6854
    return-void

    .line 6852
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "workSource":Landroid/os/WorkSource;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/telephony/TelephonyManager$CellInfoCallback;
    throw v1

    .line 6858
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "workSource":Landroid/os/WorkSource;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/telephony/TelephonyManager$CellInfoCallback;
    :cond_18
    nop

    .line 6859
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    new-instance v3, Landroid/telephony/TelephonyManager$5;

    invoke-direct {v3, p0, p2, p3}, Landroid/telephony/TelephonyManager$5;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    .line 6883
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 6858
    move-object v1, v0

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony;->requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_30

    .line 6887
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_39

    .line 6884
    :catch_30
    move-exception v0

    .line 6885
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p2, p3, v0}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 6888
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method

.method public whitelist requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;

    .line 6785
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6786
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_18

    .line 6787
    const-wide/32 v1, 0xadbeeaa

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_10

    .line 6790
    return-void

    .line 6788
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/telephony/TelephonyManager$CellInfoCallback;
    throw v1

    .line 6794
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/telephony/TelephonyManager$CellInfoCallback;
    :cond_18
    nop

    .line 6795
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    new-instance v2, Landroid/telephony/TelephonyManager$4;

    invoke-direct {v2, p0, p1, p2}, Landroid/telephony/TelephonyManager$4;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    .line 6818
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 6794
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 6822
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_37

    .line 6819
    :catch_2e
    move-exception v0

    .line 6820
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, v0}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 6823
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method public whitelist requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 12189
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telephony/ModemActivityInfo;Landroid/telephony/TelephonyManager$ModemActivityInfoException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12190
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12194
    new-instance v0, Landroid/telephony/TelephonyManager$9;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/telephony/TelephonyManager$9;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 12246
    .local v0, "wrapperResultReceiver":Landroid/os/ResultReceiver;
    :try_start_c
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 12247
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_16

    .line 12248
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 12249
    return-void

    .line 12253
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_16
    goto :goto_1f

    .line 12251
    :catch_17
    move-exception v1

    .line 12252
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getModemActivityInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12254
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1f
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12257
    return-void
.end method

.method public whitelist requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .registers 15
    .param p1, "includeLocationData"    # I
    .param p2, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 9098
    sget-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9099
    :try_start_3
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;

    if-nez v1, :cond_e

    .line 9100
    new-instance v1, Landroid/telephony/TelephonyScanManager;

    invoke-direct {v1}, Landroid/telephony/TelephonyScanManager;-><init>()V

    iput-object v1, p0, Landroid/telephony/TelephonyManager;->mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;

    .line 9102
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2c

    .line 9103
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    move v4, v0

    .line 9106
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 9103
    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v9}, Landroid/telephony/TelephonyScanManager;->requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/NetworkScan;

    move-result-object v0

    return-object v0

    .line 9102
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public greylist requestNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .registers 4
    .param p1, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9122
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Landroid/telephony/TelephonyManager;->requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object v0

    return-object v0
.end method

.method public whitelist requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .registers 5
    .param p1, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 9053
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object v0

    return-object v0
.end method

.method public whitelist requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLjava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
    .registers 13
    .param p1, "range"    # Landroid/telephony/PhoneNumberRange;
    .param p2, "timeoutMillis"    # J
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/telephony/NumberVerificationCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8047
    if-eqz p4, :cond_48

    .line 8050
    if-eqz p5, :cond_40

    .line 8054
    new-instance v4, Landroid/telephony/TelephonyManager$6;

    invoke-direct {v4, p0, p4, p5}, Landroid/telephony/TelephonyManager$6;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V

    .line 8079
    .local v4, "internalCallback":Lcom/android/internal/telephony/INumberVerificationCallback;
    :try_start_9
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v6, v0

    .line 8080
    .local v6, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v6, :cond_22

    .line 8081
    const-wide/32 v0, 0xadbeeaa

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 8084
    return-void

    .line 8082
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "internalCallback":Lcom/android/internal/telephony/INumberVerificationCallback;
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "range":Landroid/telephony/PhoneNumberRange;
    .end local p2    # "timeoutMillis":J
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/telephony/NumberVerificationCallback;
    throw v0

    .line 8088
    .restart local v4    # "internalCallback":Lcom/android/internal/telephony/INumberVerificationCallback;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "range":Landroid/telephony/PhoneNumberRange;
    .restart local p2    # "timeoutMillis":J
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "callback":Landroid/telephony/NumberVerificationCallback;
    :cond_22
    nop

    .line 8089
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 8088
    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2d} :catch_2e

    .line 8095
    .end local v6    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_3f

    .line 8090
    :catch_2e
    move-exception v0

    .line 8091
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "requestNumberVerification RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8092
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda21;

    invoke-direct {v1, p4, p5}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda21;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 8096
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_3f
    return-void

    .line 8051
    .end local v4    # "internalCallback":Lcom/android/internal/telephony/INumberVerificationCallback;
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8048
    :cond_48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist resetAllCarrierActions()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13193
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13194
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 13195
    nop

    .line 13196
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 13195
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->carrierActionResetAll(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 13200
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    goto :goto_1b

    .line 13198
    :catch_13
    move-exception v0

    .line 13199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#carrierActionResetAll"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13201
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public whitelist resetCarrierKeysForImsiEncryption()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4587
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 4588
    .local v0, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-eqz v0, :cond_18

    .line 4591
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 4592
    .local v1, "subId":I
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->resetCarrierKeysForImsiEncryption(ILjava/lang/String;)V

    .line 4595
    .end local v0    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v1    # "subId":I
    goto :goto_39

    .line 4589
    .restart local v0    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IMSI error: Subscriber Info is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    .line 4593
    .end local v0    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_20
    move-exception v0

    .line 4594
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getCarrierInfoForImsiEncryption RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4596
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method

.method public whitelist resetIms(I)V
    .registers 5
    .param p1, "slotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8476
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8477
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 8478
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->resetIms(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 8483
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_28

    .line 8480
    :catch_a
    move-exception v0

    .line 8481
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleImsOnOff, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8482
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8481
    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8484
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method public whitelist resetOtaEmergencyNumberDbFilePath()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13986
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13987
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_a

    .line 13988
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->resetOtaEmergencyNumberDbFilePath()V

    .line 13995
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_1f

    .line 13990
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 13992
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    :catch_13
    move-exception v0

    .line 13993
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "resetOtaEmergencyNumberDbFilePath RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13994
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 13996
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method public whitelist resetRadioConfig()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7859
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 7860
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_11

    .line 7861
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->resetModemConfig(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_12

    return v0

    .line 7860
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    goto :goto_21

    .line 7865
    :catch_12
    move-exception v1

    .line 7866
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "resetRadioConfig NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 7863
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1a
    move-exception v1

    .line 7864
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "resetRadioConfig RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7867
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_21
    nop

    .line 7868
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist resetSettings()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12057
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

    .line 12058
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12059
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2e

    .line 12060
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->factoryReset(ILjava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 12063
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_2e
    goto :goto_30

    .line 12062
    :catch_2f
    move-exception v0

    .line 12064
    :goto_30
    return-void
.end method

.method public whitelist sendDialerSpecialCode(Ljava/lang/String;)V
    .registers 5
    .param p1, "inputCode"    # Ljava/lang/String;

    .line 6014
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6015
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_7

    .line 6016
    return-void

    .line 6018
    :cond_7
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 6021
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_2a

    .line 6019
    :catch_11
    move-exception v0

    .line 6020
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#sendDialerSpecialCode RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6022
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public greylist-max-o sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I
    .param p2, "content"    # Ljava/lang/String;

    .line 7715
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 7716
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 7717
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 7716
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_f

    .line 7719
    :catch_c
    move-exception v0

    goto :goto_10

    .line 7718
    :catch_e
    move-exception v0

    .line 7720
    :goto_f
    nop

    .line 7721
    :goto_10
    const-string v0, ""

    return-object v0
.end method

.method public whitelist sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .line 7694
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist sendThermalMitigationRequest(Landroid/telephony/ThermalMitigationRequest;)I
    .registers 5
    .param p1, "thermalMitigationRequest"    # Landroid/telephony/ThermalMitigationRequest;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 16241
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16242
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 16243
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 16244
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 16243
    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 16246
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "thermalMitigationRequest":Landroid/telephony/ThermalMitigationRequest;
    throw v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1c

    .line 16247
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "thermalMitigationRequest":Landroid/telephony/ThermalMitigationRequest;
    :catch_1c
    move-exception v0

    .line 16248
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#thermalMitigationRequest RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16249
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 16251
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist sendUssdRequest(Ljava/lang/String;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/os/Handler;)V
    .registers 10
    .param p1, "ussdRequest"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/telephony/TelephonyManager$UssdResponseCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 10413
    const-string v0, "UssdResponseCallback cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10414
    move-object v0, p0

    .line 10416
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v1, Landroid/telephony/TelephonyManager$7;

    invoke-direct {v1, p0, p3, p2, v0}, Landroid/telephony/TelephonyManager$7;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/telephony/TelephonyManager;)V

    .line 10434
    .local v1, "wrappedCallback":Landroid/os/ResultReceiver;
    :try_start_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 10435
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_18

    .line 10436
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/telephony/ITelephony;->handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 10444
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_18
    goto :goto_36

    .line 10438
    :catch_19
    move-exception v2

    .line 10439
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    const-string v4, "Error calling ITelephony#sendUSSDCode"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10440
    new-instance v3, Landroid/telephony/UssdResponse;

    const-string v4, ""

    invoke-direct {v3, p1, v4}, Landroid/telephony/UssdResponse;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10441
    .local v3, "response":Landroid/telephony/UssdResponse;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 10442
    .local v4, "returnData":Landroid/os/Bundle;
    const-string v5, "USSD_RESPONSE"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10443
    const/4 v5, -0x2

    invoke-virtual {v1, v5, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 10445
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "response":Landroid/telephony/UssdResponse;
    .end local v4    # "returnData":Landroid/os/Bundle;
    :goto_36
    return-void
.end method

.method public whitelist sendVisualVoicemailSms(Ljava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;

    .line 5566
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->sendVisualVoicemailSmsForSubscriber(ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 5567
    return-void
.end method

.method public greylist-max-o sendVisualVoicemailSmsForSubscriber(ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 15
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .line 5682
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5683
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 5684
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 5685
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5684
    move-object v1, v0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony;->sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 5689
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1b
    goto :goto_1d

    .line 5688
    :catch_1c
    move-exception v0

    .line 5690
    :goto_1d
    return-void
.end method

.method public whitelist setAllowedCarriers(ILjava/util/List;)I
    .registers 6
    .param p1, "slotIndex"    # I
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

    .line 12799
    .local p2, "carriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    const/4 v0, -0x1

    if-eqz p2, :cond_2f

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2f

    .line 12805
    :cond_a
    invoke-static {}, Landroid/telephony/CarrierRestrictionRules;->newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    .line 12806
    invoke-virtual {v1, p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    .line 12808
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 12809
    const/4 v2, 0x1

    goto :goto_1b

    .line 12810
    :cond_1a
    const/4 v2, 0x0

    .line 12807
    :goto_1b
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    .line 12811
    invoke-virtual {v1}, Landroid/telephony/CarrierRestrictionRules$Builder;->build()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v1

    .line 12813
    .local v1, "carrierRestrictionRules":Landroid/telephony/CarrierRestrictionRules;
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->setCarrierRestrictionRules(Landroid/telephony/CarrierRestrictionRules;)I

    move-result v2

    .line 12816
    .local v2, "result":I
    if-nez v2, :cond_2e

    .line 12817
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 12819
    :cond_2e
    return v0

    .line 12800
    .end local v1    # "carrierRestrictionRules":Landroid/telephony/CarrierRestrictionRules;
    .end local v2    # "result":I
    :cond_2f
    :goto_2f
    return v0
.end method

.method public whitelist setAllowedNetworkTypes(J)Z
    .registers 6
    .param p1, "allowedNetworkTypes"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9408
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9409
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_15

    .line 9410
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->checkNetworkTypeBitmask(J)J

    move-result-wide v1

    move-wide p1, v1

    .line 9411
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16

    return v1

    .line 9416
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_15
    goto :goto_1f

    .line 9414
    :catch_16
    move-exception v0

    .line 9415
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setAllowedNetworkTypes RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9417
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setAllowedNetworkTypesForReason(IJ)V
    .registers 7
    .param p1, "reason"    # I
    .param p2, "allowedNetworkTypes"    # J

    .line 9489
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 9494
    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9495
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 9496
    invoke-direct {p0, p2, p3}, Landroid/telephony/TelephonyManager;->checkNetworkTypeBitmask(J)J

    move-result-wide v1

    move-wide p2, v1

    .line 9497
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJ)Z

    .line 9505
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_2e

    .line 9500
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "reason":I
    .end local p2    # "allowedNetworkTypes":J
    throw v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_22

    .line 9502
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "reason":I
    .restart local p2    # "allowedNetworkTypes":J
    :catch_22
    move-exception v0

    .line 9503
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setAllowedNetworkTypesForReason RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9504
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9506
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2e
    return-void

    .line 9490
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid AllowedNetworkTypesReason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setBasebandVersion(Ljava/lang/String;)V
    .registers 3
    .param p1, "version"    # Ljava/lang/String;

    .line 11649
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11650
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    .line 11651
    return-void
.end method

.method public greylist-max-p setBasebandVersionForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "version"    # Ljava/lang/String;

    .line 11662
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11664
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v0

    .line 11663
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11665
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->baseband_version(Ljava/util/List;)V

    .line 11667
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method public whitelist setCallComposerStatus(I)V
    .registers 5
    .param p1, "status"    # I

    .line 10046
    const/4 v0, 0x1

    if-gt p1, v0, :cond_1f

    if-ltz p1, :cond_1f

    .line 10051
    :try_start_5
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10052
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 10053
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCallComposerStatus(II)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    .line 10058
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    goto :goto_1e

    .line 10055
    :catch_13
    move-exception v0

    .line 10056
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setCallComposerStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10057
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10059
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1e
    return-void

    .line 10048
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requested status is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCallForwarding(Landroid/telephony/CallForwardingInfo;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .param p1, "callForwardingInfo"    # Landroid/telephony/CallForwardingInfo;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 15223
    .local p3, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "TelephonyManager"

    if-eqz p1, :cond_67

    .line 15226
    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->getReason()I

    move-result v1

    .line 15227
    .local v1, "callForwardingReason":I
    if-ltz v1, :cond_5f

    const/4 v2, 0x5

    if-gt v1, v2, :cond_5f

    .line 15231
    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 15232
    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 15235
    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    .line 15236
    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->getTimeoutSeconds()I

    move-result v2

    if-lez v2, :cond_23

    goto :goto_33

    .line 15237
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callForwarding timeout isn\'t positive"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15233
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callForwarding number is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15240
    :cond_33
    :goto_33
    if-eqz p3, :cond_38

    .line 15241
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15244
    :cond_38
    new-instance v2, Landroid/telephony/TelephonyManager$14;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/TelephonyManager$14;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 15253
    .local v2, "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    :try_start_3d
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 15254
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_5d

    .line 15255
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v4

    invoke-interface {v3, v4, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4a} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_4a} :catch_4b

    goto :goto_5d

    .line 15260
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_4b
    move-exception v3

    .line 15261
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "setCallForwarding NPE"

    invoke-static {v0, v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15262
    throw v3

    .line 15257
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_53
    move-exception v3

    .line 15258
    .local v3, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "setCallForwarding RemoteException"

    invoke-static {v0, v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15259
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15263
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    nop

    .line 15264
    return-void

    .line 15229
    .end local v2    # "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callForwardingReason is out of range"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15224
    .end local v1    # "callForwardingReason":I
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callForwardingInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCallWaitingEnabled(ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 15395
    .local p3, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "TelephonyManager"

    if-eqz p3, :cond_7

    .line 15396
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15399
    :cond_7
    new-instance v1, Landroid/telephony/TelephonyManager$16;

    invoke-direct {v1, p0, p2, p3}, Landroid/telephony/TelephonyManager$16;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 15408
    .local v1, "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    :try_start_c
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 15409
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_2c

    .line 15410
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/telephony/ITelephony;->setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_2c

    .line 15415
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1a
    move-exception v2

    .line 15416
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "setCallWaitingStatus NPE"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15417
    throw v2

    .line 15412
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_22
    move-exception v2

    .line 15413
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "setCallWaitingStatus RemoteException"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15414
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15418
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    nop

    .line 15419
    return-void
.end method

.method public whitelist setCarrierDataEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13021
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    .line 13024
    goto :goto_1e

    .line 13022
    :catch_5
    move-exception v0

    .line 13023
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setDataEnabledForReason e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13025
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1e
    return-void
.end method

.method public greylist-max-o setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .registers 5
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;

    .line 4645
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 4646
    .local v0, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v0, :cond_7

    return-void

    .line 4647
    :cond_7
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->setCarrierInfoForImsiEncryption(ILjava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 4655
    .end local v0    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    nop

    .line 4656
    return-void

    .line 4652
    :catch_14
    move-exception v0

    .line 4653
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setCarrierInfoForImsiEncryption RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4654
    return-void

    .line 4649
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 4651
    .local v0, "ex":Ljava/lang/NullPointerException;
    return-void
.end method

.method public whitelist setCarrierRestrictionRules(Landroid/telephony/CarrierRestrictionRules;)I
    .registers 5
    .param p1, "rules"    # Landroid/telephony/CarrierRestrictionRules;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12927
    const-string v0, "Error calling ITelephony#setAllowedCarriers"

    const-string v1, "TelephonyManager"

    :try_start_4
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 12928
    .local v2, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_f

    .line 12929
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    return v0

    .line 12928
    .end local v2    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_19

    .line 12933
    :catch_10
    move-exception v2

    .line 12934
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 12931
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v2

    .line 12932
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12935
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_19
    nop

    .line 12936
    :goto_1a
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "gid1"    # Ljava/lang/String;
    .param p5, "gid2"    # Ljava/lang/String;
    .param p6, "plmn"    # Ljava/lang/String;
    .param p7, "spn"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13578
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13579
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1c

    .line 13580
    nop

    .line 13581
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 13580
    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/ITelephony;->setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 13586
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1c
    goto :goto_1e

    .line 13584
    :catch_1d
    move-exception v0

    .line 13587
    :goto_1e
    return-void
.end method

.method public blacklist setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "gid1"    # Ljava/lang/String;
    .param p5, "gid2"    # Ljava/lang/String;
    .param p6, "plmn"    # Ljava/lang/String;
    .param p7, "spn"    # Ljava/lang/String;
    .param p8, "carrierPriviledgeRules"    # Ljava/lang/String;
    .param p9, "apn"    # Ljava/lang/String;

    .line 13605
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13606
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1e

    .line 13607
    nop

    .line 13608
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    .line 13607
    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/ITelephony;->setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 13613
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    goto :goto_20

    .line 13611
    :catch_1f
    move-exception v0

    .line 13614
    :goto_20
    return-void
.end method

.method public whitelist setCdmaRoamingMode(I)V
    .registers 6
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10906
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    .line 10910
    :try_start_7
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10911
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_22

    .line 10912
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCdmaRoamingMode(II)Z

    move-result v1

    .line 10913
    .local v1, "result":Z
    if-eqz v1, :cond_19

    .line 10914
    .end local v1    # "result":Z
    nop

    .line 10920
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_36

    .line 10913
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v1    # "result":Z
    :cond_19
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "radio is unavailable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "mode":I
    throw v2

    .line 10915
    .end local v1    # "result":Z
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "mode":I
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "mode":I
    throw v1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2b} :catch_2b

    .line 10917
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "mode":I
    :catch_2b
    move-exception v0

    .line 10918
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setCdmaRoamingMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10919
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10921
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_36
    return-void

    .line 10907
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Phone does not support CDMA."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCdmaSubscriptionMode(I)V
    .registers 6
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11012
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    .line 11016
    :try_start_7
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11017
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_22

    .line 11018
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCdmaSubscriptionMode(II)Z

    move-result v1

    .line 11019
    .local v1, "result":Z
    if-eqz v1, :cond_19

    .line 11020
    .end local v1    # "result":Z
    nop

    .line 11026
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_36

    .line 11019
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v1    # "result":Z
    :cond_19
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "radio is unavailable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "mode":I
    throw v2

    .line 11021
    .end local v1    # "result":Z
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "mode":I
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "mode":I
    throw v1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2b} :catch_2b

    .line 11023
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "mode":I
    :catch_2b
    move-exception v0

    .line 11024
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setCdmaSubscriptionMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11025
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11027
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_36
    return-void

    .line 11013
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Phone does not support CDMA."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setCellInfoListRate(I)V
    .registers 3
    .param p1, "rateInMillis"    # I

    .line 6916
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 6917
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 6918
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_d

    .line 6920
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_a
    move-exception v0

    goto :goto_e

    .line 6919
    :catch_c
    move-exception v0

    .line 6921
    :cond_d
    :goto_d
    nop

    .line 6922
    :goto_e
    return-void
.end method

.method public whitelist setDataActivationState(I)V
    .registers 3
    .param p1, "activationState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5801
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataActivationState(II)V

    .line 5802
    return-void
.end method

.method public greylist-max-o setDataActivationState(II)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "activationState"    # I

    .line 5823
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5824
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 5825
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setDataActivationState(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_d

    .line 5827
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_a
    move-exception v0

    goto :goto_e

    .line 5826
    :catch_c
    move-exception v0

    .line 5828
    :cond_d
    :goto_d
    nop

    .line 5829
    :goto_e
    return-void
.end method

.method public whitelist setDataEnabled(IZ)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10754
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IIZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    .line 10757
    goto :goto_1e

    .line 10755
    :catch_5
    move-exception v0

    .line 10756
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setDataEnabledForReason e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10758
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1e
    return-void
.end method

.method public whitelist setDataEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10742
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 10743
    return-void
.end method

.method public whitelist setDataEnabledForReason(IZ)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .line 13312
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IIZ)V

    .line 13313
    return-void
.end method

.method public greylist-max-o setDataNetworkType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 11941
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneId(I)I

    move-result v0

    .line 11942
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 11943
    return-void
.end method

.method public greylist-max-r setDataNetworkTypeForPhone(II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .line 11953
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 11955
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->data_network_type()Ljava/util/List;

    move-result-object v0

    .line 11956
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 11954
    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11957
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->data_network_type(Ljava/util/List;)V

    .line 11959
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    return-void
.end method

.method public whitelist setDataRoamingEnabled(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11048
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 11049
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 11050
    nop

    .line 11051
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 11050
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabled(IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 11055
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    goto :goto_1b

    .line 11053
    :catch_13
    move-exception v0

    .line 11054
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setDataRoamingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11056
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
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

    .line 8449
    .local p1, "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "TelephonyManager"

    const/4 v1, -0x1

    :try_start_3
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 8450
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_a

    return v1

    .line 8451
    :cond_a
    nop

    .line 8452
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v4

    const/4 v5, 0x2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 8451
    move-object v3, v2

    move-object v6, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/ITelephony;->setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1e} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1e} :catch_1f

    return v0

    .line 8455
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1f
    move-exception v2

    .line 8457
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setForbiddenPlmns NullPointerException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 8453
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_3c
    move-exception v2

    .line 8454
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setForbiddenPlmns RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8458
    .end local v2    # "ex":Landroid/os/RemoteException;
    nop

    .line 8459
    :goto_59
    return v1
.end method

.method public whitelist setIccLockEnabled(ZLjava/lang/String;)Landroid/telephony/PinResult;
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15567
    const-string/jumbo v0, "setIccLockEnabled pin can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15569
    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15570
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2e

    .line 15571
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setIccLockEnabled(IZLjava/lang/String;)I

    move-result v1

    .line 15572
    .local v1, "result":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_20

    .line 15573
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    .line 15574
    :cond_20
    if-gez v1, :cond_27

    .line 15575
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v2

    return-object v2

    .line 15577
    :cond_27
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    .line 15580
    .end local v1    # "result":I
    :cond_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "enabled":Z
    .end local p2    # "pin":Ljava/lang/String;
    throw v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_37} :catch_37

    .line 15582
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "enabled":Z
    .restart local p2    # "pin":Ljava/lang/String;
    :catch_37
    move-exception v0

    .line 15583
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setIccLockEnabled RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15584
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 15586
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r setImsRegistrationState(Z)V
    .registers 3
    .param p1, "registered"    # Z

    .line 8574
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 8575
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 8576
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setImsRegistrationState(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 8578
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_b

    .line 8577
    :catch_a
    move-exception v0

    .line 8579
    :goto_b
    return-void
.end method

.method public greylist-max-o setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .line 5182
    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez p3, :cond_7

    const-string v1, ""

    goto :goto_8

    :cond_7
    move-object v1, p3

    :goto_8
    invoke-virtual {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->setCarrierPhoneNumber(ILjava/lang/String;)V

    .line 5184
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5185
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 5186
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_17

    return v1

    .line 5185
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_16
    goto :goto_1a

    .line 5188
    :catch_17
    move-exception v0

    goto :goto_1b

    .line 5187
    :catch_19
    move-exception v0

    .line 5189
    :goto_1a
    nop

    .line 5190
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setLine1NumberForDisplay(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5161
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist setMobileDataPolicyEnabled(IZ)V
    .registers 6
    .param p1, "policy"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15477
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15478
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 15479
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setMobileDataPolicyEnabled(IIZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 15483
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_27

    .line 15481
    :catch_e
    move-exception v0

    .line 15482
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#setMobileDataPolicyEnabled RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15484
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method public whitelist setMultiSimCarrierRestriction(Z)V
    .registers 5
    .param p1, "isMultiSimCarrierRestricted"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14632
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14633
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 14634
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setMultiSimCarrierRestriction(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 14638
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_13

    .line 14636
    :catch_a
    move-exception v0

    .line 14637
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setMultiSimCarrierRestriction RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14639
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public greylist-max-o setNetworkOperatorName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 11844
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11845
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 11846
    return-void
.end method

.method public greylist-max-r setNetworkOperatorNameForPhone(ILjava/lang/String;)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 11856
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 11858
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_alpha()Ljava/util/List;

    move-result-object v0

    .line 11857
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11860
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_e
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->operator_alpha(Ljava/util/List;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_11} :catch_12

    .line 11877
    goto :goto_5a

    .line 11861
    :catch_12
    move-exception v1

    .line 11862
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setNetworkOperatorNameForPhone: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11864
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 11865
    .local v3, "numberOfEntries":I
    rsub-int/lit8 v4, v3, 0x5b

    div-int/2addr v4, v3

    .line 11869
    .local v4, "maxOperatorLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_40

    .line 11870
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3d

    .line 11871
    nop

    .line 11872
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v4}, Landroid/text/TextUtils;->truncateStringForUtf8Storage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 11871
    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11869
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 11875
    .end local v5    # "i":I
    :cond_40
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->operator_alpha(Ljava/util/List;)V

    .line 11876
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "successfully truncated operator_alpha: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11879
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "numberOfEntries":I
    .end local v4    # "maxOperatorLength":I
    :cond_5a
    :goto_5a
    return-void
.end method

.method public greylist-max-o setNetworkOperatorNumeric(Ljava/lang/String;)V
    .registers 3
    .param p1, "numeric"    # Ljava/lang/String;

    .line 11887
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11888
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 11889
    return-void
.end method

.method public greylist-max-r setNetworkOperatorNumericForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .line 11899
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11901
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_numeric()Ljava/util/List;

    move-result-object v0

    .line 11900
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11902
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->operator_numeric(Ljava/util/List;)V

    .line 11904
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method public greylist-max-o setNetworkRoaming(Z)V
    .registers 3
    .param p1, "isRoaming"    # Z

    .line 11912
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11913
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 11914
    return-void
.end method

.method public greylist-max-r setNetworkRoamingForPhone(IZ)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "isRoaming"    # Z

    .line 11924
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 11926
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_is_roaming()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 11925
    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11927
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->operator_is_roaming(Ljava/util/List;)V

    .line 11929
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_15
    return-void
.end method

.method public whitelist setNetworkSelectionModeAutomatic()V
    .registers 4

    .line 8963
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8964
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1f

    .line 8965
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeAutomatic(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_1f

    .line 8969
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v1

    .line 8970
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setNetworkSelectionModeAutomatic NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 8967
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_18
    move-exception v1

    .line 8968
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "setNetworkSelectionModeAutomatic RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8971
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    nop

    .line 8972
    :goto_20
    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z
    .registers 6
    .param p1, "operatorInfo"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "persistSelection"    # Z

    .line 9202
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 9203
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_10

    .line 9204
    nop

    .line 9205
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    .line 9204
    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return v1

    .line 9209
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    goto :goto_1a

    .line 9207
    :catch_11
    move-exception v0

    .line 9208
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setNetworkSelectionModeManual RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9210
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setNetworkSelectionModeManual(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "persistSelection"    # Z

    .line 9145
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist setNetworkSelectionModeManual(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "persistSelection"    # Z
    .param p3, "ran"    # I

    .line 9176
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p1, p3}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist setNrDualConnectivityState(I)I
    .registers 5
    .param p1, "nrDualConnectivityState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15760
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 15761
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 15762
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setNrDualConnectivityState(II)I

    move-result v1

    return v1

    .line 15764
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "nrDualConnectivityState":I
    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    .line 15766
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "nrDualConnectivityState":I
    :catch_18
    move-exception v0

    .line 15767
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setNrDualConnectivityState RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15768
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 15771
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x4

    return v0
.end method

.method public greylist-max-o setOperatorBrandOverride(ILjava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "brand"    # Ljava/lang/String;

    .line 9743
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9744
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 9745
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    .line 9744
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_1d

    .line 9748
    :catch_e
    move-exception v1

    .line 9749
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setOperatorBrandOverride NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 9746
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v1

    .line 9747
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "setOperatorBrandOverride RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9750
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1d
    nop

    .line 9751
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setOperatorBrandOverride(Ljava/lang/String;)Z
    .registers 3
    .param p1, "brand"    # Ljava/lang/String;

    .line 9723
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist setOpportunisticNetworkState(Z)Z
    .registers 7
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13674
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    .line 13675
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_b
    const/4 v1, 0x0

    .line 13677
    .local v1, "ret":Z
    :try_start_c
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v2

    .line 13678
    .local v2, "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    if-eqz v2, :cond_17

    .line 13679
    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/IOns;->setEnable(ZLjava/lang/String;)Z

    move-result v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_18

    move v1, v3

    .line 13683
    .end local v2    # "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    :cond_17
    goto :goto_20

    .line 13681
    :catch_18
    move-exception v2

    .line 13682
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    const-string v4, "enableOpportunisticNetwork RemoteException"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13685
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_20
    return v1
.end method

.method public greylist-max-o setPhoneType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 11698
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11699
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    .line 11700
    return-void
.end method

.method public greylist-max-p setPhoneType(II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .line 11712
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 11714
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->current_active_phone()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11713
    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11715
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->current_active_phone(Ljava/util/List;)V

    .line 11717
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_15
    return-void
.end method

.method public blacklist setPolicyDataEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13214
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    .line 13217
    goto :goto_1e

    .line 13215
    :catch_5
    move-exception v0

    .line 13216
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setDataEnabledForReason e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13218
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1e
    return-void
.end method

.method public greylist-max-r setPreferredNetworkType(II)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9320
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9321
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_12

    .line 9322
    nop

    .line 9324
    invoke-static {p2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v2

    int-to-long v2, v2

    .line 9322
    invoke-interface {v1, p1, v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    return v0

    .line 9328
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    goto :goto_1c

    .line 9326
    :catch_13
    move-exception v1

    .line 9327
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setPreferredNetworkType RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9329
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1c
    return v0
.end method

.method public whitelist setPreferredNetworkTypeBitmask(J)Z
    .registers 7
    .param p1, "networkTypeBitmask"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9358
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9359
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_15

    .line 9360
    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->checkNetworkTypeBitmask(J)J

    move-result-wide v2

    move-wide p1, v2

    .line 9361
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    return v0

    .line 9366
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_15
    goto :goto_1f

    .line 9364
    :catch_16
    move-exception v1

    .line 9365
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setPreferredNetworkTypeBitmask RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9367
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return v0
.end method

.method public whitelist setPreferredNetworkTypeToGlobal()Z
    .registers 2

    .line 9598
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkTypeToGlobal(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setPreferredNetworkTypeToGlobal(I)Z
    .registers 3
    .param p1, "subId"    # I

    .line 9611
    const/16 v0, 0x1b

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v0

    return v0
.end method

.method public whitelist setPreferredOpportunisticDataSubscription(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .param p1, "subId"    # I
    .param p2, "needValidation"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 14381
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    .line 14383
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_b
    :try_start_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v1

    .line 14384
    .local v1, "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    if-nez v1, :cond_2a

    .line 14385
    const-wide/32 v2, 0xadbeeaa

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 14386
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Opportunistic Network Service is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "subId":I
    .end local p2    # "needValidation":Z
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v2

    .line 14389
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "subId":I
    .restart local p2    # "needValidation":Z
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Null Opportunistic Network Service!"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "subId":I
    .end local p2    # "needValidation":Z
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v2

    .line 14392
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "subId":I
    .restart local p2    # "needValidation":Z
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_2a
    new-instance v2, Landroid/telephony/TelephonyManager$10;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/TelephonyManager$10;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 14409
    .local v2, "callbackStub":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    nop

    .line 14410
    invoke-interface {v1, p1, p2, v2, v0}, Lcom/android/internal/telephony/IOns;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_33} :catch_34

    .line 14424
    .end local v1    # "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    .end local v2    # "callbackStub":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    goto :goto_4a

    .line 14412
    :catch_34
    move-exception v1

    .line 14413
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setPreferredOpportunisticDataSubscription RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14414
    if-eqz p3, :cond_4b

    if-nez p4, :cond_42

    goto :goto_4b

    .line 14417
    :cond_42
    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, p3, p4}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda10;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 14425
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_4a
    return-void

    .line 14415
    .restart local v1    # "ex":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    return-void
.end method

.method public whitelist setRadio(Z)Z
    .registers 5
    .param p1, "turnOn"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10513
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10514
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 10515
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 10518
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 10516
    :catch_c
    move-exception v0

    .line 10517
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadio"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10519
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setRadioEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13045
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13046
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 13047
    nop

    .line 13048
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 13047
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->carrierActionSetRadioEnabled(IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 13052
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    goto :goto_1b

    .line 13050
    :catch_13
    move-exception v0

    .line 13051
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#carrierActionSetRadioEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13053
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public whitelist setRadioPower(Z)Z
    .registers 5
    .param p1, "turnOn"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10528
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10529
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 10530
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 10533
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_14

    .line 10531
    :catch_c
    move-exception v0

    .line 10532
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadioPower"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10534
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRemovableEsimAsDefaultEuicc(Z)V
    .registers 5
    .param p1, "isDefault"    # Z

    .line 17089
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17090
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 17091
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 17095
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_27

    .line 17093
    :catch_e
    move-exception v0

    .line 17094
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setRemovableEsimAsDefault: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17096
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method

.method public greylist-max-o setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 14
    .param p1, "subId"    # I
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

    .line 9805
    .local p2, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 9806
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 9807
    move-object v2, v1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ITelephony;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_12} :catch_14

    return v0

    .line 9806
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_13
    goto :goto_23

    .line 9811
    :catch_14
    move-exception v1

    .line 9812
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "setRoamingOverride NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 9809
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1c
    move-exception v1

    .line 9810
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "setRoamingOverride RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9813
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_23
    nop

    .line 9814
    :goto_24
    const/4 v0, 0x0

    return v0
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

    .line 9777
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public whitelist setSignalStrengthUpdateRequest(Landroid/telephony/SignalStrengthUpdateRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/telephony/SignalStrengthUpdateRequest;

    .line 16660
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16663
    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 16664
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_17

    .line 16665
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    .line 16669
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    goto :goto_20

    .line 16667
    :catch_18
    move-exception v0

    .line 16668
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setSignalStrengthUpdateRequest"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16670
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public greylist-max-o setSimCountryIso(Ljava/lang/String;)V
    .registers 3
    .param p1, "iso"    # Ljava/lang/String;

    .line 11410
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11411
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 11412
    return-void
.end method

.method public greylist-max-p setSimCountryIsoForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    .line 11421
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11423
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_iso_country()Ljava/util/List;

    move-result-object v0

    .line 11422
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11424
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->icc_operator_iso_country(Ljava/util/List;)V

    .line 11426
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method public greylist-max-o setSimOperatorName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 11386
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11387
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 11388
    return-void
.end method

.method public greylist-max-p setSimOperatorNameForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 11397
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11399
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_alpha()Ljava/util/List;

    move-result-object v0

    .line 11398
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11400
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->icc_operator_alpha(Ljava/util/List;)V

    .line 11402
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method public greylist-max-o setSimOperatorNumeric(Ljava/lang/String;)V
    .registers 3
    .param p1, "numeric"    # Ljava/lang/String;

    .line 11362
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11363
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 11364
    return-void
.end method

.method public greylist-max-r setSimOperatorNumericForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .line 11373
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11375
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_numeric()Ljava/util/List;

    move-result-object v0

    .line 11374
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11376
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->icc_operator_numeric(Ljava/util/List;)V

    .line 11378
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method public whitelist setSimPowerState(I)V
    .registers 3
    .param p1, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11514
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimPowerStateForSlot(II)V

    .line 11515
    return-void
.end method

.method public whitelist setSimPowerState(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 11578
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setSimPowerStateForSlot(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 11579
    return-void
.end method

.method public whitelist setSimPowerStateForSlot(II)V
    .registers 6
    .param p1, "slotIndex"    # I
    .param p2, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11541
    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 11542
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_19

    .line 11543
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setSimPowerStateForSlot(II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_13
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_19

    .line 11547
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_c
    move-exception v1

    .line 11548
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 11545
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_13
    move-exception v1

    .line 11546
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11549
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    nop

    .line 11550
    :goto_1a
    return-void
.end method

.method public whitelist setSimPowerStateForSlot(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 10
    .param p1, "slotIndex"    # I
    .param p2, "state"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 11609
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "TelephonyManager"

    if-eqz p2, :cond_14

    const/4 v1, 0x1

    if-eq p2, v1, :cond_14

    const/4 v1, 0x2

    if-ne p2, v1, :cond_b

    goto :goto_14

    .line 11611
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requested SIM state is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11614
    :cond_14
    :goto_14
    :try_start_14
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 11615
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_37

    .line 11617
    new-instance v2, Landroid/telephony/TelephonyManager$8;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/TelephonyManager$8;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 11624
    .local v2, "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    if-nez v1, :cond_33

    .line 11625
    const-wide/32 v3, 0xadbeeaa

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 11628
    return-void

    .line 11626
    :cond_2b
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Telephony is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    .end local p2    # "state":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v3

    .line 11631
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "state":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_33
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/ITelephony;->setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    goto :goto_54

    .line 11615
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_37
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Telephony is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotIndex":I
    .end local p2    # "state":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v2
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3f} :catch_46
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_3f} :catch_3f

    .line 11636
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotIndex":I
    .restart local p2    # "state":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :catch_3f
    move-exception v1

    .line 11637
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 11632
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_46
    move-exception v1

    .line 11633
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11634
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p3, p4}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 11639
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_54
    nop

    .line 11640
    :goto_55
    return-void
.end method

.method public whitelist setSimSlotMapping(Ljava/util/Collection;)V
    .registers 6
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

    .line 4368
    .local p1, "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4369
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_2b

    .line 4370
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isSlotMappingValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setSimSlotMapping(Ljava/util/List;)Z

    move-result v1

    .line 4372
    .local v1, "result":Z
    if-eqz v1, :cond_1a

    .line 4375
    .end local v1    # "result":Z
    nop

    .line 4383
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    nop

    .line 4384
    return-void

    .line 4373
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v1    # "result":Z
    :cond_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "setSimSlotMapping has failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    throw v2

    .line 4376
    .end local v1    # "result":Z
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Duplicate UiccSlotMapping data found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    throw v1

    .line 4379
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    throw v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_34

    .line 4381
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "slotMapping":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/UiccSlotMapping;>;"
    :catch_34
    move-exception v0

    .line 4382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setSimState(Ljava/lang/String;)V
    .registers 3
    .param p1, "state"    # Ljava/lang/String;

    .line 11434
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    .line 11435
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 11436
    return-void
.end method

.method public greylist-max-p setSimStateForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .line 11445
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11447
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->sim_state()Ljava/util/List;

    move-result-object v0

    .line 11446
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11448
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->sim_state(Ljava/util/List;)V

    .line 11450
    .end local v0    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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

    .line 14978
    .local p1, "specifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    const-string v0, "Specifiers must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14979
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/TelephonyManager;->setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 14980
    return-void
.end method

.method public whitelist setSystemSelectionChannels(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 14962
    .local p1, "specifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "Specifiers must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14963
    const-string v0, "Executor must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14964
    const-string v0, "Callback must not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14965
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 14966
    return-void
.end method

.method public whitelist setVisualVoicemailEnabled(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 3
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5442
    return-void
.end method

.method public whitelist setVisualVoicemailSmsFilterSettings(Landroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .registers 3
    .param p1, "settings"    # Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .line 5535
    if-nez p1, :cond_8

    .line 5536
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->disableVisualVoicemailSmsFilter(I)V

    goto :goto_d

    .line 5538
    :cond_8
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->enableVisualVoicemailSmsFilter(ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    .line 5540
    :goto_d
    return-void
.end method

.method public blacklist setVoNrEnabled(Z)I
    .registers 5
    .param p1, "enabled"    # Z

    .line 13111
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13112
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_14

    .line 13113
    nop

    .line 13114
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    .line 13113
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVoNrEnabled(IZ)I

    move-result v1

    return v1

    .line 13116
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "enabled":Z
    throw v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1d

    .line 13118
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "enabled":Z
    :catch_1d
    move-exception v0

    .line 13119
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setVoNrEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13122
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist setVoiceActivationState(I)V
    .registers 3
    .param p1, "activationState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5753
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setVoiceActivationState(II)V

    .line 5754
    return-void
.end method

.method public greylist-max-o setVoiceActivationState(II)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "activationState"    # I

    .line 5774
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5775
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 5776
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoiceActivationState(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_d

    .line 5778
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_a
    move-exception v0

    goto :goto_e

    .line 5777
    :catch_c
    move-exception v0

    .line 5779
    :cond_d
    :goto_d
    nop

    .line 5780
    :goto_e
    return-void
.end method

.method public greylist-max-o setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .line 5416
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5417
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 5418
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 5417
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    goto :goto_f

    .line 5420
    :catch_c
    move-exception v0

    goto :goto_10

    .line 5419
    :catch_e
    move-exception v0

    .line 5421
    :goto_f
    nop

    .line 5422
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .line 5401
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist setVoiceServiceStateOverride(Z)V
    .registers 5
    .param p1, "hasService"    # Z

    .line 17021
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 17022
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    .line 17025
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setVoiceServiceStateOverride(IZLjava/lang/String;)V

    .line 17028
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_1e

    .line 17023
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "hasService":Z
    throw v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1a

    .line 17026
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "hasService":Z
    :catch_1a
    move-exception v0

    .line 17027
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 17029
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method public whitelist setVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
    .registers 6
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12401
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12402
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 12403
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 12407
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_16

    .line 12405
    :catch_e
    move-exception v0

    .line 12406
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setVoicemailRingtoneUri"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12408
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public whitelist setVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 6
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12449
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 12450
    .local v0, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_d

    .line 12451
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 12456
    .end local v0    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    goto :goto_16

    .line 12454
    :catch_e
    move-exception v0

    .line 12455
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isVoicemailVibrationEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12457
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public whitelist shutdownAllRadios()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10550
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10551
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 10552
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 10557
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_15

    .line 10554
    :catch_a
    move-exception v0

    .line 10555
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#shutdownAllRadios"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10556
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10558
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method

.method public greylist silenceRinger()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10152
    return-void
.end method

.method public whitelist supplyIccLockPin(Ljava/lang/String;)Landroid/telephony/PinResult;
    .registers 7
    .param p1, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10307
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10308
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1a

    .line 10309
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v1

    .line 10310
    .local v1, "result":[I
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    .line 10312
    .end local v1    # "result":[I
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "pin":Ljava/lang/String;
    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_23

    .line 10314
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "pin":Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 10315
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyIccLockPin"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10316
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10318
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist supplyIccLockPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;
    .registers 8
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10343
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10344
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1a

    .line 10345
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 10346
    .local v1, "result":[I
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    .line 10348
    .end local v1    # "result":[I
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "puk":Ljava/lang/String;
    .end local p2    # "pin":Ljava/lang/String;
    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_23

    .line 10350
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "puk":Ljava/lang/String;
    .restart local p2    # "pin":Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 10351
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyIccLockPuk"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10352
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10354
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist supplyPin(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10226
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10227
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 10228
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 10231
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 10229
    :catch_10
    move-exception v0

    .line 10230
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10232
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist supplyPinReportResult(Ljava/lang/String;)[I
    .registers 5
    .param p1, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10259
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10260
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 10261
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 10264
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 10262
    :catch_10
    move-exception v0

    .line 10263
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10265
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10241
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10242
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 10243
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 10246
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 10244
    :catch_10
    move-exception v0

    .line 10245
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPukForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10247
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10277
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10278
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 10279
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 10282
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    goto :goto_18

    .line 10280
    :catch_10
    move-exception v0

    .line 10281
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10283
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist switchMultiSimConfig(I)V
    .registers 5
    .param p1, "numOfSims"    # I

    .line 14717
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 14718
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 14719
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->switchMultiSimConfig(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 14723
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_13

    .line 14721
    :catch_a
    move-exception v0

    .line 14722
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "switchMultiSimConfig RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14724
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public whitelist switchSlots([I)Z
    .registers 4
    .param p1, "physicalSlots"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4271
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4272
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 4273
    return v0

    .line 4275
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->switchSlots([I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    return v0

    .line 4276
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v1

    .line 4277
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist toggleRadioOnOff()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10499
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 10500
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 10501
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 10504
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    goto :goto_12

    .line 10502
    :catch_a
    move-exception v0

    .line 10503
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10505
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17068
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_26

    .line 17070
    if-eqz p1, :cond_1e

    .line 17073
    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 17074
    if-eqz v0, :cond_16

    .line 17077
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyRegistryManager;->removeCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 17078
    return-void

    .line 17075
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony registry service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17071
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CarrierPrivilegesCallback must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17069
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
    .registers 10
    .param p1, "callback"    # Landroid/telephony/TelephonyCallback;

    .line 16409
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony service is null."

    if-eqz v0, :cond_3a

    .line 16413
    iget-object v0, p1, Landroid/telephony/TelephonyCallback;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-nez v0, :cond_c

    .line 16414
    return-void

    .line 16417
    :cond_c
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/TelephonyRegistryManager;

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 16418
    if-eqz v2, :cond_34

    .line 16419
    iget v3, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 16420
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    move v7, v0

    .line 16419
    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/TelephonyRegistryManager;->unregisterTelephonyCallback(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;Z)V

    .line 16424
    return-void

    .line 16422
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16410
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateAvailableNetworks(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 14482
    .local p1, "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    .line 14483
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_b
    const-string v1, "availableNetworks must not be null."

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14485
    :try_start_10
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v1

    .line 14486
    .local v1, "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    if-nez v1, :cond_2f

    .line 14487
    const-wide/32 v2, 0xadbeeaa

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 14488
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Opportunistic Network Service is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v2

    .line 14491
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_27
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Null Opportunistic Network Service!"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    throw v2

    .line 14495
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/AvailableNetworkInfo;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_2f
    new-instance v2, Landroid/telephony/TelephonyManager$11;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/TelephonyManager$11;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 14507
    .local v2, "callbackStub":Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;
    nop

    .line 14508
    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/telephony/IOns;->updateAvailableNetworks(Ljava/util/List;Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_38} :catch_39

    .line 14521
    .end local v1    # "iOpportunisticNetworkService":Lcom/android/internal/telephony/IOns;
    .end local v2    # "callbackStub":Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;
    goto :goto_4f

    .line 14509
    :catch_39
    move-exception v1

    .line 14510
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "updateAvailableNetworks RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14511
    if-eqz p2, :cond_50

    if-nez p3, :cond_47

    goto :goto_50

    .line 14514
    :cond_47
    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, p2, p3}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda9;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 14522
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_4f
    return-void

    .line 14512
    .restart local v1    # "ex":Landroid/os/RemoteException;
    :cond_50
    :goto_50
    return-void
.end method

.method public whitelist updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "otaParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13961
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 13962
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_a

    .line 13963
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    .line 13970
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_1f

    .line 13965
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/TelephonyManager;
    .end local p1    # "otaParcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 13967
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyManager;
    .restart local p1    # "otaParcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_13
    move-exception v0

    .line 13968
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "updateOtaEmergencyNumberDbFilePath RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13969
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 13971
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method public whitelist updateServiceLocation()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10636
    const-string v0, "TelephonyManager"

    const-string v1, "Do not call TelephonyManager#updateServiceLocation()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10637
    return-void
.end method

.method public whitelist uploadCallComposerPicture(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 14
    .param p1, "pictureToUpload"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 4895
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/ParcelUuid;Landroid/telephony/TelephonyManager$CallComposerException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4896
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4897
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4899
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 4900
    .local v6, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v6, :cond_66

    .line 4907
    :try_start_f
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createReliablePipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 4908
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    move-object v7, v1

    .line 4909
    .local v7, "writeFd":Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    aget-object v4, v0, v1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_5c

    .line 4914
    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .local v4, "readFd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 4916
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v8, v0

    .line 4919
    .local v8, "output":Ljava/io/OutputStream;
    :try_start_21
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/telephony/TelephonyManager$3;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0, p3, p4}, Landroid/telephony/TelephonyManager$3;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    move-object v0, v6

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_36} :catch_37

    .line 4944
    goto :goto_53

    .line 4941
    :catch_37
    move-exception v0

    .line 4942
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception uploading call composer pic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 4946
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_53
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p4, v7, v8}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;-><init>(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5015
    return-void

    .line 4910
    .end local v4    # "readFd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "output":Ljava/io/OutputStream;
    :catch_5c
    move-exception v0

    .line 4911
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p4, v0}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda4;-><init>(Landroid/os/OutcomeReceiver;Ljava/io/IOException;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4913
    return-void

    .line 4901
    .end local v0    # "e":Ljava/io/IOException;
    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony service not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist uploadCallComposerPicture(Ljava/nio/file/Path;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 13
    .param p1, "pictureToUpload"    # Ljava/nio/file/Path;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 4788
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/ParcelUuid;Landroid/telephony/TelephonyManager$CallComposerException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4789
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4790
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4794
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 4795
    .local v0, "rm":Landroid/app/role/RoleManager;
    const-string v1, "android.app.role.DIALER"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4799
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda22;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/TelephonyManager;Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4857
    return-void

    .line 4796
    :cond_2a
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You must hold RoleManager.ROLE_DIALER to do this"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
