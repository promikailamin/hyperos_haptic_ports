.class public Landroid/telecom/TelecomManager;
.super Ljava/lang/Object;
.source "TelecomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/TelecomManager$DeathRecipient;,
        Landroid/telecom/TelecomManager$Presentation;,
        Landroid/telecom/TelecomManager$TtyMode;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_CALL_TYPE:Ljava/lang/String; = "codeaurora.telecom.action.CALL_TYPE"

.field public static final whitelist ACTION_CHANGE_DEFAULT_DIALER:Ljava/lang/String; = "android.telecom.action.CHANGE_DEFAULT_DIALER"

.field public static final whitelist ACTION_CHANGE_PHONE_ACCOUNTS:Ljava/lang/String; = "android.telecom.action.CHANGE_PHONE_ACCOUNTS"

.field public static final whitelist ACTION_CONFIGURE_PHONE_ACCOUNT:Ljava/lang/String; = "android.telecom.action.CONFIGURE_PHONE_ACCOUNT"

.field public static final whitelist ACTION_CURRENT_TTY_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.CURRENT_TTY_MODE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_DEFAULT_CALL_SCREENING_APP_CHANGED:Ljava/lang/String; = "android.telecom.action.DEFAULT_CALL_SCREENING_APP_CHANGED"

.field public static final whitelist ACTION_DEFAULT_DIALER_CHANGED:Ljava/lang/String; = "android.telecom.action.DEFAULT_DIALER_CHANGED"

.field public static final whitelist ACTION_INCOMING_CALL:Ljava/lang/String; = "android.telecom.action.INCOMING_CALL"

.field public static final greylist-max-o ACTION_NEW_UNKNOWN_CALL:Ljava/lang/String; = "android.telecom.action.NEW_UNKNOWN_CALL"

.field public static final whitelist ACTION_PHONE_ACCOUNT_REGISTERED:Ljava/lang/String; = "android.telecom.action.PHONE_ACCOUNT_REGISTERED"

.field public static final whitelist ACTION_PHONE_ACCOUNT_UNREGISTERED:Ljava/lang/String; = "android.telecom.action.PHONE_ACCOUNT_UNREGISTERED"

.field public static final whitelist ACTION_POST_CALL:Ljava/lang/String; = "android.telecom.action.POST_CALL"

.field public static final whitelist ACTION_SHOW_CALL_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_ACCESSIBILITY_SETTINGS"

.field public static final whitelist ACTION_SHOW_CALL_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_SETTINGS"

.field public static final whitelist ACTION_SHOW_MISSED_CALLS_NOTIFICATION:Ljava/lang/String; = "android.telecom.action.SHOW_MISSED_CALLS_NOTIFICATION"

.field public static final whitelist ACTION_SHOW_RESPOND_VIA_SMS_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_RESPOND_VIA_SMS_SETTINGS"

.field public static final whitelist ACTION_TTY_PREFERRED_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist AUDIO_OUTPUT_DEFAULT:I = 0x0

.field public static final blacklist AUDIO_OUTPUT_DISABLE_SPEAKER:I = 0x1

.field public static final blacklist AUDIO_OUTPUT_ENABLE_SPEAKER:I = 0x0

.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field public static final blacklist CALL_AUTO_DISCONNECT_MESSAGE_STRING:Ljava/lang/String; = "Call dropped by lower layers"

.field public static final whitelist CALL_SOURCE_EMERGENCY_DIALPAD:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_SOURCE_EMERGENCY_SHORTCUT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_SOURCE_UNSPECIFIED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DTMF_CHARACTER_PAUSE:C = ','

.field public static final whitelist DTMF_CHARACTER_WAIT:C = ';'

.field public static final whitelist DURATION_LONG:I = 0x3

.field public static final whitelist DURATION_MEDIUM:I = 0x2

.field public static final whitelist DURATION_SHORT:I = 0x1

.field public static final whitelist DURATION_VERY_SHORT:I = 0x0

.field public static final greylist-max-o EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

.field public static final blacklist ENABLE_GET_CALL_STATE_PERMISSION_PROTECTION:J = 0x95f3323L

.field public static final blacklist ENABLE_GET_PHONE_ACCOUNT_PERMISSION_PROTECTION:J = 0xaee9554L

