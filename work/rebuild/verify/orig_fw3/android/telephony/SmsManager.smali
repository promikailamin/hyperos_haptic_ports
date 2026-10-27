.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsManager$SubscriptionResolverResult;,
        Landroid/telephony/SmsManager$SmsShortCodeCategory;,
        Landroid/telephony/SmsManager$FinancialSmsCallback;,
        Landroid/telephony/SmsManager$Result;,
        Landroid/telephony/SmsManager$StatusOnIcc;,
        Landroid/telephony/SmsManager$PremiumSmsConsent;,
        Landroid/telephony/SmsManager$SMS_RP_CAUSE;
    }
.end annotation


# static fields
.field public static final greylist-max-o CDMA_SMS_RECORD_LENGTH:I = 0xff

.field private static final blacklist DEFAULT_INSTANCE:Landroid/telephony/SmsManager;

.field public static final whitelist EXTRA_MMS_DATA:Ljava/lang/String; = "android.telephony.extra.MMS_DATA"

.field public static final whitelist EXTRA_MMS_HTTP_STATUS:Ljava/lang/String; = "android.telephony.extra.MMS_HTTP_STATUS"

.field public static final blacklist EXTRA_SIM_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.extra.SIM_SUBSCRIPTION_ID"

.field public static final blacklist EXTRA_SMS_MESSAGE:Ljava/lang/String; = "android.telephony.extra.SMS_MESSAGE"

.field public static final blacklist EXTRA_STATUS:Ljava/lang/String; = "android.telephony.extra.STATUS"

.field private static final blacklist GET_TARGET_SDK_VERSION_CODE_CHANGE:J = 0x8a6c688L

.field public static final whitelist MMS_CONFIG_ALIAS_ENABLED:Ljava/lang/String; = "aliasEnabled"

.field public static final whitelist MMS_CONFIG_ALIAS_MAX_CHARS:Ljava/lang/String; = "aliasMaxChars"

.field public static final whitelist MMS_CONFIG_ALIAS_MIN_CHARS:Ljava/lang/String; = "aliasMinChars"

.field public static final whitelist MMS_CONFIG_ALLOW_ATTACH_AUDIO:Ljava/lang/String; = "allowAttachAudio"

.field public static final whitelist MMS_CONFIG_APPEND_TRANSACTION_ID:Ljava/lang/String; = "enabledTransID"

.field public static final greylist-max-o MMS_CONFIG_CLOSE_CONNECTION:Ljava/lang/String; = "mmsCloseConnection"

.field public static final whitelist MMS_CONFIG_EMAIL_GATEWAY_NUMBER:Ljava/lang/String; = "emailGatewayNumber"

.field public static final whitelist MMS_CONFIG_GROUP_MMS_ENABLED:Ljava/lang/String; = "enableGroupMms"

.field public static final whitelist MMS_CONFIG_HTTP_PARAMS:Ljava/lang/String; = "httpParams"

.field public static final whitelist MMS_CONFIG_HTTP_SOCKET_TIMEOUT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final whitelist MMS_CONFIG_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "maxImageHeight"

.field public static final whitelist MMS_CONFIG_MAX_IMAGE_WIDTH:Ljava/lang/String; = "maxImageWidth"

.field public static final whitelist MMS_CONFIG_MAX_MESSAGE_SIZE:Ljava/lang/String; = "maxMessageSize"

.field public static final whitelist MMS_CONFIG_MESSAGE_TEXT_MAX_SIZE:Ljava/lang/String; = "maxMessageTextSize"

.field public static final whitelist MMS_CONFIG_MMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final whitelist MMS_CONFIG_MMS_ENABLED:Ljava/lang/String; = "enabledMMS"

.field public static final whitelist MMS_CONFIG_MMS_READ_REPORT_ENABLED:Ljava/lang/String; = "enableMMSReadReports"

.field public static final whitelist MMS_CONFIG_MULTIPART_SMS_ENABLED:Ljava/lang/String; = "enableMultipartSMS"

.field public static final whitelist MMS_CONFIG_NAI_SUFFIX:Ljava/lang/String; = "naiSuffix"

.field public static final whitelist MMS_CONFIG_NOTIFY_WAP_MMSC_ENABLED:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final whitelist MMS_CONFIG_RECIPIENT_LIMIT:Ljava/lang/String; = "recipientLimit"

.field public static final whitelist MMS_CONFIG_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final whitelist MMS_CONFIG_SHOW_CELL_BROADCAST_APP_LINKS:Ljava/lang/String; = "config_cellBroadcastAppLinks"

.field public static final whitelist MMS_CONFIG_SMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final whitelist MMS_CONFIG_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final whitelist MMS_CONFIG_SMS_TO_MMS_TEXT_THRESHOLD:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final whitelist MMS_CONFIG_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "maxSubjectLength"

.field public static final whitelist MMS_CONFIG_SUPPORT_HTTP_CHARSET_HEADER:Ljava/lang/String; = "supportHttpCharsetHeader"

.field public static final whitelist MMS_CONFIG_SUPPORT_MMS_CONTENT_DISPOSITION:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final whitelist MMS_CONFIG_UA_PROF_TAG_NAME:Ljava/lang/String; = "uaProfTagName"

.field public static final whitelist MMS_CONFIG_UA_PROF_URL:Ljava/lang/String; = "uaProfUrl"

.field public static final whitelist MMS_CONFIG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field public static final whitelist MMS_ERROR_CONFIGURATION_ERROR:I = 0x7

.field public static final whitelist MMS_ERROR_DATA_DISABLED:I = 0xb

.field public static final whitelist MMS_ERROR_HTTP_FAILURE:I = 0x4

.field public static final whitelist MMS_ERROR_INACTIVE_SUBSCRIPTION:I = 0xa

.field public static final whitelist MMS_ERROR_INVALID_APN:I = 0x2

.field public static final whitelist MMS_ERROR_INVALID_SUBSCRIPTION_ID:I = 0x9

.field public static final whitelist MMS_ERROR_IO_ERROR:I = 0x5

.field public static final whitelist MMS_ERROR_MMS_DISABLED_BY_CARRIER:I = 0xc

.field public static final whitelist MMS_ERROR_NO_DATA_NETWORK:I = 0x8

.field public static final whitelist MMS_ERROR_RETRY:I = 0x6

.field public static final blacklist MMS_ERROR_TOO_LARGE_FOR_TRANSPORT:I = 0xd

.field public static final whitelist MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x3

.field public static final whitelist MMS_ERROR_UNSPECIFIED:I = 0x1

