.class public Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;,
        Lcom/android/server/TelephonyRegistry$ConfigurationProvider;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field private static final ACTION_RADIO_POWER_STATE_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.RADIO_POWER_STATE"

.field public static final ACTION_SIGNAL_STRENGTH_CHANGED:Ljava/lang/String; = "android.intent.action.SIG_STR"

.field private static final ACTION_SUBSCRIPTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SUBSCRIPTION_PHONE_STATE"

.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field private static final DISPLAY_INFO_NR_ADVANCED_SUPPORTED:J = 0xad3e56bL

.field private static final INVALID_LCE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_NOTIFY_CALL_STATE_CHANGED:I = 0x3

.field private static final MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field private static final MSG_USER_SWITCHED:I = 0x1

.field private static final PHONE_CONSTANTS_DATA_APN_KEY:Ljava/lang/String; = "apn"

.field private static final PHONE_CONSTANTS_DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field private static final PHONE_CONSTANTS_SLOT_KEY:Ljava/lang/String; = "slot"

.field private static final PHONE_CONSTANTS_STATE_KEY:Ljava/lang/String; = "state"

.field private static final PHONE_CONSTANTS_SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field private static final REQUIRE_PRECISE_PHONE_STATE_PERMISSION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUIRE_READ_PHONE_STATE_PERMISSION_FOR_ACTIVE_DATA_SUB_ID:J = 0xae06792L

.field private static final REQUIRE_READ_PHONE_STATE_PERMISSION_FOR_CELL_INFO:J = 0xafc8f5eL

.field private static final REQUIRE_READ_PHONE_STATE_PERMISSION_FOR_DISPLAY_INFO:J = 0xaeae033L

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final VDBG:Z = false

.field private static final WECHAT_PKG_NAME:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private mActiveDataSubId:I

