.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsManager$SmsShortCodeCategory;,
        Landroid/telephony/SmsManager$FinancialSmsCallback;,
        Landroid/telephony/SmsManager$Result;,
        Landroid/telephony/SmsManager$StatusOnIcc;,
        Landroid/telephony/SmsManager$SubscriptionResolverResult;,
        Landroid/telephony/SmsManager$PremiumSmsConsent;
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

.field public static final whitelist MMS_ERROR_NO_DATA_NETWORK:I = 0x8

.field public static final whitelist MMS_ERROR_RETRY:I = 0x6

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

.field public static final whitelist RESULT_RIL_ACCESS_BARRED:I = 0x7a

.field public static final whitelist RESULT_RIL_BLOCKED_DUE_TO_CALL:I = 0x7b

.field public static final whitelist RESULT_RIL_CANCELLED:I = 0x77

.field public static final whitelist RESULT_RIL_ENCODING_ERR:I = 0x6d

.field public static final whitelist RESULT_RIL_GENERIC_ERROR:I = 0x7c

.field public static final whitelist RESULT_RIL_INTERNAL_ERR:I = 0x71

.field public static final whitelist RESULT_RIL_INVALID_ARGUMENTS:I = 0x68

.field public static final whitelist RESULT_RIL_INVALID_MODEM_STATE:I = 0x73

.field public static final whitelist RESULT_RIL_INVALID_SMSC_ADDRESS:I = 0x6e

.field public static final whitelist RESULT_RIL_INVALID_SMS_FORMAT:I = 0x6b

.field public static final whitelist RESULT_RIL_INVALID_STATE:I = 0x67

.field public static final whitelist RESULT_RIL_MODEM_ERR:I = 0x6f

.field public static final whitelist RESULT_RIL_NETWORK_ERR:I = 0x70

.field public static final whitelist RESULT_RIL_NETWORK_NOT_READY:I = 0x74

.field public static final whitelist RESULT_RIL_NETWORK_REJECT:I = 0x66

.field public static final whitelist RESULT_RIL_NO_MEMORY:I = 0x69

.field public static final whitelist RESULT_RIL_NO_RESOURCES:I = 0x76

.field public static final whitelist RESULT_RIL_OPERATION_NOT_ALLOWED:I = 0x75

.field public static final whitelist RESULT_RIL_RADIO_NOT_AVAILABLE:I = 0x64

.field public static final whitelist RESULT_RIL_REQUEST_NOT_SUPPORTED:I = 0x72

.field public static final whitelist RESULT_RIL_REQUEST_RATE_LIMITED:I = 0x6a

.field public static final whitelist RESULT_RIL_SIMULTANEOUS_SMS_AND_CALL_NOT_ALLOWED:I = 0x79

.field public static final whitelist RESULT_RIL_SIM_ABSENT:I = 0x78

.field public static final whitelist RESULT_RIL_SMS_SEND_FAIL_RETRY:I = 0x65

.field public static final whitelist RESULT_RIL_SYSTEM_ERR:I = 0x6c

.field public static final whitelist RESULT_SMS_BLOCKED_DURING_EMERGENCY:I = 0x1d

.field public static final whitelist RESULT_SMS_SEND_RETRY_FAILED:I = 0x1e

.field public static final blacklist RESULT_STATUS_SUCCESS:I = 0x0

.field public static final blacklist RESULT_STATUS_TIMEOUT:I = 0x1

.field public static final whitelist RESULT_SYSTEM_ERROR:I = 0xf

.field public static final whitelist RESULT_UNEXPECTED_EVENT_STOP_SENDING:I = 0x1c

.field public static final blacklist SMS_CATEGORY_FREE_SHORT_CODE:I = 0x1

.field public static final blacklist SMS_CATEGORY_NOT_SHORT_CODE:I = 0x0

.field public static final blacklist SMS_CATEGORY_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x3

.field public static final blacklist SMS_CATEGORY_PREMIUM_SHORT_CODE:I = 0x4

.field public static final blacklist SMS_CATEGORY_STANDARD_SHORT_CODE:I = 0x2

.field public static final blacklist SMS_MESSAGE_PERIOD_NOT_SPECIFIED:I = -0x1

.field public static final blacklist SMS_MESSAGE_PRIORITY_NOT_SPECIFIED:I = -0x1

.field public static final greylist-max-o SMS_RECORD_LENGTH:I = 0xb0

.field public static final whitelist STATUS_ON_ICC_FREE:I = 0x0