.field public static final whitelist PREMIUM_SMS_CONSENT_ALWAYS_ALLOW:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREMIUM_SMS_CONSENT_ASK_USER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREMIUM_SMS_CONSENT_NEVER_ALLOW:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREMIUM_SMS_CONSENT_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REGEX_PREFIX_DELIMITER:Ljava/lang/String; = ","

.field public static final whitelist RESULT_BLUETOOTH_DISCONNECTED:I = 0x1b

.field public static final whitelist RESULT_CANCELLED:I = 0x17

.field public static final whitelist RESULT_ENCODING_ERROR:I = 0x12

.field public static final whitelist RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final whitelist RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final whitelist RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final whitelist RESULT_ERROR_NONE:I = 0x0

.field public static final whitelist RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final whitelist RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final whitelist RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final whitelist RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED:I = 0x8

.field public static final whitelist RESULT_ERROR_SHORT_CODE_NOT_ALLOWED:I = 0x7

.field public static final whitelist RESULT_INTERNAL_ERROR:I = 0x15

.field public static final whitelist RESULT_INVALID_ARGUMENTS:I = 0xb

.field public static final whitelist RESULT_INVALID_BLUETOOTH_ADDRESS:I = 0x1a

.field public static final whitelist RESULT_INVALID_SMSC_ADDRESS:I = 0x13

.field public static final whitelist RESULT_INVALID_SMS_FORMAT:I = 0xe

.field public static final whitelist RESULT_INVALID_STATE:I = 0xc

.field public static final whitelist RESULT_MODEM_ERROR:I = 0x10

.field public static final whitelist RESULT_NETWORK_ERROR:I = 0x11

.field public static final whitelist RESULT_NETWORK_REJECT:I = 0xa

.field public static final whitelist RESULT_NO_BLUETOOTH_SERVICE:I = 0x19

.field public static final whitelist RESULT_NO_DEFAULT_SMS_APP:I = 0x20

.field public static final whitelist RESULT_NO_MEMORY:I = 0xd

.field public static final whitelist RESULT_NO_RESOURCES:I = 0x16

.field public static final whitelist RESULT_OPERATION_NOT_ALLOWED:I = 0x14

.field public static final whitelist RESULT_RADIO_NOT_AVAILABLE:I = 0x9

.field public static final whitelist RESULT_RECEIVE_DISPATCH_FAILURE:I = 0x1f4

.field public static final whitelist RESULT_RECEIVE_INJECTED_NULL_PDU:I = 0x1f5

.field public static final whitelist RESULT_RECEIVE_NULL_MESSAGE_FROM_RIL:I = 0x1f7

.field public static final whitelist RESULT_RECEIVE_RUNTIME_EXCEPTION:I = 0x1f6

.field public static final whitelist RESULT_RECEIVE_SQL_EXCEPTION:I = 0x1f9

.field public static final whitelist RESULT_RECEIVE_URI_EXCEPTION:I = 0x1fa

.field public static final whitelist RESULT_RECEIVE_WHILE_ENCRYPTED:I = 0x1f8

.field public static final whitelist RESULT_REMOTE_EXCEPTION:I = 0x1f

.field public static final whitelist RESULT_REQUEST_NOT_SUPPORTED:I = 0x18

.field public static final whitelist RESULT_RIL_ABORTED:I = 0x89

.field public static final whitelist RESULT_RIL_ACCESS_BARRED:I = 0x7a

.field public static final whitelist RESULT_RIL_BLOCKED_DUE_TO_CALL:I = 0x7b

.field public static final whitelist RESULT_RIL_CANCELLED:I = 0x77

.field public static final whitelist RESULT_RIL_DEVICE_IN_USE:I = 0x88

.field public static final whitelist RESULT_RIL_ENCODING_ERR:I = 0x6d

.field public static final whitelist RESULT_RIL_GENERIC_ERROR:I = 0x7c

.field public static final whitelist RESULT_RIL_INTERNAL_ERR:I = 0x71

.field public static final whitelist RESULT_RIL_INVALID_ARGUMENTS:I = 0x68

.field public static final whitelist RESULT_RIL_INVALID_MODEM_STATE:I = 0x73

.field public static final whitelist RESULT_RIL_INVALID_RESPONSE:I = 0x7d

.field public static final whitelist RESULT_RIL_INVALID_SIM_STATE:I = 0x82

.field public static final whitelist RESULT_RIL_INVALID_SMSC_ADDRESS:I = 0x6e

.field public static final whitelist RESULT_RIL_INVALID_SMS_FORMAT:I = 0x6b

.field public static final whitelist RESULT_RIL_INVALID_STATE:I = 0x67

.field public static final whitelist RESULT_RIL_MODEM_ERR:I = 0x6f

.field public static final whitelist RESULT_RIL_NETWORK_ERR:I = 0x70

.field public static final whitelist RESULT_RIL_NETWORK_NOT_READY:I = 0x74

.field public static final whitelist RESULT_RIL_NETWORK_REJECT:I = 0x66

.field public static final whitelist RESULT_RIL_NO_MEMORY:I = 0x69

.field public static final whitelist RESULT_RIL_NO_NETWORK_FOUND:I = 0x87

.field public static final whitelist RESULT_RIL_NO_RESOURCES:I = 0x76

.field public static final whitelist RESULT_RIL_NO_SMS_TO_ACK:I = 0x83

.field public static final whitelist RESULT_RIL_NO_SUBSCRIPTION:I = 0x86

.field public static final whitelist RESULT_RIL_OPERATION_NOT_ALLOWED:I = 0x75

.field public static final whitelist RESULT_RIL_RADIO_NOT_AVAILABLE:I = 0x64

.field public static final whitelist RESULT_RIL_REQUEST_NOT_SUPPORTED:I = 0x72

.field public static final whitelist RESULT_RIL_REQUEST_RATE_LIMITED:I = 0x6a

.field public static final whitelist RESULT_RIL_SIMULTANEOUS_SMS_AND_CALL_NOT_ALLOWED:I = 0x79

.field public static final whitelist RESULT_RIL_SIM_ABSENT:I = 0x78

.field public static final whitelist RESULT_RIL_SIM_BUSY:I = 0x84

.field public static final whitelist RESULT_RIL_SIM_ERROR:I = 0x81

.field public static final whitelist RESULT_RIL_SIM_FULL:I = 0x85

.field public static final whitelist RESULT_RIL_SIM_PIN2:I = 0x7e

.field public static final whitelist RESULT_RIL_SIM_PUK2:I = 0x7f

.field public static final whitelist RESULT_RIL_SMS_SEND_FAIL_RETRY:I = 0x65

.field public static final whitelist RESULT_RIL_SUBSCRIPTION_NOT_AVAILABLE:I = 0x80