.field public static final greylist-max-o EXTRA_CALL_AUDIO_STATE:Ljava/lang/String; = "android.telecom.extra.CALL_AUDIO_STATE"

.field public static final whitelist EXTRA_CALL_BACK_INTENT:Ljava/lang/String; = "android.telecom.extra.CALL_BACK_INTENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_BACK_NUMBER:Ljava/lang/String; = "android.telecom.extra.CALL_BACK_NUMBER"

.field public static final blacklist EXTRA_CALL_CREATED_EPOCH_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_CREATED_EPOCH_TIME_MILLIS"

.field public static final greylist-max-o EXTRA_CALL_CREATED_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_CREATED_TIME_MILLIS"

.field public static final whitelist EXTRA_CALL_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_CAUSE"

.field public static final whitelist EXTRA_CALL_DISCONNECT_MESSAGE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_MESSAGE"

.field public static final whitelist EXTRA_CALL_DURATION:Ljava/lang/String; = "android.telecom.extra.CALL_DURATION"

.field public static final greylist-max-o EXTRA_CALL_EXTERNAL_RINGER:Ljava/lang/String; = "android.telecom.extra.CALL_EXTERNAL_RINGER"

.field public static final whitelist EXTRA_CALL_HAS_IN_BAND_RINGTONE:Ljava/lang/String; = "android.telecom.extra.CALL_HAS_IN_BAND_RINGTONE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_NETWORK_TYPE:Ljava/lang/String; = "android.telecom.extra.CALL_NETWORK_TYPE"

.field public static final whitelist EXTRA_CALL_SOURCE:Ljava/lang/String; = "android.telecom.extra.CALL_SOURCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final whitelist EXTRA_CALL_TECHNOLOGY_TYPE:Ljava/lang/String; = "android.telecom.extra.CALL_TECHNOLOGY_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_CALL_TELECOM_ROUTING_END_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_TELECOM_ROUTING_END_TIME_MILLIS"

.field public static final greylist-max-o EXTRA_CALL_TELECOM_ROUTING_START_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_TELECOM_ROUTING_START_TIME_MILLIS"

.field public static final blacklist EXTRA_CALL_TYPE_CS:Ljava/lang/String; = "codeaurora.telecom.extra.CALL_TYPE_CS"

.field public static final whitelist EXTRA_CHANGE_DEFAULT_DIALER_PACKAGE_NAME:Ljava/lang/String; = "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

.field public static final whitelist EXTRA_CLEAR_MISSED_CALLS_INTENT:Ljava/lang/String; = "android.telecom.extra.CLEAR_MISSED_CALLS_INTENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CONNECTION_SERVICE:Ljava/lang/String; = "android.telecom.extra.CONNECTION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CURRENT_TTY_MODE:Ljava/lang/String; = "android.telecom.extra.CURRENT_TTY_MODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DEFAULT_CALL_SCREENING_APP_COMPONENT_NAME:Ljava/lang/String; = "android.telecom.extra.DEFAULT_CALL_SCREENING_APP_COMPONENT_NAME"

.field public static final whitelist EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telecom.extra.DISCONNECT_CAUSE"

.field public static final whitelist EXTRA_HANDLE:Ljava/lang/String; = "android.telecom.extra.HANDLE"

.field public static final greylist-max-o EXTRA_HANDOVER_FROM_PHONE_ACCOUNT:Ljava/lang/String; = "android.telecom.extra.HANDOVER_FROM_PHONE_ACCOUNT"

.field public static final whitelist EXTRA_HAS_PICTURE:Ljava/lang/String; = "android.telecom.extra.HAS_PICTURE"

.field public static final whitelist EXTRA_INCOMING_CALL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_ADDRESS"

.field public static final whitelist EXTRA_INCOMING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_EXTRAS"

.field public static final whitelist EXTRA_INCOMING_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.INCOMING_VIDEO_STATE"

.field public static final whitelist EXTRA_IS_DEFAULT_CALL_SCREENING_APP:Ljava/lang/String; = "android.telecom.extra.IS_DEFAULT_CALL_SCREENING_APP"

.field public static final greylist-max-p EXTRA_IS_HANDOVER:Ljava/lang/String; = "android.telecom.extra.IS_HANDOVER"

.field public static final greylist-max-o EXTRA_IS_HANDOVER_CONNECTION:Ljava/lang/String; = "android.telecom.extra.IS_HANDOVER_CONNECTION"