.field public static final whitelist STATUS_ON_ICC_READ:I = 0x1

.field public static final whitelist STATUS_ON_ICC_SENT:I = 0x5

.field public static final whitelist STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final whitelist STATUS_ON_ICC_UNSENT:I = 0x7

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


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private greylist-max-p mSubId:I


# direct methods
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
    .registers 2

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    .line 91
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    sput-object v0, Landroid/telephony/SmsManager;->DEFAULT_INSTANCE:Landroid/telephony/SmsManager;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1533
    iput-object p1, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    .line 1534
    iput p2, p0, Landroid/telephony/SmsManager;->mSubId:I

    .line 1535
    return-void
.end method

.method private greylist-max-o createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 9
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

    .line 2030
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2031
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_2c

    .line 2032
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2033
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_2c

    .line 2034
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsRawData;

    .line 2036
    .local v3, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v3, :cond_29

    .line 2037
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v5

    .line 2038
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v6

    .line 2037
    invoke-static {v4, v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 2039
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_29

    .line 2040
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2033
    .end local v3    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2045
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2c
    return-object v0
.end method

.method private static blacklist formatCrossStackMessageId(J)Ljava/lang/String;
    .registers 4
    .param p0, "id"    # J

    .line 3284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{x-message-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 363
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 364
    const/4 v0, 0x0

    return-object v0

    .line 366
    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefault()Landroid/telephony/SmsManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1468
    sget-object v0, Landroid/telephony/SmsManager;->DEFAULT_INSTANCE:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static whitelist getDefaultSmsSubscriptionId()I
    .registers 2

    .line 2129
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

    .line 2132
    :catch_a
    move-exception v1

    .line 2133
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0

    .line 2130
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_c
    move-exception v1

    .line 2131
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private static greylist-max-o getISmsService()Lcom/android/internal/telephony/ISms;
    .registers 1

    .line 1703
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .registers 3

    .line 1695
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1696
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_7

    .line 1699
    return-object v0

    .line 1697
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sms is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .line 1663
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1664
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1665
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1661
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1666
    .local v0, "binder":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 1669
    return-object v0

    .line 1667
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 350
    const/4 v0, 0x0

    return-object v0

    .line 352
    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 1483
    sget-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1484
    :try_start_3
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1486
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Context;Ljava/lang/Integer;>;"
    sget-object v2, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SmsManager;

    .line 1487
    .local v3, "smsManager":Landroid/telephony/SmsManager;
    if-nez v3, :cond_1f

    .line 1488
    new-instance v4, Landroid/telephony/SmsManager;

    invoke-direct {v4, p0, p1}, Landroid/telephony/SmsManager;-><init>(Landroid/content/Context;I)V

    move-object v3, v4

    .line 1489
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    :cond_1f
    monitor-exit v0

    return-object v3

    .line 1492
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Context;Ljava/lang/Integer;>;"
    .end local v3    # "smsManager":Landroid/telephony/SmsManager;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public static whitelist getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;
    .registers 2
    .param p0, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1512
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist notifySmsError(Landroid/app/PendingIntent;I)V
    .registers 3
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "error"    # I

    .line 1673
    if-eqz p0, :cond_7

    .line 1675
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1678
    goto :goto_7

    .line 1676
    :catch_6
    move-exception v0

    .line 1680
    :cond_7
    :goto_7
    return-void
.end method

.method private static blacklist notifySmsError(Ljava/util/List;I)V
    .registers 4
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .line 1683
    .local p0, "pendingIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    if-eqz p0, :cond_16

    .line 1684
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1685
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {v1, p1}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 1686
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_6

    .line 1688
    :cond_16
    return-void
.end method

.method private blacklist resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V
    .registers 8
    .param p1, "resolverResult"    # Landroid/telephony/SmsManager$SubscriptionResolverResult;

    .line 1582
    const-string v0, "SmsManager"

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 1583
    .local v1, "subId":I
    const/4 v2, 0x0

    .line 1585
    .local v2, "isSmsSimPickActivityNeeded":Z
    :try_start_7
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 1588
    .local v3, "iSms":Lcom/android/internal/telephony/ISms;
    invoke-static {}, Landroid/telephony/TelephonyBaseUtilsStub;->isMiuiRom()Z

    move-result v4

    if-nez v4, :cond_18

    if-eqz v3, :cond_18

    .line 1597
    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ISms;->isSmsSimPickActivityNeeded(I)Z

    move-result v4
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_19

    move v2, v4

    .line 1601
    .end local v3    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_18
    goto :goto_20

    .line 1599
    :catch_19
    move-exception v3

    .line 1600
    .local v3, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "resolveSubscriptionForOperation"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1602
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_20
    if-nez v2, :cond_27

    .line 1603
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SmsManager;->sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    .line 1604
    return-void

    .line 1607
    :cond_27
    const-string/jumbo v3, "resolveSubscriptionForOperation isSmsSimPickActivityNeeded is true for calling package. "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :try_start_2d
    invoke-static {}, Landroid/telephony/SmsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    new-instance v4, Landroid/telephony/SmsManager$6;

    invoke-direct {v4, p0, p1}, Landroid/telephony/SmsManager$6;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    const/4 v5, 0x0

    invoke-interface {v3, v5, v5, v4}, Lcom/android/internal/telephony/ITelephony;->enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3a} :catch_3b

    .line 1629
    goto :goto_45

    .line 1622
    :catch_3b
    move-exception v3

    .line 1623
    .restart local v3    # "ex":Landroid/os/RemoteException;
    const-string v4, "Unable to launch activity"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1628
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SmsManager;->sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    .line 1630
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method private greylist-max-o sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .registers 37
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "persistMessage"    # Z
    .param p7, "priority"    # I
    .param p8, "expectMore"    # Z
    .param p9, "validityPeriod"    # I
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

    .line 1236
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 v13, p5

    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12f

    .line 1239
    if-eqz v15, :cond_125

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_125

    .line 1243
    const-string v2, "SmsManager"

    if-ltz v0, :cond_24

    const/4 v4, 0x3

    if-le v0, v4, :cond_21

    goto :goto_24

    :cond_21
    move/from16 v25, v0

    goto :goto_3d

    .line 1244
    :cond_24
    :goto_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Priority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const/4 v0, -0x1

    move/from16 v25, v0

    .line 1248
    .end local p7    # "priority":I
    .local v25, "priority":I
    :goto_3d
    const/4 v0, 0x5

    if-lt v1, v0, :cond_49

    const v0, 0x9b0a0

    if-le v1, v0, :cond_46

    goto :goto_49

    :cond_46
    move/from16 v26, v1

    goto :goto_62

    .line 1249
    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Validity Period "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/4 v0, -0x1

    move/from16 v26, v0

    .line 1253
    .end local p9    # "validityPeriod":I
    .local v26, "validityPeriod":I
    :goto_62
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_e4

    .line 1254
    move/from16 v9, v25

    .line 1255
    .local v9, "finalPriority":I
    move/from16 v11, v26

    .line 1256
    .local v11, "finalValidity":I
    if-eqz p6, :cond_8e

    .line 1257
    new-instance v0, Landroid/telephony/SmsManager$4;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsManager$4;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V

    move-object/from16 v3, p0

    invoke-direct {v3, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    move-object v10, v13

    move-object v1, v14

    move-object v8, v15

    goto/16 :goto_e3

    .line 1283
    :cond_8e
    move-object/from16 v3, p0

    :try_start_90
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1284
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_bb

    .line 1285
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_9a} :catch_bf

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v12, v0

    move-object v10, v13

    move v13, v1

    move-object v1, v14

    move-object v14, v4

    move-object v8, v15

    move-object v15, v5

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    move/from16 v21, p6

    move/from16 v22, v9

    move/from16 v23, p8

    move/from16 v24, v11

    :try_start_b5
    invoke-interface/range {v12 .. v24}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_be

    .line 1290
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :catch_b9
    move-exception v0

    goto :goto_c3

    .line 1284
    .restart local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_bb
    move-object v10, v13

    move-object v1, v14

    move-object v8, v15

    .line 1294
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :goto_be
    goto :goto_e3

    .line 1290
    :catch_bf
    move-exception v0

    move-object v10, v13

    move-object v1, v14

    move-object v8, v15

    .line 1291
    .local v0, "e":Landroid/os/RemoteException;
    :goto_c3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendMultipartTextMessageInternal (no persist): Couldn\'t send SMS - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1292
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1291
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/16 v2, 0x1f

    invoke-static {v1, v2}, Landroid/telephony/SmsManager;->notifySmsError(Ljava/util/List;I)V

    .line 1296
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "finalPriority":I
    .end local v11    # "finalValidity":I
    :goto_e3
    goto :goto_124

    .line 1297
    :cond_e4
    move-object/from16 v3, p0

    move-object v10, v13

    move-object v1, v14

    move-object v8, v15

    const/4 v0, 0x0

    .line 1298
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    .line 1299
    .local v2, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v4, 0x0

    if-eqz v1, :cond_fb

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_fb

    .line 1300
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/PendingIntent;

    .line 1302
    :cond_fb
    if-eqz v10, :cond_10a

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10a

    .line 1303
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Landroid/app/PendingIntent;

    .line 1305
    :cond_10a
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v8, v0

    move-object v9, v2

    move/from16 v10, p6

    move/from16 v11, v25

    move/from16 v12, p8

    move/from16 v13, v26

    invoke-direct/range {v4 .. v13}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 1309
    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .end local v2    # "deliveryIntent":Landroid/app/PendingIntent;
    :goto_124
    return-void

    .line 1239
    .end local v25    # "priority":I
    .end local v26    # "validityPeriod":I
    .restart local p7    # "priority":I
    .restart local p9    # "validityPeriod":I
    :cond_125
    move-object/from16 v3, p0

    .line 1240
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid message body"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1237
    :cond_12f
    move-object/from16 v3, p0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid destinationAddress"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 27
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "persistMessage"    # Z
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "attributionTag"    # Ljava/lang/String;
    .param p9, "messageId"    # J
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

    .line 1006
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 1009
    if-eqz v13, :cond_d1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d1

    .line 1013
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_93

    .line 1024
    if-eqz p6, :cond_3e

    .line 1025
    new-instance v0, Landroid/telephony/SmsManager$3;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Landroid/telephony/SmsManager$3;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V

    move-object/from16 v11, p0

    invoke-direct {v11, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    goto/16 :goto_d0

    .line 1048
    :cond_3e
    move-object/from16 v11, p0

    :try_start_40
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1049
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_92

    .line 1050
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    move-object v1, v0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p9

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_60} :catch_61

    goto :goto_92

    .line 1054
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :catch_61
    move-exception v0

    .line 1055
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMultipartTextMessageInternal: Couldn\'t send SMS - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1056
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p9 .. p10}, Landroid/telephony/SmsManager;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1055
    const-string v2, "SmsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/16 v1, 0x1f

    invoke-static {v14, v1}, Landroid/telephony/SmsManager;->notifySmsError(Ljava/util/List;I)V

    .line 1058
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_92
    :goto_92
    goto :goto_d0

    .line 1061
    :cond_93
    const/4 v0, 0x0

    .line 1062
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    .line 1063
    .local v1, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    if-eqz v14, :cond_a5

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a5

    .line 1064
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/PendingIntent;

    .line 1066
    :cond_a5
    if-eqz v15, :cond_b6

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b6

    .line 1067
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/app/PendingIntent;

    move-object v12, v1

    goto :goto_b7

    .line 1069
    :cond_b6
    move-object v12, v1

    .end local v1    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v12, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_b7
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v0

    move-object v6, v12

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1072
    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .end local v12    # "deliveryIntent":Landroid/app/PendingIntent;
    :goto_d0
    return-void

    .line 1010
    :cond_d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_d9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V
    .registers 6
    .param p1, "resolverResult"    # Landroid/telephony/SmsManager$SubscriptionResolverResult;
    .param p2, "subId"    # I
    .param p3, "pickActivityShown"    # Z

    .line 1641
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1642
    invoke-interface {p1, p2}, Landroid/telephony/SmsManager$SubscriptionResolverResult;->onSuccess(I)V

    .line 1643
    return-void

    .line 1646
    :cond_a
    const-wide/32 v0, 0x8a6c688

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_19

    if-nez p3, :cond_19

    .line 1652
    invoke-interface {p1, p2}, Landroid/telephony/SmsManager$SubscriptionResolverResult;->onSuccess(I)V

    goto :goto_1c

    .line 1656
    :cond_19
    invoke-interface {p1}, Landroid/telephony/SmsManager$SubscriptionResolverResult;->onFailure()V

    .line 1658
    :goto_1c
    return-void