.field public static final whitelist RESULT_RIL_SYSTEM_ERR:I = 0x6c

.field public static final whitelist RESULT_SMS_BLOCKED_DURING_EMERGENCY:I = 0x1d

.field public static final whitelist RESULT_SMS_SEND_FAILED_AFTER_MAX_RETRY:I = 0x8a

.field public static final whitelist RESULT_SMS_SEND_RETRY_FAILED:I = 0x1e

.field public static final blacklist RESULT_STATUS_SUCCESS:I = 0x0

.field public static final blacklist RESULT_STATUS_TIMEOUT:I = 0x1

.field public static final whitelist RESULT_SYSTEM_ERROR:I = 0xf

.field public static final whitelist RESULT_UNEXPECTED_EVENT_STOP_SENDING:I = 0x1c

.field public static final whitelist RESULT_USER_NOT_ALLOWED:I = 0x21

.field public static final blacklist SMS_CATEGORY_FREE_SHORT_CODE:I = 0x1

.field public static final blacklist SMS_CATEGORY_NOT_SHORT_CODE:I = 0x0

.field public static final blacklist SMS_CATEGORY_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x3

.field public static final blacklist SMS_CATEGORY_PREMIUM_SHORT_CODE:I = 0x4

.field public static final blacklist SMS_CATEGORY_STANDARD_SHORT_CODE:I = 0x2

.field public static final blacklist SMS_MESSAGE_PERIOD_NOT_SPECIFIED:I = -0x1

.field public static final blacklist SMS_MESSAGE_PRIORITY_NOT_SPECIFIED:I = -0x1

.field private static final blacklist SMS_OTP_READING_ROLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o SMS_RECORD_LENGTH:I = 0xb0

.field public static final whitelist SMS_RP_CAUSE_CALL_BARRING:I = 0xa

.field public static final whitelist SMS_RP_CAUSE_CONGESTION:I = 0x2a

.field public static final whitelist SMS_RP_CAUSE_DESTINATION_OUT_OF_ORDER:I = 0x1b

.field public static final whitelist SMS_RP_CAUSE_FACILITY_NOT_IMPLEMENTED:I = 0x45

.field public static final whitelist SMS_RP_CAUSE_FACILITY_NOT_SUBSCRIBED:I = 0x32

.field public static final whitelist SMS_RP_CAUSE_FACILITY_REJECTED:I = 0x1d

.field public static final whitelist SMS_RP_CAUSE_INFORMATION_ELEMENT_NON_EXISTENT:I = 0x63

.field public static final whitelist SMS_RP_CAUSE_INTERWORKING_UNSPECIFIED:I = 0x7f

.field public static final whitelist SMS_RP_CAUSE_INVALID_MANDATORY_INFORMATION:I = 0x60

.field public static final whitelist SMS_RP_CAUSE_INVALID_MESSAGE_REFERENCE_VALUE:I = 0x51

.field public static final whitelist SMS_RP_CAUSE_MESSAGE_INCOMPATIBLE_WITH_PROTOCOL_STATE:I = 0x62

.field public static final whitelist SMS_RP_CAUSE_MESSAGE_TYPE_NON_EXISTENT:I = 0x61

.field public static final whitelist SMS_RP_CAUSE_NETWORK_OUT_OF_ORDER:I = 0x26

.field public static final whitelist SMS_RP_CAUSE_OPERATOR_DETERMINED_BARRING:I = 0x8

.field public static final whitelist SMS_RP_CAUSE_PROTOCOL_ERROR:I = 0x6f

.field public static final whitelist SMS_RP_CAUSE_RESERVED:I = 0xb

.field public static final whitelist SMS_RP_CAUSE_RESOURCES_UNAVAILABLE:I = 0x2f

.field public static final whitelist SMS_RP_CAUSE_SEMANTICALLY_INCORRECT_MESSAGE:I = 0x5f

.field public static final whitelist SMS_RP_CAUSE_SHORT_MESSAGE_TRANSFER_REJECTED:I = 0x15

.field public static final whitelist SMS_RP_CAUSE_TEMPORARY_FAILURE:I = 0x29

.field public static final whitelist SMS_RP_CAUSE_UNALLOCATED_NUMBER:I = 0x1

.field public static final whitelist SMS_RP_CAUSE_UNIDENTIFIED_SUBSCRIBER:I = 0x1c

.field public static final whitelist SMS_RP_CAUSE_UNKNOWN_SUBSCRIBER:I = 0x1e

.field public static final whitelist STATUS_ON_ICC_FREE:I = 0x0

.field public static final whitelist STATUS_ON_ICC_READ:I = 0x1

.field public static final whitelist STATUS_ON_ICC_SENT:I = 0x5

.field public static final whitelist STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final whitelist STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final blacklist SYSTEM_APP_FLAGS:I = 0x5ca200

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SmsManager"

.field private static final greylist-max-o sLockObject:Ljava/lang/Object;

