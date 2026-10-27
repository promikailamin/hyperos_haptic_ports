.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$CallISubMethodHelper;,
        Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;,
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;,
        Landroid/telephony/SubscriptionManager$PhoneNumberSource;,
        Landroid/telephony/SubscriptionManager$UsageSetting;,
        Landroid/telephony/SubscriptionManager$ProfileClass;,
        Landroid/telephony/SubscriptionManager$DeviceToDeviceStatusSharingPreference;,
        Landroid/telephony/SubscriptionManager$SimDisplayNameSource;,
        Landroid/telephony/SubscriptionManager$SubscriptionType;,
        Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;,
        Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACCESS_RULES:Ljava/lang/String; = "access_rules"

.field public static final blacklist ACCESS_RULES_FROM_CARRIER_CONFIGS:Ljava/lang/String; = "access_rules_from_carrier_configs"

.field public static final whitelist ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

.field public static final whitelist ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

.field public static final whitelist ACTION_MANAGE_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.telephony.action.MANAGE_SUBSCRIPTION_PLANS"

.field public static final whitelist ACTION_REFRESH_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.telephony.action.REFRESH_SUBSCRIPTION_PLANS"

.field public static final whitelist ACTION_SUBSCRIPTION_PLANS_CHANGED:Ljava/lang/String; = "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ALLOWED_NETWORK_TYPES:Ljava/lang/String; = "allowed_network_types_for_reasons"

.field public static final blacklist CACHE_KEY_ACTIVE_DATA_SUB_ID_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_active_data_sub_id"

.field public static final blacklist CACHE_KEY_DEFAULT_DATA_SUB_ID_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_default_data_sub_id"

.field public static final blacklist CACHE_KEY_DEFAULT_SMS_SUB_ID_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_default_sms_sub_id"

.field public static final blacklist CACHE_KEY_DEFAULT_SUB_ID_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_default_sub_id"

.field public static final blacklist CACHE_KEY_SLOT_INDEX_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_slot_index"

.field public static final greylist-max-o CARD_ID:Ljava/lang/String; = "card_id"

.field public static final blacklist CARRIER_ID:Ljava/lang/String; = "carrier_id"

.field public static final greylist-max-o CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final greylist-max-o CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final greylist-max-o CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final greylist-max-o CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final greylist-max-o CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final greylist-max-o CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final greylist-max-o CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final greylist-max-o CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final greylist-max-o CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final greylist-max-o CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final greylist-max-o CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final greylist-max-o CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final greylist-max-o CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final greylist-max-r CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist CROSS_SIM_CALLING_ENABLED:Ljava/lang/String; = "cross_sim_calling_enabled"

.field public static final whitelist CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist D2D_SHARING_ALL:I = 0x3

.field public static final whitelist D2D_SHARING_ALL_CONTACTS:I = 0x1

.field public static final whitelist D2D_SHARING_DISABLED:I = 0x0

.field public static final whitelist D2D_SHARING_SELECTED_CONTACTS:I = 0x2

.field public static final whitelist D2D_STATUS_SHARING:Ljava/lang/String; = "d2d_sharing_status"

.field public static final whitelist D2D_STATUS_SHARING_SELECTED_CONTACTS:Ljava/lang/String; = "d2d_sharing_contacts"

.field public static final blacklist DATA_ENABLED_OVERRIDE_RULES:Ljava/lang/String; = "data_enabled_override_rules"

.field public static final greylist-max-o DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final whitelist DATA_ROAMING_DISABLE:I = 0x0

.field public static final whitelist DATA_ROAMING_ENABLE:I = 0x1

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o DEFAULT_NAME_RES:I = 0x104000e

.field public static final greylist-max-o DEFAULT_PHONE_INDEX:I = 0x7fffffff

.field public static final greylist-max-o DEFAULT_SIM_SLOT_INDEX:I = 0x7fffffff

.field public static final whitelist DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff

.field public static final greylist-max-o DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final blacklist EHPLMNS:Ljava/lang/String; = "ehplmns"

.field public static final greylist-max-o ENHANCED_4G_MODE_ENABLED:Ljava/lang/String; = "volte_vt_enabled"

.field public static final whitelist EXTRA_SLOT_INDEX:Ljava/lang/String; = "android.telephony.extra.SLOT_INDEX"

.field public static final whitelist EXTRA_SUBSCRIPTION_INDEX:Ljava/lang/String; = "android.telephony.extra.SUBSCRIPTION_INDEX"

.field public static final blacklist GET_SIM_SPECIFIC_SETTINGS_METHOD_NAME:Ljava/lang/String; = "getSimSpecificSettings"

.field public static final blacklist GROUP_OWNER:Ljava/lang/String; = "group_owner"

.field public static final blacklist GROUP_UUID:Ljava/lang/String; = "group_uuid"

.field public static final blacklist HPLMNS:Ljava/lang/String; = "hplmns"

.field public static final blacklist HUE:Ljava/lang/String; = "color"

.field public static final greylist-max-o ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final blacklist IMSI:Ljava/lang/String; = "imsi"

.field public static final blacklist IMS_RCS_UCE_ENABLED:Ljava/lang/String; = "ims_rcs_uce_enabled"

.field public static final greylist-max-o INVALID_PHONE_INDEX:I = -0x1

.field public static final whitelist INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final whitelist INVALID_SUBSCRIPTION_ID:I = -0x1

.field public static final blacklist ISO_COUNTRY_CODE:Ljava/lang/String; = "iso_country_code"

.field public static final greylist-max-o IS_EMBEDDED:Ljava/lang/String; = "is_embedded"

.field public static final blacklist IS_OPPORTUNISTIC:Ljava/lang/String; = "is_opportunistic"

.field public static final greylist-max-o IS_REMOVABLE:Ljava/lang/String; = "is_removable"

.field public static final blacklist KEY_SIM_SPECIFIC_SETTINGS_DATA:Ljava/lang/String; = "KEY_SIM_SPECIFIC_SETTINGS_DATA"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field private static final blacklist MAX_CACHE_SIZE:I = 0x4

.field public static final greylist-max-o MAX_SUBSCRIPTION_ID_VALUE:I = 0x7ffffffe

.field public static final greylist-max-o MCC:Ljava/lang/String; = "mcc"

.field public static final blacklist MCC_STRING:Ljava/lang/String; = "mcc_string"

.field public static final greylist-max-o MIN_SUBSCRIPTION_ID_VALUE:I = 0x0

.field public static final greylist-max-o MNC:Ljava/lang/String; = "mnc"

.field public static final blacklist MNC_STRING:Ljava/lang/String; = "mnc_string"

.field public static final greylist-max-o NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final blacklist NAME_SOURCE_CARRIER:I = 0x3

.field public static final blacklist NAME_SOURCE_CARRIER_ID:I = 0x0

.field public static final blacklist NAME_SOURCE_SIM_PNN:I = 0x4

.field public static final blacklist NAME_SOURCE_SIM_SPN:I = 0x1

.field public static final greylist-max-p NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final blacklist NR_ADVANCED_CALLING_ENABLED:Ljava/lang/String; = "nr_advanced_calling_enabled"

.field public static final greylist-max-o NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist PHONE_NUMBER_SOURCE_CARRIER:I = 0x2

.field public static final whitelist PHONE_NUMBER_SOURCE_IMS:I = 0x3

.field public static final whitelist PHONE_NUMBER_SOURCE_UICC:I = 0x1