.end method

.method private greylist-max-o sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .registers 38
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessage"    # Z
    .param p7, "priority"    # I
    .param p8, "expectMore"    # Z
    .param p9, "validityPeriod"    # I

    .line 707
    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cd

    .line 711
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c1

    .line 715
    const-string v2, "SmsManager"

    if-ltz v0, :cond_1a

    const/4 v3, 0x3

    if-le v0, v3, :cond_18

    goto :goto_1a

    :cond_18
    move v14, v0

    goto :goto_32

    .line 716
    :cond_1a
    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Priority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v0, -0x1

    move v14, v0

    .line 720
    .end local p7    # "priority":I
    .local v14, "priority":I
    :goto_32
    const/4 v0, 0x5

    if-lt v1, v0, :cond_3a

    const v0, 0x9b0a0

    if-le v1, v0, :cond_52

    .line 721
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Validity Period "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v0, -0x1

    move v1, v0

    .line 725
    .end local p9    # "validityPeriod":I
    .local v1, "validityPeriod":I
    :cond_52
    move v11, v14

    .line 726
    .local v11, "finalPriority":I
    move v13, v1

    .line 737
    .local v13, "finalValidity":I
    if-eqz p6, :cond_74

    .line 738
    new-instance v0, Landroid/telephony/SmsManager$2;

    move-object v3, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Landroid/telephony/SmsManager$2;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    move-object/from16 v3, p0

    invoke-direct {v3, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    move-object/from16 v4, p4

    goto :goto_c0

    .line 764
    :cond_74
    move-object/from16 v3, p0

    :try_start_76
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 765
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_9a

    .line 766
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, v11

    move/from16 v26, p8

    move/from16 v27, v13

    invoke-interface/range {v15 .. v27}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_9a} :catch_9d

    .line 776
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_9a
    move-object/from16 v4, p4

    goto :goto_c0

    .line 772
    :catch_9d
    move-exception v0

    .line 773
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTextMessageInternal(no persist): Couldn\'t send SMS, exception - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 774
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 773
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/16 v2, 0x1f

    move-object/from16 v4, p4

    invoke-static {v4, v2}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 778
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c0
    return-void

    .line 712
    .end local v1    # "validityPeriod":I
    .end local v11    # "finalPriority":I
    .end local v13    # "finalValidity":I
    .end local v14    # "priority":I
    .restart local p7    # "priority":I
    .restart local p9    # "validityPeriod":I
    :cond_c1
    move-object/from16 v3, p0

    move-object/from16 v4, p4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid message body"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 708
    :cond_cd
    move-object/from16 v3, p0

    move-object/from16 v4, p4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 26
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessage"    # Z
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "attributionTag"    # Ljava/lang/String;
    .param p9, "messageId"    # J

    .line 608
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 612
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 626
    if-eqz p6, :cond_2e

    .line 627
    new-instance v0, Landroid/telephony/SmsManager$1;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Landroid/telephony/SmsManager$1;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    move-object v13, p0

    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    move-object/from16 v2, p4

    goto :goto_83

    .line 650
    :cond_2e
    move-object v13, p0

    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v14

    .line 652
    .local v14, "iSms":Lcom/android/internal/telephony/ISms;
    :try_start_33
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    move-object v1, v14

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p9

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4d} :catch_50

    .line 659
    move-object/from16 v2, p4

    goto :goto_83

    .line 655
    :catch_50
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendTextMessageInternal (no persist): Couldn\'t send SMS, exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 657
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p9 .. p10}, Landroid/telephony/SmsManager;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 656
    const-string v2, "SmsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/16 v1, 0x1f

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 661
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v14    # "iSms":Lcom/android/internal/telephony/ISms;
    :goto_83
    return-void

    .line 613
    :cond_84
    move-object v13, p0

    move-object/from16 v2, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_8f
    move-object v13, p0

    move-object/from16 v2, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist checkSmsShortCodeDestination(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "destAddress"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .line 3134
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3135
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_14

    .line 3136
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISms;->checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    return v1

    .line 3141
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_14
    goto :goto_1d

    .line 3139
    :catch_15
    move-exception v0

    .line 3140
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SmsManager"

    const-string v2, "checkSmsShortCodeDestination() RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3142
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist copyMessageToIcc([B[BI)Z
    .registers 12
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .line 1736
    const/16 v0, 0x4f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1737
    const/4 v0, 0x0

    .line 1739
    .local v0, "success":Z
    if-eqz p2, :cond_1f

    .line 1743
    :try_start_8
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1744
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1c

    .line 1745
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v4, 0x0

    move-object v2, v1

    move v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z

    move-result v2
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_1d

    move v0, v2

    .line 1751
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_1c
    goto :goto_1e

    .line 1749
    :catch_1d
    move-exception v1

    .line 1753
    :goto_1e
    return v0

    .line 1740
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pdu is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist createAppSpecificSmsToken(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 2924
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2925
    .local v1, "iccSms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1}, Lcom/android/internal/telephony/ISms;->createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    return-object v0

    .line 2928
    .end local v1    # "iccSms":Lcom/android/internal/telephony/ISms;
    :catch_e
    move-exception v1

    .line 2929
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2930
    return-object v0
.end method

.method public whitelist createAppSpecificSmsTokenWithPackageInfo(Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 6
    .param p1, "prefixes"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 3044
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3045
    .local v1, "iccSms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/android/internal/telephony/ISms;->createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    return-object v0

    .line 3048
    .end local v1    # "iccSms":Lcom/android/internal/telephony/ISms;
    :catch_e
    move-exception v1

    .line 3049
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3050
    return-object v0
.end method

.method public whitelist createForSubscriptionId(I)Landroid/telephony/SmsManager;
    .registers 3
    .param p1, "subId"    # I

    .line 1529
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    return-object v0
.end method

.method public greylist deleteMessageFromIcc(I)Z
    .registers 10
    .param p1, "messageIndex"    # I

    .line 1780
    const/16 v0, 0x50

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1781
    const/4 v0, 0x0

    .line 1784
    .local v0, "success":Z
    :try_start_6
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1785
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1a

    .line 1786
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1b

    move v0, v2

    .line 1792
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_1a
    goto :goto_1c

    .line 1790
    :catch_1b
    move-exception v1

    .line 1794
    :goto_1c
    return v0
.end method

.method public whitelist disableCellBroadcastRange(III)Z
    .registers 11
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1989
    const-string v0, "disableCellBroadcastRange: "

    const-string v1, "SmsManager"

    const/4 v2, 0x0

    .line 1991
    .local v2, "success":Z
    if-lt p2, p1, :cond_57

    .line 1995
    :try_start_7
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 1996
    .local v3, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_3c

    .line 1999
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 2000
    .local v4, "subId":I
    invoke-interface {v3, v4, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v5

    move v2, v5

    .line 2002
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_25

    const-string/jumbo v6, "succeeded"

    goto :goto_27

    :cond_25
    const-string v6, "failed"

    :goto_27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at calling disableCellBroadcastRangeForSubscriber. subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_3c} :catch_3d

    .line 2008
    .end local v3    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local v4    # "subId":I
    :cond_3c
    goto :goto_56

    .line 2005
    :catch_3d
    move-exception v3

    .line 2006
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_56
    return v2

    .line 1992
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endMessageId < startMessageId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
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

    .line 842
    if-eqz p1, :cond_b

    .line 845
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 843
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;

    .line 2738
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    .line 2740
    return-void
.end method

.method public whitelist downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageId"    # J

    .line 2785
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2788
    if-eqz p3, :cond_2b

    .line 2791
    const-string/jumbo v0, "mms"

    move-object v10, p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MmsManager;

    .line 2792
    .local v0, "m":Landroid/telephony/MmsManager;
    if-eqz v0, :cond_29

    .line 2793
    new-instance v11, Landroid/telephony/SmsManager$8;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/telephony/SmsManager$8;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/MmsManager;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    move-object v1, p0

    invoke-direct {p0, v11}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    goto :goto_2a

    .line 2792
    :cond_29
    move-object v1, p0

    .line 2806
    :goto_2a
    return-void

    .line 2789
    .end local v0    # "m":Landroid/telephony/MmsManager;
    :cond_2b
    move-object v1, p0

    move-object v10, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2786
    :cond_35
    move-object v1, p0

    move-object v10, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty MMS location URL"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enableCellBroadcastRange(III)Z
    .registers 11
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1929
    const-string v0, "enableCellBroadcastRange: "

    const-string v1, "SmsManager"

    const/4 v2, 0x0

    .line 1930
    .local v2, "success":Z
    if-lt p2, p1, :cond_57

    .line 1934
    :try_start_7
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 1935
    .local v3, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_3c

    .line 1938
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 1939
    .local v4, "subId":I
    invoke-interface {v3, v4, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v5

    move v2, v5

    .line 1941
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_25

    const-string/jumbo v6, "succeeded"

    goto :goto_27

    :cond_25
    const-string v6, "failed"

    :goto_27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at calling enableCellBroadcastRangeForSubscriber. subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_3c} :catch_3d

    .line 1947
    .end local v3    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local v4    # "subId":I
    :cond_3c
    goto :goto_56

    .line 1944
    :catch_3d
    move-exception v3

    .line 1945
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_56
    return v2

    .line 1931
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endMessageId < startMessageId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getAllMessagesFromIcc()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 1875
    const/4 v0, 0x0

    .line 1878
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1879
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_12

    .line 1880
    nop

    .line 1881
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    const/4 v3, 0x0

    .line 1880
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move-object v0, v2

    .line 1886
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_12
    goto :goto_14

    .line 1884
    :catch_13
    move-exception v1

    .line 1888
    :goto_14
    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getCarrierConfigValues()Landroid/os/Bundle;
    .registers 3

    .line 2888
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2889
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_f

    .line 2890
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->getCarrierConfigValuesForSubscriber(I)Landroid/os/Bundle;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 2894
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_f
    goto :goto_11

    .line 2892
    :catch_10
    move-exception v0

    .line 2895
    :goto_11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public greylist-max-o getImsSmsFormat()Ljava/lang/String;
    .registers 4

    .line 2103
    const-string/jumbo v0, "unknown"

    .line 2105
    .local v0, "format":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2106
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_12

    .line 2107
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_13

    move-object v0, v2

    .line 2111
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_12
    goto :goto_14

    .line 2109
    :catch_13
    move-exception v1

    .line 2112
    :goto_14
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

    .line 1862
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPremiumSmsConsent(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3229
    const/4 v0, 0x0

    .line 3231
    .local v0, "permission":I
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3232
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_c

    .line 3233
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 3237
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_c
    goto :goto_15

    .line 3235
    :catch_d
    move-exception v1

    .line 3236
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    const-string v3, "getPremiumSmsPermission() RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3238
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_15
    return v0
.end method

.method public whitelist getSmsCapacityOnIcc()I
    .registers 5

    .line 2179
    const/4 v0, 0x0

    .line 2181
    .local v0, "ret":I
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2182
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_10

    .line 2183
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->getSmsCapacityOnIccForSubscriber(I)I

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v2

    .line 2187
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_10
    goto :goto_19

    .line 2185
    :catch_11
    move-exception v1

    .line 2186
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    const-string v3, "getSmsCapacityOnIcc() RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2188
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_19
    return v0
.end method

.method public whitelist getSmsMessagesForFinancialApp(Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/telephony/SmsManager$FinancialSmsCallback;)V
    .registers 4
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/SmsManager$FinancialSmsCallback;

    .line 2970
    return-void
.end method

.method public whitelist getSmscAddress()Ljava/lang/String;
    .registers 5

    .line 3167
    const/4 v0, 0x0

    .line 3170
    .local v0, "smsc":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3171
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_12

    .line 3172
    nop

    .line 3173
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    const/4 v3, 0x0

    .line 3172
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_14

    move-object v0, v2

    .line 3177
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_12
    nop

    .line 3178
    return-object v0

    .line 3175
    :catch_14
    move-exception v1

    .line 3176
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist getSubscriptionId()I
    .registers 3

    .line 1556
    :try_start_0
    iget v0, p0, Landroid/telephony/SmsManager;->mSubId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_10

    .line 1557
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_12

    goto :goto_11

    :cond_10
    nop

    .line 1556
    :goto_11
    return v0

    .line 1558
    :catch_12
    move-exception v0

    .line 1559
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .line 812
    const-string v0, "3gpp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "3gpp2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 814
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pdu format. format must be either 3gpp or 3gpp2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_19
    :goto_19
    :try_start_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 819
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_27

    .line 820
    nop

    .line 821
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 820
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_27} :catch_28

    .line 831
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_27
    goto :goto_34

    .line 823
    :catch_28
    move-exception v0

    .line 825
    .local v0, "ex":Landroid/os/RemoteException;
    if-eqz p3, :cond_33

    .line 826
    const/16 v1, 0x1f

    :try_start_2d
    invoke-virtual {p3, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_30
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_33

    .line 828
    :catch_31
    move-exception v1

    goto :goto_34

    .line 830
    :cond_33
    :goto_33
    nop

    .line 832
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method

.method public greylist-max-o isImsSmsSupported()Z
    .registers 4

    .line 2069
    const/4 v0, 0x0

    .line 2071
    .local v0, "boSupported":Z
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2072
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_10

    .line 2073
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(I)Z

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v2

    .line 2077
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_10
    goto :goto_12

    .line 2075
    :catch_11
    move-exception v1

    .line 2078
    :goto_12
    return v0
.end method

.method public greylist isSMSPromptEnabled()Z
    .registers 4

    .line 2145
    const/4 v0, 0x0

    .line 2147
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    move-object v0, v2

    .line 2148
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->isSMSPromptEnabled()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_b} :catch_c

    return v1

    .line 2151
    :catch_c
    move-exception v2

    .line 2152
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v1

    .line 2149
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_e
    move-exception v2

    .line 2150
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist resetAllCellBroadcastRanges()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3272
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3273
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_d

    .line 3276
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->resetAllCellBroadcastRanges(I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3280
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_d
    goto :goto_12

    .line 3278
    :catch_e
    move-exception v0

    .line 3279
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3281
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 16
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 1403
    const/16 v0, 0x49

    invoke-static {v0, p1}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 1404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1408
    if-eqz p4, :cond_21

    array-length v0, p4

    if-eqz v0, :cond_21

    .line 1412
    new-instance v0, Landroid/telephony/SmsManager$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/telephony/SmsManager$5;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    .line 1429
    return-void

    .line 1409
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1405
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .line 2637
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    .line 2639
    return-void
.end method

.method public whitelist sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageId"    # J

    .line 2682
    if-eqz p2, :cond_26

    .line 2685
    const-string/jumbo v0, "mms"

    move-object v9, p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/telephony/MmsManager;

    .line 2686
    .local v10, "m":Landroid/telephony/MmsManager;
    if-eqz v10, :cond_24

    .line 2687
    new-instance v11, Landroid/telephony/SmsManager$7;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v10

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SmsManager$7;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/MmsManager;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    move-object v0, p0

    invoke-direct {p0, v11}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    goto :goto_25

    .line 2686
    :cond_24
    move-object v0, p0

    .line 2700
    :goto_25
    return-void

    .line 2683
    .end local v10    # "m":Landroid/telephony/MmsManager;
    :cond_26
    move-object v0, p0

    move-object v9, p1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 17
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
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

    .line 951
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    nop

    .line 952
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 953
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 951
    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 954
    return-void
.end method

.method public greylist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V
    .registers 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "expectMore"    # Z
    .param p8, "validityPeriod"    # I
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

    .line 1227
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
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

    .line 1230
    return-void
.end method

.method public whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V
    .registers 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "messageId"    # J
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

    .line 969
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    nop

    .line 970
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 971
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 969
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 972
    return-void
.end method

.method public whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "attributionTag"    # Ljava/lang/String;
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

    .line 996
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
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

    .line 999
    return-void
.end method

.method public whitelist sendMultipartTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 17
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
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

    .line 1099
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    nop

    .line 1100
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1101
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 1099
    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1102
    return-void
.end method

.method public whitelist sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 467
    const/16 v0, 0x4b

    move-object v12, p1

    invoke-static {v0, p1}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 468
    nop

    .line 469
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 468
    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 471
    return-void
.end method

.method public greylist-max-r sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    .registers 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "priority"    # I
    .param p7, "expectMore"    # Z
    .param p8, "validityPeriod"    # I

    .line 601
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

    .line 603
    return-void
.end method

.method public whitelist sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;J)V
    .registers 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageId"    # J

    .line 488
    nop

    .line 489
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 488
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 491
    return-void
.end method

.method public whitelist sendTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 17
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 698
    nop

    .line 699
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 700
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 698
    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 701
    return-void
.end method

.method public whitelist setPremiumSmsConsent(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3255
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3256
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_9

    .line 3257
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 3261
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_9
    goto :goto_13

    .line 3259
    :catch_a
    move-exception v0

    .line 3260
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SmsManager"

    const-string/jumbo v2, "setPremiumSmsPermission() RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3262
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public whitelist setSmscAddress(Ljava/lang/String;)Z
    .registers 5
    .param p1, "smsc"    # Ljava/lang/String;

    .line 3204
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3205
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 3206
    nop

    .line 3207
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    const/4 v2, 0x0

    .line 3206
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISms;->setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_14

    return v1

    .line 3211
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_11
    nop

    .line 3212
    const/4 v0, 0x0

    return v0

    .line 3209
    :catch_14
    move-exception v0

    .line 3210
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist updateMessageOnIcc(II[B)Z
    .registers 12
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    .line 1824
    const/16 v0, 0x51

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1825
    const/4 v0, 0x0

    .line 1828
    .local v0, "success":Z
    :try_start_6
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1829
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1a

    .line 1830
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v4, 0x0

    move-object v2, v1

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1b

    move v0, v2

    .line 1836
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_1a
    goto :goto_1c

    .line 1834
    :catch_1b
    move-exception v1

    .line 1838
    :goto_1c
    return v0
.end method