.field private static final greylist-max-o sSubInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/SmsManager;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sSystemPkgs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private greylist-max-p mSubId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetAttributionTag(Landroid/telephony/SmsManager;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendResolverResult(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smformatCrossStackMessageId(J)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .registers 1

    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnotifySmsError(Ljava/util/List;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->notifySmsError(Ljava/util/List;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    .line 112
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    sput-object v0, Landroid/telephony/SmsManager;->DEFAULT_INSTANCE:Landroid/telephony/SmsManager;

    .line 316
    const-string v0, "android.app.role.ASSISTANT"

    const-string v2, "android.app.role.DIALER"

    const-string v3, "android.app.role.SMS"

    invoke-static {v3, v0, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/telephony/SmsManager;->SMS_OTP_READING_ROLES:Ljava/util/List;

    .line 3739
    sput-object v1, Landroid/telephony/SmsManager;->sSystemPkgs:Ljava/util/Set;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1704
    iput-object p1, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    .line 1705
    iput p2, p0, Landroid/telephony/SmsManager;->mSubId:I

    .line 1706
    return-void
.end method

.method private greylist-max-o createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 2212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2213
    if-eqz p1, :cond_2c

    .line 2214
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2215
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2c

    .line 2216
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsRawData;

    .line 2218
    if-eqz v3, :cond_29

    .line 2219
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v3

    .line 2220
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v5

    .line 2219
    invoke-static {v4, v3, v5}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 2221
    if-eqz v3, :cond_29

    .line 2222
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2215
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2227
    :cond_2c
    return-object v0
.end method

.method private static blacklist formatCrossStackMessageId(J)Ljava/lang/String;
    .registers 4

    .line 3672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{x-message-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getAllCdmAssociations(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 3921
    const-class v0, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/CompanionDeviceManager;

    .line 3922
    invoke-virtual {p0}, Landroid/companion/CompanionDeviceManager;->getAllAssociations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 504
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 505
    const/4 v0, 0x0

    return-object v0

    .line 507
    :cond_6
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefault()Landroid/telephony/SmsManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1637
    sget-object v0, Landroid/telephony/SmsManager;->DEFAULT_INSTANCE:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static whitelist getDefaultSmsSubscriptionId()I
    .registers 2

    .line 2315
    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()I

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_a

    return v0

    .line 2318
    :catch_a
    move-exception v1

    .line 2319
    return v0

    .line 2316
    :catch_c
    move-exception v1

    .line 2317
    return v0
.end method

.method private static greylist-max-o getISmsService()Lcom/android/internal/telephony/ISms;
    .registers 1

    .line 1876
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .registers 2

    .line 1868
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1869
    if-eqz v0, :cond_7

    .line 1872
    return-object v0

    .line 1870
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Sms is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .line 1836
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1837
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1838
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1834
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1839
    if-eqz v0, :cond_13

    .line 1842
    return-object v0

    .line 1840
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find Telephony Service."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 490
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 491
    const/4 v0, 0x0

    return-object v0

    .line 493
    :cond_6
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getPackagesWithCarrierPrivileges(Landroid/content/Context;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3912
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 3913
    if-nez p0, :cond_10

    .line 3914
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    .line 3916
    :cond_10
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPackagesWithCarrierPrivileges()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;
    .registers 5

    .line 1652
    sget-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1653
    :try_start_3
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1655
    sget-object v2, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SmsManager;

    .line 1656
    if-nez v2, :cond_20

    .line 1657
    new-instance v2, Landroid/telephony/SmsManager;

    invoke-direct {v2, p0, p1}, Landroid/telephony/SmsManager;-><init>(Landroid/content/Context;I)V

    .line 1658
    sget-object p0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    :cond_20
    monitor-exit v0

    return-object v2

    .line 1661
    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public static whitelist getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1682
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSmsOtpAppOpPackages(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3890
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 3891
    const/16 v0, 0xa8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AppOpsManager;->getPackagesWithNonDefaultUidMode(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSmsOtpTrustedPackages(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3754
    if-eqz p1, :cond_6

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne p1, v0, :cond_a

    .line 3755
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    .line 3757
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 3758
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3759
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3762
    :try_start_1c
    const-string v5, "getSmsOtpTrustedPackagess"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3764
    sget-object v5, Landroid/telephony/SmsManager;->sSystemPkgs:Ljava/util/Set;

    if-nez v5, :cond_53

    .line 3765
    const-string v5, "getSmsOtpTrustedPackages_systemApps"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3766
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    sput-object v5, Landroid/telephony/SmsManager;->sSystemPkgs:Ljava/util/Set;

    .line 3767
    const v5, 0x5ca200

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 3768
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 3769
    sget-object v7, Landroid/telephony/SmsManager;->sSystemPkgs:Ljava/util/Set;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3770
    goto :goto_3c

    .line 3771
    :cond_50
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3773
    :cond_53
    sget-object v5, Landroid/telephony/SmsManager;->sSystemPkgs:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3776
    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->getTrustedOtpSmsRolePackages(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3779
    const-string p1, "android.permission.RECEIVE_SENSITIVE_NOTIFICATIONS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 3781
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 3782
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3783
    goto :goto_6d

    .line 3786
    :cond_7f
    invoke-static {p0}, Landroid/telephony/SmsManager;->getPackagesWithCarrierPrivileges(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3790
    invoke-static {p0}, Landroid/telephony/SmsManager;->getAllCdmAssociations(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 3791
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3792
    goto :goto_8e

    .line 3795
    :cond_a2
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsOtpAppOpPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_a9
    .catchall {:try_start_1c .. :try_end_a9} :catchall_b1

    .line 3797
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3798
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3799
    nop

    .line 3800
    return-object v2

    .line 3797
    :catchall_b1
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3798
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3799
    throw p0
.end method

.method private static blacklist getTrustedOtpSmsRolePackages(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3867
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    .line 3868
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3869
    sget-object v1, Landroid/telephony/SmsManager;->SMS_OTP_READING_ROLES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3870
    invoke-virtual {p0, v2, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 3871
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3872
    goto :goto_13

    .line 3873
    :cond_27
    return-object v0
.end method

.method private static blacklist hasSmsOtpAppOp(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    .line 3882
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 3883
    const/16 v0, 0xa8

    invoke-virtual {p0, v0, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static blacklist isAppTrustedForSmsOtp(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 9

    .line 3816
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3818
    :try_start_4
    const-string v2, "isAppTrustedForSmsOtp"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3819
    nop

    .line 3820
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 3822
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.permission.RECEIVE_SENSITIVE_NOTIFICATIONS"

    .line 3823
    invoke-virtual {v2, v4, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_a9

    const/4 v4, 0x1

    if-nez v2, :cond_28

    .line 3825
    nop

    .line 3859
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3825
    return v4

    .line 3828
    :cond_28
    :try_start_28
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v2
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_a9

    if-eqz v2, :cond_3e

    .line 3829
    nop

    .line 3859
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3829
    return v4

    .line 3833
    :cond_3e
    :try_start_3e
    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_a9

    if-eqz v2, :cond_4c

    .line 3834
    nop

    .line 3859
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3834
    return v4

    .line 3838
    :cond_4c
    :try_start_4c
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsManager;->isTrustedOtpSmsRoleHolder(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_a9

    if-eqz v2, :cond_5a

    .line 3839
    nop

    .line 3859
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3839
    return v4

    .line 3843
    :cond_5a
    :try_start_5a
    invoke-static {p0}, Landroid/telephony/SmsManager;->getPackagesWithCarrierPrivileges(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_a9

    if-eqz v2, :cond_6c

    .line 3844
    nop

    .line 3859
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3844
    return v4

    .line 3849
    :cond_6c
    :try_start_6c
    invoke-static {p0}, Landroid/telephony/SmsManager;->getAllCdmAssociations(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/AssociationInfo;

    .line 3850
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_a9

    if-eqz v5, :cond_92

    .line 3851
    nop

    .line 3859
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3851
    return v4

    .line 3853
    :cond_92
    goto :goto_74

    .line 3855
    :cond_93
    :try_start_93
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsManager;->hasSmsOtpAppOp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_a9

    if-eqz p0, :cond_a1

    .line 3856
    nop

    .line 3859
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3856
    return v4

    .line 3859
    :cond_a1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3861
    nop

    .line 3862
    return v3

    .line 3859
    :catchall_a9
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3861
    throw p0
.end method

.method private static blacklist isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 3896
    sget-object v0, Landroid/telephony/SmsManager;->sSystemPkgs:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    sget-object v0, Landroid/telephony/SmsManager;->sSystemPkgs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3897
    return v1

    .line 3898
    :cond_e
    sget-object v0, Landroid/telephony/SmsManager;->sSystemPkgs:Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v0, :cond_20

    .line 3900
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0x5ca200

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1d} :catch_1e

    .line 3902
    return v1

    .line 3903
    :catch_1e
    move-exception p0

    .line 3904
    return v2

    .line 3907
    :cond_20
    return v2
.end method

.method private static blacklist isTrustedOtpSmsRoleHolder(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 3

    .line 3877
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/telephony/SmsManager;->getTrustedOtpSmsRolePackages(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object p0

    .line 3878
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 3877
    return p0
.end method

.method private static blacklist notifySmsError(Landroid/app/PendingIntent;I)V
    .registers 2

    .line 1846
    if-eqz p0, :cond_7

    .line 1848
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1851
    goto :goto_7

    .line 1849
    :catch_6
    move-exception p0

    .line 1853
    :cond_7
    :goto_7
    return-void
.end method

.method private static blacklist notifySmsError(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .line 1856
    if-eqz p0, :cond_16

    .line 1857
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1858
    invoke-static {v0, p1}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 1859
    goto :goto_6

    .line 1861
    :cond_16
    return-void
.end method

.method private blacklist resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V
    .registers 7

    .line 1757
    const-string v0, "SmsManager"

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 1758
    nop

    .line 1760
    const/4 v2, 0x0

    :try_start_8
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 1761
    if-eqz v3, :cond_13

    .line 1770
    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ISms;->isSmsSimPickActivityNeeded(I)Z

    move-result v3
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_15

    goto :goto_14

    .line 1761
    :cond_13
    move v3, v2

    .line 1774
    :goto_14
    goto :goto_1d

    .line 1772
    :catch_15
    move-exception v3

    .line 1773
    const-string/jumbo v4, "resolveSubscriptionForOperation"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1775
    :goto_1d
    if-nez v3, :cond_23

    .line 1776
    invoke-direct {p0, p1, v1, v2}, Landroid/telephony/SmsManager;->sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    .line 1777
    return-void

    .line 1780
    :cond_23
    const-string/jumbo v2, "resolveSubscriptionForOperation isSmsSimPickActivityNeeded is true for calling package. "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :try_start_29
    invoke-static {}, Landroid/telephony/SmsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    new-instance v3, Landroid/telephony/SmsManager$6;

    invoke-direct {v3, p0, p1}, Landroid/telephony/SmsManager$6;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    const/4 v4, 0x0

    invoke-interface {v2, v4, v4, v3}, Lcom/android/internal/telephony/ITelephony;->enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_36} :catch_37

    .line 1802
    goto :goto_41

    .line 1795
    :catch_37
    move-exception v2

    .line 1796
    const-string v3, "Unable to launch activity"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1801
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SmsManager;->sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    .line 1803
    :goto_41
    return-void
.end method

.method private greylist-max-o sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZI)V"
        }
    .end annotation

    .line 1403
    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_119

    .line 1406
    if-eqz p3, :cond_111

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_111

    .line 1410
    const/4 v2, -0x1

    const-string v13, "SmsManager"

    if-ltz v0, :cond_1e

    const/4 v4, 0x3

    if-le v0, v4, :cond_1c

    goto :goto_1e

    :cond_1c
    move v8, v0

    goto :goto_35

    .line 1411
    :cond_1e
    :goto_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Priority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    move v8, v2

    .line 1415
    :goto_35
    const/4 v0, 0x5

    if-lt v1, v0, :cond_41

    const v0, 0x9b0a0

    if-le v1, v0, :cond_3e

    goto :goto_41

    :cond_3e
    move/from16 v23, v1

    goto :goto_59

    .line 1416
    :cond_41
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Validity Period "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    move/from16 v23, v2

    .line 1420
    :goto_59
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_c9

    .line 1421
    nop

    .line 1422
    nop

    .line 1423
    if-eqz p6, :cond_7f

    .line 1424
    new-instance v0, Landroid/telephony/SmsManager$4;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, v23

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager$4;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V

    move-object v14, v1

    invoke-direct {v14, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    goto :goto_c8

    .line 1450
    :cond_7f
    move-object/from16 v14, p0

    :try_start_81
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1451
    if-eqz v0, :cond_a4

    .line 1452
    invoke-virtual {v14}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8b} :catch_a5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p6

    move/from16 v11, p8

    move v10, v8

    move/from16 v12, v23

    move-object/from16 v8, p5

    :try_start_9e
    invoke-interface/range {v0 .. v12}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_a4

    .line 1457
    :catch_a2
    move-exception v0

    goto :goto_a8

    .line 1461
    :cond_a4
    :goto_a4
    goto :goto_c8

    .line 1457
    :catch_a5
    move-exception v0

    move-object/from16 v7, p4

    .line 1458
    :goto_a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMultipartTextMessageInternal (no persist): Couldn\'t send SMS - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1459
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1458
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/16 v0, 0x1f

    invoke-static {v7, v0}, Landroid/telephony/SmsManager;->notifySmsError(Ljava/util/List;I)V

    .line 1463
    :goto_c8
    goto :goto_110

    .line 1464
    :cond_c9
    move-object/from16 v14, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v10, v8

    move-object/from16 v8, p5

    .line 1465
    nop

    .line 1466
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v7, :cond_e6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e6

    .line 1467
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    move-object/from16 v18, v2

    goto :goto_e8

    .line 1469
    :cond_e6
    move-object/from16 v18, v0

    :goto_e8
    if-eqz v8, :cond_f9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f9

    .line 1470
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v19, v0

    goto :goto_fb

    .line 1472
    :cond_f9
    move-object/from16 v19, v0

    :goto_fb
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move/from16 v20, p6

    move/from16 v22, p8

    move/from16 v21, v10

    invoke-direct/range {v14 .. v23}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 1476
    :goto_110
    return-void

    .line 1407
    :cond_111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1404
    :cond_119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 1172
    if-eqz p3, :cond_c1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c1

    .line 1176
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_85

    .line 1187
    if-eqz p6, :cond_31

    .line 1188
    new-instance v0, Landroid/telephony/SmsManager$3;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Landroid/telephony/SmsManager$3;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V

    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    goto/16 :goto_c0

    .line 1211
    :cond_31
    :try_start_31
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1212
    if-eqz v0, :cond_84

    .line 1213
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3b} :catch_50

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide/from16 v10, p9

    :try_start_4a
    invoke-interface/range {v0 .. v11}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_84

    .line 1217
    :catch_4e
    move-exception v0

    goto :goto_53

    :catch_50
    move-exception v0

    move-object/from16 v7, p4

    :goto_53
    move-object p1, v0

    .line 1218
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendMultipartTextMessageInternal: Couldn\'t send SMS - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1219
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static/range {p9 .. p10}, Landroid/telephony/SmsManager;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1218
    const-string p2, "SmsManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/16 p1, 0x1f

    invoke-static {v7, p1}, Landroid/telephony/SmsManager;->notifySmsError(Ljava/util/List;I)V

    .line 1221
    :cond_84
    :goto_84
    goto :goto_c0

    .line 1224
    :cond_85
    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 1225
    nop

    .line 1226
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz v7, :cond_9c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9c

    .line 1227
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    move-object v5, v3

    goto :goto_9d

    .line 1229
    :cond_9c
    move-object v5, v0

    :goto_9d
    if-eqz v8, :cond_ab

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_ab

    .line 1230
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1232
    :cond_ab
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object v6, v0

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1235
    :goto_c0
    return-void

    .line 1173
    :cond_c1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid message body"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1170
    :cond_c9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid destinationAddress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V
    .registers 6

    .line 1814
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1815
    invoke-interface {p1, p2}, Landroid/telephony/SmsManager$SubscriptionResolverResult;->onSuccess(I)V

    .line 1816
    return-void

    .line 1819
    :cond_a
    const-wide/32 v0, 0x8a6c688

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_19

    if-nez p3, :cond_19

    .line 1825
    invoke-interface {p1, p2}, Landroid/telephony/SmsManager$SubscriptionResolverResult;->onSuccess(I)V

    goto :goto_1c

    .line 1829
    :cond_19
    invoke-interface {p1}, Landroid/telephony/SmsManager$SubscriptionResolverResult;->onFailure()V

    .line 1831
    :goto_1c
    return-void
.end method

.method private greylist-max-o sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .registers 27

    .line 857
    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c3

    .line 861
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bb

    .line 865
    const/4 v2, -0x1

    const-string v3, "SmsManager"

    if-ltz v0, :cond_1b

    const/4 v4, 0x3

    if-le v0, v4, :cond_19

    goto :goto_1b

    :cond_19
    move v12, v0

    goto :goto_32

    .line 866
    :cond_1b
    :goto_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Priority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    move v12, v2

    .line 870
    :goto_32
    const/4 v0, 0x5

    if-lt v1, v0, :cond_3d

    const v0, 0x9b0a0

    if-le v1, v0, :cond_3b

    goto :goto_3d

    :cond_3b
    move v14, v1

    goto :goto_54

    .line 871
    :cond_3d
    :goto_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Validity Period "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    move v14, v2

    .line 875
    :goto_54
    nop

    .line 876
    nop

    .line 887
    if-eqz p6, :cond_71

    .line 888
    new-instance v4, Landroid/telephony/SmsManager$2;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v13, p8

    invoke-direct/range {v4 .. v14}, Landroid/telephony/SmsManager$2;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    invoke-direct {v5, v4}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    goto :goto_ba

    .line 914
    :cond_71
    move-object/from16 v5, p0

    :try_start_73
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v4

    .line 915
    if-eqz v4, :cond_96

    .line 916
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v5

    .line 917
    invoke-direct/range {p0 .. p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 916
    const/4 v6, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v13, p6

    move/from16 v15, p8

    move/from16 v16, v14

    move v14, v12

    move-object/from16 v12, p5

    invoke-interface/range {v4 .. v16}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_96} :catch_97

    .line 926
    :cond_96
    goto :goto_ba

    .line 922
    :catch_97
    move-exception v0

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendTextMessageInternal(no persist): Couldn\'t send SMS, exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 924
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/16 v0, 0x1f

    move-object/from16 v9, p4

    invoke-static {v9, v0}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 928
    :goto_ba
    return-void

    .line 862
    :cond_bb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :cond_c3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 25

    .line 754
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 758
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 772
    if-eqz p6, :cond_29

    .line 773
    new-instance v1, Landroid/telephony/SmsManager$1;

    move-object v2, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-wide/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Landroid/telephony/SmsManager$1;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    invoke-direct {p0, v1}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    goto :goto_7a

    .line 796
    :cond_29
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 798
    :try_start_2d
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-wide/from16 v12, p9

    invoke-interface/range {v2 .. v13}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_45} :catch_46

    .line 805
    goto :goto_7a

    .line 801
    :catch_46
    move-exception v0

    move-object p1, v0

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendTextMessageInternal (no persist): Couldn\'t send SMS, exception - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 803
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static/range {p9 .. p10}, Landroid/telephony/SmsManager;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 802
    const-string v0, "SmsManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/16 p1, 0x1f

    move-object/from16 v8, p4

    invoke-static {v8, p1}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 807
    :goto_7a
    return-void

    .line 759
    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid message body"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 755
    :cond_83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid destinationAddress"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist checkSmsShortCodeDestination(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 3500
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3501
    if-eqz v0, :cond_13

    .line 3502
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return p1

    .line 3507
    :cond_13
    goto :goto_1d

    .line 3505
    :catch_14
    move-exception v0

    move-object p1, v0

    .line 3506
    const-string p2, "SmsManager"

    const-string v0, "checkSmsShortCodeDestination() RemoteException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3508
    :goto_1d
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist clearStorageMonitorMemoryStatusOverride()V
    .registers 3

    .line 3411
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3412
    if-eqz v0, :cond_d

    .line 3413
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->clearStorageMonitorMemoryStatusOverride(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3417
    :cond_d
    goto :goto_12

    .line 3415
    :catch_e
    move-exception v0

    .line 3416
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3418
    :goto_12
    return-void
.end method

.method public blacklist copyMessageToIcc([B[BI)Z
    .registers 12

    .line 1909
    nop

    .line 1911
    if-eqz p2, :cond_1a

    .line 1915
    const/4 v1, 0x0

    :try_start_4
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1916
    if-eqz v2, :cond_17

    .line 1917
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v4, 0x0

    move-object v7, p1

    move-object v6, p2

    move v5, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_18

    move v1, p1

    .line 1923
    :cond_17
    goto :goto_19

    .line 1921
    :catch_18
    move-exception v0

    .line 1925
    :goto_19
    return v1

    .line 1912
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "pdu is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist createAppSpecificSmsToken(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 5

    .line 3249
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3250
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1}, Lcom/android/internal/telephony/ISms;->createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    return-object p1

    .line 3253
    :catch_e
    move-exception p1

    .line 3254
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3255
    return-object v0
.end method

.method public whitelist createAppSpecificSmsTokenWithPackageInfo(Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 6

    .line 3373
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3374
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/android/internal/telephony/ISms;->createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    return-object p1

    .line 3377
    :catch_e
    move-exception p1

    .line 3378
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3379
    return-object v0
.end method

.method public whitelist createForSubscriptionId(I)Landroid/telephony/SmsManager;
    .registers 3

    .line 1700
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object p1

    return-object p1
.end method

.method public greylist deleteMessageFromIcc(I)Z
    .registers 10

    .line 1952
    nop

    .line 1955
    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1956
    if-eqz v2, :cond_15

    .line 1957
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_16

    move v1, p1

    .line 1963
    :cond_15
    goto :goto_17

    .line 1961
    :catch_16
    move-exception v0

    .line 1965
    :goto_17
    return v1
.end method

.method public whitelist disableCellBroadcastRange(III)Z
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2171
    const-string v0, "disableCellBroadcastRange: "

    const-string v1, "SmsManager"

    .line 2173
    if-lt p2, p1, :cond_41

    .line 2177
    const/4 v2, 0x0

    :try_start_7
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 2178
    if-eqz v3, :cond_3b

    .line 2181
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 2182
    invoke-interface {v3, v4, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v2

    .line 2184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v2, :cond_24

    const-string/jumbo p2, "succeeded"

    goto :goto_26

    :cond_24
    const-string p2, "failed"

    :goto_26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " at calling disableCellBroadcastRangeForSubscriber. subId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_3b} :catch_3c

    .line 2190
    :cond_3b
    goto :goto_40

    .line 2187
    :catch_3c
    move-exception p1

    .line 2188
    invoke-static {v1, v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2192
    :goto_40
    return v2

    .line 2174
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endMessageId < startMessageId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 996
    if-eqz p1, :cond_b

    .line 999
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 997
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "text is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 14

    .line 3039
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    .line 3041
    return-void
.end method

.method public whitelist downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .registers 17

    .line 3090
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 3093
    if-eqz p3, :cond_23

    .line 3096
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/telephony/MmsManager;

    .line 3097
    if-eqz v2, :cond_22

    .line 3098
    new-instance v0, Landroid/telephony/SmsManager$8;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SmsManager$8;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/MmsManager;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    .line 3111
    :cond_22
    return-void

    .line 3094
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Uri contentUri null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3091
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty MMS location URL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist enableCellBroadcastRange(III)Z
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2105
    const-string v0, "enableCellBroadcastRange: "

    const-string v1, "SmsManager"

    .line 2106
    if-lt p2, p1, :cond_41

    .line 2110
    const/4 v2, 0x0

    :try_start_7
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 2111
    if-eqz v3, :cond_3b

    .line 2114
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 2115
    invoke-interface {v3, v4, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v2

    .line 2117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v2, :cond_24

    const-string/jumbo p2, "succeeded"

    goto :goto_26

    :cond_24
    const-string p2, "failed"

    :goto_26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " at calling enableCellBroadcastRangeForSubscriber. subId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_3b} :catch_3c

    .line 2123
    :cond_3b
    goto :goto_40

    .line 2120
    :catch_3c
    move-exception p1

    .line 2121
    invoke-static {v1, v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2125
    :goto_40
    return v2

    .line 2107
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endMessageId < startMessageId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist getAllMessagesFromIcc()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 2045
    nop

    .line 2048
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2049
    if-eqz v1, :cond_11

    .line 2050
    nop

    .line 2051
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2050
    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_12

    .line 2056
    :cond_11
    goto :goto_13

    .line 2054
    :catch_12
    move-exception v1

    .line 2058
    :goto_13
    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCarrierConfigValues()Landroid/os/Bundle;
    .registers 3

    .line 3209
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3210
    if-eqz v0, :cond_f

    .line 3211
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->getCarrierConfigValuesForSubscriber(I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    .line 3215
    :cond_f
    goto :goto_11

    .line 3213
    :catch_10
    move-exception v0

    .line 3216
    :goto_11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public greylist-max-o getImsSmsFormat()Ljava/lang/String;
    .registers 4

    .line 2285
    const-string/jumbo v0, "unknown"

    .line 2287
    :try_start_3
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2288
    if-eqz v1, :cond_11

    .line 2289
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_12

    .line 2293
    :cond_11
    goto :goto_13

    .line 2291
    :catch_12
    move-exception v1

    .line 2294
    :goto_13
    return-object v0
.end method

.method public blacklist getMessagesFromIcc()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 2032
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPremiumSmsConsent(Ljava/lang/String;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3607
    nop

    .line 3609
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3610
    if-eqz v1, :cond_d

    .line 3611
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_e

    move v0, p1

    .line 3615
    :cond_d
    goto :goto_16

    .line 3613
    :catch_e
    move-exception p1

    .line 3614
    const-string v1, "SmsManager"

    const-string v2, "getPremiumSmsPermission() RemoteException"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3616
    :goto_16
    return v0
.end method

.method public whitelist getSmsCapacityOnIcc()I
    .registers 5

    .line 2369
    nop

    .line 2371
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2372
    if-eqz v1, :cond_10

    .line 2373
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->getSmsCapacityOnIccForSubscriber(I)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_11

    .line 2377
    :cond_10
    goto :goto_19

    .line 2375
    :catch_11
    move-exception v1

    .line 2376
    const-string v2, "SmsManager"

    const-string v3, "getSmsCapacityOnIcc() RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2378
    :goto_19
    return v0
.end method

.method public whitelist getSmsMessagesForFinancialApp(Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/telephony/SmsManager$FinancialSmsCallback;)V
    .registers 4

    .line 3295
    return-void
.end method

.method public whitelist getSmscAddress()Ljava/lang/String;
    .registers 4

    .line 3537
    nop

    .line 3540
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3541
    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 3542
    nop

    .line 3543
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 3542
    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ISms;->getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    .line 3547
    :cond_11
    nop

    .line 3548
    return-object v1

    .line 3545
    :catch_13
    move-exception v0

    .line 3546
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getSmscIdentity()Landroid/net/Uri;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3694
    const-string v0, "SmsManager"

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3696
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3697
    if-eqz v2, :cond_25

    .line 3702
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSmscIdentity(II)Landroid/net/Uri;

    move-result-object v1

    .line 3703
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3705
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSmscIdentity(II)Landroid/net/Uri;

    move-result-object v1

    .line 3710
    :cond_24
    goto :goto_4c

    .line 3698
    :cond_25
    const-string v2, "getSmscIdentity(): IPhoneSubInfo instance is NULL"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Telephony service is not available"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_32} :catch_32

    .line 3707
    :catch_32
    move-exception v2

    .line 3708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmscIdentity(): Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3711
    :goto_4c
    return-object v1
.end method

.method public whitelist getSubscriptionId()I
    .registers 3

    .line 1731
    :try_start_0
    iget v0, p0, Landroid/telephony/SmsManager;->mSubId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_10

    .line 1732
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()I

    move-result v0

    goto :goto_12

    :cond_10
    iget v0, p0, Landroid/telephony/SmsManager;->mSubId:I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 1731
    :goto_12
    return v0

    .line 1733
    :catch_13
    move-exception v0

    .line 1734
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getWapMessageSize(Ljava/lang/String;)J
    .registers 4

    .line 3728
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3729
    if-eqz v0, :cond_b

    .line 3730
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getWapMessageSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 3732
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not acquire ISms service."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 3734
    :catch_13
    move-exception p1

    .line 3735
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6

    .line 965
    const-string v0, "3gpp"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "3gpp2"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 967
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid pdu format. format must be either 3gpp or 3gpp2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 971
    :cond_19
    :goto_19
    :try_start_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 972
    if-eqz v0, :cond_27

    .line 973
    nop

    .line 974
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 973
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_27} :catch_28

    .line 984
    :cond_27
    goto :goto_34

    .line 976
    :catch_28
    move-exception p1

    .line 978
    if-eqz p3, :cond_33

    .line 979
    const/16 p1, 0x1f

    :try_start_2d
    invoke-virtual {p3, p1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_30
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_33

    .line 981
    :catch_31
    move-exception p1

    goto :goto_34

    .line 983
    :cond_33
    :goto_33
    nop

    .line 985
    :goto_34
    return-void
.end method

.method public greylist-max-o isImsSmsSupported()Z
    .registers 4

    .line 2251
    nop

    .line 2253
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2254
    if-eqz v1, :cond_10

    .line 2255
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_11

    .line 2259
    :cond_10
    goto :goto_12

    .line 2257
    :catch_11
    move-exception v1

    .line 2260
    :goto_12
    return v0
.end method

.method public greylist isSMSPromptEnabled()Z
    .registers 3

    .line 2331
    nop

    .line 2333
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2334
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->isSMSPromptEnabled()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_a} :catch_b

    return v0

    .line 2337
    :catch_b
    move-exception v1

    .line 2338
    return v0

    .line 2335
    :catch_d
    move-exception v1

    .line 2336
    return v0
.end method

.method public whitelist resetAllCellBroadcastRanges()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3660
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3661
    if-eqz v0, :cond_d

    .line 3664
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->resetAllCellBroadcastRanges(I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3668
    :cond_d
    goto :goto_12

    .line 3666
    :catch_e
    move-exception v0

    .line 3667
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3669
    :goto_12
    return-void
.end method

.method public whitelist sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 16

    .line 1573
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1577
    if-eqz p4, :cond_1b

    array-length v0, p4

    if-eqz v0, :cond_1b

    .line 1581
    new-instance v1, Landroid/telephony/SmsManager$5;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/telephony/SmsManager$5;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    .line 1598
    return-void

    .line 1578
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid message data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1574
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid destinationAddress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 14

    .line 2930
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    .line 2932
    return-void
.end method

.method public whitelist sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .registers 17

    .line 2979
    if-eqz p2, :cond_1d

    .line 2982
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/telephony/MmsManager;

    .line 2983
    if-eqz v2, :cond_1c

    .line 2984
    new-instance v0, Landroid/telephony/SmsManager$7;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SmsManager$7;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/MmsManager;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    .line 2997
    :cond_1c
    return-void

    .line 2980
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Uri contentUri null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 1108
    nop

    .line 1109
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1110
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 1108
    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1111
    return-void
.end method

.method public greylist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;IZI)V"
        }
    .end annotation

    .line 1394
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V

    .line 1397
    return-void
.end method

.method public whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;J)V"
        }
    .end annotation

    .line 1128
    nop

    .line 1129
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1130
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 1128
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1131
    return-void
.end method

.method public whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1159
    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1162
    return-void
.end method

.method public whitelist sendMultipartTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 1266
    nop

    .line 1267
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1268
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 1266
    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1269
    return-void
.end method

.method public whitelist sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 17

    .line 611
    nop

    .line 612
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 611
    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 614
    return-void
.end method

.method public greylist-max-r sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    .registers 19

    .line 747
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 749
    return-void
.end method

.method public whitelist sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;J)V
    .registers 19

    .line 634
    nop

    .line 635
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 634
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 637
    return-void
.end method

.method public whitelist sendTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 17

    .line 848
    nop

    .line 849
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 850
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 848
    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 851
    return-void
.end method

.method public whitelist setPremiumSmsConsent(Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3637
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3638
    if-eqz v0, :cond_9

    .line 3639
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 3643
    :cond_9
    goto :goto_13

    .line 3641
    :catch_a
    move-exception p1

    .line 3642
    const-string p2, "SmsManager"

    const-string/jumbo v0, "setPremiumSmsPermission() RemoteException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3644
    :goto_13
    return-void
.end method

.method public whitelist setSmscAddress(Ljava/lang/String;)Z
    .registers 5

    .line 3578
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3579
    if-eqz v0, :cond_11

    .line 3580
    nop

    .line 3581
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 3580
    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISms;->setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_14

    return p1

    .line 3585
    :cond_11
    nop

    .line 3586
    const/4 p1, 0x0

    return p1

    .line 3583
    :catch_14
    move-exception p1

    .line 3584
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist setStorageMonitorMemoryStatusOverride(Z)V
    .registers 4

    .line 3392
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3393
    if-eqz v0, :cond_d

    .line 3394
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ISms;->setStorageMonitorMemoryStatusOverride(IZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3399
    :cond_d
    goto :goto_12

    .line 3397
    :catch_e
    move-exception p1

    .line 3398
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3400
    :goto_12
    return-void
.end method

.method public greylist updateMessageOnIcc(II[B)Z
    .registers 12

    .line 1995
    nop

    .line 1998
    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1999
    if-eqz v2, :cond_15

    .line 2000
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_16

    move v1, p1

    .line 2006
    :cond_15
    goto :goto_17

    .line 2004
    :catch_16
    move-exception v0

    .line 2008
    :goto_17
    return v1
.end method