.field public static final whitelist EXTRA_IS_USER_INTENT_EMERGENCY_CALL:Ljava/lang/String; = "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_LOCATION:Ljava/lang/String; = "android.telecom.extra.LOCATION"

.field public static final greylist-max-o EXTRA_NEW_OUTGOING_CALL_CANCEL_TIMEOUT:Ljava/lang/String; = "android.telecom.extra.NEW_OUTGOING_CALL_CANCEL_TIMEOUT"

.field public static final whitelist EXTRA_NOTIFICATION_COUNT:Ljava/lang/String; = "android.telecom.extra.NOTIFICATION_COUNT"

.field public static final whitelist EXTRA_NOTIFICATION_PHONE_NUMBER:Ljava/lang/String; = "android.telecom.extra.NOTIFICATION_PHONE_NUMBER"

.field public static final whitelist EXTRA_OUTGOING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.OUTGOING_CALL_EXTRAS"

.field public static final whitelist EXTRA_OUTGOING_PICTURE:Ljava/lang/String; = "android.telecom.extra.OUTGOING_PICTURE"

.field public static final whitelist EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

.field public static final whitelist EXTRA_PICTURE_URI:Ljava/lang/String; = "android.telecom.extra.PICTURE_URI"

.field public static final whitelist EXTRA_PRIORITY:Ljava/lang/String; = "android.telecom.extra.PRIORITY"

.field public static final whitelist EXTRA_START_CALL_WITH_RTT:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_RTT"

.field public static final whitelist EXTRA_START_CALL_WITH_SPEAKERPHONE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

.field public static final whitelist EXTRA_START_CALL_WITH_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

.field public static final whitelist EXTRA_TTY_PREFERRED_MODE:Ljava/lang/String; = "android.telecom.extra.TTY_PREFERRED_MODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_UNKNOWN_CALL_HANDLE:Ljava/lang/String; = "android.telecom.extra.UNKNOWN_CALL_HANDLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_USE_ASSISTED_DIALING:Ljava/lang/String; = "android.telecom.extra.USE_ASSISTED_DIALING"

.field public static final whitelist GATEWAY_ORIGINAL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.GATEWAY_ORIGINAL_ADDRESS"

.field public static final whitelist GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "android.telecom.extra.GATEWAY_PROVIDER_PACKAGE"

.field public static final blacklist MEDIUM_CALL_TIME_MS:J = 0x1d4c0L

.field public static final whitelist METADATA_INCLUDE_EXTERNAL_CALLS:Ljava/lang/String; = "android.telecom.INCLUDE_EXTERNAL_CALLS"

.field public static final whitelist METADATA_INCLUDE_SELF_MANAGED_CALLS:Ljava/lang/String; = "android.telecom.INCLUDE_SELF_MANAGED_CALLS"

.field public static final whitelist METADATA_IN_CALL_SERVICE_CAR_MODE_UI:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_CAR_MODE_UI"

.field public static final whitelist METADATA_IN_CALL_SERVICE_RINGING:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_RINGING"

.field public static final whitelist METADATA_IN_CALL_SERVICE_UI:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_UI"

.field public static final whitelist PRESENTATION_ALLOWED:I = 0x1

.field public static final whitelist PRESENTATION_PAYPHONE:I = 0x4

.field public static final whitelist PRESENTATION_RESTRICTED:I = 0x2

.field public static final whitelist PRESENTATION_UNAVAILABLE:I = 0x5

.field public static final whitelist PRESENTATION_UNKNOWN:I = 0x3

.field public static final whitelist PRIORITY_NORMAL:I = 0x0

.field public static final whitelist PRIORITY_URGENT:I = 0x1

.field private static final blacklist SERVICE_DEATH:Landroid/telecom/TelecomManager$DeathRecipient;

.field public static final blacklist SHORT_CALL_TIME_MS:J = 0xea60L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TelecomManager"

.field public static final whitelist TTY_MODE_FULL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TTY_MODE_HCO:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TTY_MODE_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TTY_MODE_VCO:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist VERY_SHORT_CALL_TIME_MS:J = 0xbb8L