.field public static final blacklist PLACEHOLDER_SUBSCRIPTION_ID_BASE:I = -0x2

.field public static final blacklist PORT_INDEX:Ljava/lang/String; = "port_index"

.field public static final blacklist PROFILE_CLASS:Ljava/lang/String; = "profile_class"

.field public static final whitelist PROFILE_CLASS_DEFAULT:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROFILE_CLASS_OPERATIONAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_CLASS_PROVISIONING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_CLASS_TESTING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_CLASS_UNSET:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RESTORE_SIM_SPECIFIC_SETTINGS_METHOD_NAME:Ljava/lang/String; = "restoreSimSpecificSettings"

.field public static final blacklist SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist SIM_INFO_SUW_RESTORE_CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o SIM_NOT_INSERTED:I = -0x1

.field public static final greylist-max-o SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final blacklist SLOT_INDEX_FOR_REMOTE_SIM_SUB:I = -0x1

.field public static final blacklist SUBSCRIPTION_TYPE:Ljava/lang/String; = "subscription_type"

.field public static final whitelist SUBSCRIPTION_TYPE_LOCAL_SIM:I = 0x0

.field public static final whitelist SUBSCRIPTION_TYPE_REMOTE_SIM:I = 0x1

.field public static final greylist-max-o SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final blacklist UICC_APPLICATIONS_ENABLED:Ljava/lang/String; = "uicc_applications_enabled"

.field public static final greylist-max-o UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field public static final blacklist USAGE_SETTING:Ljava/lang/String; = "usage_setting"

.field public static final whitelist USAGE_SETTING_DATA_CENTRIC:I = 0x2

.field public static final whitelist USAGE_SETTING_DEFAULT:I = 0x0

.field public static final whitelist USAGE_SETTING_UNKNOWN:I = -0x1

.field public static final whitelist USAGE_SETTING_VOICE_CENTRIC:I = 0x1

.field private static final greylist-max-o VDBG:Z = false

.field public static final blacklist VOIMS_OPT_IN_STATUS:Ljava/lang/String; = "voims_opt_in_status"

.field public static final whitelist VT_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o VT_IMS_ENABLED:Ljava/lang/String; = "vt_ims_enabled"

.field public static final whitelist WFC_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o WFC_IMS_ENABLED:Ljava/lang/String; = "wfc_ims_enabled"

.field public static final greylist-max-o WFC_IMS_MODE:Ljava/lang/String; = "wfc_ims_mode"

.field public static final greylist-max-o WFC_IMS_ROAMING_ENABLED:Ljava/lang/String; = "wfc_ims_roaming_enabled"

.field public static final greylist-max-o WFC_IMS_ROAMING_MODE:Ljava/lang/String; = "wfc_ims_roaming_mode"

.field public static final whitelist WFC_MODE_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WFC_ROAMING_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static blacklist sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sResourcesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 140
    sget-object v0, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 248
    new-instance v1, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda3;-><init>()V

    .line 251
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cache_key.telephony.get_default_sub_id"

    invoke-direct {v1, v2, v4, v3}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    .line 253
    new-instance v1, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda4;-><init>()V

    .line 256
    const-string v5, "cache_key.telephony.get_default_data_sub_id"

    invoke-direct {v1, v2, v5, v3}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    .line 258
    new-instance v1, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda5;-><init>()V

    .line 261
    const-string v5, "cache_key.telephony.get_default_sms_sub_id"

    invoke-direct {v1, v2, v5, v3}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    .line 263
    new-instance v1, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;-><init>()V

    .line 266
    const-string v5, "cache_key.telephony.get_active_data_sub_id"

    invoke-direct {v1, v2, v5, v3}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    .line 268
    new-instance v1, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda7;-><init>()V

    .line 271
    const-string v5, "cache_key.telephony.get_slot_index"

    invoke-direct {v1, v2, v5, v3}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    .line 274
    new-instance v1, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda8;-><init>()V

    .line 277
    invoke-direct {v1, v2, v4, v3}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    .line 306
    const-string/jumbo v1, "wfc"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->WFC_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 325
    const-string v1, "advanced_calling"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 343
    const-string/jumbo v1, "wfc_mode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->WFC_MODE_CONTENT_URI:Landroid/net/Uri;

    .line 360
    const-string/jumbo v1, "wfc_roaming_mode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;

    .line 379
    const-string/jumbo v1, "vt_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->VT_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 397
    const-string/jumbo v1, "wfc_roaming_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 410
    const-string v1, "backup_and_restore"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    .line 419
    const-string/jumbo v2, "suw_restore"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_SUW_RESTORE_CONTENT_URI:Landroid/net/Uri;

    .line 439
    const-string v1, "cross_sim_calling_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 1261
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sResourcesCache:Ljava/util/Map;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1344
    return-void
.end method

.method public static blacklist clearCaches()V
    .registers 1

    .line 3863
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    .line 3864
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    .line 3865
    sget-object v0, Landroid/telephony/SubscriptionManager;->sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    .line 3866
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    .line 3867
    sget-object v0, Landroid/telephony/SubscriptionManager;->sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    .line 3868
    sget-object v0, Landroid/telephony/SubscriptionManager;->sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    .line 3869
    return-void
.end method

.method public static blacklist disableCaching()V
    .registers 1

    .line 3850
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    .line 3851
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    .line 3852
    sget-object v0, Landroid/telephony/SubscriptionManager;->sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    .line 3853
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    .line 3854
    sget-object v0, Landroid/telephony/SubscriptionManager;->sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    .line 3855
    sget-object v0, Landroid/telephony/SubscriptionManager;->sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    .line 3856
    return-void
.end method

.method public static whitelist from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1357
    nop

    .line 1358
    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 1357
    return-object v0
.end method

.method public static whitelist getActiveDataSubscriptionId()I
    .registers 2

    .line 3801
    sget-object v0, Landroid/telephony/SubscriptionManager;->sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z
    .registers 7
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 2679
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2680
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 2682
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_10

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2

    .line 2683
    :catch_10
    move-exception v1

    .line 2684
    .local v1, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2687
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_16
    return p2
.end method

.method private static blacklist getContactsFromSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 2626
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2627
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_4d

    .line 2629
    const/4 v1, 0x0

    :try_start_7
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 2630
    .local v1, "b":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2631
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2632
    .local v3, "ois":Ljava/io/ObjectInputStream;
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2633
    .local v4, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2634
    .local v5, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2635
    .local v7, "contact":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3d} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_3d} :catch_40

    .line 2636
    nop

    .end local v7    # "contact":Ljava/lang/String;
    goto :goto_2a

    .line 2637
    :cond_3f
    return-object v5

    .line 2640
    .end local v1    # "b":[B
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .end local v4    # "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_40
    move-exception v1

    .line 2641
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "getContactsFromSubscriptionProperty ClassNotFound exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_4d

    .line 2638
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_47
    move-exception v1

    .line 2639
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "getContactsFromSubscriptionProperty IO exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2644
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4d
    :goto_4d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static whitelist getDefaultDataSubscriptionId()I
    .registers 2

    .line 2327
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultSmsSubscriptionId()I
    .registers 2

    .line 2275
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultSubscriptionId()I
    .registers 2

    .line 2187
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static greylist-max-r getDefaultVoicePhoneId()I
    .registers 1

    .line 2264
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultVoiceSubscriptionId()I
    .registers 3

    .line 2198
    const/4 v0, -0x1

    .line 2201
    .local v0, "subId":I
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2202
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_c

    .line 2203
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 2207
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_c
    goto :goto_e

    .line 2205
    :catch_d
    move-exception v1

    .line 2210
    :goto_e
    return v0