.field private mAllowedNetworkTypeReason:[I

.field private mAllowedNetworkTypeValue:[J

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBackgroundCallState:[I

.field private mBarringInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/BarringInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallAttributes:[Landroid/telephony/CallAttributes;

.field private mCallDisconnectCause:[I

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallNetworkType:[I

.field private mCallPreciseDisconnectCause:[I

.field private mCallQuality:[Landroid/telephony/CallQuality;

.field private mCallState:[I

.field private mCarrierNetworkChangeState:[Z

.field private mCarrierPrivilegeStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I>;>;"
        }
    .end annotation
.end field

.field private mCarrierServiceStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCellIdentity:[Landroid/telephony/CellIdentity;

.field private mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

.field private final mContext:Landroid/content/Context;

.field private mDataActivationState:[I

.field private mDataActivity:[I

.field private mDataConnectionNetworkType:[I

.field private mDataConnectionState:[I

.field private mDataEnabledReason:[I

.field private mDefaultPhoneId:I

.field private mDefaultSubId:I

.field private mEmergencyNumberList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation
.end field

.field private mForegroundCallState:[I

.field private final mHandler:Landroid/os/Handler;

.field private mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

.field private mHasNotifySubscriptionInfoChangedOccurred:Z

.field private mImsReasonInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDataEnabled:[Z

.field private mLinkCapacityEstimateLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mListenLog:Landroid/util/LocalLog;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMessageWaiting:[Z

.field private mNumPhones:I

.field private mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

.field private mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

.field private mPhoneCapability:Landroid/telephony/PhoneCapability;

.field private mPhysicalChannelConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreciseCallState:[Landroid/telephony/PreciseCallState;

.field private mPreciseDataConnectionStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/data/ApnSetting;",
            ">;",
            "Landroid/telephony/PreciseDataConnectionState;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRadioPowerState:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingCallState:[I

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mSrvccState:[I

.field private mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

.field private mUserMobileDataState:[Z

.field private mVoiceActivationState:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCellIdentity(Lcom/android/server/TelephonyRegistry;)[Landroid/telephony/CellIdentity;
    .registers 1

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultPhoneId(Lcom/android/server/TelephonyRegistry;)I
    .registers 1

    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultSubId(Lcom/android/server/TelephonyRegistry;)I
    .registers 1

    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/android/server/TelephonyRegistry;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecords(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDefaultPhoneId(Lcom/android/server/TelephonyRegistry;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDefaultSubId(Lcom/android/server/TelephonyRegistry;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckPossibleMissNotify(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCallIncomingNumber(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPhoneIdFromSubId(Lcom/android/server/TelephonyRegistry;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetTelephonyManager(Lcom/android/server/TelephonyRegistry;)Landroid/telephony/TelephonyManager;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleRemoveListLocked(Lcom/android/server/TelephonyRegistry;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCellLocationForSubscriber(Lcom/android/server/TelephonyRegistry;ILandroid/telephony/CellIdentity;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMultiSimConfigChanged(Lcom/android/server/TelephonyRegistry;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremove(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvalidatePhoneId(Lcom/android/server/TelephonyRegistry;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smpii(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/telephony/LinkCapacityEstimate;

    new-instance v2, Landroid/telephony/LinkCapacityEstimate;

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v4}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 404
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 459
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/TelephonyRegistry;->REQUIRE_PRECISE_PHONE_STATE_PERMISSION:Ljava/util/Set;

    .line 460
    nop

    .line 461
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 460
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 462
    nop

    .line 463
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 462
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 464
    nop

    .line 465
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 464
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 466
    nop

    .line 467
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 466
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    nop

    .line 469
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 468
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 470
    nop

    .line 471
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 470
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    nop

    .line 475
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 474
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    nop

    .line 477
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 476
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 478
    nop

    .line 479
    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 478
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configurationProvider"    # Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 801
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 311
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 344
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 361
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 363
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 375
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 379
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 381
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 383
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 385
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 387
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 390
    new-instance v3, Landroid/util/LocalLog;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 392
    new-instance v3, Landroid/util/LocalLog;

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    .line 559
    new-instance v3, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 644
    new-instance v3, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 802
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 803
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 804
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 806
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    .line 808
    .local v3, "numPhones":I
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 809
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 810
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 811
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 812
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 813
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 814
    new-array v4, v3, [Landroid/telephony/ServiceState;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 815
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 816
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 817
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 818
    new-array v4, v3, [Landroid/telephony/SignalStrength;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 819
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 820
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 821
    new-array v4, v3, [Landroid/telephony/CellIdentity;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 822
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 823
    new-array v4, v3, [Landroid/telephony/PreciseCallState;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 824
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 825
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 826
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 827
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 828
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 829
    new-array v4, v3, [Landroid/telephony/CallQuality;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 830
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 831
    new-array v4, v3, [Landroid/telephony/CallAttributes;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    .line 832
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 833
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 834
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 835
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 836
    new-array v4, v3, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 837
    new-array v4, v3, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 838
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 839
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 840
    new-array v4, v3, [Landroid/telephony/TelephonyDisplayInfo;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 841
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 842
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 843
    new-array v4, v3, [J

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 844
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 845
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 846
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    .line 847
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    .line 848
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    .line 850
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_119
    if-ge v4, v3, :cond_1fa

    .line 851
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput v0, v5, v4

    .line 852
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v0, v5, v4

    .line 853
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v2, v5, v4

    .line 854
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput v0, v5, v4

    .line 855
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput v0, v5, v4

    .line 856
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v4

    .line 857
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v6, Landroid/telephony/ServiceState;

    invoke-direct {v6}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v6, v5, v4

    .line 858
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object v1, v5, v4

    .line 859
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean v0, v5, v4

    .line 860
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v0, v5, v4

    .line 861
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v0, v5, v4

    .line 862
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object v1, v5, v4

    .line 863
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 864
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v5, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 865
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput v2, v5, v4

    .line 866
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput v2, v5, v4

    .line 867
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput v2, v5, v4

    .line 868
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v6

    aput-object v6, v5, v4

    .line 869
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v6, Landroid/telephony/CallAttributes;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v7

    .line 870
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v8

    invoke-direct {v6, v7, v0, v8}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v6, v5, v4

    .line 871
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput v0, v5, v4

    .line 872
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v6

    aput-object v6, v5, v4

    .line 873
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput v0, v5, v4

    .line 874
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput v0, v5, v4

    .line 875
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput v0, v5, v4

    .line 876
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    new-instance v6, Landroid/telephony/BarringInfo;

    invoke-direct {v6}, Landroid/telephony/BarringInfo;-><init>()V

    invoke-interface {v5, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 878
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    aput-boolean v0, v5, v4

    .line 879
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aput-object v1, v5, v4

    .line 880
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    aput-boolean v0, v5, v4

    .line 881
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aput v0, v5, v4

    .line 882
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 883
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    aput v2, v5, v4

    .line 884
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    const-wide/16 v6, -0x1

    aput-wide v6, v5, v4

    .line 885
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    sget-object v6, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    invoke-interface {v5, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 886
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    new-array v8, v0, [I

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 887
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 850
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_119

    .line 890
    .end local v4    # "i":I
    :cond_1fa
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 892
    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->init(Lcom/android/server/location/LocationManagerService;Landroid/content/Context;)V

    .line 893
    return-void
.end method

.method private add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;
    .registers 13
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "doesLimitApply"    # Z

    .line 1435
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1436
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1438
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1439
    .local v2, "numRecordsForPid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_24

    .line 1440
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 1441
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne p1, v5, :cond_1b

    .line 1443
    monitor-exit v0

    return-object v4

    .line 1445
    :cond_1b
    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    if-ne v5, p3, :cond_21

    .line 1446
    add-int/lit8 v2, v2, 0x1

    .line 1439
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1450
    .end local v3    # "i":I
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_24
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-virtual {v3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->getRegistrationLimit()I

    move-result v3

    .line 1452
    .local v3, "registrationLimit":I
    if-eqz p4, :cond_5c

    const/4 v4, 0x1

    if-lt v3, v4, :cond_5c

    if-lt v2, v3, :cond_5c

    .line 1455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has exceeded the number of permissible registered listeners. Ignoring request to add."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1457
    .local v4, "errorMsg":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 1458
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 1459
    invoke-virtual {v5, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isRegistrationLimitEnabledInPlatformCompat(I)Z

    move-result v5

    if-nez v5, :cond_56

    .end local v4    # "errorMsg":Ljava/lang/String;
    goto :goto_85

    .line 1460
    .restart local v4    # "errorMsg":Ljava/lang/String;
    :cond_56
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/TelephonyRegistry;
    .end local p1    # "binder":Landroid/os/IBinder;
    .end local p2    # "callingUid":I
    .end local p3    # "callingPid":I
    .end local p4    # "doesLimitApply":Z
    throw v5

    .line 1462
    .end local v4    # "errorMsg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/TelephonyRegistry;
    .restart local p1    # "binder":Landroid/os/IBinder;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingPid":I
    .restart local p4    # "doesLimitApply":Z
    :cond_5c
    if-eqz p4, :cond_85

    const/16 v4, 0x19

    if-lt v2, v4, :cond_85

    .line 1466
    const-string v4, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has exceeded half the number of permissible registered listeners. Now at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 1462
    :cond_85
    :goto_85
    nop

    .line 1470
    :goto_86
    new-instance v4, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$Record-IA;)V

    .line 1471
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 1472
    new-instance v6, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    invoke-direct {v6, p0, p1}, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    iput-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_a7

    .line 1475
    :try_start_95
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_9b} :catch_a4
    .catchall {:try_start_95 .. :try_end_9b} :catchall_a7

    .line 1480
    nop

    .line 1482
    :try_start_9c
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    nop

    .end local v1    # "N":I
    .end local v2    # "numRecordsForPid":I
    .end local v3    # "registrationLimit":I
    monitor-exit v0

    .line 1486
    return-object v4

    .line 1476
    .restart local v1    # "N":I
    .restart local v2    # "numRecordsForPid":I
    .restart local v3    # "registrationLimit":I
    :catch_a4
    move-exception v6

    .line 1479
    .local v6, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-object v5

    .line 1484
    .end local v1    # "N":I
    .end local v2    # "numRecordsForPid":I
    .end local v3    # "registrationLimit":I
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_a7
    move-exception v1

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_9c .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;II)V
    .registers 13
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I

    .line 3285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3287
    .local v0, "ident":J
    const/16 v2, 0x5f

    if-nez p1, :cond_12

    .line 3288
    :try_start_8
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V

    .line 3289
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    goto :goto_22

    .line 3292
    :cond_12
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V

    .line 3293
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_21
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1c

    goto :goto_22

    .line 3299
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3300
    throw v2

    .line 3296
    :catch_21
    move-exception v2

    .line 3299
    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3300
    nop

    .line 3302
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3303
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->callStateToString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3307
    const/4 v3, -0x1

    if-eq p4, v3, :cond_4a

    .line 3308
    const-string v4, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3309
    const-string/jumbo v4, "subscription"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3310
    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3313
    :cond_4a
    if-eq p3, v3, :cond_57

    .line 3314
    const-string/jumbo v3, "slot"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3315
    const-string v3, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3319
    :cond_57
    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3322
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3323
    .local v3, "intentWithPhoneNumber":Landroid/content/Intent;
    const-string/jumbo v4, "incoming_number"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3327
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3329
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v6, 0x33

    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v2, v5, v7, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 3332
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_CALL_LOG"

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 3335
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IILandroid/telephony/PreciseDataConnectionState;)V
    .registers 9
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "pdcs"    # Landroid/telephony/PreciseDataConnectionState;

    .line 3354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3355
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 3356
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 3355
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3357
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3358
    nop

    .line 3359
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v1

    .line 3358
    const-string v2, "apnType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3360
    const-string/jumbo v1, "slot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3361
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3365
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3366
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 3367
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3370
    return-void
.end method

.method private broadcastRadioPowerStateChanged(III)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 3226
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.intent.action.RADIO_POWER_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3227
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3229
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3230
    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3231
    const-string/jumbo v1, "slot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3232
    const-string v1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3233
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3234
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3236
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V
    .registers 20
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 3132
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3134
    .local v5, "ident":J
    :try_start_c
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-interface {v0, v7}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_1b
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    goto :goto_1c

    .line 3138
    :catchall_16
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3139
    throw v0

    .line 3135
    :catch_1b
    move-exception v0

    .line 3138
    :goto_1c
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3139
    nop

    .line 3155
    new-instance v0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v7, 0x1

    const-string v8, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v9, "android.permission.READ_PHONE_STATE"

    const/4 v10, 0x0

    if-eqz v0, :cond_8a

    .line 3157
    invoke-direct {v1, v2, v4, v3, v10}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    move-result-object v0

    .line 3158
    .local v0, "fullIntent":Landroid/content/Intent;
    iget-object v11, v1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v12, v10}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v11

    const-string v12, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v9, v12}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v0, v13}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 3162
    iget-object v11, v1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v13, v10}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v11

    filled-new-array {v8, v12}, [Ljava/lang/String;

    move-result-object v13

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v0, v13, v14}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3168
    invoke-direct {v1, v2, v4, v3, v7}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    move-result-object v7

    .line 3169
    .local v7, "sanitizedIntent":Landroid/content/Intent;
    iget-object v11, v1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v13, v10}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v11

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v13

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v7, v13, v14}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3173
    iget-object v11, v1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v13, v10}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v10

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v9, v12}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v7, v8, v9}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3178
    .end local v0    # "fullIntent":Landroid/content/Intent;
    .end local v7    # "sanitizedIntent":Landroid/content/Intent;
    goto :goto_f3

    .line 3179
    :cond_8a
    new-instance v0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3181
    .local v0, "locationBypassPackages":[Ljava/lang/String;
    array-length v11, v0

    move v12, v10

    :goto_97
    if-ge v12, v11, :cond_c9

    aget-object v13, v0, v12

    .line 3182
    .local v13, "locationBypassPackage":Ljava/lang/String;
    invoke-direct {v1, v2, v4, v3, v10}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    move-result-object v14

    .line 3183
    .local v14, "fullIntent":Landroid/content/Intent;
    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3184
    iget-object v15, v1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v15, v7, v10}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v7

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 3187
    iget-object v7, v1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v15, v10}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v7

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v15

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v14, v15, v10}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3181
    .end local v13    # "locationBypassPackage":Ljava/lang/String;
    .end local v14    # "fullIntent":Landroid/content/Intent;
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x0

    goto :goto_97

    .line 3193
    :cond_c9
    const/4 v7, 0x1

    invoke-direct {v1, v2, v4, v3, v7}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    move-result-object v7

    .line 3194
    .restart local v7    # "sanitizedIntent":Landroid/content/Intent;
    iget-object v10, v1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v10

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v11

    new-array v13, v12, [Ljava/lang/String;

    invoke-virtual {v10, v7, v11, v13, v0}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3199
    iget-object v10, v1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v10

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v7, v8, v9, v0}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3205
    .end local v0    # "locationBypassPackages":[Ljava/lang/String;
    .end local v7    # "sanitizedIntent":Landroid/content/Intent;
    :goto_f3
    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V
    .registers 10
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 3240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3242
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_f
    .catchall {:try_start_4 .. :try_end_9} :catchall_a

    goto :goto_10

    .line 3246
    :catchall_a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3247
    throw v2

    .line 3243
    :catch_f
    move-exception v2

    .line 3246
    :goto_10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3247
    nop

    .line 3249
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIG_STR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3250
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3251
    .local v3, "data":Landroid/os/Bundle;
    invoke-direct {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->fillInSignalStrengthNotifierBundle(Landroid/telephony/SignalStrength;Landroid/os/Bundle;)V

    .line 3252
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3253
    const-string/jumbo v4, "subscription"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3254
    const-string/jumbo v4, "slot"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3255
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3256
    return-void
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "callState"    # I

    .line 3339
    packed-switch p0, :pswitch_data_c

    .line 3345
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    return-object v0

    .line 3343
    :pswitch_6
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-object v0

    .line 3341
    :pswitch_9
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;

    .line 3576
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0

    return v0
.end method

.method private checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "minSdk"    # I

    .line 3614
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->renounceCoarseLocationAccess:Z

    if-eqz v0, :cond_6

    .line 3615
    const/4 v0, 0x0

    return v0

    .line 3617
    :cond_6
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 3619
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 3620
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 3621
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 3622
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3623
    const-string v1, "TelephonyRegistry push"

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 3624
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3625
    invoke-virtual {v0, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    .line 3626
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3627
    invoke-virtual {v0, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3628
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v0

    .line 3630
    .local v0, "query":Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    new-instance v1, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;

    .line 3572
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0

    return v0
.end method

.method private checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "minSdk"    # I

    .line 3585
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->renounceFineLocationAccess:Z

    if-eqz v0, :cond_6

    .line 3586
    const/4 v0, 0x0

    return v0

    .line 3588
    :cond_6
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 3590
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 3591
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 3592
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 3593
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3594
    const-string v1, "TelephonyRegistry push"

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 3595
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3596
    invoke-virtual {v0, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3597
    invoke-virtual {v0, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3598
    invoke-virtual {v0, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3599
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v0

    .line 3601
    .local v0, "query":Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    new-instance v1, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private checkListenerPermission(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 3419
    .local p1, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 3421
    invoke-virtual {v0, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3422
    invoke-virtual {v0, p4}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3423
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3424
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3425
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3427
    .local v0, "locationQueryBuilder":Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    const/4 v1, 0x0

    .line 3429
    .local v1, "shouldCheckLocationPermissions":Z
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->isLocationPermissionRequired(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3431
    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 3434
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 3435
    invoke-virtual {v0, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 3436
    const/4 v1, 0x1

    .line 3439
    :cond_4c
    const/4 v2, 0x1

    .line 3441
    .local v2, "isPermissionCheckSuccessful":Z
    if-eqz v1, :cond_86

    .line 3442
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3444
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v4

    .line 3443
    invoke-static {v3, v4}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v3

    .line 3445
    .local v3, "result":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    sget-object v4, Lcom/android/server/TelephonyRegistry$3;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    invoke-virtual {v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_ca

    goto :goto_86

    .line 3450
    :pswitch_65
    const/4 v2, 0x0

    goto :goto_86

    .line 3447
    :pswitch_67
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to listen for events "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to insufficient location permissions."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3454
    .end local v3    # "result":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    :cond_86
    :goto_86
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/TelephonyRegistry;->isPhoneStatePermissionRequired(Ljava/util/Set;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 3455
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, p3, p4, p5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_99

    .line 3457
    const/4 v2, 0x0

    .line 3461
    :cond_99
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->isPrecisePhoneStatePermissionRequired(Ljava/util/Set;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_ae

    .line 3465
    :try_start_a0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/SecurityException; {:try_start_a0 .. :try_end_a7} :catch_a8

    .line 3469
    goto :goto_ae

    .line 3467
    :catch_a8
    move-exception v3

    .line 3468
    .local v3, "se":Ljava/lang/SecurityException;
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v5, p2, p5}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 3472
    .end local v3    # "se":Ljava/lang/SecurityException;
    :cond_ae
    :goto_ae
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->isActiveEmergencySessionPermissionRequired(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 3473
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_ACTIVE_EMERGENCY_SESSION"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    :cond_bb
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->isPrivilegedPhoneStatePermissionRequired(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 3478
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3481
    :cond_c8
    return v2

    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_67
        :pswitch_65
    .end packed-switch
.end method

.method private checkNotifyPermission()Z
    .registers 3

    .line 3413
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .line 3403
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3404
    const/4 v0, 0x1

    return v0

    .line 3406
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Modify Phone State Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3407
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3409
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method private checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .line 3638
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 3640
    .local v0, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1a7

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_1a7

    .line 3645
    :cond_c
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x1d

    if-eqz v2, :cond_51

    .line 3649
    :try_start_19
    new-instance v2, Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p2

    invoke-direct {v2, v4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 3650
    .local v2, "ss":Landroid/telephony/ServiceState;
    invoke-direct {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3651
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_48

    .line 3652
    :cond_2e
    invoke-direct {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 3653
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v5, 0x0

    .line 3654
    invoke-virtual {v2, v5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 3653
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_48

    .line 3656
    :cond_3f
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 3657
    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 3656
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_48} :catch_49

    .line 3661
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    :goto_48
    goto :goto_51

    .line 3659
    :catch_49
    move-exception v2

    .line 3660
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3664
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 3666
    :try_start_5d
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p2

    if-eqz v2, :cond_6e

    .line 3667
    nop

    .line 3672
    .local v2, "signalStrength":Landroid/telephony/SignalStrength;
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5, v2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_6e} :catch_6f

    .line 3676
    .end local v2    # "signalStrength":Landroid/telephony/SignalStrength;
    :cond_6e
    goto :goto_77

    .line 3674
    :catch_6f
    move-exception v2

    .line 3675
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3679
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_77
    :goto_77
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 3681
    :try_start_82
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p2

    if-eqz v2, :cond_99

    .line 3682
    nop

    .line 3683
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 3688
    .local v2, "gsmSignalStrength":I
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v5, 0x63

    if-ne v2, v5, :cond_95

    const/4 v5, -0x1

    goto :goto_96

    .line 3689
    :cond_95
    move v5, v2

    .line 3688
    :goto_96
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_99} :catch_9a

    .line 3693
    .end local v2    # "gsmSignalStrength":I
    :cond_99
    goto :goto_a2

    .line 3691
    :catch_9a
    move-exception v2

    .line 3692
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3696
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_a2
    :goto_a2
    const/16 v2, 0xb

    invoke-direct {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 3702
    :try_start_aa
    invoke-direct {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 3703
    invoke-direct {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 3706
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 3707
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget v6, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object v7, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->getBlurryCellInfos(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3706
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_cf} :catch_d0

    .line 3711
    :cond_cf
    goto :goto_d8

    .line 3709
    :catch_d0
    move-exception v2

    .line 3710
    .restart local v2    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3714
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_d8
    :goto_d8
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 3720
    :try_start_e4
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v4, v4, p2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_ed} :catch_ee

    .line 3723
    goto :goto_f6

    .line 3721
    :catch_ee
    move-exception v2

    .line 3722
    .restart local v2    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3726
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_f6
    :goto_f6
    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 3732
    :try_start_102
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aget-object v2, v2, p2

    if-eqz v2, :cond_111

    .line 3733
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aget-object v4, v4, p2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_111} :catch_112

    .line 3737
    :cond_111
    goto :goto_11a

    .line 3735
    :catch_112
    move-exception v2

    .line 3736
    .restart local v2    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3740
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_11a
    :goto_11a
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_137

    .line 3746
    :try_start_125
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v4, v4, p2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_125 .. :try_end_12e} :catch_12f

    .line 3750
    goto :goto_137

    .line 3748
    :catch_12f
    move-exception v2

    .line 3749
    .restart local v2    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3753
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_137
    :goto_137
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 3759
    :try_start_142
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v4, v4, p2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_14b
    .catch Landroid/os/RemoteException; {:try_start_142 .. :try_end_14b} :catch_14c

    .line 3763
    goto :goto_154

    .line 3761
    :catch_14c
    move-exception v2

    .line 3762
    .restart local v2    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3766
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_154
    :goto_154
    const/4 v2, 0x5

    invoke-direct {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_185

    .line 3772
    :try_start_15b
    invoke-direct {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 3773
    invoke-direct {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 3777
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object v3, v3, p2

    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 3778
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->getBlurryCellLocation(Landroid/telephony/CellIdentity;ILjava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v2

    .line 3777
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_17c
    .catch Landroid/os/RemoteException; {:try_start_15b .. :try_end_17c} :catch_17d

    .line 3782
    :cond_17c
    goto :goto_185

    .line 3780
    :catch_17d
    move-exception v1

    .line 3781
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3785
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_185
    :goto_185
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 3793
    :try_start_190
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v2, v2, p2

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v3, v3, p2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_19d
    .catch Landroid/os/RemoteException; {:try_start_190 .. :try_end_19d} :catch_19e

    .line 3797
    goto :goto_1a6

    .line 3795
    :catch_19e
    move-exception v1

    .line 3796
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3799
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1a6
    :goto_1a6
    return-void

    .line 3641
    :cond_1a7
    :goto_1a7
    const-string v1, "checkPossibleMissNotify: events = null."

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3642
    return-void
.end method

.method private static createCallQuality()Landroid/telephony/CallQuality;
    .registers 13

    .line 3872
    new-instance v12, Landroid/telephony/CallQuality;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CallQuality;-><init>(IIIIIIIIIII)V

    return-object v12
.end method

.method private static createPreciseCallState()Landroid/telephony/PreciseCallState;
    .registers 7

    .line 3863
    new-instance v6, Landroid/telephony/PreciseCallState;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    return-object v6
.end method

.method private createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;
    .registers 8
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I
    .param p4, "sanitizeLocation"    # Z

    .line 3209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3210
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3211
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3212
    .local v1, "data":Landroid/os/Bundle;
    if-eqz p4, :cond_1c

    .line 3213
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    goto :goto_1f

    .line 3215
    :cond_1c
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 3217
    :goto_1f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3218
    const-string/jumbo v2, "subscription"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3219
    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3220
    const-string/jumbo v2, "slot"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3221
    const-string v2, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3222
    return-object v0
.end method

.method private cutListToSize(Ljava/util/List;I)V
    .registers 4
    .param p1, "list"    # Ljava/util/List;
    .param p2, "size"    # I

    .line 786
    if-nez p1, :cond_3

    return-void

    .line 788
    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_13

    .line 789
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 791
    :cond_13
    return-void
.end method

.method private enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .line 3394
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3395
    return-void

    .line 3398
    :cond_7
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3399
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    .line 3398
    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 3400
    return-void
.end method

.method private fillInSignalStrengthNotifierBundle(Landroid/telephony/SignalStrength;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 3259
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v0

    .line 3260
    .local v0, "cellSignalStrengths":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellSignalStrength;

    .line 3261
    .local v2, "cellSignalStrength":Landroid/telephony/CellSignalStrength;
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v3, :cond_21

    .line 3262
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthLte;

    const-string v4, "Lte"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_61

    .line 3263
    :cond_21
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthCdma;

    if-eqz v3, :cond_2e

    .line 3264
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthCdma;

    const-string v4, "Cdma"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_61

    .line 3265
    :cond_2e
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthGsm;

    if-eqz v3, :cond_3b

    .line 3266
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthGsm;

    const-string v4, "Gsm"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_61

    .line 3267
    :cond_3b
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthWcdma;

    if-eqz v3, :cond_48

    .line 3268
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthWcdma;

    const-string v4, "Wcdma"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_61

    .line 3269
    :cond_48
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthTdscdma;

    if-eqz v3, :cond_55

    .line 3270
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthTdscdma;

    const-string v4, "Tdscdma"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_61

    .line 3271
    :cond_55
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v3, :cond_61

    .line 3272
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthNr;

    const-string v4, "Nr"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3274
    .end local v2    # "cellSignalStrength":Landroid/telephony/CellSignalStrength;
    :cond_61
    :goto_61
    goto :goto_8

    .line 3275
    :cond_62
    return-void
.end method

.method public static getApnTypesStringFromBitmask(I)Ljava/lang/String;
    .registers 6
    .param p0, "apnTypeBitmask"    # I

    .line 3377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3378
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v1, p0

    .line 3380
    .local v1, "remainingApnTypes":I
    and-int/lit8 v2, v1, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_13

    .line 3381
    const-string v2, "default"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3382
    and-int/lit8 v1, v1, -0x12

    .line 3384
    :cond_13
    :goto_13
    if-eqz v1, :cond_29

    .line 3385
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    .line 3386
    .local v2, "highestApnTypeBit":I
    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v3

    .line 3387
    .local v3, "apnString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3388
    :cond_26
    not-int v4, v2

    and-int/2addr v1, v4

    .line 3389
    .end local v2    # "highestApnTypeBit":I
    .end local v3    # "apnString":Ljava/lang/String;
    goto :goto_13

    .line 3390
    :cond_29
    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getBackwardCompatibleTelephonyDisplayInfo(Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;
    .registers 5
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 1984
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    .line 1985
    .local v0, "networkType":I
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v1

    .line 1986
    .local v1, "overrideNetworkType":I
    const/16 v2, 0x14

    if-ne v0, v2, :cond_e

    .line 1987
    const/4 v1, 0x0

    goto :goto_16

    .line 1988
    :cond_e
    const/16 v2, 0xd

    if-ne v0, v2, :cond_16

    const/4 v2, 0x5

    if-ne v1, v2, :cond_16

    .line 1990
    const/4 v1, 0x4

    .line 1992
    :cond_16
    :goto_16
    new-instance v2, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v2, v0, v1}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    return-object v2
.end method

.method private getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .registers 4
    .param p1, "record"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .line 1429
    invoke-virtual {p1}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_d

    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method private static getLocationSanitizedConfigs(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation

    .line 2728
    .local p0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2729
    .local v0, "sanitizedConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhysicalChannelConfig;

    .line 2730
    .local v2, "config":Landroid/telephony/PhysicalChannelConfig;
    invoke-virtual {v2}, Landroid/telephony/PhysicalChannelConfig;->createLocationInfoSanitizedCopy()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2731
    .end local v2    # "config":Landroid/telephony/PhysicalChannelConfig;
    goto :goto_d

    .line 2732
    :cond_21
    return-object v0
.end method

.method private getNetworkTypeName(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .line 3809
    packed-switch p1, :pswitch_data_40

    .line 3857
    :pswitch_3
    const-string v0, "UNKNOWN"

    return-object v0

    .line 3855
    :pswitch_6
    const-string v0, "NR"

    return-object v0

    .line 3845
    :pswitch_9
    const-string v0, "IWLAN"

    return-object v0

    .line 3843
    :pswitch_c
    const-string v0, "TD_SCDMA"

    return-object v0

    .line 3841
    :pswitch_f
    const-string v0, "GSM"

    return-object v0

    .line 3839
    :pswitch_12
    const-string v0, "HSPA+"

    return-object v0

    .line 3835
    :pswitch_15
    const-string v0, "CDMA - eHRPD"

    return-object v0

    .line 3833
    :pswitch_18
    const-string v0, "LTE"

    return-object v0

    .line 3829
    :pswitch_1b
    const-string v0, "CDMA - EvDo rev. B"

    return-object v0

    .line 3837
    :pswitch_1e
    const-string/jumbo v0, "iDEN"

    return-object v0

    .line 3821
    :pswitch_22
    const-string v0, "HSPA"

    return-object v0

    .line 3819
    :pswitch_25
    const-string v0, "HSUPA"

    return-object v0

    .line 3817
    :pswitch_28
    const-string v0, "HSDPA"

    return-object v0

    .line 3831
    :pswitch_2b
    const-string v0, "CDMA - 1xRTT"

    return-object v0

    .line 3827
    :pswitch_2e
    const-string v0, "CDMA - EvDo rev. A"

    return-object v0

    .line 3825
    :pswitch_31
    const-string v0, "CDMA - EvDo rev. 0"

    return-object v0

    .line 3823
    :pswitch_34
    const-string v0, "CDMA"

    return-object v0

    .line 3815
    :pswitch_37
    const-string v0, "UMTS"

    return-object v0

    .line 3813
    :pswitch_3a
    const-string v0, "EDGE"

    return-object v0

    .line 3811
    :pswitch_3d
    const-string v0, "GPRS"

    return-object v0

    :pswitch_data_40
    .packed-switch 0x1
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
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private getPhoneIdFromSubId(I)I
    .registers 5
    .param p1, "subId"    # I

    .line 3876
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3877
    const-string/jumbo v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 3878
    .local v0, "subManager":Landroid/telephony/SubscriptionManager;
    const/4 v1, -0x1

    if-nez v0, :cond_f

    return v1

    .line 3880
    :cond_f
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_18

    .line 3881
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 3884
    :cond_18
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 3885
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_1f

    return v1

    .line 3886
    :cond_1f
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    return v1
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 680
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleRemoveListLocked()V
    .registers 4

    .line 3485
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3487
    .local v0, "size":I
    if-lez v0, :cond_23

    .line 3488
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 3489
    .local v2, "b":Landroid/os/IBinder;
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 3490
    .end local v2    # "b":Landroid/os/IBinder;
    goto :goto_e

    .line 3491
    :cond_1e
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3493
    :cond_23
    return-void
.end method

.method private isActiveEmergencySessionPermissionRequired(Ljava/util/Set;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 541
    .local p1, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 v0, 0x1e

    .line 542
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 541
    :goto_1c
    return v0
.end method

.method private isLocationPermissionRequired(Ljava/util/Set;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 483
    .local p1, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const/16 v0, 0xb

    .line 484
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const/16 v0, 0x1f

    .line 485
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const/16 v0, 0x20

    .line 486
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    .line 483
    :goto_33
    return v0
.end method

.method private isPhoneStatePermissionRequired(Ljava/util/Set;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")Z"
        }
    .end annotation

    .line 491
    .local p1, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_85

    const/4 v0, 0x3

    .line 492
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    const/16 v0, 0x19

    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_85

    .line 498
    :cond_24
    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x6

    .line 499
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_3b
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 500
    invoke-virtual {v0, p2, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isCallStateReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 502
    return v1

    .line 507
    :cond_44
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 508
    invoke-virtual {v0, p2, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isActiveDataSubIdReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 510
    return v1

    .line 514
    :cond_59
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 515
    invoke-virtual {v0, p2, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isCellInfoReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 517
    return v1

    .line 522
    :cond_6e
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 523
    invoke-virtual {v0, p2, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isDisplayInfoReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 525
    return v1

    .line 528
    :cond_83
    const/4 v0, 0x0

    return v0

    .line 494
    :cond_85
    :goto_85
    return v1
.end method

.method private isPrecisePhoneStatePermissionRequired(Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 532
    .local p1, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/android/server/TelephonyRegistry;->REQUIRE_PRECISE_PHONE_STATE_PERMISSION:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 533
    .local v1, "requireEvent":Ljava/lang/Integer;
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 534
    const/4 v0, 0x1

    return v0

    .line 536
    .end local v1    # "requireEvent":Ljava/lang/Integer;
    :cond_1a
    goto :goto_6

    .line 537
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private isPrivilegedPhoneStatePermissionRequired(Ljava/util/Set;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 546
    .local p1, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const/16 v0, 0x12

    .line 547
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const/16 v0, 0x18

    .line 548
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const/16 v0, 0x23

    .line 549
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v0, 0x1

    .line 546
    :goto_34
    return v0
.end method

.method private listen(ZZLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;Ljava/util/Set;ZI)V
    .registers 27
    .param p1, "renounceFineLocationAccess"    # Z
    .param p2, "renounceCoarseLocationAccess"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p7, "notifyNow"    # Z
    .param p8, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/IPhoneStateListener;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .line 1073
    .local p6, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 1074
    .local v12, "callerUserId":I
    iget-object v1, v7, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v8}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listen: E pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifyNow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " myUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1077
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callerUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1079
    .local v13, "str":Ljava/lang/String;
    iget-object v1, v7, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v13}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1084
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1088
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->clear()V

    .line 1089
    invoke-interface/range {p5 .. p5}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1090
    return-void

    .line 1096
    :cond_89
    const-string/jumbo v6, "listen"

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 1097
    return-void

    .line 1100
    :cond_9d
    iget-object v1, v7, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1102
    :try_start_a0
    invoke-interface/range {p5 .. p5}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1104
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_c0

    .line 1105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_c0

    .line 1106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_c0

    const/4 v3, 0x1

    goto :goto_c1

    :cond_c0
    const/4 v3, 0x0

    .line 1107
    .local v3, "doesLimitApply":Z
    :goto_c1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-direct {v7, v2, v4, v14, v3}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v4

    .line 1109
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez v4, :cond_d1

    .line 1110
    monitor-exit v1

    return-void

    .line 1113
    :cond_d1
    iget-object v14, v7, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v14, v4, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;
    :try_end_d5
    .catchall {:try_start_a0 .. :try_end_d5} :catchall_5b2

    .line 1114
    move-object/from16 v14, p5

    :try_start_d7
    iput-object v14, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1115
    iput-object v8, v4, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;
    :try_end_db
    .catchall {:try_start_d7 .. :try_end_db} :catchall_5ae

    .line 1116
    move-object/from16 v15, p4

    :try_start_dd
    iput-object v15, v4, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 1117
    move/from16 v5, p2

    iput-boolean v5, v4, Lcom/android/server/TelephonyRegistry$Record;->renounceCoarseLocationAccess:Z

    .line 1118
    move/from16 v6, p1

    iput-boolean v6, v4, Lcom/android/server/TelephonyRegistry$Record;->renounceFineLocationAccess:Z

    .line 1119
    move-object/from16 v16, v2

    .end local v2    # "b":Landroid/os/IBinder;
    .local v16, "b":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 1120
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 1123
    invoke-static/range {p8 .. p8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_101

    .line 1127
    const v2, 0x7fffffff

    iput v2, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    goto :goto_103

    .line 1129
    :cond_101
    iput v11, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1131
    :goto_103
    iget v2, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-direct {v7, v2}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v2

    iput v2, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1132
    iput-object v9, v4, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 1137
    if-eqz v10, :cond_5aa

    iget v2, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-direct {v7, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_5aa

    .line 1138
    move/from16 v17, v3

    const/4 v2, 0x1

    .end local v3    # "doesLimitApply":Z
    .local v17, "doesLimitApply":Z
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_122
    .catchall {:try_start_dd .. :try_end_122} :catchall_5ba

    if-eqz v2, :cond_162

    .line 1141
    :try_start_124
    new-instance v2, Landroid/telephony/ServiceState;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object v3, v3, v5

    invoke-direct {v2, v3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1142
    .local v2, "rawSs":Landroid/telephony/ServiceState;
    const/16 v3, 0x1d

    invoke-direct {v7, v4, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_13d

    .line 1143
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_15a

    .line 1144
    :cond_13d
    const/16 v3, 0x1d

    invoke-direct {v7, v4, v3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_150

    .line 1145
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1146
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 1145
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_15a

    .line 1148
    :cond_150
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1149
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 1148
    invoke-interface {v3, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_15a
    .catch Landroid/os/RemoteException; {:try_start_124 .. :try_end_15a} :catch_15b
    .catchall {:try_start_124 .. :try_end_15a} :catchall_5ba

    .line 1153
    .end local v2    # "rawSs":Landroid/telephony/ServiceState;
    :goto_15a
    goto :goto_162

    .line 1151
    :catch_15b
    move-exception v0

    move-object v2, v0

    .line 1152
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_15d
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1155
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_162
    :goto_162
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_16b
    .catchall {:try_start_15d .. :try_end_16b} :catchall_5ba

    if-eqz v2, :cond_193

    .line 1157
    :try_start_16d
    iget-object v2, v7, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v3, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_18b

    .line 1158
    iget-object v2, v7, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v3, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object v2, v2, v3

    .line 1159
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 1160
    .local v2, "gsmSignalStrength":I
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v5, 0x63

    if-ne v2, v5, :cond_187

    const/4 v5, -0x1

    goto :goto_188

    .line 1161
    :cond_187
    move v5, v2

    .line 1160
    :goto_188
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_18b
    .catch Landroid/os/RemoteException; {:try_start_16d .. :try_end_18b} :catch_18c
    .catchall {:try_start_16d .. :try_end_18b} :catchall_5ba

    .line 1165
    .end local v2    # "gsmSignalStrength":I
    :cond_18b
    goto :goto_193

    .line 1163
    :catch_18c
    move-exception v0

    move-object v2, v0

    .line 1164
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_18e
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1167
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_193
    :goto_193
    const/4 v2, 0x3

    .line 1168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1167
    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_19c
    .catchall {:try_start_18e .. :try_end_19c} :catchall_5ba

    if-eqz v2, :cond_1b1

    .line 1170
    :try_start_19e
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1a9
    .catch Landroid/os/RemoteException; {:try_start_19e .. :try_end_1a9} :catch_1aa
    .catchall {:try_start_19e .. :try_end_1a9} :catchall_5ba

    .line 1174
    goto :goto_1b1

    .line 1172
    :catch_1aa
    move-exception v0

    move-object v2, v0

    .line 1173
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_1ac
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1176
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_1b1
    :goto_1b1
    const/4 v2, 0x4

    .line 1177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1176
    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1ba
    .catchall {:try_start_1ac .. :try_end_1ba} :catchall_5ba

    if-eqz v2, :cond_1cf

    .line 1179
    :try_start_1bc
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1c7
    .catch Landroid/os/RemoteException; {:try_start_1bc .. :try_end_1c7} :catch_1c8
    .catchall {:try_start_1bc .. :try_end_1c7} :catchall_5ba

    .line 1183
    goto :goto_1cf

    .line 1181
    :catch_1c8
    move-exception v0

    move-object v2, v0

    .line 1182
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_1ca
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1185
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_1cf
    :goto_1cf
    const/4 v2, 0x5

    invoke-direct {v7, v4, v2}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2
    :try_end_1d4
    .catchall {:try_start_1ca .. :try_end_1d4} :catchall_5ba

    if-eqz v2, :cond_204

    .line 1189
    const/4 v2, 0x1

    :try_start_1d7
    invoke-direct {v7, v4, v2}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 1190
    const/16 v2, 0x1d

    invoke-direct {v7, v4, v2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 1194
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v3

    iget-object v5, v7, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object v5, v5, v6

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object v8, v4, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 1195
    invoke-virtual {v3, v5, v6, v8}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->getBlurryCellLocation(Landroid/telephony/CellIdentity;ILjava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v3

    .line 1194
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_1fc
    .catch Landroid/os/RemoteException; {:try_start_1d7 .. :try_end_1fc} :catch_1fd
    .catchall {:try_start_1d7 .. :try_end_1fc} :catchall_5ba

    .line 1200
    :cond_1fc
    goto :goto_204

    .line 1198
    :catch_1fd
    move-exception v0

    move-object v2, v0

    .line 1199
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_1ff
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1202
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_204
    :goto_204
    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_20e
    .catchall {:try_start_1ff .. :try_end_20e} :catchall_5ba

    if-eqz v2, :cond_23c

    .line 1205
    :try_start_210
    iget-object v2, v7, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget v5, v5, v6

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    const/4 v8, 0x1

    invoke-static {v2, v3, v5, v6, v8}, Landroid/telephony/TelephonyBaseUtilsStub;->delayNotifyCallStateIfNeeded(Landroid/os/Handler;Ljava/lang/String;IIZ)Z

    move-result v2

    if-nez v2, :cond_234

    .line 1206
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget v3, v3, v5

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1207
    invoke-direct {v7, v4, v5}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v5

    .line 1206
    invoke-interface {v2, v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_234
    .catch Landroid/os/RemoteException; {:try_start_210 .. :try_end_234} :catch_235
    .catchall {:try_start_210 .. :try_end_234} :catchall_5ba

    .line 1212
    :cond_234
    goto :goto_23c

    .line 1210
    :catch_235
    move-exception v0

    move-object v2, v0

    .line 1211
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_237
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1214
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_23c
    :goto_23c
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_245
    .catchall {:try_start_237 .. :try_end_245} :catchall_5ba

    if-eqz v2, :cond_25a

    .line 1216
    :try_start_247
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(I)V
    :try_end_252
    .catch Landroid/os/RemoteException; {:try_start_247 .. :try_end_252} :catch_253
    .catchall {:try_start_247 .. :try_end_252} :catchall_5ba

    .line 1219
    goto :goto_25a

    .line 1217
    :catch_253
    move-exception v0

    move-object v2, v0

    .line 1218
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_255
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1221
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_25a
    :goto_25a
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_263
    .catchall {:try_start_255 .. :try_end_263} :catchall_5ba

    if-eqz v2, :cond_27e

    .line 1223
    :try_start_265
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget v3, v3, v5

    iget-object v5, v7, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget v5, v5, v6

    invoke-interface {v2, v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_276
    .catch Landroid/os/RemoteException; {:try_start_265 .. :try_end_276} :catch_277
    .catchall {:try_start_265 .. :try_end_276} :catchall_5ba

    .line 1227
    goto :goto_27e

    .line 1225
    :catch_277
    move-exception v0

    move-object v2, v0

    .line 1226
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_279
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1229
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_27e
    :goto_27e
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_288
    .catchall {:try_start_279 .. :try_end_288} :catchall_5ba

    if-eqz v2, :cond_29d

    .line 1231
    :try_start_28a
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_295
    .catch Landroid/os/RemoteException; {:try_start_28a .. :try_end_295} :catch_296
    .catchall {:try_start_28a .. :try_end_295} :catchall_5ba

    .line 1234
    goto :goto_29d

    .line 1232
    :catch_296
    move-exception v0

    move-object v2, v0

    .line 1233
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_298
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1236
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_29d
    :goto_29d
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2a7
    .catchall {:try_start_298 .. :try_end_2a7} :catchall_5ba

    if-eqz v2, :cond_2c4

    .line 1238
    :try_start_2a9
    iget-object v2, v7, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v3, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_2bc

    .line 1239
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_2bc
    .catch Landroid/os/RemoteException; {:try_start_2a9 .. :try_end_2bc} :catch_2bd
    .catchall {:try_start_2a9 .. :try_end_2bc} :catchall_5ba

    .line 1243
    :cond_2bc
    goto :goto_2c4

    .line 1241
    :catch_2bd
    move-exception v0

    move-object v2, v0

    .line 1242
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_2bf
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1245
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_2c4
    :goto_2c4
    const/16 v2, 0xb

    invoke-direct {v7, v4, v2}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2
    :try_end_2ca
    .catchall {:try_start_2bf .. :try_end_2ca} :catchall_5ba

    if-eqz v2, :cond_2fe

    .line 1252
    const/4 v2, 0x1

    :try_start_2cd
    invoke-direct {v7, v4, v2}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v3

    if-eqz v3, :cond_2f6

    .line 1253
    const/16 v2, 0x1d

    invoke-direct {v7, v4, v2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_2f6

    .line 1256
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v3

    iget-object v5, v7, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1257
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object v8, v4, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v8}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->getBlurryCellInfos(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1256
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_2f6
    .catch Landroid/os/RemoteException; {:try_start_2cd .. :try_end_2f6} :catch_2f7
    .catchall {:try_start_2cd .. :try_end_2f6} :catchall_5ba

    .line 1262
    :cond_2f6
    goto :goto_2fe

    .line 1260
    :catch_2f7
    move-exception v0

    move-object v2, v0

    .line 1261
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_2f9
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1264
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_2fe
    :goto_2fe
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_308
    .catchall {:try_start_2f9 .. :try_end_308} :catchall_5ba

    if-eqz v2, :cond_31d

    .line 1266
    :try_start_30a
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_315
    .catch Landroid/os/RemoteException; {:try_start_30a .. :try_end_315} :catch_316
    .catchall {:try_start_30a .. :try_end_315} :catchall_5ba

    .line 1269
    goto :goto_31d

    .line 1267
    :catch_316
    move-exception v0

    move-object v2, v0

    .line 1268
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_318
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1271
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_31d
    :goto_31d
    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_327
    .catchall {:try_start_318 .. :try_end_327} :catchall_5ba

    if-eqz v2, :cond_342

    .line 1273
    :try_start_329
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget v3, v3, v5

    iget-object v5, v7, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget v5, v5, v6

    invoke-interface {v2, v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_33a
    .catch Landroid/os/RemoteException; {:try_start_329 .. :try_end_33a} :catch_33b
    .catchall {:try_start_329 .. :try_end_33a} :catchall_5ba

    .line 1277
    goto :goto_342

    .line 1275
    :catch_33b
    move-exception v0

    move-object v2, v0

    .line 1276
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_33d
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1279
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_342
    :goto_342
    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_34c
    .catchall {:try_start_33d .. :try_end_34c} :catchall_5ba

    if-eqz v2, :cond_365

    .line 1281
    :try_start_34e
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_35d
    .catch Landroid/os/RemoteException; {:try_start_34e .. :try_end_35d} :catch_35e
    .catchall {:try_start_34e .. :try_end_35d} :catchall_5ba

    .line 1284
    goto :goto_365

    .line 1282
    :catch_35e
    move-exception v0

    move-object v2, v0

    .line 1283
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_360
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1286
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_365
    :goto_365
    const/16 v2, 0xd

    .line 1287
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1286
    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_36f
    .catchall {:try_start_360 .. :try_end_36f} :catchall_5ba

    if-eqz v2, :cond_39d

    .line 1290
    :try_start_371
    iget-object v2, v7, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    iget v3, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_383
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_395

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/PreciseDataConnectionState;

    .line 1291
    .local v3, "pdcs":Landroid/telephony/PreciseDataConnectionState;
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_394
    .catch Landroid/os/RemoteException; {:try_start_371 .. :try_end_394} :catch_396
    .catchall {:try_start_371 .. :try_end_394} :catchall_5ba

    .line 1292
    .end local v3    # "pdcs":Landroid/telephony/PreciseDataConnectionState;
    goto :goto_383

    .line 1295
    :cond_395
    goto :goto_39d

    .line 1293
    :catch_396
    move-exception v0

    move-object v2, v0

    .line 1294
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_398
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1297
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_39d
    :goto_39d
    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3a7
    .catchall {:try_start_398 .. :try_end_3a7} :catchall_5ba

    if-eqz v2, :cond_3bc

    .line 1299
    :try_start_3a9
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_3b4
    .catch Landroid/os/RemoteException; {:try_start_3a9 .. :try_end_3b4} :catch_3b5
    .catchall {:try_start_3a9 .. :try_end_3b4} :catchall_5ba

    .line 1302
    goto :goto_3bc

    .line 1300
    :catch_3b5
    move-exception v0

    move-object v2, v0

    .line 1301
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_3b7
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1304
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_3bc
    :goto_3bc
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3c6
    .catchall {:try_start_3b7 .. :try_end_3c6} :catchall_5ba

    if-eqz v2, :cond_3db

    .line 1306
    :try_start_3c8
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V
    :try_end_3d3
    .catch Landroid/os/RemoteException; {:try_start_3c8 .. :try_end_3d3} :catch_3d4
    .catchall {:try_start_3c8 .. :try_end_3d3} :catchall_5ba

    .line 1310
    goto :goto_3db

    .line 1308
    :catch_3d4
    move-exception v0

    move-object v2, v0

    .line 1309
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_3d6
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1312
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_3db
    :goto_3db
    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3e5
    .catchall {:try_start_3d6 .. :try_end_3e5} :catchall_5ba

    if-eqz v2, :cond_3fa

    .line 1314
    :try_start_3e7
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_3f2
    .catch Landroid/os/RemoteException; {:try_start_3e7 .. :try_end_3f2} :catch_3f3
    .catchall {:try_start_3e7 .. :try_end_3f2} :catchall_5ba

    .line 1317
    goto :goto_3fa

    .line 1315
    :catch_3f3
    move-exception v0

    move-object v2, v0

    .line 1316
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_3f5
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1319
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_3fa
    :goto_3fa
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_404
    .catchall {:try_start_3f5 .. :try_end_404} :catchall_5ba

    if-eqz v2, :cond_419

    .line 1321
    :try_start_406
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_411
    .catch Landroid/os/RemoteException; {:try_start_406 .. :try_end_411} :catch_412
    .catchall {:try_start_406 .. :try_end_411} :catchall_5ba

    .line 1324
    goto :goto_419

    .line 1322
    :catch_412
    move-exception v0

    move-object v2, v0

    .line 1323
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_414
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1326
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_419
    :goto_419
    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_423
    .catchall {:try_start_414 .. :try_end_423} :catchall_5ba

    if-eqz v2, :cond_440

    .line 1328
    :try_start_425
    iget-object v2, v7, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    iget v3, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_438

    .line 1329
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_438
    .catch Landroid/os/RemoteException; {:try_start_425 .. :try_end_438} :catch_439
    .catchall {:try_start_425 .. :try_end_438} :catchall_5ba

    .line 1333
    :cond_438
    goto :goto_440

    .line 1331
    :catch_439
    move-exception v0

    move-object v2, v0

    .line 1332
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_43b
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1335
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_440
    :goto_440
    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_44a
    .catchall {:try_start_43b .. :try_end_44a} :catchall_5ba

    if-eqz v2, :cond_45b

    .line 1337
    :try_start_44c
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_453
    .catch Landroid/os/RemoteException; {:try_start_44c .. :try_end_453} :catch_454
    .catchall {:try_start_44c .. :try_end_453} :catchall_5ba

    .line 1340
    goto :goto_45b

    .line 1338
    :catch_454
    move-exception v0

    move-object v2, v0

    .line 1339
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_456
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1342
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_45b
    :goto_45b
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_465
    .catchall {:try_start_456 .. :try_end_465} :catchall_5ba

    if-eqz v2, :cond_476

    .line 1344
    :try_start_467
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_46e
    .catch Landroid/os/RemoteException; {:try_start_467 .. :try_end_46e} :catch_46f
    .catchall {:try_start_467 .. :try_end_46e} :catchall_5ba

    .line 1347
    goto :goto_476

    .line 1345
    :catch_46f
    move-exception v0

    move-object v2, v0

    .line 1346
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_471
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1349
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_476
    :goto_476
    const/16 v2, 0x17

    .line 1350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1349
    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_480
    .catchall {:try_start_471 .. :try_end_480} :catchall_5ba

    if-eqz v2, :cond_491

    .line 1352
    :try_start_482
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, v7, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_489
    .catch Landroid/os/RemoteException; {:try_start_482 .. :try_end_489} :catch_48a
    .catchall {:try_start_482 .. :try_end_489} :catchall_5ba

    .line 1355
    goto :goto_491

    .line 1353
    :catch_48a
    move-exception v0

    move-object v2, v0

    .line 1354
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_48c
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1357
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_491
    :goto_491
    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_49b
    .catchall {:try_start_48c .. :try_end_49b} :catchall_5ba

    if-eqz v2, :cond_4ac

    .line 1359
    :try_start_49d
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, v7, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_4a4
    .catch Landroid/os/RemoteException; {:try_start_49d .. :try_end_4a4} :catch_4a5
    .catchall {:try_start_49d .. :try_end_4a4} :catchall_5ba

    .line 1362
    goto :goto_4ac

    .line 1360
    :catch_4a5
    move-exception v0

    move-object v2, v0

    .line 1361
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_4a7
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1364
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_4ac
    :goto_4ac
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4b6
    .catchall {:try_start_4a7 .. :try_end_4b6} :catchall_5ba

    if-eqz v2, :cond_4cb

    .line 1366
    :try_start_4b8
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_4c3
    .catch Landroid/os/RemoteException; {:try_start_4b8 .. :try_end_4c3} :catch_4c4
    .catchall {:try_start_4b8 .. :try_end_4c3} :catchall_5ba

    .line 1369
    goto :goto_4cb

    .line 1367
    :catch_4c4
    move-exception v0

    move-object v2, v0

    .line 1368
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_4c6
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1371
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_4cb
    :goto_4cb
    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4d5
    .catchall {:try_start_4c6 .. :try_end_4d5} :catchall_5ba

    if-eqz v2, :cond_4ea

    .line 1373
    :try_start_4d7
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object v3, v3, v5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_4e2
    .catch Landroid/os/RemoteException; {:try_start_4d7 .. :try_end_4e2} :catch_4e3
    .catchall {:try_start_4d7 .. :try_end_4e2} :catchall_5ba

    .line 1376
    goto :goto_4ea

    .line 1374
    :catch_4e3
    move-exception v0

    move-object v2, v0

    .line 1375
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_4e5
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1378
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_4ea
    :goto_4ea
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51f

    .line 1379
    iget-object v2, v7, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    iget v3, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/BarringInfo;

    .line 1380
    .local v2, "barringInfo":Landroid/telephony/BarringInfo;
    if-eqz v2, :cond_507

    .line 1381
    invoke-virtual {v2}, Landroid/telephony/BarringInfo;->createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;

    move-result-object v3
    :try_end_506
    .catchall {:try_start_4e5 .. :try_end_506} :catchall_5ba

    goto :goto_508

    :cond_507
    const/4 v3, 0x0

    .line 1384
    .local v3, "biNoLocation":Landroid/telephony/BarringInfo;
    :goto_508
    :try_start_508
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1385
    const/4 v6, 0x1

    invoke-direct {v7, v4, v6}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v6

    if-eqz v6, :cond_513

    .line 1386
    move-object v6, v2

    goto :goto_514

    :cond_513
    move-object v6, v3

    .line 1384
    :goto_514
    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    :try_end_517
    .catch Landroid/os/RemoteException; {:try_start_508 .. :try_end_517} :catch_518
    .catchall {:try_start_508 .. :try_end_517} :catchall_5ba

    .line 1389
    goto :goto_51f

    .line 1387
    :catch_518
    move-exception v0

    move-object v5, v0

    .line 1388
    .local v5, "ex":Landroid/os/RemoteException;
    :try_start_51a
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1391
    .end local v2    # "barringInfo":Landroid/telephony/BarringInfo;
    .end local v3    # "biNoLocation":Landroid/telephony/BarringInfo;
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_51f
    :goto_51f
    const/16 v2, 0x21

    .line 1392
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1391
    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_529
    .catchall {:try_start_51a .. :try_end_529} :catchall_5ba

    if-eqz v2, :cond_557

    .line 1394
    :try_start_52b
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1395
    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->shouldSanitizeLocationForPhysicalChannelConfig(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result v3

    if-eqz v3, :cond_542

    .line 1396
    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1397
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1396
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->getLocationSanitizedConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_54c

    .line 1398
    :cond_542
    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1394
    :goto_54c
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigChanged(Ljava/util/List;)V
    :try_end_54f
    .catch Landroid/os/RemoteException; {:try_start_52b .. :try_end_54f} :catch_550
    .catchall {:try_start_52b .. :try_end_54f} :catchall_5ba

    .line 1401
    goto :goto_557

    .line 1399
    :catch_550
    move-exception v0

    move-object v2, v0

    .line 1400
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_552
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1403
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_557
    :goto_557
    const/16 v2, 0x22

    .line 1404
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1403
    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_561
    .catchall {:try_start_552 .. :try_end_561} :catchall_5ba

    if-eqz v2, :cond_57c

    .line 1406
    :try_start_563
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean v3, v3, v5

    iget-object v5, v7, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget v5, v5, v6

    invoke-interface {v2, v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataEnabledChanged(ZI)V
    :try_end_574
    .catch Landroid/os/RemoteException; {:try_start_563 .. :try_end_574} :catch_575
    .catchall {:try_start_563 .. :try_end_574} :catchall_5ba

    .line 1410
    goto :goto_57c

    .line 1408
    :catch_575
    move-exception v0

    move-object v2, v0

    .line 1409
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_577
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1412
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_57c
    :goto_57c
    const/16 v2, 0x25

    .line 1413
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1412
    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_586
    .catchall {:try_start_577 .. :try_end_586} :catchall_5ba

    if-eqz v2, :cond_5ac

    .line 1415
    :try_start_588
    iget-object v2, v7, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    iget v3, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5a1

    .line 1416
    iget-object v2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1417
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1416
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onLinkCapacityEstimateChanged(Ljava/util/List;)V
    :try_end_5a1
    .catch Landroid/os/RemoteException; {:try_start_588 .. :try_end_5a1} :catch_5a2
    .catchall {:try_start_588 .. :try_end_5a1} :catchall_5ba

    .line 1421
    :cond_5a1
    goto :goto_5ac

    .line 1419
    :catch_5a2
    move-exception v0

    move-object v2, v0

    .line 1420
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_5a4
    iget-object v3, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_5ac

    .line 1137
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v17    # "doesLimitApply":Z
    .local v3, "doesLimitApply":Z
    :cond_5aa
    move/from16 v17, v3

    .line 1424
    .end local v3    # "doesLimitApply":Z
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v16    # "b":Landroid/os/IBinder;
    :cond_5ac
    :goto_5ac
    monitor-exit v1

    .line 1425
    return-void

    .line 1424
    :catchall_5ae
    move-exception v0

    move-object/from16 v15, p4

    goto :goto_5b7

    :catchall_5b2
    move-exception v0

    move-object/from16 v15, p4

    move-object/from16 v14, p5

    :goto_5b7
    move-object v2, v0

    monitor-exit v1
    :try_end_5b9
    .catchall {:try_start_5a4 .. :try_end_5b9} :catchall_5ba

    throw v2

    :catchall_5ba
    move-exception v0

    goto :goto_5b7
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 3522
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 3526
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    return-void
.end method

.method private notifyCarrierNetworkChangeWithPermission(IZ)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "active"    # Z

    .line 1818
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1819
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v1

    .line 1820
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    aput-boolean p2, v2, v1

    .line 1825
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1826
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1828
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_3f

    if-eqz v4, :cond_39

    .line 1830
    :try_start_2b
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31
    .catchall {:try_start_2b .. :try_end_30} :catchall_3f

    .line 1833
    goto :goto_39

    .line 1831
    :catch_31
    move-exception v4

    .line 1832
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_32
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    goto :goto_11

    .line 1836
    :cond_3a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1837
    .end local v1    # "phoneId":I
    monitor-exit v0

    .line 1838
    return-void

    .line 1837
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V
    .registers 12
    .param p1, "subId"    # I
    .param p2, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p3, "hasUserSwitched"    # Z

    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2191
    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2190
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2192
    const-string/jumbo v0, "notifyCellLocation()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2193
    return-void

    .line 2195
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2196
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2197
    :try_start_37
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_96

    if-nez p3, :cond_49

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object v2, v2, v0

    .line 2198
    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    .line 2199
    :cond_49
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object p2, v2, v0

    .line 2200
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2201
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 2203
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4

    if-eqz v4, :cond_95

    const/4 v4, 0x1

    .line 2204
    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_95

    const/16 v4, 0x1d

    .line 2205
    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4
    :try_end_79
    .catchall {:try_start_37 .. :try_end_79} :catchall_9b

    if-eqz v4, :cond_95

    .line 2213
    :try_start_7b
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v5

    iget v6, v3, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object v7, v3, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 2214
    invoke-virtual {v5, p2, v6, v7}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->getBlurryCellLocation(Landroid/telephony/CellIdentity;ILjava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v5

    .line 2213
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_8c} :catch_8d
    .catchall {:try_start_7b .. :try_end_8c} :catchall_9b

    .line 2217
    goto :goto_95

    .line 2215
    :catch_8d
    move-exception v4

    .line 2216
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_8e
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2219
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_95
    :goto_95
    goto :goto_53

    .line 2221
    :cond_96
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2222
    monitor-exit v1

    .line 2223
    return-void

    .line 2222
    :catchall_9b
    move-exception v2

    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_8e .. :try_end_9d} :catchall_9b

    throw v2
.end method

.method private onMultiSimConfigChanged()V
    .registers 11

    .line 684
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 685
    :try_start_3
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 686
    .local v1, "oldNumPhones":I
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 687
    if-ne v1, v2, :cond_13

    monitor-exit v0

    return-void

    .line 693
    :cond_13
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 694
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 695
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 696
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 697
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 698
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/ServiceState;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 699
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 700
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 701
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 702
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_7c

    .line 703
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/SignalStrength;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    goto :goto_82

    .line 705
    :cond_7c
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    new-array v2, v2, [Landroid/telephony/SignalStrength;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 707
    :goto_82
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 708
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 709
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/CellIdentity;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 710
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 711
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/PreciseCallState;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 712
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 713
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 714
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 715
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 716
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 717
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/CallQuality;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 718
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 719
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/CallAttributes;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    .line 720
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 721
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 722
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/TelephonyDisplayInfo;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 723
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 724
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 725
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 726
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 727
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 730
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v2, v1, :cond_19e

    .line 731
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 732
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 733
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 734
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 735
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 736
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 737
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 738
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 739
    monitor-exit v0

    return-void

    .line 743
    :cond_19e
    move v2, v1

    .local v2, "i":I
    :goto_19f
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v2, v3, :cond_285

    .line 744
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 745
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v4, v3, v2

    .line 746
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    const/4 v5, -0x1

    aput v5, v3, v2

    .line 747
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput v4, v3, v2

    .line 748
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput v4, v3, v2

    .line 749
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v3, v2

    .line 750
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v6, Landroid/telephony/ServiceState;

    invoke-direct {v6}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v6, v3, v2

    .line 751
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    const/4 v6, 0x0

    aput-object v6, v3, v2

    .line 752
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean v4, v3, v2

    .line 753
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v4, v3, v2

    .line 754
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v4, v3, v2

    .line 755
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object v6, v3, v2

    .line 756
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 757
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v3, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 758
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput v5, v3, v2

    .line 759
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput v5, v3, v2

    .line 760
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput v5, v3, v2

    .line 761
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v7

    aput-object v7, v3, v2

    .line 762
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v7, Landroid/telephony/CallAttributes;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v8

    .line 763
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v9

    invoke-direct {v7, v8, v4, v9}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v7, v3, v2

    .line 764
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput v4, v3, v2

    .line 765
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v7

    aput-object v7, v3, v2

    .line 766
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput v4, v3, v2

    .line 767
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput v4, v3, v2

    .line 768
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput v4, v3, v2

    .line 769
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    new-instance v7, Landroid/telephony/BarringInfo;

    invoke-direct {v7}, Landroid/telephony/BarringInfo;-><init>()V

    invoke-interface {v3, v2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 771
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    aput-boolean v4, v3, v2

    .line 772
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aput-object v6, v3, v2

    .line 773
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    aput-boolean v4, v3, v2

    .line 774
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aput v4, v3, v2

    .line 775
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 776
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    aput v5, v3, v2

    .line 777
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    const-wide/16 v7, -0x1

    aput-wide v7, v3, v2

    .line 778
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    sget-object v7, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    invoke-interface {v3, v2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 779
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    new-instance v7, Landroid/util/Pair;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    new-array v4, v4, [I

    invoke-direct {v7, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 780
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 743
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19f

    .line 782
    .end local v1    # "oldNumPhones":I
    .end local v2    # "i":I
    :cond_285
    monitor-exit v0

    .line 783
    return-void

    .line 782
    :catchall_287
    move-exception v1

    monitor-exit v0
    :try_end_289
    .catchall {:try_start_3 .. :try_end_289} :catchall_287

    throw v1
.end method

.method private static pii(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 3896
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_6

    move-object v0, p0

    goto :goto_8

    :cond_6
    const-string v0, "***"

    :goto_8
    return-object v0
.end method

.method private static pii(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3901
    .local p0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_b

    goto :goto_29

    .line 3902
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[***, size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3901
    :cond_29
    :goto_29
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private remove(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1490
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1491
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1492
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2e

    .line 1493
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1494
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v4, p1, :cond_2b

    .line 1500
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_30

    if-eqz v4, :cond_24

    .line 1502
    :try_start_1c
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_22
    .catch Ljava/util/NoSuchElementException; {:try_start_1c .. :try_end_22} :catch_23
    .catchall {:try_start_1c .. :try_end_22} :catchall_30

    .line 1506
    goto :goto_24

    .line 1503
    :catch_23
    move-exception v4

    .line 1509
    :cond_24
    :goto_24
    :try_start_24
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1510
    monitor-exit v0

    return-void

    .line 1492
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1513
    .end local v1    # "recordCount":I
    .end local v2    # "i":I
    :cond_2e
    monitor-exit v0

    .line 1514
    return-void

    .line 1513
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private static shouldSanitizeLocationForPhysicalChannelConfig(Lcom/android/server/TelephonyRegistry$Record;)Z
    .registers 3
    .param p0, "record"    # Lcom/android/server/TelephonyRegistry$Record;

    .line 2720
    iget v0, p0, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 8
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "event"    # I

    .line 3497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3498
    .local v0, "callingIdentity":J
    const/4 v2, 0x0

    .line 3500
    .local v2, "valid":Z
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 3501
    .local v3, "foregroundUser":I
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, v3, :cond_19

    .line 3502
    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_20

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    move v2, v4

    .line 3509
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3510
    nop

    .line 3511
    return v2

    .line 3509
    .end local v3    # "foregroundUser":I
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3510
    throw v3
.end method

.method private validatePhoneId(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 3516
    if-ltz p1, :cond_e

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-ge p1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 3518
    .local v0, "valid":Z
    :goto_f
    return v0
.end method


# virtual methods
.method public addCarrierPrivilegesCallback(ILcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;

    .line 2858
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2859
    .local v0, "callerUserId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2860
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "addCarrierPrivilegesCallback"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 2877
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2878
    :try_start_1c
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 2881
    nop

    .line 2882
    invoke-interface {p2}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v5, 0x0

    .line 2881
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v2

    .line 2884
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez v2, :cond_38

    monitor-exit v1

    return-void

    .line 2886
    :cond_38
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 2887
    iput-object p2, v2, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 2888
    iput-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 2889
    iput-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 2890
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 2891
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    iput v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 2892
    iput p1, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 2893
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 2898
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2899
    .local v3, "state":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;[I>;"
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;
    :try_end_67
    .catchall {:try_start_1c .. :try_end_67} :catchall_ba

    .line 2901
    .local v4, "carrierServiceState":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_67
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchCarrierPrivilegesCallback()Z

    move-result v5

    if-eqz v5, :cond_98

    .line 2904
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 2905
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [I

    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [I

    array-length v8, v8

    .line 2906
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 2904
    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierPrivilegesChanged(Ljava/util/List;[I)V

    .line 2908
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    .line 2909
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2908
    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierServiceChanged(Ljava/lang/String;I)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_98} :catch_99
    .catchall {:try_start_67 .. :try_end_98} :catchall_ba

    .line 2913
    :cond_98
    goto :goto_9f

    .line 2911
    :catch_99
    move-exception v5

    .line 2912
    .local v5, "ex":Landroid/os/RemoteException;
    :try_start_9a
    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 2914
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "state":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;[I>;"
    .end local v4    # "carrierServiceState":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "ex":Landroid/os/RemoteException;
    :goto_9f
    monitor-exit v1

    .line 2915
    return-void

    .line 2879
    :cond_a1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid slot index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callerUserId":I
    .end local p0    # "this":Lcom/android/server/TelephonyRegistry;
    .end local p1    # "phoneId":I
    .end local p2    # "callback":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .end local p3    # "callingPackage":Ljava/lang/String;
    .end local p4    # "callingFeatureId":Ljava/lang/String;
    throw v2

    .line 2914
    .restart local v0    # "callerUserId":I
    .restart local p0    # "this":Lcom/android/server/TelephonyRegistry;
    .restart local p1    # "phoneId":I
    .restart local p2    # "callback":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    .restart local p4    # "callingFeatureId":Ljava/lang/String;
    :catchall_ba
    move-exception v2

    monitor-exit v1
    :try_end_bc
    .catchall {:try_start_9a .. :try_end_bc} :catchall_ba

    throw v2
.end method

.method public addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 963
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 964
    .local v0, "callerUserId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 973
    :try_start_10
    invoke-interface {p3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 974
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v3

    .line 976
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez v3, :cond_25

    .line 977
    monitor-exit v1

    return-void

    .line 980
    :cond_25
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 981
    iput-object p3, v3, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 982
    iput-object p1, v3, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 983
    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 984
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 985
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 986
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 991
    iget-boolean v4, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z
    :try_end_44
    .catchall {:try_start_10 .. :try_end_44} :catchall_5b

    if-eqz v4, :cond_53

    .line 994
    :try_start_46
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v4}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catchall {:try_start_46 .. :try_end_4b} :catchall_5b

    .line 999
    :goto_4b
    goto :goto_59

    .line 996
    :catch_4c
    move-exception v4

    .line 998
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4d
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_4b

    .line 1001
    :cond_53
    const-string/jumbo v4, "listen ooscl: hasNotifyOpptSubInfoChangedOccurred==false no callback"

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1003
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_59
    monitor-exit v1

    .line 1004
    return-void

    .line 1003
    :catchall_5b
    move-exception v2

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_5b

    throw v2
.end method

.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 909
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 910
    .local v0, "callerUserId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 917
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 919
    :try_start_10
    invoke-interface {p3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 920
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v3

    .line 922
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez v3, :cond_25

    .line 923
    monitor-exit v1

    return-void

    .line 926
    :cond_25
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 927
    iput-object p3, v3, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 928
    iput-object p1, v3, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 929
    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 930
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 931
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 932
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 937
    iget-boolean v4, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_44
    .catchall {:try_start_10 .. :try_end_44} :catchall_5b

    if-eqz v4, :cond_53

    .line 940
    :try_start_46
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v4}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catchall {:try_start_46 .. :try_end_4b} :catchall_5b

    .line 945
    :goto_4b
    goto :goto_59

    .line 942
    :catch_4c
    move-exception v4

    .line 944
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4d
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_4b

    .line 947
    :cond_53
    const-string/jumbo v4, "listen oscl: mHasNotifySubscriptionInfoChangedOccurred==false no callback"

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 949
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_59
    monitor-exit v1

    .line 950
    return-void

    .line 949
    :catchall_5b
    move-exception v2

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_5b

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3007
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3009
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "TelephonyRegistry"

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 3011
    :cond_12
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3012
    :try_start_15
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3013
    .local v2, "recordCount":I
    const-string/jumbo v3, "last known state:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3015
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    if-ge v3, v4, :cond_49c

    .line 3016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone Id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3018
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRingingCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mForegroundCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBackgroundCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3022
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPreciseCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallDisconnectCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallIncomingNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mVoiceActivationState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataActivationState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3028
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserMobileDataState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMessageWaiting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallForwarding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3032
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3034
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellIdentity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mImsCallDisconnectCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSrvccState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3038
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallPreciseDisconnectCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallQuality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallAttributes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPreciseDataConnectionStates="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOutgoingCallEmergencyNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOutgoingSmsEmergencyNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBarringInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCarrierNetworkChangeState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mTelephonyDisplayInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsDataEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataEnabledReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAllowedNetworkTypeReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAllowedNetworkTypeValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    aget-wide v5, v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPhysicalChannelConfigs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mLinkCapacityEstimateList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 3056
    .local v4, "carrierPrivilegeState":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;[I>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCarrierPrivilegeState=<packages="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 3057
    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uids="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [I

    .line 3058
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3056
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 3060
    .local v5, "carrierServiceState":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCarrierServiceState=<package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3015
    nop

    .end local v4    # "carrierPrivilegeState":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;[I>;"
    .end local v5    # "carrierServiceState":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_25

    .line 3065
    .end local v3    # "i":I
    :cond_49c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPhoneCapability="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mActiveDataSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRadioPowerState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmergencyNumberList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDefaultPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDefaultSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3074
    const-string/jumbo v3, "local logs:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3076
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3077
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3078
    const-string/jumbo v3, "listen logs:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3080
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3081
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3082
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registrations: count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3084
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_577
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_587

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 3085
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3086
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_577

    .line 3087
    :cond_587
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3088
    nop

    .end local v2    # "recordCount":I
    monitor-exit v1

    .line 3089
    return-void

    .line 3088
    :catchall_58d
    move-exception v2

    monitor-exit v1
    :try_end_58f
    .catchall {:try_start_15 .. :try_end_58f} :catchall_58d

    throw v2
.end method

.method idMatch(IIII)Z
    .registers 8
    .param p1, "rSubId"    # I
    .param p2, "rPhoneId"    # I
    .param p3, "subId"    # I
    .param p4, "phoneId"    # I

    .line 3557
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p3, :cond_16

    .line 3558
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3559
    if-ne p2, p4, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    .line 3562
    :cond_f
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    if-ne v2, p4, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    return v0

    .line 3564
    :cond_16
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_22

    .line 3565
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p3, v2, :cond_20

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    return v0

    .line 3567
    :cond_22
    if-ne p1, p3, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0
.end method

.method idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z
    .registers 8
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I

    .line 3540
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_b

    .line 3542
    iget v2, p1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    if-ne v2, p3, :cond_9

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    return v0

    .line 3544
    :cond_b
    iget v2, p1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_19

    .line 3545
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, v2, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    return v0

    .line 3547
    :cond_19
    iget v2, p1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v2, p2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    return v0
.end method

.method synthetic lambda$broadcastServiceStateChanged$1$com-android-server-TelephonyRegistry()Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3156
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/LocationAccessPolicy;->isLocationModeEnabled(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$broadcastServiceStateChanged$2$com-android-server-TelephonyRegistry()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3180
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/LocationAccessPolicy;->getLocationBypassPackages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$checkCoarseLocationAccess$4$com-android-server-TelephonyRegistry(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "query"    # Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3631
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3632
    invoke-static {v0, p1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 3633
    .local v0, "locationResult":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne v0, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$checkFineLocationAccess$3$com-android-server-TelephonyRegistry(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "query"    # Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3602
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3603
    invoke-static {v0, p1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 3604
    .local v0, "locationResult":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne v0, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$notifyCarrierNetworkChange$0$com-android-server-TelephonyRegistry(I)Z
    .registers 3
    .param p1, "i"    # I

    .line 1794
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V
    .registers 19
    .param p1, "renounceFineLocationAccess"    # Z
    .param p2, "renounceCoarseLocationAccess"    # Z
    .param p3, "subId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p7, "events"    # [I
    .param p8, "notifyNow"    # Z

    .line 1064
    invoke-static/range {p7 .. p7}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1065
    .local v0, "eventList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object v1, p0

    move v2, p1

    move v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move/from16 v8, p8

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->listen(ZZLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;Ljava/util/Set;ZI)V

    .line 1067
    return-void
.end method

.method public notifyActiveDataSubIdChanged(I)V
    .registers 8
    .param p1, "activeDataSubId"    # I

    .line 2420
    const-string/jumbo v0, "notifyActiveDataSubIdChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2421
    return-void

    .line 2424
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyActiveDataSubIdChanged: activeDataSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2425
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyActiveDataSubIdChanged: activeDataSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2427
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 2428
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2429
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2430
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_6d

    if-eqz v3, :cond_67

    .line 2433
    :try_start_59
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5e} :catch_5f
    .catchall {:try_start_59 .. :try_end_5e} :catchall_6d

    .line 2436
    goto :goto_67

    .line 2434
    :catch_5f
    move-exception v3

    .line 2435
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_60
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2438
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_67
    :goto_67
    goto :goto_45

    .line 2439
    :cond_68
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2440
    monitor-exit v0

    .line 2441
    return-void

    .line 2440
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public notifyAllowedNetworkTypesChanged(IIIJ)V
    .registers 12
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "reason"    # I
    .param p4, "allowedNetworkType"    # J

    .line 2785
    const-string/jumbo v0, "notifyAllowedNetworkTypesChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2786
    return-void

    .line 2789
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2790
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2791
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    aput p3, v1, p1

    .line 2792
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    aput-wide p4, v1, p1

    .line 2794
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2795
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2797
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_4f

    if-eqz v3, :cond_49

    .line 2805
    :try_start_3b
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3, p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onAllowedNetworkTypesChanged(IJ)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41
    .catchall {:try_start_3b .. :try_end_40} :catchall_4f

    .line 2808
    goto :goto_49

    .line 2806
    :catch_41
    move-exception v3

    .line 2807
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_42
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2810
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_49
    :goto_49
    goto :goto_21

    .line 2812
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2813
    monitor-exit v0

    .line 2814
    return-void

    .line 2813
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "barringInfo"    # Landroid/telephony/BarringInfo;

    .line 2632
    const-string/jumbo v0, "notifyBarringInfo()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2633
    return-void

    .line 2635
    :cond_a
    if-nez p3, :cond_37

    .line 2636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received null BarringInfo for subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2637
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    new-instance v1, Landroid/telephony/BarringInfo;

    invoke-direct {v1}, Landroid/telephony/BarringInfo;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2638
    return-void

    .line 2641
    :cond_37
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2642
    :try_start_3a
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 2643
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    invoke-interface {v1, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2645
    invoke-virtual {p3}, Landroid/telephony/BarringInfo;->createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;

    move-result-object v1

    .line 2647
    .local v1, "biNoLocation":Landroid/telephony/BarringInfo;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2648
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 2650
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_67
    .catchall {:try_start_3a .. :try_end_67} :catchall_87

    if-eqz v4, :cond_81

    .line 2656
    :try_start_69
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 2657
    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 2658
    move-object v5, p3

    goto :goto_75

    :cond_74
    move-object v5, v1

    .line 2656
    :goto_75
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_78} :catch_79
    .catchall {:try_start_69 .. :try_end_78} :catchall_87

    .line 2661
    goto :goto_81

    .line 2659
    :catch_79
    move-exception v4

    .line 2660
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_7a
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2663
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_81
    :goto_81
    goto :goto_4f

    .line 2665
    .end local v1    # "biNoLocation":Landroid/telephony/BarringInfo;
    :cond_82
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2666
    monitor-exit v0

    .line 2667
    return-void

    .line 2666
    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_7a .. :try_end_89} :catchall_87

    throw v1
.end method

.method public notifyCallForwardingChanged(Z)V
    .registers 3
    .param p1, "cfi"    # Z

    .line 1996
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 1997
    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "cfi"    # Z

    .line 2000
    const-string/jumbo v0, "notifyCallForwardingChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2001
    return-void

    .line 2007
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2008
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2009
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 2010
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p2, v2, v0

    .line 2011
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2012
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 2014
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_4e

    if-eqz v4, :cond_48

    .line 2016
    :try_start_3a
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40
    .catchall {:try_start_3a .. :try_end_3f} :catchall_4e

    .line 2019
    goto :goto_48

    .line 2017
    :catch_40
    move-exception v4

    .line 2018
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_41
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2021
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_48
    :goto_48
    goto :goto_21

    .line 2023
    :cond_49
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2024
    monitor-exit v1

    .line 2025
    return-void

    .line 2024
    :catchall_4e
    move-exception v2

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_4e

    throw v2
.end method

.method public notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V
    .registers 11
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I
    .param p4, "callNetworkType"    # I

    .line 2561
    const-string/jumbo v0, "notifyCallQualityChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2562
    return-void

    .line 2565
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2566
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2568
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aput-object p1, v1, p2

    .line 2569
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput p4, v1, p2

    .line 2570
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v2, Landroid/telephony/CallAttributes;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v3, v3, p2

    invoke-direct {v2, v3, p4, p1}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v2, v1, p2

    .line 2573
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2574
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2576
    invoke-virtual {p0, v2, p3, p2}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_60

    if-eqz v3, :cond_5a

    .line 2578
    :try_start_48
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v4, v4, p2

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_52
    .catchall {:try_start_48 .. :try_end_51} :catchall_60

    .line 2581
    goto :goto_5a

    .line 2579
    :catch_52
    move-exception v3

    .line 2580
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_53
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_5a
    :goto_5a
    goto :goto_2e

    .line 2586
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2587
    monitor-exit v0

    .line 2588
    return-void

    .line 2587
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public notifyCallState(IIILjava/lang/String;)V
    .registers 13
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # I
    .param p4, "incomingNumber"    # Ljava/lang/String;

    .line 1565
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1566
    return-void

    .line 1572
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1573
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1574
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p3, v1, p1

    .line 1575
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p4, v1, p1

    .line 1576
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1577
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    const v4, 0x7fffffff

    if-eqz v3, :cond_5f

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v3, p2, :cond_5f

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_85

    if-eq v3, v4, :cond_5f

    .line 1583
    :try_start_40
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    const/4 v7, 0x0

    invoke-static {v3, v5, p3, v6, v7}, Landroid/telephony/TelephonyBaseUtilsStub;->delayNotifyCallStateIfNeeded(Landroid/os/Handler;Ljava/lang/String;IIZ)Z

    move-result v3

    if-nez v3, :cond_56

    .line 1585
    invoke-direct {p0, v2, p1}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v3

    .line 1586
    .local v3, "incomingNumberOrEmpty":Ljava/lang/String;
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_56} :catch_57
    .catchall {:try_start_40 .. :try_end_56} :catchall_85

    .line 1591
    .end local v3    # "incomingNumberOrEmpty":Ljava/lang/String;
    :cond_56
    goto :goto_5f

    .line 1589
    :catch_57
    move-exception v3

    .line 1590
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_58
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_5f
    :goto_5f
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_7c

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v3, p2, :cond_7c

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_85

    if-eq v3, v4, :cond_7c

    .line 1599
    :try_start_6e
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(I)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_73} :catch_74
    .catchall {:try_start_6e .. :try_end_73} :catchall_85

    .line 1602
    goto :goto_7c

    .line 1600
    :catch_74
    move-exception v3

    .line 1601
    .restart local v3    # "ex":Landroid/os/RemoteException;
    :try_start_75
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_7c
    :goto_7c
    goto :goto_21

    .line 1606
    :cond_7d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1607
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_85

    .line 1608
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 1609
    return-void

    .line 1607
    :catchall_85
    move-exception v1

    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v1
.end method

.method public notifyCallStateForAllSubs(ILjava/lang/String;)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .line 1517
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1518
    return-void

    .line 1525
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1526
    :try_start_d
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1527
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    const v4, 0x7fffffff

    if-eqz v3, :cond_53

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_76

    if-ne v3, v4, :cond_53

    .line 1531
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    const/4 v7, 0x0

    invoke-static {v3, v5, p1, v6, v7}, Landroid/telephony/TelephonyBaseUtilsStub;->delayNotifyCallStateIfNeeded(Landroid/os/Handler;Ljava/lang/String;IIZ)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 1535
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result v3

    if-eqz v3, :cond_43

    move-object v3, p2

    goto :goto_45

    :cond_43
    const-string v3, ""

    .line 1536
    .local v3, "phoneNumberOrEmpty":Ljava/lang/String;
    :goto_45
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4a} :catch_4b
    .catchall {:try_start_2e .. :try_end_4a} :catchall_76

    .line 1541
    .end local v3    # "phoneNumberOrEmpty":Ljava/lang/String;
    :cond_4a
    goto :goto_53

    .line 1539
    :catch_4b
    move-exception v3

    .line 1540
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_4c
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_53
    :goto_53
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_76

    if-ne v3, v4, :cond_6c

    .line 1548
    :try_start_5e
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(I)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_64
    .catchall {:try_start_5e .. :try_end_63} :catchall_76

    .line 1551
    goto :goto_6c

    .line 1549
    :catch_64
    move-exception v3

    .line 1550
    .restart local v3    # "ex":Landroid/os/RemoteException;
    :try_start_65
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_6c
    :goto_6c
    goto :goto_13

    .line 1554
    :cond_6d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1555
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_76

    .line 1559
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 1562
    return-void

    .line 1555
    :catchall_76
    move-exception v1

    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public notifyCarrierNetworkChange(Z)V
    .registers 6
    .param p1, "active"    # Z

    .line 1792
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 1793
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionIdList()[I

    move-result-object v0

    .line 1792
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/TelephonyRegistry;)V

    .line 1794
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 1795
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1796
    .local v0, "subIds":[I
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1802
    array-length v1, v0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_2d

    aget v3, v0, v2

    .line 1803
    .local v3, "subId":I
    invoke-direct {p0, v3, p1}, Lcom/android/server/TelephonyRegistry;->notifyCarrierNetworkChangeWithPermission(IZ)V

    .line 1802
    .end local v3    # "subId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 1805
    :cond_2d
    return-void

    .line 1797
    :cond_2e
    const-string/jumbo v1, "notifyCarrierNetworkChange without carrier privilege"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 1799
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public notifyCarrierNetworkChangeWithSubId(IZ)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "active"    # Z

    .line 1809
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1814
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->notifyCarrierNetworkChangeWithPermission(IZ)V

    .line 1815
    return-void

    .line 1810
    :cond_c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCarrierNetworkChange without carrier privilege on subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyCarrierPrivilegesChanged(ILjava/util/List;[I)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p3, "privilegedUids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    .line 2930
    .local p2, "privilegedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "notifyCarrierPrivilegesChanged"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2931
    return-void

    .line 2943
    :cond_a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 2945
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2946
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 2949
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2951
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2954
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchCarrierPrivilegesCallback()Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, -0x1

    .line 2955
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_76

    if-nez v3, :cond_40

    .line 2956
    goto :goto_26

    .line 2960
    :cond_40
    :try_start_40
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 2961
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    array-length v5, p3

    .line 2962
    invoke-static {p3, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 2960
    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierPrivilegesChanged(Ljava/util/List;[I)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4e} :catch_4f
    .catchall {:try_start_40 .. :try_end_4e} :catchall_76

    .line 2965
    goto :goto_57

    .line 2963
    :catch_4f
    move-exception v3

    .line 2964
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_50
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2966
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_57
    goto :goto_26

    .line 2967
    :cond_58
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2968
    monitor-exit v0

    .line 2969
    return-void

    .line 2947
    :cond_5d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid slot index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/TelephonyRegistry;
    .end local p1    # "phoneId":I
    .end local p2    # "privilegedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "privilegedUids":[I
    throw v1

    .line 2968
    .restart local p0    # "this":Lcom/android/server/TelephonyRegistry;
    .restart local p1    # "phoneId":I
    .restart local p2    # "privilegedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3    # "privilegedUids":[I
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_50 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public notifyCarrierServiceChanged(ILjava/lang/String;I)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 2973
    const-string/jumbo v0, "notifyCarrierServiceChanged"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 2974
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 2983
    :cond_11
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 2985
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2986
    :try_start_17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    .line 2987
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2986
    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2988
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2990
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchCarrierPrivilegesCallback()Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, -0x1

    .line 2991
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_42
    .catchall {:try_start_17 .. :try_end_42} :catchall_59

    if-nez v3, :cond_45

    .line 2992
    goto :goto_2b

    .line 2995
    :cond_45
    :try_start_45
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    invoke-interface {v3, p2, p3}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierServiceChanged(Ljava/lang/String;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4a} :catch_4b
    .catchall {:try_start_45 .. :try_end_4a} :catchall_59

    .line 2998
    goto :goto_53

    .line 2996
    :catch_4b
    move-exception v3

    .line 2997
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_4c
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2999
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_53
    goto :goto_2b

    .line 3000
    :cond_54
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3001
    monitor-exit v0

    .line 3002
    return-void

    .line 3001
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_4c .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1841
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 1842
    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .registers 11
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1845
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string/jumbo v0, "notifyCellInfoForSubscriber()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1846
    return-void

    .line 1852
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 1853
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1854
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1855
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1856
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1857
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0xb

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1859
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4

    if-eqz v4, :cond_65

    const/4 v4, 0x1

    .line 1860
    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_65

    const/16 v4, 0x1d

    .line 1861
    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4
    :try_end_49
    .catchall {:try_start_11 .. :try_end_49} :catchall_6b

    if-eqz v4, :cond_65

    .line 1869
    :try_start_4b
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v5

    iget v6, v3, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object v7, v3, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 1870
    invoke-virtual {v5, p2, v6, v7}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->getBlurryCellInfos(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1869
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_5c} :catch_5d
    .catchall {:try_start_4b .. :try_end_5c} :catchall_6b

    .line 1873
    goto :goto_65

    .line 1871
    :catch_5d
    move-exception v4

    .line 1872
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_5e
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1875
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_65
    :goto_65
    goto :goto_22

    .line 1877
    :cond_66
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1878
    monitor-exit v1

    .line 1879
    return-void

    .line 1878
    :catchall_6b
    move-exception v2

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_5e .. :try_end_6d} :catchall_6b

    throw v2
.end method

.method public notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "cellIdentity"    # Landroid/telephony/CellIdentity;

    .line 2185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V

    .line 2186
    return-void
.end method

.method public notifyDataActivity(I)V
    .registers 3
    .param p1, "state"    # I

    .line 2028
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataActivityForSubscriber(II)V

    .line 2029
    return-void
.end method

.method public notifyDataActivityForSubscriber(II)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .line 2032
    const-string/jumbo v0, "notifyDataActivity()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2033
    return-void

    .line 2035
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2036
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2037
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2038
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput p2, v2, v0

    .line 2039
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2041
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2043
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_39
    .catchall {:try_start_11 .. :try_end_39} :catchall_4f

    if-eqz v4, :cond_49

    .line 2045
    :try_start_3b
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41
    .catchall {:try_start_3b .. :try_end_40} :catchall_4f

    .line 2048
    goto :goto_49

    .line 2046
    :catch_41
    move-exception v4

    .line 2047
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_42
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2050
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_49
    :goto_49
    goto :goto_21

    .line 2052
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2053
    monitor-exit v1

    .line 2054
    return-void

    .line 2053
    :catchall_4f
    move-exception v2

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method public notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V
    .registers 21
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "preciseState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 2066
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const-string/jumbo v0, "notifyDataConnection()"

    invoke-direct {v1, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2067
    return-void

    .line 2071
    :cond_12
    if-nez v4, :cond_15

    .line 2072
    return-void

    .line 2075
    :cond_15
    iget-object v5, v1, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2076
    :try_start_18
    invoke-direct/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_20d

    invoke-virtual/range {p3 .. p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_20d

    .line 2077
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/PreciseDataConnectionState;->getTransportType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2078
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    .line 2077
    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v6, v0

    .line 2079
    .local v6, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/telephony/data/ApnSetting;>;"
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2080
    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PreciseDataConnectionState;

    move-object v7, v0

    .line 2081
    .local v7, "oldState":Landroid/telephony/PreciseDataConnectionState;
    invoke-static {v7, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 2082
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_50
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v9, v0

    .line 2083
    .local v9, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0xd

    invoke-virtual {v9, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget v0, v9, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    iget v10, v9, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 2087
    invoke-virtual {v1, v0, v10, v3, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(IIII)Z

    move-result v0
    :try_end_6d
    .catchall {:try_start_18 .. :try_end_6d} :catchall_20f

    if-eqz v0, :cond_7d

    .line 2089
    :try_start_6f
    iget-object v0, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_74} :catch_75
    .catchall {:try_start_6f .. :try_end_74} :catchall_20f

    .line 2092
    goto :goto_7d

    .line 2090
    :catch_75
    move-exception v0

    .line 2091
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_76
    iget-object v10, v1, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2094
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_7d
    :goto_7d
    goto :goto_50

    .line 2095
    :cond_7e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyDataConnectionForSubscriber: phoneId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " subId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2099
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2100
    iget-object v8, v1, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v8, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2104
    .end local v0    # "str":Ljava/lang/String;
    :cond_b1
    invoke-direct/range {p0 .. p3}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IILandroid/telephony/PreciseDataConnectionState;)V

    .line 2109
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v0

    if-eqz v0, :cond_c5

    .line 2110
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2119
    :cond_c5
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v0

    .line 2120
    .local v8, "internetConnections":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/telephony/PreciseDataConnectionState;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v0

    const/16 v9, 0x11

    const/4 v10, 0x0

    if-nez v0, :cond_ed

    .line 2121
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v0

    .line 2122
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 2123
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2126
    :cond_ed
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_14a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 2127
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/Integer;Landroid/telephony/data/ApnSetting;>;Landroid/telephony/PreciseDataConnectionState;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v12, :cond_149

    .line 2128
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v12}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v12

    .line 2129
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_149

    .line 2130
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v12}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/Integer;Landroid/telephony/data/ApnSetting;>;Landroid/telephony/PreciseDataConnectionState;>;"
    :cond_149
    goto :goto_fd

    .line 2137
    :cond_14a
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v9, 0x2

    aput v9, v0, v10

    const/4 v11, 0x3

    aput v11, v0, v12

    aput v12, v0, v9

    const/4 v9, 0x4

    aput v9, v0, v11

    aput v10, v0, v9

    move-object v9, v0

    .line 2141
    .local v9, "statesInPriority":[I
    const/4 v0, 0x0

    .line 2142
    .local v0, "state":I
    const/4 v11, 0x0

    .line 2143
    .local v11, "networkType":I
    array-length v12, v9

    :goto_15e
    if-ge v10, v12, :cond_181

    aget v13, v9, v10

    .line 2144
    .local v13, "s":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17e

    .line 2145
    move v0, v13

    .line 2146
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v10}, Landroid/telephony/PreciseDataConnectionState;->getNetworkType()I

    move-result v10

    move v11, v10

    .line 2147
    move v10, v0

    goto :goto_182

    .line 2143
    .end local v13    # "s":I
    :cond_17e
    add-int/lit8 v10, v10, 0x1

    goto :goto_15e

    :cond_181
    move v10, v0

    .line 2151
    .end local v0    # "state":I
    .local v10, "state":I
    :goto_182
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v0, v0, v2

    if-ne v0, v10, :cond_18e

    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v0, v0, v2

    if-eq v0, v11, :cond_20d

    .line 2153
    :cond_18e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onDataConnectionStateChanged("

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2154
    invoke-static {v10}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2155
    invoke-static {v11}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ") subId="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", phoneId="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 2157
    .local v12, "str":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2158
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, v12}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2159
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1d7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_202

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v14, v0

    .line 2160
    .local v14, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v0, 0x7

    invoke-virtual {v14, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v0

    if-eqz v0, :cond_201

    .line 2162
    invoke-virtual {v1, v14, v3, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v0
    :try_end_1ef
    .catchall {:try_start_76 .. :try_end_1ef} :catchall_20f

    if-eqz v0, :cond_201

    .line 2167
    :try_start_1f1
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v0, v10, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1f6
    .catch Landroid/os/RemoteException; {:try_start_1f1 .. :try_end_1f6} :catch_1f7
    .catchall {:try_start_1f1 .. :try_end_1f6} :catchall_20f

    .line 2170
    goto :goto_201

    .line 2168
    :catch_1f7
    move-exception v0

    .line 2169
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_1f8
    iget-object v15, v1, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .end local v0    # "ex":Landroid/os/RemoteException;
    .local v16, "ex":Landroid/os/RemoteException;
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    .end local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v16    # "ex":Landroid/os/RemoteException;
    :cond_201
    :goto_201
    goto :goto_1d7

    .line 2174
    :cond_202
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v10, v0, v2

    .line 2175
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aput v11, v0, v2

    .line 2177
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2180
    .end local v6    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/telephony/data/ApnSetting;>;"
    .end local v7    # "oldState":Landroid/telephony/PreciseDataConnectionState;
    .end local v8    # "internetConnections":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/telephony/PreciseDataConnectionState;>;"
    .end local v9    # "statesInPriority":[I
    .end local v10    # "state":I
    .end local v11    # "networkType":I
    .end local v12    # "str":Ljava/lang/String;
    :cond_20d
    monitor-exit v5

    .line 2181
    return-void

    .line 2180
    :catchall_20f
    move-exception v0

    monitor-exit v5
    :try_end_211
    .catchall {:try_start_1f8 .. :try_end_211} :catchall_20f

    throw v0
.end method

.method public notifyDataEnabled(IIZI)V
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "enabled"    # Z
    .param p4, "reason"    # I

    .line 2746
    const-string/jumbo v0, "notifyDataEnabled()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2747
    return-void

    .line 2755
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2756
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2757
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    aput-boolean p3, v1, p1

    .line 2758
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aput p4, v1, p1

    .line 2759
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2760
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2762
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_4f

    if-eqz v3, :cond_49

    .line 2764
    :try_start_3b
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataEnabledChanged(ZI)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41
    .catchall {:try_start_3b .. :try_end_40} :catchall_4f

    .line 2767
    goto :goto_49

    .line 2765
    :catch_41
    move-exception v3

    .line 2766
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_42
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2769
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_49
    :goto_49
    goto :goto_21

    .line 2771
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2772
    monitor-exit v0

    .line 2773
    return-void

    .line 2772
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public notifyDisconnectCause(IIII)V
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "disconnectCause"    # I
    .param p4, "preciseDisconnectCause"    # I

    .line 2284
    const-string/jumbo v0, "notifyDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2285
    return-void

    .line 2287
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2288
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2289
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput p3, v1, p1

    .line 2290
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput p4, v1, p1

    .line 2291
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2292
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 2294
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_57

    if-eqz v3, :cond_51

    .line 2296
    :try_start_3b
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v4, v4, p1

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v5, v5, p1

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_48} :catch_49
    .catchall {:try_start_3b .. :try_end_48} :catchall_57

    .line 2300
    goto :goto_51

    .line 2298
    :catch_49
    move-exception v3

    .line 2299
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_4a
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2302
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    goto :goto_21

    .line 2304
    :cond_52
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2305
    monitor-exit v0

    .line 2306
    return-void

    .line 2305
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_57

    throw v1
.end method

.method public notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 1947
    const-string/jumbo v0, "notifyDisplayInfoChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1948
    return-void

    .line 1950
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyDisplayInfoChanged: PhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " telephonyDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1955
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1956
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1957
    :try_start_3a
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1958
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aput-object p3, v2, p1

    .line 1959
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1960
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 1962
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_62
    .catchall {:try_start_3a .. :try_end_62} :catchall_90

    if-eqz v4, :cond_8a

    .line 1964
    :try_start_64
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 1965
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 1964
    invoke-virtual {v4, v5, v6}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isDisplayInfoNrAdvancedSupported(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 1966
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1967
    invoke-direct {p0, p3}, Lcom/android/server/TelephonyRegistry;->getBackwardCompatibleTelephonyDisplayInfo(Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v5

    .line 1966
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    goto :goto_81

    .line 1970
    :cond_7c
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_81} :catch_82
    .catchall {:try_start_64 .. :try_end_81} :catchall_90

    .line 1974
    :goto_81
    goto :goto_8a

    .line 1972
    :catch_82
    move-exception v4

    .line 1973
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_83
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1976
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_8a
    :goto_8a
    goto :goto_4a

    .line 1978
    :cond_8b
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1979
    monitor-exit v1

    .line 1980
    return-void

    .line 1979
    :catchall_90
    move-exception v2

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_83 .. :try_end_92} :catchall_90

    throw v2
.end method

.method public notifyEmergencyNumberList(II)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .line 2476
    const-string/jumbo v0, "notifyEmergencyNumberList()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2477
    return-void

    .line 2480
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2481
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 2482
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2484
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 2486
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2487
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 2489
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_42
    .catchall {:try_start_d .. :try_end_42} :catchall_5a

    if-eqz v4, :cond_54

    .line 2491
    :try_start_44
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4b} :catch_4c
    .catchall {:try_start_44 .. :try_end_4b} :catchall_5a

    .line 2498
    goto :goto_54

    .line 2496
    :catch_4c
    move-exception v4

    .line 2497
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_4d
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2500
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_54
    :goto_54
    goto :goto_2a

    .line 2503
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_55
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2504
    monitor-exit v0

    .line 2505
    return-void

    .line 2504
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2309
    const-string/jumbo v0, "notifyImsCallDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2310
    return-void

    .line 2312
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2313
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2314
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 2315
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v2, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2316
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2317
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 2319
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_58

    if-eqz v4, :cond_52

    .line 2325
    :try_start_3c
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_49} :catch_4a
    .catchall {:try_start_3c .. :try_end_49} :catchall_58

    .line 2328
    goto :goto_52

    .line 2326
    :catch_4a
    move-exception v4

    .line 2327
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_4b
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2330
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_52
    :goto_52
    goto :goto_22

    .line 2332
    :cond_53
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2333
    monitor-exit v1

    .line 2334
    return-void

    .line 2333
    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_58

    throw v2
.end method

.method public notifyLinkCapacityEstimateChanged(IILjava/util/List;)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 2824
    .local p3, "linkCapacityEstimateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    const-string/jumbo v0, "notifyLinkCapacityEstimateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2825
    return-void

    .line 2833
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2834
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2835
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    invoke-interface {v1, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2836
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2837
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 2839
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_4c

    if-eqz v3, :cond_46

    .line 2841
    :try_start_38
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onLinkCapacityEstimateChanged(Ljava/util/List;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3d} :catch_3e
    .catchall {:try_start_38 .. :try_end_3d} :catchall_4c

    .line 2844
    goto :goto_46

    .line 2842
    :catch_3e
    move-exception v3

    .line 2843
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_3f
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2846
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_46
    :goto_46
    goto :goto_1e

    .line 2848
    :cond_47
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2849
    monitor-exit v0

    .line 2850
    return-void

    .line 2849
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "mwi"    # Z

    .line 1883
    const-string/jumbo v0, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1884
    return-void

    .line 1890
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1891
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1892
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p3, v1, p1

    .line 1893
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1894
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1896
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_4a

    if-eqz v3, :cond_44

    .line 1898
    :try_start_36
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_4a

    .line 1901
    goto :goto_44

    .line 1899
    :catch_3c
    move-exception v3

    .line 1900
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1903
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_44
    :goto_44
    goto :goto_1d

    .line 1905
    :cond_45
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1906
    monitor-exit v0

    .line 1907
    return-void

    .line 1906
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public notifyOemHookRawEventForSubscriber(II[B)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "rawData"    # [B

    .line 2368
    const-string/jumbo v0, "notifyOemHookRawEventForSubscriber"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2369
    return-void

    .line 2372
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2373
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2374
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2378
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2380
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_47

    if-eqz v3, :cond_41

    .line 2382
    :try_start_33
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catchall {:try_start_33 .. :try_end_38} :catchall_47

    .line 2385
    goto :goto_41

    .line 2383
    :catch_39
    move-exception v3

    .line 2384
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_3a
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2387
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_41
    :goto_41
    goto :goto_19

    .line 2389
    :cond_42
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2390
    monitor-exit v0

    .line 2391
    return-void

    .line 2390
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_47

    throw v1
.end method

.method public notifyOpportunisticSubscriptionInfoChanged()V
    .registers 7

    .line 1035
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1036
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_24

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOpptSubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 1038
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1040
    :cond_24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 1041
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1042
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1043
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnOpportunisticSubscriptionsChangedListener()Z

    move-result v3
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_58

    if-eqz v3, :cond_52

    .line 1046
    :try_start_44
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 1047
    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_4a
    .catchall {:try_start_44 .. :try_end_49} :catchall_58

    .line 1052
    goto :goto_52

    .line 1049
    :catch_4a
    move-exception v3

    .line 1051
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_52
    :goto_52
    goto :goto_32

    .line 1055
    :cond_53
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1056
    monitor-exit v0

    .line 1057
    return-void

    .line 1056
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 2510
    const-string/jumbo v0, "notifyOutgoingEmergencyCall()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2511
    return-void

    .line 2513
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2514
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2515
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aput-object p3, v1, p1

    .line 2517
    :cond_17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2519
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_45

    if-eqz v3, :cond_3f

    .line 2522
    :try_start_31
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_37
    .catchall {:try_start_31 .. :try_end_36} :catchall_45

    .line 2525
    goto :goto_3f

    .line 2523
    :catch_37
    move-exception v3

    .line 2524
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_38
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2527
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    goto :goto_1d

    .line 2528
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_45

    .line 2529
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2530
    return-void

    .line 2528
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 2535
    const-string/jumbo v0, "notifyOutgoingEmergencySms()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2536
    return-void

    .line 2539
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2540
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2541
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aput-object p3, v1, p1

    .line 2542
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2544
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_45

    if-eqz v3, :cond_3f

    .line 2547
    :try_start_31
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_37
    .catchall {:try_start_31 .. :try_end_36} :catchall_45

    .line 2550
    goto :goto_3f

    .line 2548
    :catch_37
    move-exception v3

    .line 2549
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_38
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2552
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    goto :goto_1d

    .line 2554
    :cond_40
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2555
    monitor-exit v0

    .line 2556
    return-void

    .line 2555
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .registers 8
    .param p1, "capability"    # Landroid/telephony/PhoneCapability;

    .line 2394
    const-string/jumbo v0, "notifyPhoneCapabilityChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2395
    return-void

    .line 2402
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2403
    :try_start_d
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 2405
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2406
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_3d

    if-eqz v3, :cond_37

    .line 2409
    :try_start_29
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_3d

    .line 2412
    goto :goto_37

    .line 2410
    :catch_2f
    move-exception v3

    .line 2411
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_30
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2414
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    goto :goto_15

    .line 2415
    :cond_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2416
    monitor-exit v0

    .line 2417
    return-void

    .line 2416
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 2679
    .local p3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    const-string/jumbo v0, "notifyPhysicalChannelConfig()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2680
    return-void

    .line 2683
    :cond_a
    invoke-static {p3}, Lcom/android/server/TelephonyRegistry;->getLocationSanitizedConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2689
    .local v0, "sanitizedConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2690
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2691
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    invoke-interface {v2, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2692
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2693
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 2695
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_59

    if-eqz v4, :cond_53

    .line 2703
    :try_start_3c
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 2704
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->shouldSanitizeLocationForPhysicalChannelConfig(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 2705
    move-object v5, v0

    goto :goto_47

    :cond_46
    move-object v5, p3

    .line 2703
    :goto_47
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigChanged(Ljava/util/List;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_4a} :catch_4b
    .catchall {:try_start_3c .. :try_end_4a} :catchall_59

    .line 2708
    goto :goto_53

    .line 2706
    :catch_4b
    move-exception v4

    .line 2707
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_4c
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2710
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_53
    :goto_53
    goto :goto_22

    .line 2712
    :cond_54
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2713
    monitor-exit v1

    .line 2714
    return-void

    .line 2713
    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_4c .. :try_end_5b} :catchall_59

    throw v2
.end method

.method public notifyPreciseCallState(IIIII)V
    .registers 15
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "ringingCallState"    # I
    .param p4, "foregroundCallState"    # I
    .param p5, "backgroundCallState"    # I

    .line 2227
    const-string/jumbo v0, "notifyPreciseCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2228
    return-void

    .line 2230
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2231
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 2232
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput p3, v1, p1

    .line 2233
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput p4, v1, p1

    .line 2234
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput p5, v1, p1

    .line 2235
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    new-instance v8, Landroid/telephony/PreciseCallState;

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, v8

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v2 .. v7}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    aput-object v8, v1, p1

    .line 2240
    const/4 v1, 0x1

    .line 2241
    .local v1, "notifyCallAttributes":Z
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    if-nez v2, :cond_3b

    .line 2242
    const-string/jumbo v2, "notifyPreciseCallState: mCallQuality is null, skipping call attributes"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2244
    const/4 v1, 0x0

    goto :goto_68

    .line 2248
    :cond_3b
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_53

    .line 2250
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    const/4 v3, 0x0

    aput v3, v2, p1

    .line 2251
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2253
    :cond_53
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v3, Landroid/telephony/CallAttributes;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v5, v5, p1

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aget-object v6, v6, p1

    invoke-direct {v3, v4, v5, v6}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v3, v2, p1

    .line 2257
    :goto_68
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2258
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 2260
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_86
    .catchall {:try_start_d .. :try_end_86} :catchall_c2

    if-eqz v4, :cond_9a

    .line 2262
    :try_start_88
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v5, v5, p1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_91} :catch_92
    .catchall {:try_start_88 .. :try_end_91} :catchall_c2

    .line 2265
    goto :goto_9a

    .line 2263
    :catch_92
    move-exception v4

    .line 2264
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_93
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2267
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_9a
    :goto_9a
    if-eqz v1, :cond_bc

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 2269
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_a8
    .catchall {:try_start_93 .. :try_end_a8} :catchall_c2

    if-eqz v4, :cond_bc

    .line 2271
    :try_start_aa
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v5, v5, p1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_b3} :catch_b4
    .catchall {:try_start_aa .. :try_end_b3} :catchall_c2

    .line 2274
    goto :goto_bc

    .line 2272
    :catch_b4
    move-exception v4

    .line 2273
    .restart local v4    # "ex":Landroid/os/RemoteException;
    :try_start_b5
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2276
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_bc
    :goto_bc
    goto :goto_6e

    .line 2278
    .end local v1    # "notifyCallAttributes":Z
    :cond_bd
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2279
    monitor-exit v0

    .line 2280
    return-void

    .line 2279
    :catchall_c2
    move-exception v1

    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_b5 .. :try_end_c4} :catchall_c2

    throw v1
.end method

.method public notifyRadioPowerStateChanged(III)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # I

    .line 2444
    const-string/jumbo v0, "notifyRadioPowerStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2445
    return-void

    .line 2452
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2453
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2454
    iput p3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 2456
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2457
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 2459
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_4c

    if-eqz v3, :cond_43

    .line 2461
    :try_start_35
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3a} :catch_3b
    .catchall {:try_start_35 .. :try_end_3a} :catchall_4c

    .line 2464
    goto :goto_43

    .line 2462
    :catch_3b
    move-exception v3

    .line 2463
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2466
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_43
    :goto_43
    goto :goto_1b

    .line 2469
    :cond_44
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2470
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_4c

    .line 2471
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastRadioPowerStateChanged(III)V

    .line 2472
    return-void

    .line 2470
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 22
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p4, "chosenPlmn"    # Ljava/lang/String;
    .param p5, "domain"    # I
    .param p6, "causeCode"    # I
    .param p7, "additionalCauseCode"    # I

    .line 2593
    move-object v1, p0

    const-string/jumbo v0, "notifyRegistrationFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2594
    return-void

    .line 2600
    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/CellIdentity;->sanitizeLocationInfo()Landroid/telephony/CellIdentity;

    move-result-object v2

    .line 2602
    .local v2, "noLocationCi":Landroid/telephony/CellIdentity;
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2603
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2604
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v5, v0

    .line 2605
    .local v5, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x1f

    invoke-virtual {v5, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v0
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_6e

    if-eqz v0, :cond_5e

    .line 2607
    move v6, p1

    move/from16 v7, p2

    :try_start_36
    invoke-virtual {p0, v5, v7, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_74

    if-eqz v0, :cond_61

    .line 2609
    :try_start_3c
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 2610
    const/4 v0, 0x1

    invoke-direct {p0, v5, v0}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2611
    move-object/from16 v9, p3

    goto :goto_49

    :cond_48
    move-object v9, v2

    .line 2609
    :goto_49
    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_54} :catch_55
    .catchall {:try_start_3c .. :try_end_54} :catchall_74

    .line 2616
    goto :goto_61

    .line 2614
    :catch_55
    move-exception v0

    .line 2615
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_56
    iget-object v8, v1, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 2605
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_5e
    move v6, p1

    move/from16 v7, p2

    .line 2618
    .end local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_61
    :goto_61
    goto :goto_1e

    .line 2604
    :cond_62
    move v6, p1

    move/from16 v7, p2

    goto :goto_69

    .line 2603
    :cond_66
    move v6, p1

    move/from16 v7, p2

    .line 2620
    :goto_69
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2621
    monitor-exit v3

    .line 2622
    return-void

    .line 2621
    :catchall_6e
    move-exception v0

    move v6, p1

    move/from16 v7, p2

    :goto_72
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_56 .. :try_end_73} :catchall_74

    throw v0

    :catchall_74
    move-exception v0

    goto :goto_72
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Landroid/telephony/ServiceState;

    .line 1612
    const-string/jumbo v0, "notifyServiceState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1613
    return-void

    .line 1616
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1617
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyServiceStateForSubscriber: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1622
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1628
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 1629
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p3, v2, p1

    .line 1631
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1636
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 1638
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_67
    .catchall {:try_start_d .. :try_end_67} :catchall_c0

    if-eqz v5, :cond_95

    .line 1642
    const/16 v5, 0x1d

    :try_start_6b
    invoke-direct {p0, v3, v5}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 1643
    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .local v4, "stateToSend":Landroid/telephony/ServiceState;
    goto :goto_87

    .line 1644
    .end local v4    # "stateToSend":Landroid/telephony/ServiceState;
    :cond_77
    invoke-direct {p0, v3, v5}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 1645
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v4

    .restart local v4    # "stateToSend":Landroid/telephony/ServiceState;
    goto :goto_87

    .line 1647
    .end local v4    # "stateToSend":Landroid/telephony/ServiceState;
    :cond_83
    invoke-virtual {p3, v4}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 1654
    .restart local v4    # "stateToSend":Landroid/telephony/ServiceState;
    :goto_87
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_8c} :catch_8d
    .catchall {:try_start_6b .. :try_end_8c} :catchall_c0

    .line 1657
    .end local v4    # "stateToSend":Landroid/telephony/ServiceState;
    goto :goto_95

    .line 1655
    :catch_8d
    move-exception v4

    .line 1656
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_8e
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_95
    :goto_95
    goto :goto_50

    :cond_96
    goto :goto_b8

    .line 1661
    :cond_97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyServiceStateForSubscriber: INVALID phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1664
    :goto_b8
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1665
    .end local v1    # "str":Ljava/lang/String;
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_8e .. :try_end_bc} :catchall_c0

    .line 1666
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    .line 1667
    return-void

    .line 1665
    :catchall_c0
    move-exception v1

    :try_start_c1
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v1
.end method

.method public notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 1732
    const-string/jumbo v0, "notifySignalStrength()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1733
    return-void

    .line 1740
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1741
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 1743
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p3, v1, p1

    .line 1744
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1749
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1752
    invoke-virtual {p0, v3, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(IIII)Z

    move-result v3
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_95

    if-eqz v3, :cond_4e

    .line 1759
    :try_start_3b
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4, p3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_45} :catch_46
    .catchall {:try_start_3b .. :try_end_45} :catchall_95

    .line 1762
    goto :goto_4e

    .line 1760
    :catch_46
    move-exception v3

    .line 1761
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_47
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1764
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_4e
    :goto_4e
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 1766
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_59
    .catchall {:try_start_47 .. :try_end_59} :catchall_95

    if-eqz v3, :cond_74

    .line 1768
    :try_start_5b
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 1769
    .local v3, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v3, v4, :cond_65

    const/4 v4, -0x1

    goto :goto_66

    :cond_65
    move v4, v3

    .line 1775
    .local v4, "ss":I
    :goto_66
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_6b} :catch_6c
    .catchall {:try_start_5b .. :try_end_6b} :catchall_95

    .line 1778
    .end local v3    # "gsmSignalStrength":I
    .end local v4    # "ss":I
    goto :goto_74

    .line 1776
    :catch_6c
    move-exception v3

    .line 1777
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_6d
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_74
    :goto_74
    goto :goto_1d

    :cond_75
    goto :goto_8d

    .line 1782
    :cond_76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySignalStrengthForPhoneId: invalid phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1784
    :goto_8d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1785
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_6d .. :try_end_91} :catchall_95

    .line 1786
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    .line 1787
    return-void

    .line 1785
    :catchall_95
    move-exception v1

    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v1
.end method

.method public notifySimActivationStateChangedForPhoneId(IIII)V
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "activationType"    # I
    .param p4, "activationState"    # I

    .line 1671
    const-string/jumbo v0, "notifySimActivationState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1672
    return-void

    .line 1678
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1679
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1680
    packed-switch p3, :pswitch_data_8e

    .line 1688
    monitor-exit v0

    goto :goto_6e

    .line 1685
    :pswitch_18
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput p4, v1, p1

    .line 1686
    goto :goto_22

    .line 1682
    :pswitch_1d
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput p4, v1, p1

    .line 1683
    nop

    .line 1690
    :goto_22
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_8b

    .line 1697
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez p3, :cond_4c

    const/16 v3, 0x12

    .line 1698
    :try_start_38
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1700
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1706
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V

    goto :goto_4c

    .line 1719
    :catch_4a
    move-exception v3

    goto :goto_63

    .line 1708
    :cond_4c
    :goto_4c
    const/4 v3, 0x1

    if-ne p3, v3, :cond_6b

    const/16 v3, 0x13

    .line 1709
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1711
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1717
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_62} :catch_4a
    .catchall {:try_start_38 .. :try_end_62} :catchall_8b

    goto :goto_6b

    .line 1720
    .local v3, "ex":Landroid/os/RemoteException;
    :goto_63
    :try_start_63
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 1721
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_6b
    :goto_6b
    nop

    .line 1722
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_6c
    goto :goto_28

    :cond_6d
    goto :goto_86

    .line 1688
    :goto_6e
    return-void

    .line 1724
    :cond_6f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySimActivationStateForPhoneId: INVALID phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1726
    :goto_86
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1727
    monitor-exit v0

    .line 1728
    return-void

    .line 1727
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_63 .. :try_end_8d} :catchall_8b

    throw v1

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_18
    .end packed-switch
.end method

.method public notifySrvccStateChanged(II)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .line 2338
    const-string/jumbo v0, "notifySrvccStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2339
    return-void

    .line 2344
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2345
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2346
    :try_start_11
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2347
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput p2, v2, v0

    .line 2348
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2349
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2351
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_39
    .catchall {:try_start_11 .. :try_end_39} :catchall_4f

    if-eqz v4, :cond_49

    .line 2356
    :try_start_3b
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41
    .catchall {:try_start_3b .. :try_end_40} :catchall_4f

    .line 2359
    goto :goto_49

    .line 2357
    :catch_41
    move-exception v4

    .line 2358
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_42
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2361
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_49
    :goto_49
    goto :goto_21

    .line 2363
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2364
    monitor-exit v1

    .line 2365
    return-void

    .line 2364
    :catchall_4f
    move-exception v2

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method public notifySubscriptionInfoChanged()V
    .registers 7

    .line 1009
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1010
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_24

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 1012
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1011
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1014
    :cond_24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 1015
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1016
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1017
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z

    move-result v3
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_58

    if-eqz v3, :cond_52

    .line 1020
    :try_start_44
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_4a
    .catchall {:try_start_44 .. :try_end_49} :catchall_58

    .line 1025
    goto :goto_52

    .line 1022
    :catch_4a
    move-exception v3

    .line 1024
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_52
    :goto_52
    goto :goto_32

    .line 1028
    :cond_53
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1029
    monitor-exit v0

    .line 1030
    return-void

    .line 1029
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public notifyUserMobileDataStateChangedForPhoneId(IIZ)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Z

    .line 1910
    const-string/jumbo v0, "notifyUserMobileDataStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1911
    return-void

    .line 1917
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1918
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1919
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean p3, v1, p1

    .line 1920
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1921
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1923
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_4b

    if-eqz v3, :cond_45

    .line 1925
    :try_start_37
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catchall {:try_start_37 .. :try_end_3c} :catchall_4b

    .line 1928
    goto :goto_45

    .line 1926
    :catch_3d
    move-exception v3

    .line 1927
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_3e
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1930
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    goto :goto_1d

    .line 1932
    :cond_46
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1933
    monitor-exit v0

    .line 1934
    return-void

    .line 1933
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public removeCarrierPrivilegesCallback(Lcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;)V
    .registers 6
    .param p1, "callback"    # Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2920
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2921
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v2, "removeCarrierPrivilegesCallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    invoke-interface {p1}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 2925
    return-void
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 4
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 956
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 957
    return-void
.end method

.method public systemRunning()V
    .registers 4

    .line 897
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 898
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 899
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 900
    const-string v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 901
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 902
    const-string/jumbo v1, "systemRunning register for intents"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 903
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 904
    return-void
.end method