.field private static blacklist sTelecomService:Lcom/android/internal/telecom/ITelecomService;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smresetServiceCache()V
    .registers 0

    invoke-static {}, Landroid/telecom/TelecomManager;->resetServiceCache()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 940
    nop

    .line 941
    const-string v0, "com.android.phone"

    const-string v1, ".EmergencyDialer"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    .line 1074
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/TelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    .line 1079
    new-instance v0, Landroid/telecom/TelecomManager$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/TelecomManager$DeathRecipient;-><init>(Landroid/telecom/TelecomManager$DeathRecipient-IA;)V

    sput-object v0, Landroid/telecom/TelecomManager;->SERVICE_DEATH:Landroid/telecom/TelecomManager$DeathRecipient;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1097
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telecom/TelecomManager;-><init>(Landroid/content/Context;Lcom/android/internal/telecom/ITelecomService;)V

    .line 1098
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/telecom/ITelecomService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "telecomServiceImpl"    # Lcom/android/internal/telecom/ITelecomService;

    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1105
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 1106
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1105
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1107
    iput-object v0, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    goto :goto_1c

    .line 1109
    :cond_1a
    iput-object p1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1111
    :goto_1c
    iput-object p2, p0, Landroid/telecom/TelecomManager;->mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

    .line 1112
    return-void
.end method

.method public static greylist-max-p from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1090
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private greylist-max-o getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .registers 6

    .line 2679
    iget-object v0, p0, Landroid/telecom/TelecomManager;->mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

    if-eqz v0, :cond_5

    .line 2680
    return-object v0

    .line 2682
    :cond_5
    sget-object v0, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    if-nez v0, :cond_33

    .line 2683
    const-string/jumbo v0, "telecom"

    .line 2684
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2683
    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2685
    .local v0, "temp":Lcom/android/internal/telecom/ITelecomService;
    sget-object v1, Landroid/telecom/TelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2686
    :try_start_17
    sget-object v2, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_30

    if-nez v2, :cond_2e

    if-eqz v0, :cond_2e

    .line 2688
    :try_start_1d
    sput-object v0, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 2689
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telecom/TelecomManager;->SERVICE_DEATH:Landroid/telecom/TelecomManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_29} :catch_2a
    .catchall {:try_start_1d .. :try_end_29} :catchall_30

    .line 2692
    goto :goto_2e

    .line 2690
    :catch_2a
    move-exception v2

    .line 2691
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_2c
    sput-object v3, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 2694
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2e
    :goto_2e
    monitor-exit v1

    goto :goto_33

    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_30

    throw v2

    .line 2696
    .end local v0    # "temp":Lcom/android/internal/telecom/ITelecomService;
    :cond_33
    :goto_33
    sget-object v0, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    return-object v0
.end method

.method private blacklist isSystemProcess()Z
    .registers 3

    .line 2675
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