.end method

.method public static greylist-max-o getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I
    .registers 7
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 2700
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2701
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 2703
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 2704
    :catch_b
    move-exception v1

    .line 2705
    .local v1, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getIntegerSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2708
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_11
    return p2
.end method

.method public static blacklist getLongSubscriptionProperty(ILjava/lang/String;JLandroid/content/Context;)J
    .registers 8
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # J
    .param p4, "context"    # Landroid/content/Context;

    .line 2721
    invoke-static {p0, p1, p4}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2722
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 2724
    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    return-wide v1

    .line 2725
    :catch_b
    move-exception v1

    .line 2726
    .local v1, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getLongSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2729
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_11
    return-wide p2
.end method

.method private blacklist getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;
    .registers 3

    .line 1347
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1348
    const-string/jumbo v1, "netpolicy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    .line 1347
    return-object v0
.end method

.method public static greylist-max-p getPhoneId(I)I
    .registers 3
    .param p0, "subId"    # I

    .line 2166
    sget-object v0, Landroid/telephony/SubscriptionManager;->sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2746
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "useRootLocale"    # Z

    .line 2762
    const/4 v0, 0x0

    .line 2763
    .local v0, "cacheKey":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Context;Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_20

    if-nez p2, :cond_20

    .line 2764
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 2765
    sget-object v1, Landroid/telephony/SubscriptionManager;->sResourcesCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2767
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    return-object v1

    .line 2771
    :cond_20
    nop

    .line 2772
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 2774
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 2775
    .local v2, "overrideConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_47

    .line 2776
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mcc:I

    .line 2777
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    .line 2778
    iget v3, v2, Landroid/content/res/Configuration;->mnc:I

    if-nez v3, :cond_48

    .line 2779
    const v3, 0xffff

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    .line 2780
    const/4 v0, 0x0

    goto :goto_48

    .line 2783
    :cond_47
    const/4 v0, 0x0

    .line 2786
    :cond_48
    :goto_48
    if-eqz p2, :cond_4f

    .line 2787
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 2795
    :cond_4f
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    .line 2796
    .local v3, "newContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2798
    .local v4, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_5e

    .line 2800
    sget-object v5, Landroid/telephony/SubscriptionManager;->sResourcesCache:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2802
    :cond_5e
    return-object v4
.end method

.method public static greylist-max-o getSimStateForSlotIndex(I)I
    .registers 4
    .param p0, "slotIndex"    # I

    .line 2565
    const/4 v0, 0x0

    .line 2568
    .local v0, "simState":I
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2569
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_c

    .line 2570
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSimStateForSlotIndex(I)I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 2573
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_c
    goto :goto_e

    .line 2572
    :catch_d
    move-exception v1

    .line 2575
    :goto_e
    return v0
.end method