.method private static blacklist resetServiceCache()V
    .registers 4

    .line 2707
    sget-object v0, Landroid/telecom/TelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2708
    :try_start_3
    sget-object v1, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    if-eqz v1, :cond_14

    .line 2709
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Landroid/telecom/TelecomManager;->SERVICE_DEATH:Landroid/telecom/TelecomManager$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2710
    const/4 v1, 0x0

    sput-object v1, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 2712
    :cond_14
    monitor-exit v0

    .line 2713
    return-void

    .line 2712
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public whitelist acceptHandover(Landroid/net/Uri;ILandroid/telecom/PhoneAccountHandle;)V
    .registers 8
    .param p1, "srcAddr"    # Landroid/net/Uri;
    .param p2, "videoState"    # I
    .param p3, "destAcct"    # Landroid/telecom/PhoneAccountHandle;

    .line 2598
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2599
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_23

    .line 2601
    :try_start_6
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/ITelecomService;->acceptHandover(Landroid/net/Uri;ILandroid/telecom/PhoneAccountHandle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 2604
    goto :goto_23

    .line 2602
    :catch_a
    move-exception v1

    .line 2603
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException acceptHandover: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist acceptRingingCall()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1957
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1958
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 1960
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1963
    goto :goto_18

    .line 1961
    :catch_10
    move-exception v1

    .line 1962
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#acceptRingingCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1965
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist acceptRingingCall(I)V
    .registers 6
    .param p1, "videoState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1979
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1980
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 1982
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1983
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1982
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCallWithVideoState(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1986
    goto :goto_18

    .line 1984
    :catch_10
    move-exception v1

    .line 1985
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#acceptRingingCallWithVideoState"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1988
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2096
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2097
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_4f

    .line 2099
    if-eqz p2, :cond_2a

    :try_start_8
    const-string v1, "android.telecom.extra.IS_HANDOVER"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2100
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_2a

    .line 2102
    const-string v1, "TAG"

    const-string v2, "addNewIncomingCall failed. Use public api acceptHandover for API > O-MR1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    return-void

    .line 2107
    :catch_28
    move-exception v1

    goto :goto_37

    .line 2106
    :cond_2a
    if-nez p2, :cond_32

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_33

    :cond_32
    move-object v1, p2

    :goto_33
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_36} :catch_28

    .line 2109
    goto :goto_4f

    .line 2108
    .local v1, "e":Landroid/os/RemoteException;
    :goto_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException adding a new incoming call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2111
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    return-void
.end method

.method public whitelist addNewIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2144
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2145
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_2e

    .line 2147
    nop

    .line 2148
    if-nez p2, :cond_11

    :try_start_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_12

    .line 2149
    :catch_f
    move-exception v1

    goto :goto_16

    .line 2148
    :cond_11
    move-object v1, p2

    .line 2147
    :goto_12
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->addNewIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_f

    .line 2151
    goto :goto_2e

    .line 2150
    .local v1, "e":Landroid/os/RemoteException;
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException adding a new incoming conference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2153
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    return-void
.end method

.method public whitelist addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2168
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2169
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_2e

    .line 2171
    nop

    .line 2172
    if-nez p2, :cond_11

    :try_start_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_12

    .line 2173
    :catch_f
    move-exception v1

    goto :goto_16

    .line 2172
    :cond_11
    move-object v1, p2

    .line 2171
    :goto_12
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_f

    .line 2175
    goto :goto_2e

    .line 2174
    .local v1, "e":Landroid/os/RemoteException;
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException adding a new unknown call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2177
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    return-void
.end method

.method public whitelist cancelMissedCallsNotification()V
    .registers 5

    .line 2259
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2260
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 2262
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->cancelMissedCallsNotification(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2265
    goto :goto_18

    .line 2263
    :catch_10
    move-exception v1

    .line 2264
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#cancelMissedCallsNotification"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2267
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist clearAccounts()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1570
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1571
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 1573
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1576
    goto :goto_18

    .line 1574
    :catch_10
    move-exception v1

    .line 1575
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#clearAccounts"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1578
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public greylist-max-o clearAccountsForPackage(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1585
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1586
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 1588
    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1589
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1593
    :cond_f
    goto :goto_18

    .line 1591
    :catch_10
    move-exception v1

    .line 1592
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#clearAccountsForPackage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1595
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist clearPhoneAccounts()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1560
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->clearAccounts()V

    .line 1561
    return-void
.end method

.method public whitelist createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2463
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2464
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    const-string v1, "TelecomManager"

    if-eqz v0, :cond_14

    .line 2466
    :try_start_8
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 2467
    :catch_d
    move-exception v2

    .line 2468
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error createLaunchEmergencyDialerIntent"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2469
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_19

    .line 2471
    :cond_14
    const-string v2, "createLaunchEmergencyDialerIntent - Telecom service not available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :goto_19
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL_EMERGENCY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2477
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2478
    const/4 v2, 0x0

    const-string/jumbo v3, "tel"

    invoke-static {v3, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2480
    :cond_37
    return-object v1
.end method

.method public whitelist createManageBlockedNumbersIntent()Landroid/content/Intent;
    .registers 6

    .line 2440
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2441
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    const/4 v1, 0x0

    .line 2442
    .local v1, "result":Landroid/content/Intent;
    if-eqz v0, :cond_15

    .line 2444
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->createManageBlockedNumbersIntent()Landroid/content/Intent;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_d

    move-object v1, v2

    .line 2447
    goto :goto_15

    .line 2445
    :catch_d
    move-exception v2

    .line 2446
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TelecomManager"

    const-string v4, "Error calling ITelecomService#createManageBlockedNumbersIntent"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2449
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-object v1
.end method

.method public whitelist dumpAnalytics()Landroid/telecom/TelecomAnalytics;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2420
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2421
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    const/4 v1, 0x0

    .line 2422
    .local v1, "result":Landroid/telecom/TelecomAnalytics;
    if-eqz v0, :cond_15

    .line 2424
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->dumpCallAnalytics()Landroid/telecom/TelecomAnalytics;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_d

    move-object v1, v2

    .line 2427
    goto :goto_15

    .line 2425
    :catch_d
    move-exception v2

    .line 2426
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TelecomManager"

    const-string v4, "Error dumping call analytics"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2429
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-object v1
.end method

.method public whitelist enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 7
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2401
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2402
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_12

    .line 2404
    :try_start_6
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 2407
    goto :goto_12

    .line 2405
    :catch_a
    move-exception v1

    .line 2406
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error enablePhoneAbbount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2409
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist endCall()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1930
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1931
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 1933
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->endCall(Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 1934
    :catch_11
    move-exception v1

    .line 1935
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#endCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1938
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 2240
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2241
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    .line 2243
    :try_start_8
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v1

    .line 2244
    :catch_13
    move-exception v1

    .line 2245
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getAdnUriForPhoneAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2248
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1b
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getAllPhoneAccountHandles()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1496
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1497
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_17

    .line 1499
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountHandles()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v1

    .line 1500
    :catch_f
    move-exception v1

    .line 1501
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getAllPhoneAccountHandles"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1504
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_17
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public whitelist getAllPhoneAccounts()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    .line 1477
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1478
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_17

    .line 1480
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccounts()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v1

    .line 1481
    :catch_f
    move-exception v1

    .line 1482
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getAllPhoneAccounts"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1485
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_17
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public whitelist getAllPhoneAccountsCount()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1458
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1459
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_13

    .line 1461
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountsCount()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 1462
    :catch_b
    move-exception v1

    .line 1463
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getAllPhoneAccountsCount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1466
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getCallCapablePhoneAccounts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallCapablePhoneAccounts(Z)Ljava/util/List;
    .registers 6
    .param p1, "includeDisabledAccounts"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1392
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1393
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_3a

    .line 1395
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1396
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1395
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCallCapablePhoneAccounts(ZLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1396
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 1395
    return-object v1

    .line 1397
    :catch_1b
    move-exception v1

    .line 1398
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ITelecomService#getCallCapablePhoneAccounts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1402
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public whitelist getCallState()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1877
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1878
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 1880
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1881
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1880
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCallStateUsingPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 1882
    :catch_17
    move-exception v1

    .line 1883
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling getCallState()."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1886
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectionManager()Landroid/telecom/PhoneAccountHandle;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1273
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentTtyMode()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2053
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2054
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 2056
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2057
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2056
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCurrentTtyMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 2058
    :catch_17
    move-exception v1

    .line 2059
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get the current TTY mode."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2062
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDefaultDialerPackage()Ljava/lang/String;
    .registers 5

    .line 1624
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1625
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_13

    .line 1627
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v1

    .line 1628
    :catch_b
    move-exception v1

    .line 1629
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get the default dialer package name."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1632
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;
    .registers 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1646
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1647
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 1649
    nop

    .line 1650
    :try_start_7
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1649
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackageForUser(I)Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    return-object v1

    .line 1651
    :catch_10
    move-exception v1

    .line 1652
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get the default dialer package name."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1655
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .registers 6
    .param p1, "uriScheme"    # Ljava/lang/String;

    .line 1135
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1136
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 1138
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1139
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1138
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return-object v1

    .line 1140
    :catch_17
    move-exception v1

    .line 1141
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getDefaultOutgoingPhoneAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1144
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getDefaultPhoneApp()Landroid/content/ComponentName;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1606
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1607
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_13

    .line 1609
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v1

    .line 1610
    :catch_b
    move-exception v1

    .line 1611
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get the default phone app."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1614
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .registers 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1775
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1776
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 1778
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1779
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1778
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return-object v1

    .line 1780
    :catch_17
    move-exception v1

    .line 1781
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling ITelecomService#getLine1Number."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1784
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getOwnSelfManagedPhoneAccounts()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1366
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1367
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_21

    .line 1369
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1370
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1369
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getOwnSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1370
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 1369
    return-object v1

    .line 1371
    :catch_1b
    move-exception v1

    .line 1372
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1375
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telecom is not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .registers 6
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;

    .line 1439
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1440
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 1442
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/telecom/PhoneAccount;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v1

    .line 1443
    :catch_11
    move-exception v1

    .line 1444
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getPhoneAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1447
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPhoneAccountsForPackage()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1417
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1418
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1d

    .line 1420
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsForPackage(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return-object v1

    .line 1421
    :catch_15
    move-exception v1

    .line 1422
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getPhoneAccountsForPackage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1425
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "uriScheme"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1295
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1296
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1d

    .line 1298
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1299
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1298
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1299
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    .line 1298
    return-object v1

    .line 1300
    :catch_15
    move-exception v1

    .line 1301
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getPhoneAccountsSupportingScheme"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1304
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public whitelist getSelfManagedPhoneAccounts()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1338
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1339
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_23

    .line 1341
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1342
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1341
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1342
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 1341
    return-object v1

    .line 1343
    :catch_1b
    move-exception v1

    .line 1344
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getSelfManagedPhoneAccounts()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1347
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public whitelist getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    .registers 5

    .line 1205
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1206
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 1208
    nop

    .line 1209
    :try_start_7
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    .line 1208
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    return-object v1

    .line 1210
    :catch_10
    move-exception v1

    .line 1211
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getSimCallManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-p getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;
    .registers 6
    .param p1, "userId"    # I

    .line 1252
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1253
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_13

    .line 1255
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManagerForUser(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v1

    .line 1256
    :catch_b
    move-exception v1

    .line 1257
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getSimCallManagerForUser"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;
    .registers 6
    .param p1, "subscriptionId"    # I

    .line 1228
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1229
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_13

    .line 1231
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v1

    .line 1232
    :catch_b
    move-exception v1

    .line 1233
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getSimCallManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSystemDialerPackage()Ljava/lang/String;
    .registers 5

    .line 1698
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1699
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_13

    .line 1701
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v1

    .line 1702
    :catch_b
    move-exception v1

    .line 1703
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get the system dialer package name."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1706
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .registers 5

    .line 1162
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1163
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 1165
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1166
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1165
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getUserSelectedOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v1

    .line 1167
    :catch_11
    move-exception v1

    .line 1168
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getUserSelectedOutgoingPhoneAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .registers 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 1739
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1740
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 1742
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1743
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1742
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return-object v1

    .line 1744
    :catch_17
    move-exception v1

    .line 1745
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling ITelecomService#hasVoiceMailNumber."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1748
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist handleCallIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingPackageProxy"    # Ljava/lang/String;

    .line 2664
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2665
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_23

    .line 2667
    :try_start_6
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->handleCallIntent(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 2670
    goto :goto_23

    .line 2668
    :catch_a
    move-exception v1

    .line 2669
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException handleCallIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist handleMmi(Ljava/lang/String;)Z
    .registers 6
    .param p1, "dialString"    # Ljava/lang/String;

    .line 2193
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2194
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 2196
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 2197
    :catch_11
    move-exception v1

    .line 2198
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#handlePinMmi"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2201
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist handleMmi(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    .registers 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 2218
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2219
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 2221
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2222
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2221
    invoke-interface {v0, p2, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 2223
    :catch_11
    move-exception v1

    .line 2224
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#handlePinMmi"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2227
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist hasManageOngoingCallsPermission()Z
    .registers 5

    .line 1818
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1819
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_22

    .line 1821
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1822
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1821
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->hasManageOngoingCallsPermission(Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 1823
    :catch_11
    move-exception v1

    .line 1824
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling hasManageOngoingCallsPermission()."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1825
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isSystemProcess()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1826
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1830
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isInCall()Z
    .registers 5

    .line 1796
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1797
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 1799
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1800
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1799
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isInCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 1801
    :catch_17
    move-exception v1

    .line 1802
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling isInCall()."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1805
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isInEmergencyCall()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2618
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2619
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 2621
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->isInEmergencyCall()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    .line 2622
    :catch_c
    move-exception v2

    .line 2623
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException isInEmergencyCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelecomManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    return v1

    .line 2627
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_26
    return v1
.end method

.method public whitelist isInManagedCall()Z
    .registers 5

    .line 1846
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1847
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 1849
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1850
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1849
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isInManagedCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 1851
    :catch_17
    move-exception v1

    .line 1852
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling isInManagedCall()."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1855
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 2642
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2643
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_2f

    .line 2645
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2646
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2645
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telecom/ITelecomService;->isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 2647
    :catch_11
    move-exception v1

    .line 2648
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException isInSelfManagedCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2650
    const/4 v2, 0x0

    return v2

    .line 2653
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telecom service is not present"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isIncomingCallPermitted(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 7
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 2503
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2504
    return v0

    .line 2507
    :cond_4
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 2508
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_1d

    .line 2510
    :try_start_a
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2511
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2510
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->isIncomingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return v0

    .line 2512
    :catch_15
    move-exception v2

    .line 2513
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TelecomManager"

    const-string v4, "Error isIncomingCallPermitted"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2516
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1d
    return v0
.end method

.method public whitelist isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 6
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 2541
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2542
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 2544
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2545
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2544
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 2546
    :catch_11
    move-exception v1

    .line 2547
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error isOutgoingCallPermitted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2550
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isRinging()Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1901
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1902
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 1904
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->isRinging(Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 1905
    :catch_11
    move-exception v1

    .line 1906
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get ringing state of phone app."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1909
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isTtySupported()Z
    .registers 5

    .line 2028
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2029
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 2031
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2032
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2031
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isTtySupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 2033
    :catch_17
    move-exception v1

    .line 2034
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get TTY supported state."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2037
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .registers 7
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "number"    # Ljava/lang/String;

    .line 1718
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1719
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 1721
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1722
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1721
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 1723
    :catch_17
    move-exception v1

    .line 1724
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling ITelecomService#isVoiceMailNumber."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1727
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2341
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2342
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_2f

    .line 2343
    const-string v1, "TelecomManager"

    if-nez p1, :cond_f

    .line 2344
    const-string v2, "Cannot place call to empty address."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    :cond_f
    if-nez p2, :cond_19

    :try_start_11
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_1a

    .line 2349
    :catch_17
    move-exception v2

    goto :goto_2a

    .line 2347
    :cond_19
    move-object v2, p2

    :goto_1a
    iget-object v3, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2348
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 2347
    invoke-interface {v0, p1, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_29} :catch_17

    .line 2351
    goto :goto_2f

    .line 2350
    .local v2, "e":Landroid/os/RemoteException;
    :goto_2a
    const-string v3, "Error calling ITelecomService#placeCall"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2353
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    return-void
.end method

.method public whitelist registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    .registers 6
    .param p1, "account"    # Landroid/telecom/PhoneAccount;

    .line 1527
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1528
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_12

    .line 1530
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1533
    goto :goto_12

    .line 1531
    :catch_a
    move-exception v1

    .line 1532
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#registerPhoneAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1535
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public greylist setDefaultDialer(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1680
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1681
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_13

    .line 1683
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->setDefaultDialer(Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 1684
    :catch_b
    move-exception v1

    .line 1685
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to set the default dialer."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1688
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .registers 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1185
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1186
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_12

    .line 1188
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1191
    goto :goto_12

    .line 1189
    :catch_a
    move-exception v1

    .line 1190
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#setUserSelectedOutgoingPhoneAccount"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist showInCallScreen(Z)V
    .registers 6
    .param p1, "showDialpad"    # Z

    .line 2281
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2282
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1e

    .line 2284
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2285
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2284
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_16

    .line 2288
    goto :goto_1e

    .line 2286
    :catch_16
    move-exception v1

    .line 2287
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#showCallScreen"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2290
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    return-void
.end method

.method public whitelist silenceRinger()V
    .registers 5

    .line 2010
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2011
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 2013
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2016
    goto :goto_18

    .line 2014
    :catch_10
    move-exception v1

    .line 2015
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#silenceRinger"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2018
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist startConference(Ljava/util/List;Landroid/os/Bundle;)V
    .registers 7
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 2380
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2381
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 2383
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2384
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2383
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telecom/ITelecomService;->startConference(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2387
    goto :goto_18

    .line 2385
    :catch_10
    move-exception v1

    .line 2386
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#placeCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2389
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .registers 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 1543
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1544
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_12

    .line 1546
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1549
    goto :goto_12

    .line 1547
    :catch_a
    move-exception v1

    .line 1548
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#unregisterPhoneAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1551
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method