.method public static whitelist getSlotIndex(I)I
    .registers 3
    .param p0, "subscriptionId"    # I

    .line 2127
    sget-object v0, Landroid/telephony/SubscriptionManager;->sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static greylist getSubId(I)[I
    .registers 4
    .param p0, "slotIndex"    # I

    .line 2144
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2145
    const-string v0, "[getSubId]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2146
    const/4 v0, 0x0

    return-object v0

    .line 2149
    :cond_d
    const/4 v0, 0x0

    .line 2152
    .local v0, "subId":[I
    :try_start_e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2153
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_19

    .line 2154
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[I

    move-result-object v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_1a

    move-object v0, v2

    .line 2158
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_19
    goto :goto_1b

    .line 2156
    :catch_1a
    move-exception v1

    .line 2160
    :goto_1b
    return-object v0
.end method

.method private static greylist-max-o getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 2656
    const/4 v0, 0x0

    .line 2658
    .local v0, "resultValue":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2659
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_15

    .line 2660
    nop

    .line 2661
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2660
    invoke-interface {v1, p0, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    move-object v0, v2

    .line 2665
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_15
    goto :goto_17

    .line 2663
    :catch_16
    move-exception v1

    .line 2666
    :goto_17
    return-object v0
.end method

.method public static blacklist getUriForSubscriptionId(I)Landroid/net/Uri;
    .registers 3
    .param p0, "subscriptionId"    # I

    .line 287
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist invalidateActiveDataSubIdCaches()V
    .registers 1

    .line 3836
    const-string v0, "cache_key.telephony.get_active_data_sub_id"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3837
    return-void
.end method

.method public static blacklist invalidateDefaultDataSubIdCaches()V
    .registers 1

    .line 3826
    const-string v0, "cache_key.telephony.get_default_data_sub_id"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3827
    return-void
.end method

.method public static blacklist invalidateDefaultSmsSubIdCaches()V
    .registers 1

    .line 3831
    const-string v0, "cache_key.telephony.get_default_sms_sub_id"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3832
    return-void
.end method

.method public static blacklist invalidateDefaultSubIdCaches()V
    .registers 1

    .line 3821
    const-string v0, "cache_key.telephony.get_default_sub_id"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3822
    return-void
.end method

.method public static blacklist invalidateSlotIndexCaches()V
    .registers 1

    .line 3841
    const-string v0, "cache_key.telephony.get_slot_index"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3842
    return-void
.end method

.method private blacklist isSystemProcess()Z
    .registers 3

    .line 3378
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-p isUsableSubIdValue(I)Z
    .registers 2
    .param p0, "subId"    # I

    .line 2438
    if-ltz p0, :cond_9

    const v0, 0x7ffffffe

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static whitelist isUsableSubscriptionId(I)Z
    .registers 2
    .param p0, "subscriptionId"    # I

    .line 2428
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isValidPhoneId(I)Z
    .registers 2
    .param p0, "phoneId"    # I

    .line 2450
    if-ltz p0, :cond_e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-ge p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static greylist-max-p isValidSlotIndex(I)Z
    .registers 2
    .param p0, "slotIndex"    # I

    .line 2444
    if-ltz p0, :cond_e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-ge p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist isValidSubscriptionId(I)Z
    .registers 2
    .param p0, "subscriptionId"    # I

    .line 2413
    const/4 v0, -0x1

    if-le p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method static synthetic blacklist lambda$addOnSubscriptionsChangedListener$0(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 1
    .param p0, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1411
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onAddListenerFailed()V

    return-void
.end method

.method static synthetic blacklist lambda$addSubscriptionsIntoGroup$8(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 3358
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$createSubscriptionGroup$7(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 3309
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$removeSubscriptionsFromGroup$9(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 3410
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDataRoaming$5(IILcom/android/internal/telephony/ISub;)I
    .registers 4
    .param p0, "roaming"    # I
    .param p1, "subId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2115
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDeviceToDeviceStatusSharingContacts$11(Ljava/util/List;ILcom/android/internal/telephony/ISub;)I
    .registers 4
    .param p0, "contacts"    # Ljava/util/List;
    .param p1, "subscriptionId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3723
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->serializeUriLists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/android/internal/telephony/ISub;->setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDeviceToDeviceStatusSharingPreference$10(IILcom/android/internal/telephony/ISub;)I
    .registers 4
    .param p0, "sharing"    # I
    .param p1, "subscriptionId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3690
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDeviceToDeviceStatusSharing(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDisplayName$3(Ljava/lang/String;IILcom/android/internal/telephony/ISub;)I
    .registers 5
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "nameSource"    # I
    .param p3, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2082
    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDisplayNumber$4(Ljava/lang/String;ILcom/android/internal/telephony/ISub;)I
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2100
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setIconTint$2(IILcom/android/internal/telephony/ISub;)I
    .registers 4
    .param p0, "tint"    # I
    .param p1, "subId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2062
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 2170
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 2174
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    return-void
.end method

.method public static greylist-max-p putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .line 2456
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2457
    .local v0, "subIds":[I
    if-eqz v0, :cond_10

    array-length v1, v0

    if-lez v1, :cond_10

    .line 2458
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {p0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    goto :goto_24

    .line 2460
    :cond_10
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2461
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2462
    const-string v1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2464
    invoke-static {p0, p1}, Landroid/telephony/TelephonyBaseUtilsStub;->putPhoneIdExtra(Landroid/content/Intent;I)V

    .line 2466
    :goto_24
    return-void
.end method

.method public static greylist-max-r putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .line 2472
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2473
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2474
    invoke-static {p0, p2}, Landroid/telephony/SubscriptionManager;->putSubscriptionIdExtra(Landroid/content/Intent;I)V

    .line 2476
    invoke-static {p0, p1, p1, p2}, Landroid/telephony/TelephonyBaseUtilsStub;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    .line 2477
    return-void
.end method

.method public static blacklist putSubscriptionIdExtra(Landroid/content/Intent;I)V
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "subId"    # I

    .line 3815
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3816
    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3817
    return-void
.end method

.method public static blacklist serializeUriLists(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2601
    .local p0, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2602
    .local v0, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2603
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2604
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_9

    .line 2606
    :cond_1d
    :try_start_1d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2607
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2608
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2609
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 2610
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_36} :catch_37

    return-object v3

    .line 2611
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_37
    move-exception v1

    .line 2612
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "serializeUriLists IO exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2614
    .end local v1    # "e":Ljava/io/IOException;
    const-string v1, ""

    return-object v1
.end method

.method public static greylist-max-o setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .line 2587
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2588
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 2589
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2593
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    goto :goto_b

    .line 2591
    :catch_a
    move-exception v0

    .line 2594
    :goto_b
    return-void
.end method

.method private blacklist setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I
    .registers 7
    .param p1, "subId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "helper"    # Landroid/telephony/SubscriptionManager$CallISubMethodHelper;

    .line 3771
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 3772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]- fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 3773
    const/4 v0, -0x1

    return v0

    .line 3776
    :cond_24
    const/4 v0, 0x0

    .line 3779
    .local v0, "result":I
    :try_start_25
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 3780
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_30

    .line 3781
    invoke-interface {p3, v1}, Landroid/telephony/SubscriptionManager$CallISubMethodHelper;->callMethod(Lcom/android/internal/telephony/ISub;)I

    move-result v2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2f} :catch_31

    move v0, v2

    .line 3785
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_30
    goto :goto_32

    .line 3783
    :catch_31
    move-exception v1

    .line 3787
    :goto_32
    return v0
.end method


# virtual methods
.method public whitelist addOnOpportunisticSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    .line 1477
    if-eqz p1, :cond_21

    if-nez p2, :cond_5

    goto :goto_21

    .line 1481
    :cond_5
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_e
    const-string v0, "<unknown>"

    .line 1489
    .local v0, "pkgName":Ljava/lang/String;
    :goto_10
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1490
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 1491
    .local v1, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_20

    .line 1492
    invoke-virtual {v1, p2, p1}, Landroid/telephony/TelephonyRegistryManager;->addOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    .line 1495
    :cond_20
    return-void

    .line 1478
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    :cond_21
    :goto_21
    return-void
.end method

.method public whitelist addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1376
    if-nez p1, :cond_3

    return-void

    .line 1377
    :cond_3
    invoke-static {p1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->-$$Nest$fgetmExecutor(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)Lcom/android/internal/telephony/util/HandlerExecutor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1378
    return-void
.end method

.method public whitelist addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1394
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    .line 1401
    .local v0, "pkgName":Ljava/lang/String;
    :goto_b
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1402
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 1403
    .local v1, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_1c

    .line 1404
    invoke-virtual {v1, p2, p1}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    goto :goto_40

    .line 1409
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOnSubscriptionsChangedListener: pkgname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to be added  due to TELEPHONY_REGISTRY_SERVICE being unavailable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    .line 1411
    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1413
    :goto_40
    return-void
.end method

.method public greylist-max-o addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .registers 5
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotIndex"    # I

    .line 1961
    if-nez p1, :cond_7

    .line 1962
    const-string v0, "[addSubscriptionInfoRecord]- null iccId"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1964
    :cond_7
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1965
    const-string v0, "[addSubscriptionInfoRecord]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1968
    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1971
    return-object v1
.end method

.method public blacklist addSubscriptionInfoRecord(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "slotIndex"    # I
    .param p4, "subscriptionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1993
    const-string v0, "SubscriptionManager"

    if-nez p1, :cond_a

    .line 1994
    const-string v1, "[addSubscriptionInfoRecord]- uniqueId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    return-void

    .line 1999
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2000
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-nez v1, :cond_16

    .line 2001
    const-string v2, "[addSubscriptionInfoRecord]- ISub service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    return-void

    .line 2004
    :cond_16
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    .line 2005
    .local v2, "result":I
    if-gez v2, :cond_33

    .line 2006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding of subscription didn\'t succeed: error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 2008
    :cond_33
    const-string/jumbo v0, "successfully added new subscription"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_39} :catch_3a

    .line 2012
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":I
    :goto_39
    goto :goto_3b

    .line 2010
    :catch_3a
    move-exception v0

    .line 2013
    :goto_3b
    return-void
.end method

.method public whitelist addSubscriptionsIntoGroup(Ljava/util/List;Landroid/os/ParcelUuid;)V
    .registers 8
    .param p2, "groupUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/ParcelUuid;",
            ")V"
        }
    .end annotation

    .line 3351
    .local p1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "subIdList can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3352
    const-string/jumbo v0, "groupUuid can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3353
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_15
    const-string v0, "<unknown>"

    .line 3358
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_17
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 3361
    .local v1, "subIdArray":[I
    :try_start_28
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v2

    .line 3362
    .local v2, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v2, :cond_32

    .line 3363
    invoke-interface {v2, v1, p2, v0}, Lcom/android/internal/telephony/ISub;->addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    goto :goto_38

    .line 3365
    :cond_32
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 3374
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_38
    goto :goto_62

    .line 3366
    .restart local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_39
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "telephony service is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local v1    # "subIdArray":[I
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "groupUuid":Landroid/os/ParcelUuid;
    throw v3
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_42} :catch_42

    .line 3369
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local v1    # "subIdArray":[I
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2    # "groupUuid":Landroid/os/ParcelUuid;
    :catch_42
    move-exception v2

    .line 3370
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSubscriptionsIntoGroup RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    .line 3371
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v3

    if-nez v3, :cond_62

    .line 3372
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3375
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_62
    :goto_62
    return-void
.end method

.method public greylist-max-o allDefaultsSelected()Z
    .registers 3

    .line 2389
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 2390
    return v1

    .line 2392
    :cond_c
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2393
    return v1

    .line 2395
    :cond_17
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2396
    return v1

    .line 2398
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist canDisablePhysicalSubscription()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3641
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 3642
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 3643
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 3639
    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3644
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_17

    .line 3645
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->canDisablePhysicalSubscription()Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return v1

    .line 3649
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_17
    goto :goto_19

    .line 3647
    :catch_18
    move-exception v0

    .line 3651
    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .line 3060
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3080
    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAllAccessRules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4f

    if-nez p2, :cond_c

    goto :goto_4f

    .line 3083
    :cond_c
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3086
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x8000000

    :try_start_14
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_18} :catch_37

    .line 3091
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 3092
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAllAccessRules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccAccessRule;

    .line 3093
    .local v4, "rule":Landroid/telephony/UiccAccessRule;
    invoke-virtual {v4, v2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_35

    .line 3095
    return v6

    .line 3097
    .end local v4    # "rule":Landroid/telephony/UiccAccessRule;
    :cond_35
    goto :goto_21

    .line 3098
    :cond_36
    return v0

    .line 3088
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_37
    move-exception v2

    .line 3089
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 3090
    return v0

    .line 3081
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4f
    :goto_4f
    return v0
.end method

.method public greylist-max-o clearSubscriptionInfo()V
    .registers 2

    .line 2375
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2376
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 2377
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2381
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    goto :goto_b

    .line 2379
    :catch_a
    move-exception v0

    .line 2383
    :goto_b
    return-void
.end method

.method public whitelist createSubscriptionGroup(Ljava/util/List;)Landroid/os/ParcelUuid;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/ParcelUuid;"
        }
    .end annotation

    .line 3302
    .local p1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "can\'t create group for null subId list"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3303
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_e
    const-string v0, "<unknown>"

    .line 3308
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_10
    const/4 v1, 0x0

    .line 3309
    .local v1, "groupUuid":Landroid/os/ParcelUuid;
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    .line 3311
    .local v2, "subIdArray":[I
    :try_start_22
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    .line 3312
    .local v3, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v3, :cond_2e

    .line 3313
    invoke-interface {v3, v2, v0}, Lcom/android/internal/telephony/ISub;->createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    move-object v1, v4

    goto :goto_34

    .line 3315
    :cond_2e
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 3324
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_34
    goto :goto_5e

    .line 3316
    .restart local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_35
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "telephony service is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local v1    # "groupUuid":Landroid/os/ParcelUuid;
    .end local v2    # "subIdArray":[I
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    throw v4
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_3e} :catch_3e

    .line 3319
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local v1    # "groupUuid":Landroid/os/ParcelUuid;
    .restart local v2    # "subIdArray":[I
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_3e
    move-exception v3

    .line 3320
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSubscriptionGroup RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    .line 3321
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-nez v4, :cond_5e

    .line 3322
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3326
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_5e
    :goto_5e
    return-object v1
.end method

.method public whitelist getAccessibleSubscriptionInfoList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1809
    const/4 v0, 0x0

    .line 1812
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1813
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_12

    .line 1814
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move-object v0, v2

    .line 1818
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_12
    goto :goto_14

    .line 1816
    :catch_13
    move-exception v1

    .line 1819
    :goto_14
    return-object v0
.end method

.method public whitelist getActiveSubscriptionIdList()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2489
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveSubscriptionIdList(Z)[I
    .registers 4
    .param p1, "visibleOnly"    # Z

    .line 2517
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2518
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_d

    .line 2519
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList(Z)[I

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    .line 2520
    .local v1, "subId":[I
    if-eqz v1, :cond_d

    return-object v1

    .line 2524
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v1    # "subId":[I
    :cond_d
    goto :goto_f

    .line 2522
    :catch_e
    move-exception v0

    .line 2526
    :goto_f
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .registers 6
    .param p1, "subId"    # I

    .line 1534
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1538
    const/4 v0, 0x0

    return-object v0

    .line 1541
    :cond_8
    const/4 v0, 0x0

    .line 1544
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1545
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_20

    .line 1546
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1547
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1546
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1f} :catch_21

    move-object v0, v2

    .line 1551
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_20
    goto :goto_22

    .line 1549
    :catch_21
    move-exception v1

    .line 1553
    :goto_22
    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfoCount()I
    .registers 5

    .line 1917
    const/4 v0, 0x0

    .line 1920
    .local v0, "result":I
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1921
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_18

    .line 1922
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1923
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1922
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move v0, v2

    .line 1927
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_18
    goto :goto_1a

    .line 1925
    :catch_19
    move-exception v1

    .line 1929
    :goto_1a
    return v0
.end method

.method public whitelist getActiveSubscriptionInfoCountMax()I
    .registers 4

    .line 1938
    const/4 v0, 0x0

    .line 1941
    .local v0, "result":I
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1942
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_c

    .line 1943
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 1947
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_c
    goto :goto_e

    .line 1945
    :catch_d
    move-exception v1

    .line 1949
    :goto_e
    return v0
.end method

.method public whitelist getActiveSubscriptionInfoForIcc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .registers 6
    .param p1, "iccId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1569
    if-nez p1, :cond_9

    .line 1570
    const-string v0, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1571
    const/4 v0, 0x0

    return-object v0

    .line 1574
    :cond_9
    const/4 v0, 0x0

    .line 1577
    .local v0, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1578
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_21

    .line 1579
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1580
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1579
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_20} :catch_22

    move-object v0, v2

    .line 1584
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_21
    goto :goto_23

    .line 1582
    :catch_22
    move-exception v1

    .line 1586
    :goto_23
    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .registers 6
    .param p1, "slotIndex"    # I

    .line 1603
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1604
    const-string v0, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1605
    const/4 v0, 0x0

    return-object v0

    .line 1608
    :cond_d
    const/4 v0, 0x0

    .line 1611
    .local v0, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1612
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_25

    .line 1613
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1614
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1613
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_24} :catch_26

    move-object v0, v2

    .line 1618
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_25
    goto :goto_27

    .line 1616
    :catch_26
    move-exception v1

    .line 1620
    :goto_27
    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1679
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveSubscriptionInfoList(Z)Ljava/util/List;
    .registers 6
    .param p1, "userVisibleOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1719
    const/4 v0, 0x0

    .line 1722
    .local v0, "activeList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1723
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_18

    .line 1724
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1725
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1724
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move-object v0, v2

    .line 1729
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_18
    goto :goto_1a

    .line 1727
    :catch_19
    move-exception v1

    .line 1731
    :goto_1a
    if-eqz p1, :cond_37

    if-nez v0, :cond_1f

    goto :goto_37

    .line 1734
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/SubscriptionManager;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1735
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1734
    return-object v1

    .line 1732
    :cond_37
    :goto_37
    return-object v0
.end method

.method public whitelist getAllSimSpecificSettingsForBackup()[B
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3882
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "getSimSpecificSettings"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3885
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "KEY_SIM_SPECIFIC_SETTINGS_DATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public greylist getAllSubscriptionInfoCount()I
    .registers 5

    .line 1888
    const/4 v0, 0x0

    .line 1891
    .local v0, "result":I
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1892
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_18

    .line 1893
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1894
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1893
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move v0, v2

    .line 1898
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_18
    goto :goto_1a

    .line 1896
    :catch_19
    move-exception v1

    .line 1900
    :goto_1a
    return v0
.end method

.method public greylist getAllSubscriptionInfoList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1633
    const/4 v0, 0x0

    .line 1636
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1637
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_18

    .line 1638
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1639
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1638
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move-object v0, v2

    .line 1643
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_18
    goto :goto_1a

    .line 1641
    :catch_19
    move-exception v1

    .line 1645
    :goto_1a
    if-nez v0, :cond_20

    .line 1646
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1648
    :cond_20
    return-object v0
.end method

.method public whitelist getAvailableSubscriptionInfoList()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1770
    const/4 v0, 0x0

    .line 1773
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1774
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_18

    .line 1775
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1776
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1775
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move-object v0, v2

    .line 1780
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_18
    goto :goto_1a

    .line 1778
    :catch_19
    move-exception v1

    .line 1781
    :goto_1a
    return-object v0
.end method

.method public whitelist getCompleteActiveSubscriptionIdList()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2507
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCompleteActiveSubscriptionInfoList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1704
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    .line 1706
    .local v0, "completeList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_d

    .line 1707
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1709
    :cond_d
    return-object v0
.end method

.method public greylist getDefaultDataPhoneId()I
    .registers 2

    .line 2369
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public greylist getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .registers 2

    .line 2363
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getDefaultSmsPhoneId()I
    .registers 2

    .line 2316
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .registers 2

    .line 2310
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .registers 2

    .line 2258
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceToDeviceStatusSharingContacts(I)Ljava/util/List;
    .registers 4
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 3737
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string v1, "d2d_sharing_contacts"

    invoke-static {p1, v1, v0}, Landroid/telephony/SubscriptionManager;->getContactsFromSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceToDeviceStatusSharingPreference(I)I
    .registers 5
    .param p1, "subscriptionId"    # I

    .line 3703
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string v1, "d2d_sharing_status"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public whitelist getEnabledSubscriptionId(I)I
    .registers 5
    .param p1, "slotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3750
    const/4 v0, -0x1

    .line 3753
    .local v0, "subId":I
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 3754
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_c

    .line 3755
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->getEnabledSubscriptionId(I)I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 3759
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_c
    goto :goto_e

    .line 3757
    :catch_d
    move-exception v1

    .line 3762
    :goto_e
    return v0
.end method

.method public whitelist getOpportunisticSubscriptions()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 3199
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    .line 3200
    .local v0, "contextPkg":Ljava/lang/String;
    :goto_b
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 3201
    .local v1, "contextAttributionTag":Ljava/lang/String;
    :goto_15
    const/4 v2, 0x0

    .line 3204
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_16
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    .line 3205
    .local v3, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v3, :cond_21

    .line 3206
    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/ISub;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_22

    move-object v2, v4

    .line 3211
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_21
    goto :goto_23

    .line 3209
    :catch_22
    move-exception v3

    .line 3213
    :goto_23
    if-nez v2, :cond_2b

    .line 3214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 3217
    :cond_2b
    return-object v2
.end method

.method public whitelist getPhoneNumber(I)Ljava/lang/String;
    .registers 5
    .param p1, "subscriptionId"    # I

    .line 4030
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    .line 4031
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 4034
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4035
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_20

    .line 4036
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 4037
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 4036
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISub;->getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4039
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subscriptionId":I
    throw v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_29} :catch_29

    .line 4041
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subscriptionId":I
    :catch_29
    move-exception v0

    .line 4042
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPhoneNumber(II)Ljava/lang/String;
    .registers 6
    .param p1, "subscriptionId"    # I
    .param p2, "source"    # I

    .line 3978
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    .line 3979
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 3981
    :cond_9
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x3

    if-ne p2, v0, :cond_13

    goto :goto_2d

    .line 3984
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3987
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3988
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_44

    .line 3989
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 3990
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 3989
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/ISub;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3992
    :cond_44
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "source":I
    throw v1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4d} :catch_4d

    .line 3994
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "source":I
    :catch_4d
    move-exception v0

    .line 3995
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPreferredDataSubscriptionId()I
    .registers 4

    .line 3171
    const v0, 0x7fffffff

    .line 3173
    .local v0, "preferredSubId":I
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 3174
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_e

    .line 3175
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getPreferredDataSubscriptionId()I

    move-result v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_f

    move v0, v2

    .line 3179
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_e
    goto :goto_10

    .line 3177
    :catch_f
    move-exception v1

    .line 3181
    :goto_10
    return v0
.end method

.method public blacklist getSelectableSubscriptionInfoList()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 3513
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 3514
    .local v0, "availableList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_8

    .line 3515
    const/4 v1, 0x0

    return-object v1

    .line 3520
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3521
    .local v1, "selectableList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3523
    .local v2, "groupMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 3526
    .local v4, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p0, v4}, Landroid/telephony/SubscriptionManager;->isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result v5

    if-nez v5, :cond_29

    goto :goto_16

    .line 3528
    :cond_29
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    .line 3529
    .local v5, "groupUuid":Landroid/os/ParcelUuid;
    if-nez v5, :cond_33

    .line 3531
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 3532
    :cond_33
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 3533
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_59

    .line 3534
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-eq v6, v7, :cond_59

    .line 3537
    :cond_4c
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3538
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3539
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3542
    .end local v4    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "groupUuid":Landroid/os/ParcelUuid;
    :cond_59
    :goto_59
    goto :goto_16

    .line 3543
    :cond_5a
    return-object v1
.end method

.method public whitelist getSubscriptionIds(I)[I
    .registers 3
    .param p1, "slotIndex"    # I

    .line 2138
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubscriptionPlans(I)Ljava/util/List;
    .registers 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    .line 2854
    nop

    .line 2855
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/NetworkPolicyManager;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    .line 2856
    .local v0, "subscriptionPlans":[Landroid/telephony/SubscriptionPlan;
    if-nez v0, :cond_16

    .line 2857
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1a

    :cond_16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2856
    :goto_1a
    return-object v1
.end method

.method public whitelist getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;
    .registers 8
    .param p1, "groupUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 3449
    const-string/jumbo v0, "groupUuid can\'t be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3450
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, "<unknown>"

    .line 3451
    .local v0, "contextPkg":Ljava/lang/String;
    :goto_11
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 3456
    .local v1, "contextAttributionTag":Ljava/lang/String;
    :goto_1b
    const/4 v2, 0x0

    .line 3458
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_1c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    .line 3459
    .local v3, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v3, :cond_28

    .line 3460
    invoke-interface {v3, p1, v0, v1}, Lcom/android/internal/telephony/ISub;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    goto :goto_2e

    .line 3463
    :cond_28
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3472
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_2e
    goto :goto_59

    .line 3464
    .restart local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2f
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "telephony service is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "contextPkg":Ljava/lang/String;
    .end local v1    # "contextAttributionTag":Ljava/lang/String;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "groupUuid":Landroid/os/ParcelUuid;
    throw v4
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_38} :catch_38

    .line 3467
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "contextPkg":Ljava/lang/String;
    .restart local v1    # "contextAttributionTag":Ljava/lang/String;
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "groupUuid":Landroid/os/ParcelUuid;
    :catch_38
    move-exception v3

    .line 3468
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeSubscriptionsFromGroup RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    .line 3469
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-nez v4, :cond_59

    .line 3470
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3474
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    return-object v2
.end method

.method public greylist isActiveSubId(I)Z
    .registers 5
    .param p1, "subId"    # I

    .line 2827
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2828
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_17

    .line 2829
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 2830
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2829
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISub;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return v1

    .line 2833
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_17
    goto :goto_19

    .line 2832
    :catch_18
    move-exception v0

    .line 2834
    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isActiveSubscriptionId(I)Z
    .registers 3
    .param p1, "subscriptionId"    # I

    .line 2816
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isNetworkRoaming(I)Z
    .registers 4
    .param p1, "subId"    # I

    .line 2539
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2540
    .local v0, "phoneId":I
    if-gez v0, :cond_8

    .line 2542
    const/4 v1, 0x0

    return v1

    .line 2544
    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1
.end method

.method public whitelist isSubscriptionEnabled(I)Z
    .registers 4
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3664
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3665
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_b

    .line 3666
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->isSubscriptionEnabled(I)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 3670
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_b
    goto :goto_d

    .line 3668
    :catch_c
    move-exception v0

    .line 3672
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z
    .registers 6
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .line 3489
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 3491
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_2a

    .line 3495
    :cond_12
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 3496
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 3497
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_28
    move v0, v2

    .line 3498
    .local v0, "hasCarrierPrivilegePermission":Z
    :cond_29
    return v0

    .line 3491
    .end local v0    # "hasCarrierPrivilegePermission":Z
    :cond_2a
    :goto_2a
    return v2
.end method

.method synthetic blacklist lambda$getActiveSubscriptionInfoList$1$android-telephony-SubscriptionManager(Landroid/telephony/SubscriptionInfo;)Z
    .registers 3
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .line 1734
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$setOpportunistic$6$android-telephony-SubscriptionManager(ZILcom/android/internal/telephony/ISub;)I
    .registers 5
    .param p1, "opportunistic"    # Z
    .param p2, "subId"    # I
    .param p3, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3264
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 3265
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3264
    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/ISub;->setOpportunistic(ZILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$setUsageSetting$12$android-telephony-SubscriptionManager(IILcom/android/internal/telephony/ISub;)I
    .registers 5
    .param p1, "usageSetting"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4109
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 4110
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4109
    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/ISub;->setUsageSetting(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist removeOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    .line 1507
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, "<unknown>"

    .line 1513
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_11
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1514
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 1515
    .local v1, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_21

    .line 1516
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyRegistryManager;->removeOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V

    .line 1518
    :cond_21
    return-void
.end method

.method public whitelist removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1423
    if-nez p1, :cond_3

    return-void

    .line 1424
    :cond_3
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_c
    const-string v0, "<unknown>"

    .line 1431
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_e
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1432
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 1433
    .local v1, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_1e

    .line 1434
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyRegistryManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1436
    :cond_1e
    return-void
.end method

.method public blacklist removeSubscriptionInfoRecord(Ljava/lang/String;I)V
    .registers 8
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "subscriptionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2029
    const-string v0, "SubscriptionManager"

    if-nez p1, :cond_a

    .line 2030
    const-string v1, "[addSubscriptionInfoRecord]- uniqueId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    return-void

    .line 2035
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2036
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-nez v1, :cond_16

    .line 2037
    const-string v2, "[removeSubscriptionInfoRecord]- ISub service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    return-void

    .line 2040
    :cond_16
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->removeSubInfo(Ljava/lang/String;I)I

    move-result v2

    .line 2041
    .local v2, "result":I
    if-gez v2, :cond_33

    .line 2042
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removal of subscription didn\'t succeed: error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 2044
    :cond_33
    const-string/jumbo v0, "successfully removed subscription"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_39} :catch_3a

    .line 2048
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":I
    :goto_39
    goto :goto_3b

    .line 2046
    :catch_3a
    move-exception v0

    .line 2049
    :goto_3b
    return-void
.end method

.method public whitelist removeSubscriptionsFromGroup(Ljava/util/List;Landroid/os/ParcelUuid;)V
    .registers 8
    .param p2, "groupUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/ParcelUuid;",
            ")V"
        }
    .end annotation

    .line 3403
    .local p1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "subIdList can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3404
    const-string/jumbo v0, "groupUuid can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3405
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_15
    const-string v0, "<unknown>"

    .line 3410
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_17
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 3413
    .local v1, "subIdArray":[I
    :try_start_28
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v2

    .line 3414
    .local v2, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v2, :cond_32

    .line 3415
    invoke-interface {v2, v1, p2, v0}, Lcom/android/internal/telephony/ISub;->removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    goto :goto_38

    .line 3417
    :cond_32
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 3426
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_38
    goto :goto_63

    .line 3418
    .restart local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_39
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "telephony service is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local v1    # "subIdArray":[I
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "groupUuid":Landroid/os/ParcelUuid;
    throw v3
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_42} :catch_42

    .line 3421
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local v1    # "subIdArray":[I
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2    # "groupUuid":Landroid/os/ParcelUuid;
    :catch_42
    move-exception v2

    .line 3422
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSubscriptionsFromGroup RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    .line 3423
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v3

    if-nez v3, :cond_63

    .line 3424
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3427
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_63
    :goto_63
    return-void
.end method

.method public whitelist requestEmbeddedSubscriptionInfoListRefresh()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1839
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v0

    .line 1841
    .local v0, "cardId":I
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1842
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_13

    .line 1843
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ISub;->requestEmbeddedSubscriptionInfoListRefresh(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 1847
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_13
    goto :goto_32

    .line 1845
    :catch_14
    move-exception v1

    .line 1846
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestEmbeddedSubscriptionInfoListFresh for card = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1848
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method public whitelist requestEmbeddedSubscriptionInfoListRefresh(I)V
    .registers 5
    .param p1, "cardId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1870
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1871
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 1872
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->requestEmbeddedSubscriptionInfoListRefresh(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1876
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    goto :goto_28

    .line 1874
    :catch_a
    move-exception v0

    .line 1875
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestEmbeddedSubscriptionInfoListFresh for card = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1877
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method public whitelist restoreAllSimSpecificSettingsFromBackup([B)V
    .registers 7
    .param p1, "data"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3930
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3931
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "KEY_SIM_SPECIFIC_SETTINGS_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3932
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "restoreSimSpecificSettings"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3936
    return-void
.end method

.method public blacklist restoreSimSpecificSettingsForIccIdFromBackup(Ljava/lang/String;)V
    .registers 6
    .param p1, "iccId"    # Ljava/lang/String;

    .line 3905
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "restoreSimSpecificSettings"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3909
    return-void
.end method

.method public whitelist setCarrierPhoneNumber(ILjava/lang/String;)V
    .registers 10
    .param p1, "subscriptionId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 4066
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    .line 4067
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 4069
    :cond_9
    if-eqz p2, :cond_36

    .line 4073
    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    move-object v6, v0

    .line 4074
    .local v6, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v6, :cond_27

    .line 4075
    const/4 v2, 0x2

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 4076
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 4075
    move-object v0, v6

    move v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISub;->setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4082
    .end local v6    # "iSub":Lcom/android/internal/telephony/ISub;
    nop

    .line 4083
    return-void

    .line 4078
    .restart local v6    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "subscription service unavailable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "number":Ljava/lang/String;
    throw v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_30} :catch_30

    .line 4080
    .end local v6    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "number":Ljava/lang/String;
    :catch_30
    move-exception v0

    .line 4081
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4070
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid number null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r setDataRoaming(II)I
    .registers 5
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .line 2114
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda1;-><init>(II)V

    const-string/jumbo v1, "setDataRoaming"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public whitelist setDefaultDataSubId(I)V
    .registers 3
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2344
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2345
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 2346
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2350
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    goto :goto_b

    .line 2348
    :catch_a
    move-exception v0

    .line 2351
    :goto_b
    return-void
.end method

.method public whitelist setDefaultSmsSubId(I)V
    .registers 3
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2292
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2293
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 2294
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2298
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    goto :goto_e

    .line 2296
    :catch_a
    move-exception v0

    .line 2297
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2299
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public greylist-max-o setDefaultVoiceSubId(I)V
    .registers 2
    .param p1, "subId"    # I

    .line 2245
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubscriptionId(I)V

    .line 2246
    return-void
.end method

.method public whitelist setDefaultVoiceSubscriptionId(I)V
    .registers 3
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2230
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2231
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_9

    .line 2232
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2236
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_9
    goto :goto_b

    .line 2234
    :catch_a
    move-exception v0

    .line 2237
    :goto_b
    return-void
.end method

.method public whitelist setDeviceToDeviceStatusSharingContacts(ILjava/util/List;)V
    .registers 6
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 3717
    .local p2, "contacts":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->serializeUriLists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 3722
    .local v0, "contactString":Ljava/lang/String;
    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;I)V

    const-string/jumbo v2, "setDeviceToDeviceSharingStatus"

    invoke-direct {p0, p1, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    .line 3725
    return-void
.end method

.method public whitelist setDeviceToDeviceStatusSharingPreference(II)V
    .registers 5
    .param p1, "subscriptionId"    # I
    .param p2, "sharing"    # I

    .line 3689
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda18;-><init>(II)V

    const-string/jumbo v1, "setDeviceToDeviceSharingStatus"

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    .line 3691
    return-void
.end method

.method public blacklist setDisplayName(Ljava/lang/String;II)I
    .registers 6
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # I

    .line 2081
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2, p3}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;II)V

    const-string/jumbo v1, "setDisplayName"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public greylist-max-r setDisplayNumber(Ljava/lang/String;I)I
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 2095
    if-nez p1, :cond_9

    .line 2096
    const-string v0, "[setDisplayNumber]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2097
    const/4 v0, -0x1

    return v0

    .line 2099
    :cond_9
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v1, "setDisplayNumber"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public blacklist setIconTint(II)I
    .registers 5
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    .line 2061
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;-><init>(II)V

    const-string/jumbo v1, "setIconTint"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public whitelist setOpportunistic(ZI)Z
    .registers 5
    .param p1, "opportunistic"    # Z
    .param p2, "subId"    # I

    .line 3263
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/SubscriptionManager;ZI)V

    const-string/jumbo v1, "setOpportunistic"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public whitelist setPreferredDataSubscriptionId(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "needValidation"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3130
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3131
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-nez v0, :cond_7

    return-void

    .line 3133
    :cond_7
    new-instance v1, Landroid/telephony/SubscriptionManager$1;

    invoke-direct {v1, p0, p3, p4}, Landroid/telephony/SubscriptionManager$1;-><init>(Landroid/telephony/SubscriptionManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3149
    .local v1, "callbackStub":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/ISub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 3152
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v1    # "callbackStub":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    goto :goto_11

    .line 3150
    :catch_10
    move-exception v0

    .line 3153
    :goto_11
    return-void
.end method

.method public whitelist setSubscriptionEnabled(IZ)Z
    .registers 5
    .param p1, "subscriptionId"    # I
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3572
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3573
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_b

    .line 3574
    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/ISub;->setSubscriptionEnabled(ZI)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 3578
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_b
    goto :goto_d

    .line 3576
    :catch_c
    move-exception v0

    .line 3580
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setSubscriptionOverrideCongested(IZJ)V
    .registers 11
    .param p1, "subId"    # I
    .param p2, "overrideCongested"    # Z
    .param p3, "expirationDurationMillis"    # J

    .line 3009
    nop

    .line 3010
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v3

    .line 3009
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SubscriptionManager;->setSubscriptionOverrideCongested(IZ[IJ)V

    .line 3011
    return-void
.end method

.method public whitelist setSubscriptionOverrideCongested(IZ[IJ)V
    .registers 15
    .param p1, "subId"    # I
    .param p2, "overrideCongested"    # Z
    .param p3, "networkTypes"    # [I
    .param p4, "expirationDurationMillis"    # J

    .line 3043
    if-eqz p2, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    move v4, v0

    .line 3044
    .local v4, "overrideValue":I
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v1

    const/4 v3, 0x2

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 3045
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3044
    move v2, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkPolicyManager;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    .line 3046
    return-void
.end method

.method public whitelist setSubscriptionOverrideUnmetered(IZJ)V
    .registers 11
    .param p1, "subId"    # I
    .param p2, "overrideUnmetered"    # Z
    .param p3, "expirationDurationMillis"    # J

    .line 2945
    nop

    .line 2946
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v3

    .line 2945
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SubscriptionManager;->setSubscriptionOverrideUnmetered(IZ[IJ)V

    .line 2947
    return-void
.end method

.method public whitelist setSubscriptionOverrideUnmetered(IZ[IJ)V
    .registers 14
    .param p1, "subId"    # I
    .param p2, "overrideUnmetered"    # Z
    .param p3, "networkTypes"    # [I
    .param p4, "expirationDurationMillis"    # J

    .line 2978
    move v3, p2

    .line 2979
    .local v3, "overrideValue":I
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 2980
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2979
    move v1, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkPolicyManager;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    .line 2981
    return-void
.end method

.method public whitelist setSubscriptionPlans(ILjava/util/List;)V
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2885
    .local p2, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionPlans(ILjava/util/List;J)V

    .line 2886
    return-void
.end method

.method public whitelist setSubscriptionPlans(ILjava/util/List;J)V
    .registers 11
    .param p1, "subId"    # I
    .param p3, "expirationDurationMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;J)V"
        }
    .end annotation

    .line 2915
    .local p2, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/telephony/SubscriptionPlan;

    .line 2916
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Landroid/telephony/SubscriptionPlan;

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 2917
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2915
    move v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkPolicyManager;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    .line 2918
    return-void
.end method

.method public whitelist setUiccApplicationsEnabled(IZ)V
    .registers 4
    .param p1, "subscriptionId"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3607
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 3608
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 3609
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 3605
    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3610
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_15

    .line 3611
    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/ISub;->setUiccApplicationsEnabled(ZI)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 3615
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_15
    goto :goto_17

    .line 3613
    :catch_16
    move-exception v0

    .line 3616
    :goto_17
    return-void
.end method

.method blacklist setUsageSetting(II)V
    .registers 5
    .param p1, "subscriptionId"    # I
    .param p2, "usageSetting"    # I

    .line 4108
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/SubscriptionManager;II)V

    const-string/jumbo v1, "setUsageSetting"

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    .line 4111
    return-void
.end method

.method public whitelist switchToSubscription(ILandroid/app/PendingIntent;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 3233
    const-string v0, "callbackIntent cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3234
    new-instance v0, Landroid/telephony/euicc/EuiccManager;

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/euicc/EuiccManager;-><init>(Landroid/content/Context;)V

    .line 3235
    .local v0, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(ILandroid/app/PendingIntent;)V

    .line 3236
    return-void
.end method
