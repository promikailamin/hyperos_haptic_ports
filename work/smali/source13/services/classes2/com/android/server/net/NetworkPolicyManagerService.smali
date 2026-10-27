.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;,
        Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;,
        Lcom/android/server/net/NetworkPolicyManagerService$ChainToggleType;,
        Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;,
        Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;,
        Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;,
        Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;,
        Lcom/android/server/net/NetworkPolicyManagerService$Stats;
    }
.end annotation


# static fields
.field private static final ACTION_SNOOZE_RAPID:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_RAPID"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CYCLE_END:Ljava/lang/String; = "cycleEnd"

.field private static final ATTR_CYCLE_PERIOD:Ljava/lang/String; = "cyclePeriod"

.field private static final ATTR_CYCLE_START:Ljava/lang/String; = "cycleStart"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BEHAVIOR:Ljava/lang/String; = "limitBehavior"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_NETWORK_TYPES:Ljava/lang/String; = "networkTypes"

.field private static final ATTR_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackage"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_SUBSCRIBER_ID_MATCH_RULE:Ljava/lang/String; = "subscriberIdMatchRule"

.field private static final ATTR_SUB_ID:Ljava/lang/String; = "subId"

.field private static final ATTR_SUMMARY:Ljava/lang/String; = "summary"

.field private static final ATTR_TEMPLATE_METERED:Ljava/lang/String; = "templateMetered"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_USAGE_BYTES:Ljava/lang/String; = "usageBytes"

.field private static final ATTR_USAGE_TIME:Ljava/lang/String; = "usageTime"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final ATTR_XML_UTILS_NAME:Ljava/lang/String; = "name"

.field private static final CHAIN_TOGGLE_DISABLE:I = 0x2

.field private static final CHAIN_TOGGLE_ENABLE:I = 0x1

.field private static final CHAIN_TOGGLE_NONE:I = 0x0

.field private static final LOGD:Z

.field private static final LOGV:Z

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_CLEAR_SUBSCRIPTION_PLANS:I = 0x16

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_METERED_RESTRICTED_PACKAGES_CHANGED:I = 0x11

.field private static final MSG_POLICIES_CHANGED:I = 0xd

.field private static final MSG_REMOVE_INTERFACE_QUOTAS:I = 0xb

.field private static final MSG_RESET_FIREWALL_RULES_BY_UID:I = 0xf

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SET_NETWORK_TEMPLATE_ENABLED:I = 0x12

.field private static final MSG_STATS_PROVIDER_WARNING_OR_LIMIT_REACHED:I = 0x14

.field private static final MSG_SUBSCRIPTION_OVERRIDE:I = 0x10

.field private static final MSG_SUBSCRIPTION_PLANS_CHANGED:I = 0x13

.field private static final MSG_UIDS_BLOCKED_REASONS_CHANGED:I = 0x17

.field private static final MSG_UID_BLOCKED_REASON_CHANGED:I = 0x15

.field private static final MSG_UPDATE_INTERFACE_QUOTAS:I = 0xa

.field public static final OPPORTUNISTIC_QUOTA_UNKNOWN:I = -0x1

.field private static final PROP_SUB_PLAN_OWNER:Ljava/lang/String; = "persist.sys.sub_plan_owner"

.field private static final QUOTA_FRAC_JOBS_DEFAULT:F = 0.5f

.field private static final QUOTA_FRAC_MULTIPATH_DEFAULT:F = 0.5f

.field private static final QUOTA_LIMITED_DEFAULT:F = 0.1f

.field private static final QUOTA_UNLIMITED_DEFAULT:J

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict-background"

.field private static final TAG_REVOKED_RESTRICT_BACKGROUND:Ljava/lang/String; = "revoked-restrict-background"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_WHITELIST:Ljava/lang/String; = "whitelist"

.field private static final TAG_XML_UTILS_INT_ARRAY:Ljava/lang/String; = "int-array"

.field public static final TYPE_LIMIT:I = 0x23

.field public static final TYPE_LIMIT_SNOOZED:I = 0x24

.field public static final TYPE_RAPID:I = 0x2d

.field public static final TYPE_WARNING:I = 0x22

.field private static final UID_MSG_GONE:I = 0x65

.field private static final UID_MSG_STATE_CHANGED:I = 0x64

.field private static final VERSION_ADDED_CYCLE:I = 0xb

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_NETWORK_TYPES:I = 0xc

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xe

.field private static final VERSION_REMOVED_SUBSCRIPTION_PLANS:I = 0xe

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SUPPORTED_CARRIER_USAGE:I = 0xd

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa

.field private static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mClock:Ljava/time/Clock;

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

.field private final mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

.field volatile mDeviceIdleMode:Z

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mInternetPermissionMap:Landroid/util/SparseBooleanArray;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedRestrictBackground:Z

.field private final mLogger:Lcom/android/server/net/NetworkPolicyLogger;

.field volatile mLowPowerStandbyActive:Z

.field private final mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

.field private mMergedSubscriberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mMeteredIfacesLock:Ljava/lang/Object;

.field private final mMeteredRestrictedUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

.field private final mNetIdToSubId:Landroid/util/SparseIntArray;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private volatile mNetworkManagerReady:Z

.field private final mNetworkMetered:Landroid/util/SparseBooleanArray;

.field final mNetworkPoliciesSecondLock:Ljava/lang/Object;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkRoaming:Landroid/util/SparseBooleanArray;

.field private mNetworkStats:Landroid/app/usage/NetworkStatsManager;

.field private mNetworkToIfaces:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

.field volatile mRestrictBackground:Z

.field private final mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

.field private mRestrictBackgroundBeforeBsm:Z

.field volatile mRestrictBackgroundChangedInBsm:Z

.field private mRestrictBackgroundLowPowerMode:Z

.field volatile mRestrictPower:Z

.field private mRestrictedModeObserver:Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;

.field volatile mRestrictedNetworkingMode:Z

.field mSetSubscriptionPlansIdCounter:I

.field final mSetSubscriptionPlansIds:Landroid/util/SparseIntArray;

.field private final mSnoozeReceiver:Landroid/content/BroadcastReceiver;

.field public final mStatLogger:Lcom/android/internal/util/StatLogger;

.field private final mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

.field private final mSubIdToCarrierConfig:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubIdToSubscriberId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

.field final mSubscriptionPlans:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionPlansOwner:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z

.field private final mTmpUidBlockedState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidBlockedState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;",
            ">;"
        }
    .end annotation
.end field

.field final mUidEventHandler:Landroid/os/Handler;

.field private final mUidEventHandlerCallback:Landroid/os/Handler$Callback;

.field private final mUidEventThread:Lcom/android/server/ServiceThread;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field final mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

.field final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

.field final mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRulesFirstLock:Ljava/lang/Object;

.field private final mUidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/NetworkPolicyManager$UidState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidStateCallbackInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdminDataAvailableLatch(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInternetPermissionMap(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogger(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLowPowerStandbyAllowlistUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMeteredIfaces(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMeteredRestrictedUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkMetered(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkRoaming(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkStats(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/app/usage/NetworkStatsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkToIfaces(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseSetArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerSaveTempWhitelistAppIds(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubIdToSubscriberId(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddDefaultRestrictBackgroundAllowlistUidsUL(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mbroadcastRestrictBackgroundChanged(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchBlockedReasonChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchBlockedReasonChanged(Landroid/net/INetworkPolicyListener;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchMeteredIfacesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchRestrictBackgroundChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchSubscriptionOverride(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III[I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchSubscriptionPlansChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionPlansChanged(Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchUidPoliciesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchUidRulesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mensureActiveCarrierPolicyAL(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mforEachUid(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPrimarySubscriptionPlanLocked(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSubIdLocked(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaybeUpdateCarrierPolicyCycleAL(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monUidDeletedUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->onUidDeletedUL(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveInterfaceLimit(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceLimit(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetUidFirewallRules(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInterfaceLimit(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceLimit(Ljava/lang/String;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMeteredRestrictedPackagesInternal(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNetworkTemplateEnabledInner(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSubscriptionPlansInternal(Lcom/android/server/net/NetworkPolicyManagerService;I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->setSubscriptionPlansInternal(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNetworkToIfacesNL(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/util/ArraySet;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkToIfacesNL(ILandroid/util/ArraySet;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateNetworksInternal(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePowerSaveWhitelistUL(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRestrictionRulesForUidUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRulesForAppIdleParoleUL(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRulesForGlobalChangeAL(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRulesForPowerRestrictionsUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRulesForRestrictPowerUL(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRulesForTempWhitelistChangeUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeUL(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupgradeWifiMeteredOverride(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeWifiMeteredOverride()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOGD()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetLOGV()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smupdateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 327
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 328
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 411
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkManagement"    # Landroid/os/INetworkManagementService;

    .line 744
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 745
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v6

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    invoke-direct {v8, p1}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;-><init>(Landroid/content/Context;)V

    .line 744
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;ZLcom/android/server/net/NetworkPolicyManagerService$Dependencies;)V

    .line 746
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;ZLcom/android/server/net/NetworkPolicyManagerService$Dependencies;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p4, "pm"    # Landroid/content/pm/IPackageManager;
    .param p5, "clock"    # Ljava/time/Clock;
    .param p6, "systemDir"    # Ljava/io/File;
    .param p7, "suppressDefaultPolicy"    # Z
    .param p8, "deps"    # Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    .line 809
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 491
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 492
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 510
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 515
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 519
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 522
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 525
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIds:Landroid/util/SparseIntArray;

    .line 528
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIdCounter:I

    .line 532
    new-instance v3, Landroid/util/SparseLongArray;

    invoke-direct {v3}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    .line 536
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 538
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 540
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 542
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 544
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    .line 546
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    .line 550
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 562
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 570
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 573
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 576
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 583
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 589
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 597
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 601
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    .line 603
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 606
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 610
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 614
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 617
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 621
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTmpUidBlockedState:Landroid/util/SparseArray;

    .line 625
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    .line 628
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    .line 631
    new-instance v3, Landroid/util/SparseSetArray;

    invoke-direct {v3}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    .line 635
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 639
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 642
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    .line 645
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    .line 653
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 656
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 674
    new-instance v3, Lcom/android/server/net/NetworkPolicyLogger;

    invoke-direct {v3}, Lcom/android/server/net/NetworkPolicyLogger;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 677
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    .line 690
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    .line 737
    new-instance v3, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v4, "updateNetworkEnabledNL()"

    const-string v5, "isUidNetworkingBlocked()"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 1125
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1177
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 1189
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 1211
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 1230
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1268
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback-IA;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    .line 1302
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    .line 1322
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 1360
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1406
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1780
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1949
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 5290
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 5514
    new-instance v5, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v5, v0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    .line 810
    const-string/jumbo v6, "missing context"

    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    iput-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 811
    const-string/jumbo v7, "missing activityManager"

    move-object/from16 v8, p2

    invoke-static {v8, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/IActivityManager;

    iput-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 812
    const-string/jumbo v7, "missing networkManagement"

    move-object/from16 v9, p3

    invoke-static {v9, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/INetworkManagementService;

    iput-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 813
    const-class v7, Landroid/os/PowerWhitelistManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerWhitelistManager;

    iput-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    .line 814
    const-string/jumbo v7, "missing Clock"

    move-object/from16 v10, p5

    invoke-static {v10, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/time/Clock;

    iput-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 815
    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    iput-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 816
    const-class v7, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CarrierConfigManager;

    iput-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 817
    move-object/from16 v7, p4

    iput-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 819
    new-instance v11, Landroid/os/HandlerThread;

    const-string v12, "NetworkPolicy"

    invoke-direct {v11, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 820
    .local v11, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 821
    new-instance v12, Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v12, v13, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 824
    new-instance v3, Lcom/android/server/ServiceThread;

    const-string v13, "NetworkPolicy.uid"

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    .line 826
    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->start()V

    .line 827
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 829
    move/from16 v2, p7

    iput-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 830
    const-string/jumbo v3, "missing Dependencies"

    move-object/from16 v5, p8

    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    .line 832
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v13, Ljava/io/File;

    const-string/jumbo v14, "netpolicy.xml"

    move-object/from16 v15, p6

    invoke-direct {v13, v15, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v14, "net-policy"

    invoke-direct {v3, v13, v14}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 834
    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 835
    const-class v3, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/NetworkStatsManager;

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 836
    new-instance v3, Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {v3, v6, v12}, Lcom/android/server/connectivity/MultipathPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 838
    const-class v3, Lcom/android/server/net/NetworkPolicyManagerInternal;

    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-direct {v6, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl-IA;)V

    invoke-static {v3, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 842
    invoke-static {}, Lcom/android/server/NetworkPolicyManagerServiceStub;->getInstance()Lcom/android/server/NetworkPolicyManagerServiceStub;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/NetworkPolicyManagerServiceStub;->init(Landroid/content/Context;)V

    .line 843
    return-void
.end method

.method private static varargs addAll(Landroid/util/ArraySet;[I)Z
    .registers 5
    .param p1, "elements"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)Z"
        }
    .end annotation

    .line 3499
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .line 3500
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_13

    .line 3501
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 3500
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3503
    .end local v1    # "i":I
    :cond_13
    return v0
.end method

.method private addDefaultRestrictBackgroundAllowlistUidsUL(I)Z
    .registers 14
    .param p1, "userId"    # I

    .line 886
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 887
    .local v0, "sysConfig":Lcom/android/server/SystemConfig;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 888
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    move-result-object v2

    .line 889
    .local v2, "allowDataUsage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 890
    .local v3, "changed":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_106

    .line 891
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 892
    .local v5, "pkg":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    const-string v7, "NetworkPolicy"

    if-eqz v6, :cond_42

    .line 893
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checking restricted background exemption for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_42
    const/high16 v8, 0x100000

    :try_start_44
    invoke-virtual {v1, v5, v8, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_44 .. :try_end_48} :catch_e6

    .line 902
    .local v8, "app":Landroid/content/pm/ApplicationInfo;
    nop

    .line 903
    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v9

    if-nez v9, :cond_67

    .line 904
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addDefaultRestrictBackgroundAllowlistUidsUL(): skipping non-privileged app  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    goto/16 :goto_102

    .line 908
    :cond_67
    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    .line 909
    .local v9, "uid":I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 910
    if-eqz v6, :cond_a5

    .line 911
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") to default restricted background allowlist. Revoked status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 913
    invoke-virtual {v11, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 911
    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_a5
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_102

    .line 915
    if-eqz v6, :cond_df

    .line 916
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding default package "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " (uid "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " for user "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ") to restrict background allowlist"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_df
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct {p0, v9, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 919
    const/4 v3, 0x1

    goto :goto_102

    .line 898
    .end local v8    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "uid":I
    :catch_e6
    move-exception v6

    .line 899
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_101

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No ApplicationInfo for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_101
    nop

    .line 890
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_102
    :goto_102
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    .line 922
    .end local v4    # "i":I
    :cond_106
    return v3
.end method

.method private addSdkSandboxUidsIfNeeded(Landroid/util/SparseIntArray;)V
    .registers 8
    .param p1, "uidRules"    # Landroid/util/SparseIntArray;

    .line 5714
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 5715
    .local v0, "size":I
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 5716
    .local v1, "sdkSandboxUids":Landroid/util/SparseIntArray;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_a
    if-ge v2, v0, :cond_24

    .line 5717
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 5718
    .local v3, "uid":I
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 5719
    .local v4, "rule":I
    invoke-static {v3}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 5720
    invoke-static {v3}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v5

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5716
    .end local v3    # "uid":I
    .end local v4    # "rule":I
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5724
    .end local v2    # "index":I
    :cond_24
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_25
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 5725
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 5726
    .restart local v3    # "uid":I
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 5727
    .restart local v4    # "rule":I
    invoke-virtual {p1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5724
    .end local v3    # "uid":I
    .end local v4    # "rule":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 5729
    .end local v2    # "index":I
    :cond_39
    return-void
.end method

.method private broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "changed"    # Ljava/lang/Boolean;

    .line 5587
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5588
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 5589
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 5590
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5591
    .local v2, "userId":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_31

    aget-object v5, v1, v4

    .line 5592
    .local v5, "packageName":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5594
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5595
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5596
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5591
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 5599
    .end local v2    # "userId":I
    :cond_31
    return-void
.end method

.method private static buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 5882
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5883
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 5884
    const v1, 0x104029d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5883
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5885
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5886
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5887
    return-object v0
.end method

.method private static buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "targetPackage"    # Ljava/lang/String;

    .line 5874
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5875
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5876
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5877
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5878
    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "targetPackage"    # Ljava/lang/String;

    .line 5866
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5867
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5868
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5869
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5870
    return-object v0
.end method

.method public static buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 3
    .param p0, "subscriberId"    # Ljava/lang/String;

    .line 2436
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 2438
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 2439
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 2437
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 5891
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5892
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 5893
    const v1, 0x1040241

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5892
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5894
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5895
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5896
    return-object v0
.end method

.method private cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V
    .registers 5
    .param p1, "notificationId"    # Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1772
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 1773
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v2

    .line 1772
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1774
    return-void
.end method

.method private varargs checkAnyPermissionOf([Ljava/lang/String;)Z
    .registers 7
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 3044
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p1, v2

    .line 3045
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_11

    .line 3046
    const/4 v0, 0x1

    return v0

    .line 3044
    .end local v3    # "permission":Ljava/lang/String;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3049
    :cond_14
    return v1
.end method

.method private static collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkStateSnapshot;)V
    .registers 3
    .param p1, "snapshot"    # Landroid/net/NetworkStateSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkStateSnapshot;",
            ")V"
        }
    .end annotation

    .line 2092
    .local p0, "ifaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2093
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .registers 6
    .param p1, "target"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .line 5946
    .local p0, "source":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 5947
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_12

    .line 5948
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5947
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5950
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .registers 6
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .line 5939
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 5940
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_12

    .line 5941
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5940
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5943
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

.method private dispatchBlockedReasonChanged(Landroid/net/INetworkPolicyListener;III)V
    .registers 6
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "oldBlockedReasons"    # I
    .param p4, "newBlockedReasons"    # I

    .line 5284
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/net/INetworkPolicyListener;->onBlockedReasonChanged(III)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 5287
    goto :goto_5

    .line 5285
    :catch_4
    move-exception v0

    .line 5288
    :goto_5
    return-void
.end method

.method private dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"    # [Ljava/lang/String;

    .line 5239
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 5242
    goto :goto_5

    .line 5240
    :catch_4
    move-exception v0

    .line 5243
    :goto_5
    return-void
.end method

.method private dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .registers 4
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    .line 5248
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 5251
    goto :goto_5

    .line 5249
    :catch_4
    move-exception v0

    .line 5252
    :goto_5
    return-void
.end method

.method private dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III[I)V
    .registers 7
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "subId"    # I
    .param p3, "overrideMask"    # I
    .param p4, "overrideValue"    # I
    .param p5, "networkTypes"    # [I

    .line 5266
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/net/INetworkPolicyListener;->onSubscriptionOverride(III[I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 5269
    goto :goto_5

    .line 5267
    :catch_4
    move-exception v0

    .line 5270
    :goto_5
    return-void
.end method

.method private dispatchSubscriptionPlansChanged(Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V
    .registers 5
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "subId"    # I
    .param p3, "plans"    # [Landroid/telephony/SubscriptionPlan;

    .line 5275
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 5278
    goto :goto_5

    .line 5276
    :catch_4
    move-exception v0

    .line 5279
    :goto_5
    return-void
.end method

.method private dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V
    .registers 5
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidPolicies"    # I

    .line 5257
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidPoliciesChanged(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 5260
    goto :goto_5

    .line 5258
    :catch_4
    move-exception v0

    .line 5261
    :goto_5
    return-void
.end method

.method private dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .registers 5
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    .line 5230
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 5233
    goto :goto_5

    .line 5231
    :catch_4
    move-exception v0

    .line 5234
    :goto_5
    return-void
.end method

.method private enableFirewallChainUL(IZ)V
    .registers 6
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .line 5800
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 5801
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_11

    .line 5803
    return-void

    .line 5805
    :cond_11
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5807
    :try_start_16
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 5808
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallChainEnabled(IZ)V
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_20} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_2c

    .line 5811
    :catch_21
    move-exception v0

    goto :goto_2d

    .line 5809
    :catch_23
    move-exception v0

    .line 5810
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem enable firewall chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5813
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_2c
    nop

    .line 5814
    :goto_2d
    return-void
.end method

.method private varargs enforceAnyPermissionOf([Ljava/lang/String;)V
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 3053
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->checkAnyPermissionOf([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3057
    return-void

    .line 3054
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires one of the following permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3055
    const-string v2, ", "

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSubscriptionPlanAccess(IILjava/lang/String;)V
    .registers 14
    .param p1, "subId"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3393
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3397
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3399
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 3400
    .local v2, "config":Landroid/os/PersistableBundle;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_a3

    .line 3402
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3403
    nop

    .line 3406
    if-eqz v3, :cond_26

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3407
    return-void

    .line 3411
    :cond_26
    const/4 v4, 0x0

    if-eqz v2, :cond_3d

    .line 3412
    nop

    .line 3413
    const-string v5, "config_plans_package_override_string"

    invoke-virtual {v2, v5, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3414
    .local v5, "overridePackage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 3415
    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 3416
    return-void

    .line 3421
    .end local v5    # "overridePackage":Ljava/lang/String;
    :cond_3d
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v5

    .line 3422
    .local v5, "defaultPackage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 3423
    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 3424
    return-void

    .line 3428
    :cond_50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persist.sys.sub_plan_owner."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3429
    .local v6, "testPackage":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_75

    .line 3430
    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 3431
    return-void

    .line 3435
    :cond_75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fw.sub_plan_owner."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3436
    .local v4, "legacyTestPackage":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_99

    .line 3437
    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 3438
    return-void

    .line 3442
    :cond_99
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    const-string v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3443
    return-void

    .line 3402
    .end local v2    # "config":Landroid/os/PersistableBundle;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    .end local v4    # "legacyTestPackage":Ljava/lang/String;
    .end local v5    # "defaultPackage":Ljava/lang/String;
    .end local v6    # "testPackage":Ljava/lang/String;
    :catchall_a3
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3403
    throw v2
.end method

.method private enforceSubscriptionPlanValidity([Landroid/telephony/SubscriptionPlan;)V
    .registers 13
    .param p1, "plans"    # [Landroid/telephony/SubscriptionPlan;

    .line 3447
    array-length v0, p1

    if-nez v0, :cond_b

    .line 3448
    const-string v0, "NetworkPolicy"

    const-string v1, "Received empty plans list. Clearing existing SubscriptionPlans."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    return-void

    .line 3452
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    .line 3453
    .local v0, "allNetworkTypes":[I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 3454
    .local v1, "allNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    .line 3456
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3457
    .local v2, "applicableNetworkTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 3458
    .local v3, "hasGeneralPlan":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    array-length v5, p1

    if-ge v4, v5, :cond_85

    .line 3459
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    move-result-object v5

    .line 3460
    .local v5, "planNetworkTypes":[I
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 3461
    .local v6, "planNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2d
    array-length v8, v5

    if-ge v7, v8, :cond_6e

    .line 3463
    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 3465
    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 3461
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 3466
    :cond_4b
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Subscription plan contains duplicate network types."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3470
    :cond_53
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid network type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3475
    .end local v7    # "j":I
    :cond_6e
    array-length v7, v5

    array-length v8, v0

    if-ne v7, v8, :cond_74

    .line 3476
    const/4 v3, 0x1

    goto :goto_7a

    .line 3479
    :cond_74
    invoke-static {v2, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 3458
    .end local v5    # "planNetworkTypes":[I
    .end local v6    # "planNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :goto_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 3480
    .restart local v5    # "planNetworkTypes":[I
    .restart local v6    # "planNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_7d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Multiple subscription plans defined for a single network type."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3487
    .end local v4    # "i":I
    .end local v5    # "planNetworkTypes":[I
    .end local v6    # "planNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_85
    if-eqz v3, :cond_88

    .line 3491
    return-void

    .line 3488
    :cond_88
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No generic subscription plan that applies to all network types."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V
    .registers 29
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J
    .param p5, "rapidBlame"    # Landroid/content/pm/ApplicationInfo;

    .line 1631
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    invoke-direct {v6, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;-><init>(Landroid/net/NetworkPolicy;I)V

    .line 1632
    .local v6, "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1634
    .local v7, "builder":Landroid/app/Notification$Builder;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1635
    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1636
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x106001c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1639
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1642
    .local v9, "res":Landroid/content/res/Resources;
    const/16 v10, 0x8

    const v11, 0x1080078

    const/high16 v12, 0xc000000

    const/4 v13, 0x0

    sparse-switch v2, :sswitch_data_20e

    .line 1757
    return-void

    .line 1729
    :sswitch_3f
    const v10, 0x1040305

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1730
    .local v10, "title":Ljava/lang/CharSequence;
    if-eqz v5, :cond_5e

    .line 1731
    const v14, 0x1040303

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1732
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    aput-object v15, v8, v13

    .line 1731
    invoke-virtual {v9, v14, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "body":Ljava/lang/CharSequence;
    goto :goto_65

    .line 1734
    .end local v8    # "body":Ljava/lang/CharSequence;
    :cond_5e
    const v8, 0x1040304

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1737
    .restart local v8    # "body":Ljava/lang/CharSequence;
    :goto_65
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1739
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1740
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1739
    invoke-static {v11, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 1741
    .local v11, "snoozeIntent":Landroid/content/Intent;
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14, v13, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1744
    iget-object v14, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v14

    .line 1746
    .local v14, "viewIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v15

    if-eqz v15, :cond_9e

    .line 1747
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    const/high16 v18, 0xc000000

    const/16 v19, 0x0

    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v17, v14

    invoke-static/range {v15 .. v20}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_1d7

    .line 1751
    :cond_9e
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v15, v13, v14, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1754
    goto/16 :goto_1d7

    .line 1697
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v11    # "snoozeIntent":Landroid/content/Intent;
    .end local v14    # "viewIntent":Landroid/content/Intent;
    :sswitch_a9
    iget-object v14, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v14}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v14

    sparse-switch v14, :sswitch_data_220

    .line 1706
    return-void

    .line 1703
    :sswitch_b3
    const v14, 0x104030a

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1704
    .local v14, "title":Ljava/lang/CharSequence;
    goto :goto_c3

    .line 1700
    .end local v14    # "title":Ljava/lang/CharSequence;
    :sswitch_bb
    const v14, 0x1040301

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1701
    .restart local v14    # "title":Ljava/lang/CharSequence;
    nop

    .line 1708
    :goto_c3
    iget-wide v11, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v11, v3, v11

    .line 1709
    .local v11, "overBytes":J
    new-array v15, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1710
    invoke-static {v8, v11, v12, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v13

    .line 1709
    const v8, 0x1040300

    invoke-virtual {v9, v8, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1712
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1713
    const v10, 0x1080078

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1714
    sget-object v10, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1716
    iget-object v10, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v10

    .line 1718
    .local v10, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v15

    if-eqz v15, :cond_109

    .line 1719
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    const/high16 v20, 0xc000000

    const/16 v21, 0x0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v17, v13

    move-object/from16 v19, v10

    invoke-static/range {v17 .. v22}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_115

    .line 1723
    :cond_109
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    invoke-static {v15, v13, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1726
    nop

    .line 1761
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "overBytes":J
    :goto_115
    move-object v10, v14

    goto/16 :goto_1d7

    .line 1668
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v14    # "title":Ljava/lang/CharSequence;
    :sswitch_118
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    sparse-switch v2, :sswitch_data_22e

    .line 1677
    return-void

    .line 1674
    :sswitch_122
    const v2, 0x104030b

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1675
    .local v2, "title":Ljava/lang/CharSequence;
    move-object v10, v2

    goto :goto_133

    .line 1671
    .end local v2    # "title":Ljava/lang/CharSequence;
    :sswitch_12b
    const v2, 0x1040302

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1672
    .restart local v2    # "title":Ljava/lang/CharSequence;
    move-object v10, v2

    .line 1679
    .end local v2    # "title":Ljava/lang/CharSequence;
    .local v10, "title":Ljava/lang/CharSequence;
    :goto_133
    const v2, 0x10402ff

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1681
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1682
    const v2, 0x1080846

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1684
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1686
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v11

    if-eqz v11, :cond_166

    .line 1687
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    const/high16 v20, 0xc000000

    const/16 v21, 0x0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v17, v11

    move-object/from16 v19, v2

    invoke-static/range {v17 .. v22}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1d7

    .line 1691
    :cond_166
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0xc000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1694
    goto :goto_1d7

    .line 1644
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :sswitch_172
    const v2, 0x1040309

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1645
    .local v2, "title":Ljava/lang/CharSequence;
    const v8, 0x1040308

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1646
    invoke-static {v12, v3, v4, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v13

    .line 1645
    invoke-virtual {v9, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1648
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const v10, 0x1080078

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1650
    iget-object v10, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1651
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1650
    invoke-static {v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 1652
    .local v10, "snoozeIntent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0xc000000

    invoke-static {v11, v13, v10, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1655
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1657
    .local v11, "viewIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v12

    if-eqz v12, :cond_1ca

    .line 1658
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    const/high16 v20, 0xc000000

    const/16 v21, 0x0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v17, v12

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v22}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1d6

    .line 1662
    :cond_1ca
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v14, 0xc000000

    invoke-static {v12, v13, v11, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1665
    nop

    .line 1761
    .end local v10    # "snoozeIntent":Landroid/content/Intent;
    .end local v11    # "viewIntent":Landroid/content/Intent;
    :goto_1d6
    move-object v10, v2

    .end local v2    # "title":Ljava/lang/CharSequence;
    .local v10, "title":Ljava/lang/CharSequence;
    :goto_1d7
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1762
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1763
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1764
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1766
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v11, Landroid/app/NotificationManager;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 1767
    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v12

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1766
    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1768
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1769
    return-void

    nop

    :sswitch_data_20e
    .sparse-switch
        0x22 -> :sswitch_172
        0x23 -> :sswitch_118
        0x24 -> :sswitch_a9
        0x2d -> :sswitch_3f
    .end sparse-switch

    :sswitch_data_220
    .sparse-switch
        0x1 -> :sswitch_bb
        0x4 -> :sswitch_b3
        0xa -> :sswitch_bb
    .end sparse-switch

    :sswitch_data_22e
    .sparse-switch
        0x1 -> :sswitch_12b
        0x4 -> :sswitch_122
        0xa -> :sswitch_12b
    .end sparse-switch
.end method

.method private ensureActiveCarrierPolicyAL()V
    .registers 4

    .line 2353
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "NetworkPolicy"

    const-string v1, "ensureActiveCarrierPolicyAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v0, :cond_10

    return-void

    .line 2356
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 2357
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2358
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2360
    .local v2, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    .line 2356
    .end local v1    # "subId":I
    .end local v2    # "subscriberId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2362
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method private ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z
    .registers 10
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .line 2375
    new-instance v0, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v0}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 2376
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    .line 2377
    invoke-virtual {v0, p2}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    .line 2378
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    .line 2379
    invoke-virtual {v0, v2}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    .line 2380
    invoke-virtual {v0, p1}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 2381
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_26
    const-string v4, "NetworkPolicy"

    if-ltz v3, :cond_64

    .line 2382
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 2383
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 2384
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v2, :cond_60

    .line 2385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found template "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " which matches subscriber "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2386
    invoke-static {p2}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2385
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    :cond_60
    return v1

    .line 2381
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_61
    add-int/lit8 v3, v3, -0x1

    goto :goto_26

    .line 2392
    .end local v3    # "i":I
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No policy for subscriber "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2393
    invoke-static {p2}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; generating default policy"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2392
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildDefaultCarrierPolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 2396
    .local v1, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V

    .line 2397
    return v2
.end method

.method private findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;
    .registers 21
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 1540
    move-object v1, p0

    const-wide/16 v2, 0x0

    .line 1541
    .local v2, "totalBytes":J
    const-wide/16 v4, 0x0

    .line 1542
    .local v4, "maxBytes":J
    const/4 v0, 0x0

    .line 1546
    .local v0, "maxUid":I
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->isAnyCallbackReceived()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_10

    return-object v7

    .line 1548
    :cond_10
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Ljava/util/List;

    move-result-object v6

    .line 1549
    .local v6, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v9, v4

    move-wide v3, v2

    move v2, v0

    .end local v0    # "maxUid":I
    .end local v4    # "maxBytes":J
    .local v2, "maxUid":I
    .local v3, "totalBytes":J
    .local v9, "maxBytes":J
    :goto_23
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStats$Bucket;

    .line 1550
    .local v0, "entry":Landroid/app/usage/NetworkStats$Bucket;
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v11

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 1551
    .local v11, "bytes":J
    add-long/2addr v3, v11

    .line 1552
    cmp-long v5, v11, v9

    if-lez v5, :cond_42

    .line 1553
    move-wide v9, v11

    .line 1554
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v2

    .line 1556
    .end local v0    # "entry":Landroid/app/usage/NetworkStats$Bucket;
    .end local v11    # "bytes":J
    :cond_42
    goto :goto_23

    .line 1560
    :cond_43
    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-lez v0, :cond_73

    const-wide/16 v11, 0x2

    div-long v11, v3, v11

    cmp-long v0, v9, v11

    if-lez v0, :cond_73

    .line 1561
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 1562
    .local v5, "packageNames":[Ljava/lang/String;
    if-eqz v5, :cond_73

    array-length v0, v5

    const/4 v8, 0x1

    if-ne v0, v8, :cond_73

    .line 1564
    :try_start_61
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const v11, 0x4c2200

    invoke-virtual {v0, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_61 .. :try_end_71} :catch_72

    return-object v0

    .line 1567
    :catch_72
    move-exception v0

    .line 1572
    .end local v5    # "packageNames":[Ljava/lang/String;
    :cond_73
    return-object v7
.end method

.method private findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I
    .registers 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 1587
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 1588
    return v0

    .line 1592
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 1593
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1594
    .local v2, "subId":I
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1595
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v4, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v4}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    const/4 v5, 0x0

    .line 1596
    invoke-virtual {v4, v5}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v4

    .line 1597
    invoke-virtual {v4, v3}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v4

    .line 1598
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v4

    .line 1599
    invoke-virtual {v4, v5}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v4

    .line 1600
    invoke-virtual {v4, v2}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v4

    .line 1601
    .local v4, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1602
    return v2

    .line 1592
    .end local v2    # "subId":I
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v4    # "probeIdent":Landroid/net/NetworkIdentity;
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1605
    .end local v1    # "i":I
    :cond_44
    return v0
.end method

.method private forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    .registers 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "consumer"    # Ljava/util/function/IntConsumer;

    .line 4686
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forEachUid-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4693
    :cond_1f
    :try_start_1f
    const-string v2, "list-users"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_6f

    .line 4695
    :try_start_24
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_69

    .line 4697
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4698
    nop

    .line 4699
    const-string v3, "iterate-uids"

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_6f

    .line 4701
    :try_start_33
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 4703
    .local v3, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 4704
    .local v4, "usersSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_40
    if-ge v5, v4, :cond_5a

    .line 4705
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 4706
    .local v6, "userId":I
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 4707
    .local v7, "sharedAppIdsHandled":Landroid/util/SparseBooleanArray;
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v8, v7, v6, p2}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;-><init>(Landroid/util/SparseBooleanArray;ILjava/util/function/IntConsumer;)V

    invoke-virtual {v3, v8, v6}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V
    :try_end_57
    .catchall {:try_start_33 .. :try_end_57} :catchall_63

    .line 4704
    .end local v6    # "userId":I
    .end local v7    # "sharedAppIdsHandled":Landroid/util/SparseBooleanArray;
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 4721
    .end local v3    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v4    # "usersSize":I
    .end local v5    # "i":I
    :cond_5a
    :try_start_5a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_6f

    .line 4722
    nop

    .line 4724
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4725
    nop

    .line 4726
    return-void

    .line 4721
    .restart local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_63
    move-exception v3

    :try_start_64
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4722
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "consumer":Ljava/util/function/IntConsumer;
    throw v3

    .line 4697
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "consumer":Ljava/util/function/IntConsumer;
    :catchall_69
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4698
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "consumer":Ljava/util/function/IntConsumer;
    throw v2
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_6f

    .line 4724
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "consumer":Ljava/util/function/IntConsumer;
    :catchall_6f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4725
    throw v2
.end method

.method private getBlockedReasons(I)I
    .registers 5
    .param p1, "uid"    # I

    .line 6289
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6290
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 6291
    .local v1, "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    if-nez v1, :cond_f

    .line 6292
    const/4 v2, 0x0

    goto :goto_11

    .line 6293
    :cond_f
    iget v2, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    :goto_11
    monitor-exit v0

    .line 6291
    return v2

    .line 6294
    .end local v1    # "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private static getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "bundle"    # Landroid/os/PersistableBundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 6266
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_8

    :cond_7
    move v0, p2

    :goto_8
    return v0
.end method

.method private static getDefaultClock()Ljava/time/Clock;
    .registers 5

    .line 753
    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 754
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 753
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .registers 3

    .line 749
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getEffectiveBlockedReasons(I)I
    .registers 5
    .param p1, "uid"    # I

    .line 6280
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6281
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 6282
    .local v1, "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    if-nez v1, :cond_f

    .line 6283
    const/4 v2, 0x0

    goto :goto_11

    .line 6284
    :cond_f
    iget v2, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    :goto_11
    monitor-exit v0

    .line 6282
    return v2

    .line 6285
    .end local v1    # "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private static getOrCreateUidBlockedStateForUid(Landroid/util/SparseArray;I)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    .registers 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;",
            ">;I)",
            "Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;"
        }
    .end annotation

    .line 6271
    .local p0, "uidBlockedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 6272
    .local v0, "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    if-nez v0, :cond_11

    .line 6273
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    invoke-direct {v1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;-><init>()V

    move-object v0, v1

    .line 6274
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6276
    :cond_11
    return-object v0
.end method

.method private getPlatformDefaultLimitBytes()J
    .registers 3

    .line 2411
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getPlatformDefaultWarningBytes()J
    .registers 6

    .line 2401
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2403
    .local v0, "dataWarningConfig":I
    int-to-long v1, v0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    .line 2404
    return-wide v3

    .line 2406
    :cond_15
    sget-object v1, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v1

    return-wide v1
.end method

.method private getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;
    .registers 8
    .param p1, "subId"    # I

    .line 6206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    .line 6207
    .local v0, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 6208
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    .line 6209
    .local v3, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/RecurrenceRule;->isRecurring()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 6211
    return-object v3

    .line 6214
    :cond_1f
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    .line 6215
    .local v4, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-static {v5}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 6216
    return-object v3

    .line 6208
    .end local v3    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v4    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 6221
    :cond_39
    const/4 v1, 0x0

    return-object v1
.end method

.method private getRestrictBackgroundStatusInternal(I)I
    .registers 9
    .param p1, "uid"    # I

    .line 3315
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3317
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_30

    .line 3320
    .local v1, "token":J
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v3
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_2a

    .line 3322
    .local v3, "policy":I
    :try_start_b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3323
    nop

    .line 3324
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_15

    .line 3326
    monitor-exit v0

    return v4

    .line 3328
    :cond_15
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v6, :cond_1b

    .line 3329
    monitor-exit v0

    return v5

    .line 3331
    :cond_1b
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_27

    .line 3332
    const/4 v4, 0x2

    goto :goto_28

    .line 3333
    :cond_27
    nop

    :goto_28
    monitor-exit v0

    .line 3331
    return v4

    .line 3322
    .end local v3    # "policy":I
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3323
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "uid":I
    throw v3

    .line 3334
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "uid":I
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_30

    throw v1
.end method

.method private static getRestrictedModeFirewallRule(I)I
    .registers 2
    .param p0, "effectiveBlockedReasons"    # I

    .line 4292
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    .line 4294
    const/4 v0, 0x0

    return v0

    .line 4296
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private getSubIdLocked(Landroid/net/Network;)I
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 6201
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5849
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->isAnyCallbackReceived()Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    .line 5850
    :cond_b
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 6192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x402000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return v0

    .line 6194
    :catch_e
    move-exception v0

    .line 6195
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method private handleBlockedReasonsChanged(III)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "newEffectiveBlockedReasons"    # I
    .param p3, "oldEffectiveBlockedReasons"    # I

    .line 5212
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManagerInternal;->onUidBlockedReasonsChanged(II)V

    .line 5213
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->postBlockedReasonsChangedMsg(III)V

    .line 5214
    return-void
.end method

.method private handleDeviceIdleModeChangedUL(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 4597
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictPowerUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4599
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 4600
    if-eqz p1, :cond_1a

    .line 4601
    const-string/jumbo v2, "updateRulesForRestrictPower"

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    goto :goto_1d

    .line 4611
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->handleDeviceIdleModeDisabledUL()V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_22

    .line 4614
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4615
    nop

    .line 4616
    return-void

    .line 4614
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4615
    throw v2
.end method

.method private handleDeviceIdleModeDisabledUL()V
    .registers 13

    .line 4620
    const-string v0, "handleDeviceIdleModeDisabledUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4622
    :try_start_8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4623
    .local v0, "uidStateUpdates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/SomeArgs;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_a4

    .line 4624
    :try_start_10
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 4625
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    if-ge v5, v4, :cond_8a

    .line 4626
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 4627
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 4628
    .local v7, "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    iget v8, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2e

    .line 4629
    goto :goto_87

    .line 4631
    :cond_2e
    iget v8, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    and-int/lit8 v8, v8, -0x3

    iput v8, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 4632
    iget v8, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 4633
    .local v8, "oldEffectiveBlockedReasons":I
    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    .line 4634
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v9, :cond_69

    .line 4635
    const-string v9, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleDeviceIdleModeDisabled("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "); newUidBlockedState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", oldEffectiveBlockedReasons="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    :cond_69
    iget v9, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    if-eq v8, v9, :cond_87

    .line 4640
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 4641
    .local v9, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput v8, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 4642
    iget v10, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 4643
    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->deriveUidRules()I

    move-result v10

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 4644
    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 4646
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v11, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-virtual {v10, v6, v11}, Landroid/app/ActivityManagerInternal;->onUidBlockedReasonsChanged(II)V

    .line 4625
    .end local v6    # "uid":I
    .end local v7    # "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    .end local v8    # "oldEffectiveBlockedReasons":I
    .end local v9    # "someArgs":Lcom/android/internal/os/SomeArgs;
    :cond_87
    :goto_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 4650
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_10 .. :try_end_8b} :catchall_a1

    .line 4651
    :try_start_8b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_9c

    .line 4652
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4653
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_9c
    .catchall {:try_start_8b .. :try_end_9c} :catchall_a4

    .line 4656
    .end local v0    # "uidStateUpdates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/SomeArgs;>;"
    :cond_9c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4657
    nop

    .line 4658
    return-void

    .line 4650
    .restart local v0    # "uidStateUpdates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/SomeArgs;>;"
    :catchall_a1
    move-exception v4

    :try_start_a2
    monitor-exit v3
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_a3
    throw v4
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a4

    .line 4656
    .end local v0    # "uidStateUpdates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/SomeArgs;>;"
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_a4
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4657
    throw v0
.end method

.method private handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6236
    .local p1, "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    if-nez v0, :cond_5

    .line 6237
    return-void

    .line 6239
    :cond_5
    if-nez p1, :cond_20

    .line 6240
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6241
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 6242
    .end local v1    # "uid":I
    goto :goto_b

    .line 6243
    :cond_1f
    return-void

    .line 6245
    :cond_20
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6246
    .restart local v1    # "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 6247
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 6249
    .end local v1    # "uid":I
    :cond_41
    goto :goto_24

    .line 6250
    :cond_42
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6251
    .restart local v1    # "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 6252
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 6254
    .end local v1    # "uid":I
    :cond_63
    goto :goto_46

    .line 6255
    :cond_64
    return-void
.end method

.method private hasInternetPermissionUL(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 4846
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4847
    return v0

    .line 4851
    :cond_a
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.INTERNET"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_16

    move v1, v0

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 4853
    .local v1, "hasPermission":Z
    :goto_17
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 4854
    return v1

    .line 4855
    .end local v1    # "hasPermission":Z
    :catch_1d
    move-exception v1

    .line 4858
    return v0
.end method

.method private hasRestrictedModeAccess(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 4304
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.NETWORK_STACK"

    .line 4306
    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.MAINLINE_NETWORK_STACK"

    .line 4307
    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1d} :catch_21

    if-nez v1, :cond_20

    :cond_1f
    const/4 v0, 0x1

    .line 4304
    :cond_20
    return v0

    .line 4309
    :catch_21
    move-exception v1

    .line 4310
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private initService(Ljava/util/concurrent/CountDownLatch;)V
    .registers 26
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 926
    move-object/from16 v1, p0

    const-string/jumbo v0, "systemReady"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 927
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    .line 930
    .local v4, "oldPriority":I
    const/4 v0, -0x2

    :try_start_14
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 931
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 932
    const-string v0, "NetworkPolicy"

    const-string v5, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_217

    .line 1098
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1099
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 933
    return-void

    .line 936
    :cond_2b
    :try_start_2b
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 937
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 938
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 940
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_217

    .line 941
    :try_start_4c
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_214

    .line 942
    :try_start_4f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    .line 943
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 944
    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 965
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 968
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-direct {v0, v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver$RestrictedModeListener;)V

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedModeObserver:Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;

    .line 975
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->isRestrictedModeEnabled()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    .line 977
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 979
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->waitForAdminData()V

    .line 982
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    .line 985
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 986
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v8, 0xa

    .line 987
    invoke-virtual {v0, v8}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 988
    if-eqz v0, :cond_a4

    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    if-nez v0, :cond_a4

    .line 989
    iput-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 991
    :cond_a4
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v8}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 1010
    :cond_b7
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    const-string v8, "init_service"

    invoke-direct {v1, v0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(ZLjava/lang/String;)V

    .line 1011
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1013
    monitor-exit v6
    :try_end_c6
    .catchall {:try_start_4f .. :try_end_c6} :catchall_211

    .line 1014
    :try_start_c6
    monitor-exit v5
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_214

    .line 1017
    const/16 v0, 0x23

    .line 1020
    .local v0, "changes":I
    :try_start_c9
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v8, 0x23

    const/4 v9, 0x5

    const-string v10, "android"

    invoke-virtual {v5, v6, v8, v9, v10}, Landroid/app/ActivityManagerInternal;->registerNetworkPolicyUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 1022
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_dc} :catch_dd
    .catchall {:try_start_c9 .. :try_end_dc} :catchall_217

    .line 1025
    .end local v0    # "changes":I
    goto :goto_de

    .line 1023
    :catch_dd
    move-exception v0

    .line 1028
    :goto_de
    :try_start_de
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 1030
    .local v5, "whitelistFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v5, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1033
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 1034
    .local v6, "connFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v10, "android.permission.NETWORK_STACK"

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8, v6, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1037
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v8, v0

    .line 1038
    .local v8, "packageFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1039
    const-string/jumbo v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1040
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v8, v9, v11}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1043
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.UID_REMOVED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v9, v12}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1047
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v10, v0

    .line 1048
    .local v10, "userFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1049
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1050
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11, v10, v9, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1053
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v11}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object/from16 v17, v0

    .line 1054
    .local v17, "executor":Ljava/util/concurrent/Executor;
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v0, v7}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v14

    const-wide/16 v15, 0x0

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    move-object/from16 v18, v0

    invoke-virtual/range {v13 .. v18}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 1056
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    new-instance v7, Landroid/net/NetworkTemplate$Builder;

    const/4 v11, 0x4

    invoke-direct {v7, v11}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v7}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v19

    const-wide/16 v20, 0x0

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    move-object/from16 v18, v0

    move-object/from16 v22, v17

    move-object/from16 v23, v7

    invoke-virtual/range {v18 .. v23}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 1060
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v12, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v11, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1062
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v12, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v11, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1066
    new-instance v0, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 1068
    .local v7, "wifiFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11, v7, v9, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1071
    new-instance v0, Landroid/content/IntentFilter;

    const-string v11, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 1073
    .local v11, "carrierConfigFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, v11, v9, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1076
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    new-instance v12, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v12}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1077
    invoke-virtual {v12}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1076
    invoke-virtual {v0, v12, v13}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1079
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    new-instance v12, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;

    invoke-direct {v12, v1, v9}, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener-IA;)V

    invoke-interface {v0, v12}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1080
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1df
    .catchall {:try_start_de .. :try_end_1df} :catchall_217

    .line 1081
    :try_start_1df
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    .line 1082
    monitor-exit v9
    :try_end_1e3
    .catchall {:try_start_1df .. :try_end_1e3} :catchall_20e

    .line 1085
    :try_start_1e3
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v9, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    new-instance v9, Landroid/os/HandlerExecutor;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, v12}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v12, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v12, v1}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v9, v12}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1095
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1ff
    .catchall {:try_start_1e3 .. :try_end_1ff} :catchall_217

    .line 1098
    .end local v5    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v6    # "connFilter":Landroid/content/IntentFilter;
    .end local v7    # "wifiFilter":Landroid/content/IntentFilter;
    .end local v8    # "packageFilter":Landroid/content/IntentFilter;
    .end local v10    # "userFilter":Landroid/content/IntentFilter;
    .end local v11    # "carrierConfigFilter":Landroid/content/IntentFilter;
    .end local v17    # "executor":Ljava/util/concurrent/Executor;
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1099
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1100
    nop

    .line 1102
    invoke-static {}, Lcom/android/server/NetworkPolicyManagerServiceStub;->getInstance()Lcom/android/server/NetworkPolicyManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/NetworkPolicyManagerServiceStub;->systemReady()V

    .line 1103
    return-void

    .line 1082
    .restart local v5    # "whitelistFilter":Landroid/content/IntentFilter;
    .restart local v6    # "connFilter":Landroid/content/IntentFilter;
    .restart local v7    # "wifiFilter":Landroid/content/IntentFilter;
    .restart local v8    # "packageFilter":Landroid/content/IntentFilter;
    .restart local v10    # "userFilter":Landroid/content/IntentFilter;
    .restart local v11    # "carrierConfigFilter":Landroid/content/IntentFilter;
    .restart local v17    # "executor":Ljava/util/concurrent/Executor;
    :catchall_20e
    move-exception v0

    :try_start_20f
    monitor-exit v9
    :try_end_210
    .catchall {:try_start_20f .. :try_end_210} :catchall_20e

    .end local v4    # "oldPriority":I
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :try_start_210
    throw v0
    :try_end_211
    .catchall {:try_start_210 .. :try_end_211} :catchall_217

    .line 1013
    .end local v5    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v6    # "connFilter":Landroid/content/IntentFilter;
    .end local v7    # "wifiFilter":Landroid/content/IntentFilter;
    .end local v8    # "packageFilter":Landroid/content/IntentFilter;
    .end local v10    # "userFilter":Landroid/content/IntentFilter;
    .end local v11    # "carrierConfigFilter":Landroid/content/IntentFilter;
    .end local v17    # "executor":Ljava/util/concurrent/Executor;
    .restart local v4    # "oldPriority":I
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catchall_211
    move-exception v0

    :try_start_212
    monitor-exit v6
    :try_end_213
    .catchall {:try_start_212 .. :try_end_213} :catchall_211

    .end local v4    # "oldPriority":I
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :try_start_213
    throw v0

    .line 1014
    .restart local v4    # "oldPriority":I
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catchall_214
    move-exception v0

    monitor-exit v5
    :try_end_216
    .catchall {:try_start_213 .. :try_end_216} :catchall_214

    .end local v4    # "oldPriority":I
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :try_start_216
    throw v0
    :try_end_217
    .catchall {:try_start_216 .. :try_end_217} :catchall_217

    .line 1098
    .restart local v4    # "oldPriority":I
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catchall_217
    move-exception v0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1099
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1100
    throw v0
.end method

.method private isAllowlistedFromLowPowerStandbyUL(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 4463
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method private isBandwidthControlEnabled()Z
    .registers 5

    .line 5854
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5856
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_13
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5861
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5856
    return v2

    .line 5861
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5862
    throw v2

    .line 5857
    :catch_13
    move-exception v2

    .line 5859
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 5861
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5859
    return v3
.end method

.method private isRestrictedByAdminUL(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 6259
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 6260
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 6259
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 6261
    .local v0, "restrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private static isSystem(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 6026
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isUidForegroundOnRestrictBackgroundUL(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 4083
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager$UidState;

    .line 4084
    .local v0, "uidState":Landroid/net/NetworkPolicyManager$UidState;
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v1

    return v1
.end method

.method private isUidForegroundOnRestrictPowerUL(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 4089
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager$UidState;

    .line 4090
    .local v0, "uidState":Landroid/net/NetworkPolicyManager$UidState;
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v1

    return v1
.end method

.method private isUidIdle(II)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "uidProcessState"    # I

    .line 4814
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4815
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_f

    :try_start_7
    invoke-static {p2}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4817
    monitor-exit v0

    return v2

    .line 4819
    :cond_f
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4821
    monitor-exit v0

    return v2

    .line 4823
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_3e

    .line 4825
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4826
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4828
    .local v1, "userId":I
    if-eqz v0, :cond_3c

    .line 4829
    array-length v3, v0

    move v4, v2

    :goto_2c
    if-ge v4, v3, :cond_3c

    aget-object v5, v0, v4

    .line 4830
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v5, p1, v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_39

    .line 4831
    return v2

    .line 4829
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 4835
    :cond_3c
    const/4 v2, 0x1

    return v2

    .line 4823
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v1    # "userId":I
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private isUidTop(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 4095
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager$UidState;

    .line 4096
    .local v0, "uidState":Landroid/net/NetworkPolicyManager$UidState;
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileInLowPowerStandby(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v1

    return v1
.end method

.method private isUidValidForAllowlistRulesUL(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 4759
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isUidValidForDenylistRulesUL(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 4749
    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_11

    const/16 v0, 0x3fb

    if-eq p1, v0, :cond_11

    .line 4750
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    .line 4754
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 4751
    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method private isWhitelistedFromPowerSaveExceptIdleUL(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 4454
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4455
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method private isWhitelistedFromPowerSaveUL(IZ)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "deviceIdleMode"    # Z

    .line 4439
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4440
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 4441
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    move v1, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move v1, v3

    .line 4442
    .local v1, "isWhitelisted":Z
    :goto_1a
    if-nez p2, :cond_26

    .line 4443
    if-nez v1, :cond_24

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveExceptIdleUL(I)Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_24
    move v2, v3

    :cond_25
    move v1, v2

    .line 4445
    :cond_26
    return v1
.end method

.method static synthetic lambda$forEachUid$7(Landroid/util/SparseBooleanArray;ILjava/util/function/IntConsumer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6
    .param p0, "sharedAppIdsHandled"    # Landroid/util/SparseBooleanArray;
    .param p1, "userId"    # I
    .param p2, "consumer"    # Ljava/util/function/IntConsumer;
    .param p3, "androidPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4708
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    .line 4709
    .local v0, "appId":I
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 4710
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_15

    .line 4711
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_16

    .line 4713
    :cond_15
    return-void

    .line 4716
    :cond_16
    :goto_16
    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 4717
    .local v1, "uid":I
    invoke-interface {p2, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 4718
    return-void
.end method

.method static synthetic lambda$updateNetworks$2(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 1810
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1811
    return-void
.end method

.method private maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z
    .registers 9
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .line 1829
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "maybeUpdateCarrierPolicyCycleAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_c
    const/4 v0, 0x0

    .line 1833
    .local v0, "policyUpdated":Z
    new-instance v1, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v1}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    const/4 v2, 0x0

    .line 1834
    invoke-virtual {v1, v2}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v1

    .line 1835
    invoke-virtual {v1, p2}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v1

    .line 1836
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v1

    .line 1837
    invoke-virtual {v1, v2}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v1

    .line 1838
    invoke-virtual {v1, p1}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v1

    .line 1839
    .local v1, "probeIdent":Landroid/net/NetworkIdentity;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_33
    if-ltz v3, :cond_53

    .line 1840
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 1841
    .local v2, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v2, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1842
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 1843
    .local v4, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultCarrierPolicyAL(ILandroid/net/NetworkPolicy;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1839
    .end local v2    # "template":Landroid/net/NetworkTemplate;
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_50
    add-int/lit8 v3, v3, -0x1

    goto :goto_33

    .line 1846
    .end local v3    # "i":I
    :cond_53
    return v0
.end method

.method private normalizePoliciesNL()V
    .registers 2

    .line 3129
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 3130
    return-void
.end method

.method private normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .registers 8
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 3134
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3135
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_58

    aget-object v2, p1, v1

    .line 3136
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_e

    .line 3137
    goto :goto_55

    .line 3141
    :cond_e
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizeTemplate(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 3142
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 3143
    .local v3, "existing":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_2a

    invoke-virtual {v3, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v4

    if-lez v4, :cond_55

    .line 3144
    :cond_2a
    if-eqz v3, :cond_4e

    .line 3145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Normalization replaced "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkPolicy"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    :cond_4e
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3135
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .end local v3    # "existing":Landroid/net/NetworkPolicy;
    :cond_55
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3150
    :cond_58
    return-void
.end method

.method private static normalizeTemplate(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;
    .registers 7
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkTemplate;"
        }
    .end annotation

    .line 3172
    .local p1, "mergedList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 3174
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3176
    .local v1, "merged":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3177
    .local v3, "subscriberId":Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/net/module/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 3180
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 3181
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkTemplate$Builder;->setWifiNetworkKeys(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 3182
    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 3183
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMeteredness()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 3184
    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 3180
    return-object v0

    .line 3186
    .end local v3    # "subscriberId":Ljava/lang/String;
    :cond_5b
    goto :goto_23

    .line 3187
    .end local v1    # "merged":[Ljava/lang/String;
    :cond_5c
    goto :goto_f

    .line 3189
    :cond_5d
    return-object p0
.end method

.method private notifyOverLimitNL(Landroid/net/NetworkTemplate;)V
    .registers 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 1614
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1615
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1616
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1618
    :cond_1a
    return-void
.end method

.method private notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V
    .registers 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 1622
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1623
    return-void
.end method

.method private onUidDeletedUL(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 4867
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4868
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 4869
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5e

    .line 4870
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 4871
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManagerInternal;->onUidBlockedReasonsChanged(II)V

    .line 4872
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4873
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4874
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4875
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4876
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4877
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4878
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4879
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4880
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4881
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4882
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    monitor-enter v2

    .line 4883
    :try_start_49
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4884
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_5b

    .line 4887
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4888
    return-void

    .line 4884
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    .line 4869
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method private postBlockedReasonsChangedMsg(III)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "newEffectiveBlockedReasons"    # I
    .param p3, "oldEffectiveBlockedReasons"    # I

    .line 5218
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 5219
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5218
    const/16 v2, 0x15

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5220
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5221
    return-void
.end method

.method private postUidRulesChangedMsg(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .line 5224
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 5225
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5226
    return-void
.end method

.method private readPolicyAL()V
    .registers 40

    .line 2507
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v2, "NetworkPolicy"

    if-eqz v0, :cond_e

    const-string/jumbo v0, "readPolicyAL()"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    :cond_e
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2511
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2512
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2513
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2515
    const/4 v3, 0x0

    .line 2517
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_23
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_29} :catch_35a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_351
    .catchall {:try_start_23 .. :try_end_29} :catchall_34f

    move-object v3, v0

    .line 2518
    :try_start_2a
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 2522
    .local v0, "in":Landroid/util/TypedXmlPullParser;
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2525
    .local v4, "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    const/4 v5, 0x1

    .line 2526
    .local v5, "version":I
    const/4 v6, 0x0

    .line 2527
    .local v6, "insideAllowlist":Z
    :goto_35
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v7, v10, :cond_2a2

    .line 2528
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_42} :catch_34b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_42} :catch_347
    .catchall {:try_start_2a .. :try_end_42} :catchall_343

    .line 2529
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v11, "whitelist"

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-ne v8, v13, :cond_287

    .line 2530
    :try_start_49
    const-string/jumbo v14, "policy-list"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_50} :catch_34b
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_347
    .catchall {:try_start_49 .. :try_end_50} :catchall_343

    if-eqz v14, :cond_71

    .line 2531
    :try_start_52
    iget-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2532
    .local v11, "oldValue":Z
    const-string/jumbo v13, "version"

    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v13

    move v5, v13

    .line 2533
    if-lt v5, v12, :cond_69

    const-string/jumbo v12, "restrictBackground"

    .line 2534
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_69

    move v9, v10

    goto :goto_6a

    :cond_69
    nop

    :goto_6a
    iput-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_6c} :catch_35a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6c} :catch_351
    .catchall {:try_start_52 .. :try_end_6c} :catchall_34f

    .line 2535
    .end local v11    # "oldValue":Z
    move-object/from16 v17, v3

    move v3, v8

    goto/16 :goto_29e

    :cond_71
    :try_start_71
    const-string/jumbo v12, "network-policy"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1be

    .line 2536
    const-string/jumbo v9, "networkTemplate"

    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 2537
    .local v9, "templateType":I
    const-string/jumbo v11, "subscriberId"

    const/4 v12, 0x0

    invoke-interface {v0, v12, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_89} :catch_34b
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_89} :catch_347
    .catchall {:try_start_71 .. :try_end_89} :catchall_343

    .line 2541
    .local v11, "subscriberId":Ljava/lang/String;
    const/16 v14, 0x9

    if-lt v5, v14, :cond_95

    .line 2542
    :try_start_8d
    const-string/jumbo v14, "networkId"

    invoke-interface {v0, v12, v14}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "networkId":Ljava/lang/String;
    goto :goto_96

    .line 2544
    .end local v14    # "networkId":Ljava/lang/String;
    :cond_95
    const/4 v14, 0x0

    .line 2547
    .restart local v14    # "networkId":Ljava/lang/String;
    :goto_96
    const/16 v15, 0xd

    if-lt v5, v15, :cond_a9

    .line 2548
    const-string/jumbo v10, "subscriberIdMatchRule"

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    .line 2550
    .local v10, "subscriberIdMatchRule":I
    const-string/jumbo v15, "templateMetered"

    invoke-static {v0, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v15

    .local v15, "templateMeteredness":I
    goto :goto_c0

    .line 2553
    .end local v10    # "subscriberIdMatchRule":I
    .end local v15    # "templateMeteredness":I
    :cond_a9
    const/4 v15, 0x0

    .line 2555
    .local v15, "subscriberIdMatchRule":I
    if-ne v9, v10, :cond_ba

    .line 2556
    const-string v10, "Update template match rule from mobile to carrier and force to metered"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_b1} :catch_35a
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_b1} :catch_351
    .catchall {:try_start_8d .. :try_end_b1} :catchall_34f

    .line 2558
    const/16 v9, 0xa

    .line 2559
    const/4 v10, 0x1

    move/from16 v38, v15

    move v15, v10

    move/from16 v10, v38

    .local v10, "templateMeteredness":I
    goto :goto_c0

    .line 2561
    .end local v10    # "templateMeteredness":I
    :cond_ba
    const/4 v10, -0x1

    move/from16 v38, v15

    move v15, v10

    move/from16 v10, v38

    .line 2565
    .local v10, "subscriberIdMatchRule":I
    .local v15, "templateMeteredness":I
    :goto_c0
    const/16 v13, 0xb

    if-lt v5, v13, :cond_f3

    .line 2566
    :try_start_c4
    const-string v12, "cycleStart"

    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2567
    .local v12, "start":Ljava/lang/String;
    const-string v13, "cycleEnd"

    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_d0
    .catch Ljava/io/FileNotFoundException; {:try_start_c4 .. :try_end_d0} :catch_34b
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d0} :catch_347
    .catchall {:try_start_c4 .. :try_end_d0} :catchall_343

    .line 2568
    .local v13, "end":Ljava/lang/String;
    move-object/from16 v17, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v17, "fis":Ljava/io/FileInputStream;
    :try_start_d2
    const-string v3, "cyclePeriod"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2569
    .local v3, "period":Ljava/lang/String;
    move/from16 v18, v8

    .end local v8    # "type":I
    .local v18, "type":I
    new-instance v8, Landroid/util/RecurrenceRule;

    .line 2570
    move-object/from16 v19, v4

    .end local v4    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    .local v19, "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    invoke-static {v12}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v4

    .line 2571
    move-object/from16 v20, v12

    .end local v12    # "start":Ljava/lang/String;
    .local v20, "start":Ljava/lang/String;
    invoke-static {v13}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v12

    .line 2572
    move-object/from16 v21, v13

    .end local v13    # "end":Ljava/lang/String;
    .local v21, "end":Ljava/lang/String;
    invoke-static {v3}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v13

    invoke-direct {v8, v4, v12, v13}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    move-object v3, v8

    .line 2573
    .end local v20    # "start":Ljava/lang/String;
    .end local v21    # "end":Ljava/lang/String;
    .local v3, "cycleRule":Landroid/util/RecurrenceRule;
    goto :goto_114

    .line 2574
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "type":I
    .end local v19    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    .local v3, "fis":Ljava/io/FileInputStream;
    .restart local v4    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    .restart local v8    # "type":I
    :cond_f3
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v18, v8

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    .end local v8    # "type":I
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "type":I
    .restart local v19    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    const-string v3, "cycleDay"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2576
    .local v3, "cycleDay":I
    const/4 v4, 0x6

    if-lt v5, v4, :cond_109

    .line 2577
    const-string v4, "cycleTimezone"

    invoke-interface {v0, v12, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "cycleTimezone":Ljava/lang/String;
    goto :goto_10b

    .line 2579
    .end local v4    # "cycleTimezone":Ljava/lang/String;
    :cond_109
    const-string v4, "UTC"

    .line 2581
    .restart local v4    # "cycleTimezone":Ljava/lang/String;
    :goto_10b
    invoke-static {v4}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v8

    move-object v3, v8

    .line 2583
    .end local v4    # "cycleTimezone":Ljava/lang/String;
    .local v3, "cycleRule":Landroid/util/RecurrenceRule;
    :goto_114
    const-string/jumbo v4, "warningBytes"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v23

    .line 2584
    .local v23, "warningBytes":J
    const-string v4, "limitBytes"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v25

    .line 2586
    .local v25, "limitBytes":J
    const/4 v4, 0x5

    if-lt v5, v4, :cond_12b

    .line 2587
    const-string v8, "lastLimitSnooze"

    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .local v12, "lastLimitSnooze":J
    goto :goto_137

    .line 2588
    .end local v12    # "lastLimitSnooze":J
    :cond_12b
    const/4 v8, 0x2

    if-lt v5, v8, :cond_135

    .line 2589
    const-string v8, "lastSnooze"

    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .restart local v12    # "lastLimitSnooze":J
    goto :goto_137

    .line 2591
    .end local v12    # "lastLimitSnooze":J
    :cond_135
    const-wide/16 v12, -0x1

    .line 2594
    .restart local v12    # "lastLimitSnooze":J
    :goto_137
    const/4 v8, 0x4

    if-lt v5, v8, :cond_142

    .line 2595
    const-string/jumbo v8, "metered"

    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    .local v8, "metered":Z
    goto :goto_149

    .line 2597
    .end local v8    # "metered":Z
    :cond_142
    packed-switch v9, :pswitch_data_368

    .line 2602
    const/4 v8, 0x0

    .restart local v8    # "metered":Z
    goto :goto_149

    .line 2599
    .end local v8    # "metered":Z
    :pswitch_147
    const/4 v8, 0x1

    .line 2600
    .restart local v8    # "metered":Z
    nop

    .line 2606
    :goto_149
    if-lt v5, v4, :cond_154

    .line 2607
    const-string v4, "lastWarningSnooze"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v33, v20

    .local v20, "lastWarningSnooze":J
    goto :goto_158

    .line 2609
    .end local v20    # "lastWarningSnooze":J
    :cond_154
    const-wide/16 v20, -0x1

    move-wide/from16 v33, v20

    .line 2612
    .local v33, "lastWarningSnooze":J
    :goto_158
    const/4 v4, 0x7

    if-lt v5, v4, :cond_162

    .line 2613
    const-string v4, "inferred"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .local v4, "inferred":Z
    goto :goto_163

    .line 2615
    .end local v4    # "inferred":Z
    :cond_162
    const/4 v4, 0x0

    .line 2617
    .restart local v4    # "inferred":Z
    :goto_163
    move/from16 v16, v5

    .end local v5    # "version":I
    .local v16, "version":I
    new-instance v5, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v5, v9}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 2619
    invoke-virtual {v5, v15}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v5

    .line 2620
    .local v5, "builder":Landroid/net/NetworkTemplate$Builder;
    if-nez v10, :cond_182

    .line 2622
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v21, v20

    .line 2623
    .local v21, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move/from16 v35, v9

    move-object/from16 v9, v21

    .end local v21    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v9, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v35, "templateType":I
    invoke-virtual {v9, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2624
    invoke-virtual {v5, v9}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    goto :goto_184

    .line 2620
    .end local v35    # "templateType":I
    .local v9, "templateType":I
    :cond_182
    move/from16 v35, v9

    .line 2626
    .end local v9    # "templateType":I
    .restart local v35    # "templateType":I
    :goto_184
    if-eqz v14, :cond_18d

    .line 2627
    invoke-static {v14}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/net/NetworkTemplate$Builder;->setWifiNetworkKeys(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 2629
    :cond_18d
    invoke-virtual {v5}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v9

    .line 2630
    .local v9, "template":Landroid/net/NetworkTemplate;
    invoke-static {v9}, Landroid/net/NetworkPolicy;->isTemplatePersistable(Landroid/net/NetworkTemplate;)Z

    move-result v20

    if-eqz v20, :cond_1b4

    .line 2631
    move-object/from16 v36, v5

    .end local v5    # "builder":Landroid/net/NetworkTemplate$Builder;
    .local v36, "builder":Landroid/net/NetworkTemplate$Builder;
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v37, v10

    .end local v10    # "subscriberIdMatchRule":I
    .local v37, "subscriberIdMatchRule":I
    new-instance v10, Landroid/net/NetworkPolicy;

    move-object/from16 v20, v10

    move-object/from16 v21, v9

    move-object/from16 v22, v3

    move-wide/from16 v27, v33

    move-wide/from16 v29, v12

    move/from16 v31, v8

    move/from16 v32, v4

    invoke-direct/range {v20 .. v32}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    invoke-virtual {v5, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b8

    .line 2630
    .end local v36    # "builder":Landroid/net/NetworkTemplate$Builder;
    .end local v37    # "subscriberIdMatchRule":I
    .restart local v5    # "builder":Landroid/net/NetworkTemplate$Builder;
    .restart local v10    # "subscriberIdMatchRule":I
    :cond_1b4
    move-object/from16 v36, v5

    move/from16 v37, v10

    .line 2635
    .end local v3    # "cycleRule":Landroid/util/RecurrenceRule;
    .end local v4    # "inferred":Z
    .end local v5    # "builder":Landroid/net/NetworkTemplate$Builder;
    .end local v8    # "metered":Z
    .end local v9    # "template":Landroid/net/NetworkTemplate;
    .end local v10    # "subscriberIdMatchRule":I
    .end local v11    # "subscriberId":Ljava/lang/String;
    .end local v12    # "lastLimitSnooze":J
    .end local v14    # "networkId":Ljava/lang/String;
    .end local v15    # "templateMeteredness":I
    .end local v23    # "warningBytes":J
    .end local v25    # "limitBytes":J
    .end local v33    # "lastWarningSnooze":J
    .end local v35    # "templateType":I
    :goto_1b8
    move/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_29c

    .end local v16    # "version":I
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "type":I
    .end local v19    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    .local v3, "fis":Ljava/io/FileInputStream;
    .local v4, "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    .local v5, "version":I
    .local v8, "type":I
    :cond_1be
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v16, v5

    move/from16 v18, v8

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    .end local v5    # "version":I
    .end local v8    # "type":I
    .restart local v16    # "version":I
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "type":I
    .restart local v19    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    const-string/jumbo v3, "uid-policy"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1cd
    .catch Ljava/io/FileNotFoundException; {:try_start_d2 .. :try_end_1cd} :catch_33f
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_1cd} :catch_33b
    .catchall {:try_start_d2 .. :try_end_1cd} :catchall_337

    const-string v4, "; ignoring"

    const-string/jumbo v5, "unable to apply policy to UID "

    const-string/jumbo v8, "policy"

    const-string/jumbo v12, "uid"

    if-eqz v3, :cond_20a

    .line 2636
    :try_start_1da
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2637
    .local v3, "uid":I
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    .line 2639
    .local v8, "policy":I
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v10

    if-eqz v10, :cond_1ec

    .line 2640
    invoke-direct {v1, v3, v8, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_204

    .line 2642
    :cond_1ec
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    .end local v3    # "uid":I
    .end local v8    # "policy":I
    :goto_204
    move/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_29c

    :cond_20a
    const-string v3, "app-policy"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 2645
    const-string v3, "appId"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2646
    .local v3, "appId":I
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    .line 2650
    .restart local v8    # "policy":I
    invoke-static {v9, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    .line 2651
    .local v10, "uid":I
    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_22a

    .line 2652
    invoke-direct {v1, v10, v8, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_242

    .line 2654
    :cond_22a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    .end local v3    # "appId":I
    .end local v8    # "policy":I
    .end local v10    # "uid":I
    :goto_242
    move/from16 v3, v18

    move-object/from16 v4, v19

    goto :goto_29c

    :cond_247
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_256

    .line 2657
    const/4 v3, 0x1

    move v6, v3

    move/from16 v5, v16

    move/from16 v3, v18

    move-object/from16 v4, v19

    .end local v6    # "insideAllowlist":Z
    .local v3, "insideAllowlist":Z
    goto :goto_29e

    .line 2658
    .end local v3    # "insideAllowlist":Z
    .restart local v6    # "insideAllowlist":Z
    :cond_256
    const-string/jumbo v3, "restrict-background"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26b

    if-eqz v6, :cond_26b

    .line 2659
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2660
    .local v3, "uid":I
    move-object/from16 v4, v19

    .end local v19    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    .restart local v4    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    invoke-virtual {v4, v3, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .end local v3    # "uid":I
    goto :goto_284

    .line 2658
    .end local v4    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    .restart local v19    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    :cond_26b
    move-object/from16 v4, v19

    .line 2661
    .end local v19    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    .restart local v4    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    const-string/jumbo v3, "revoked-restrict-background"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_284

    if-eqz v6, :cond_284

    .line 2662
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 2663
    .restart local v3    # "uid":I
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2664
    .end local v3    # "uid":I
    move/from16 v3, v18

    goto :goto_29c

    .line 2661
    :cond_284
    :goto_284
    move/from16 v3, v18

    goto :goto_29c

    .line 2665
    .end local v16    # "version":I
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "type":I
    .local v3, "fis":Ljava/io/FileInputStream;
    .restart local v5    # "version":I
    .local v8, "type":I
    :cond_287
    move-object/from16 v17, v3

    move/from16 v16, v5

    move/from16 v18, v8

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "version":I
    .end local v8    # "type":I
    .restart local v16    # "version":I
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "type":I
    move/from16 v3, v18

    .end local v18    # "type":I
    .local v3, "type":I
    if-ne v3, v12, :cond_29c

    .line 2666
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29c

    .line 2667
    const/4 v5, 0x0

    move v6, v5

    move/from16 v5, v16

    .end local v6    # "insideAllowlist":Z
    .local v5, "insideAllowlist":Z
    goto :goto_29e

    .line 2671
    .end local v5    # "insideAllowlist":Z
    .end local v7    # "tag":Ljava/lang/String;
    .restart local v6    # "insideAllowlist":Z
    :cond_29c
    :goto_29c
    move/from16 v5, v16

    .end local v16    # "version":I
    .local v5, "version":I
    :goto_29e
    move-object/from16 v3, v17

    goto/16 :goto_35

    .line 2673
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    .restart local v8    # "type":I
    :cond_2a2
    move-object/from16 v17, v3

    move/from16 v16, v5

    move v3, v8

    .end local v5    # "version":I
    .end local v8    # "type":I
    .local v3, "type":I
    .restart local v16    # "version":I
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 2674
    .local v5, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2ac
    if-ge v7, v5, :cond_331

    .line 2675
    invoke-virtual {v4, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 2676
    .local v8, "uid":I
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 2677
    .local v10, "policy":I
    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_2e1

    .line 2678
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ignoring restrict-background-allowlist for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " because its policy is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2679
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2678
    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    goto :goto_32d

    .line 2682
    :cond_2e1
    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_316

    .line 2683
    or-int/lit8 v11, v10, 0x4

    .line 2684
    .local v11, "newPolicy":I
    sget-boolean v12, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v12, :cond_312

    .line 2685
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "new policy for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v11}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    :cond_312
    invoke-direct {v1, v8, v11, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2687
    .end local v11    # "newPolicy":I
    goto :goto_32d

    .line 2688
    :cond_316
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to update policy on UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32d
    .catch Ljava/io/FileNotFoundException; {:try_start_1da .. :try_end_32d} :catch_33f
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_32d} :catch_33b
    .catchall {:try_start_1da .. :try_end_32d} :catchall_337

    .line 2674
    .end local v8    # "uid":I
    .end local v10    # "policy":I
    :goto_32d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2ac

    .line 2698
    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v3    # "type":I
    .end local v4    # "restrictBackgroundAllowedUids":Landroid/util/SparseBooleanArray;
    .end local v5    # "size":I
    .end local v6    # "insideAllowlist":Z
    .end local v7    # "i":I
    .end local v16    # "version":I
    :cond_331
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2699
    move-object/from16 v3, v17

    goto :goto_363

    .line 2698
    :catchall_337
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_364

    .line 2695
    :catch_33b
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_352

    .line 2692
    :catch_33f
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_35b

    .line 2698
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :catchall_343
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    goto :goto_364

    .line 2695
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_347
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    goto :goto_352

    .line 2692
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_34b
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    goto :goto_35b

    .line 2698
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_34f
    move-exception v0

    goto :goto_364

    .line 2695
    :catch_351
    move-exception v0

    .line 2696
    .local v0, "e":Ljava/lang/Exception;
    :goto_352
    :try_start_352
    const-string/jumbo v4, "problem reading network policy"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2698
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_35f

    .line 2692
    :catch_35a
    move-exception v0

    .line 2694
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_35b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeDefaultBackgroundDataUL()V
    :try_end_35e
    .catchall {:try_start_352 .. :try_end_35e} :catchall_34f

    .line 2698
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    nop

    :goto_35f
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2699
    nop

    .line 2700
    :goto_363
    return-void

    .line 2698
    :goto_364
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2699
    throw v0

    :pswitch_data_368
    .packed-switch 0x1
        :pswitch_147
    .end packed-switch
.end method

.method private removeInterfaceLimit(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 5640
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_11

    .line 5643
    :catch_6
    move-exception v0

    goto :goto_12

    .line 5641
    :catch_8
    move-exception v0

    .line 5642
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5645
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_11
    nop

    .line 5646
    :goto_12
    return-void
.end method

.method private removeInterfaceQuotasAsync(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 5635
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5636
    return-void
.end method

.method private removeUidStateUL(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 4158
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 4159
    .local v0, "index":I
    if-ltz v0, :cond_35

    .line 4160
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager$UidState;

    .line 4161
    .local v1, "oldUidState":Landroid/net/NetworkPolicyManager$UidState;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4162
    if-eqz v1, :cond_35

    .line 4163
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(ILandroid/net/NetworkPolicyManager$UidState;Landroid/net/NetworkPolicyManager$UidState;)V

    .line 4164
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_22

    .line 4165
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4167
    :cond_22
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v2, :cond_29

    .line 4168
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4170
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4171
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    if-eqz v2, :cond_33

    .line 4172
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForLowPowerStandbyUL(I)V

    .line 4174
    :cond_33
    const/4 v2, 0x1

    return v2

    .line 4177
    .end local v1    # "oldUidState":Landroid/net/NetworkPolicyManager$UidState;
    :cond_35
    const/4 v1, 0x0

    return v1
.end method

.method private resetUidFirewallRules(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 5821
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5823
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5825
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5827
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5829
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5831
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 5832
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredAllowlistChanged(IZ)V

    .line 5833
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 5834
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredDenylistChanged(IZ)V
    :try_end_33
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_33} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_50

    .line 5837
    :catch_34
    move-exception v0

    goto :goto_51

    .line 5835
    :catch_36
    move-exception v0

    .line 5836
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem resetting firewall uid rules for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5839
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_50
    nop

    .line 5840
    :goto_51
    invoke-static {p1}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 5841
    invoke-static {p1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    .line 5843
    :cond_5e
    return-void
.end method

.method private sendRestrictBackgroundChangedMsg()V
    .registers 5

    .line 3297
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3298
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3299
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3300
    return-void
.end method

.method private setInterfaceLimit(Ljava/lang/String;J)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "limitBytes"    # J

    .line 5626
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_11

    .line 5629
    :catch_6
    move-exception v0

    goto :goto_12

    .line 5627
    :catch_8
    move-exception v0

    .line 5628
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5631
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_11
    nop

    .line 5632
    :goto_12
    return-void
.end method

.method private setInterfaceQuotasAsync(Ljava/lang/String;JJ)V
    .registers 15
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "warningBytes"    # J
    .param p4, "limitBytes"    # J

    .line 5617
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;-><init>(Ljava/lang/String;JJLcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas-IA;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5618
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5619
    return-void
.end method

.method private setMeteredNetworkAllowlist(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 5666
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkAllowlist "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5668
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 5669
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredAllowlistChanged(IZ)V

    .line 5670
    invoke-static {p1}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 5671
    invoke-static {p1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v0

    .line 5672
    .local v0, "sdkSandboxUid":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0, p2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 5673
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredAllowlistChanged(IZ)V
    :try_end_45
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_45} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_45} :catch_46

    goto :goto_6a

    .line 5677
    .end local v0    # "sdkSandboxUid":I
    :catch_46
    move-exception v0

    goto :goto_6b

    .line 5675
    :catch_48
    move-exception v0

    .line 5676
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting allowlist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5679
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_6a
    :goto_6a
    nop

    .line 5680
    :goto_6b
    return-void
.end method

.method private setMeteredNetworkDenylist(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 5649
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkDenylist "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5651
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 5652
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredDenylistChanged(IZ)V

    .line 5653
    invoke-static {p1}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 5654
    invoke-static {p1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v0

    .line 5655
    .local v0, "sdkSandboxUid":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0, p2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 5656
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredDenylistChanged(IZ)V
    :try_end_45
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_45} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_45} :catch_46

    goto :goto_6a

    .line 5660
    .end local v0    # "sdkSandboxUid":I
    :catch_46
    move-exception v0

    goto :goto_6b

    .line 5658
    :catch_48
    move-exception v0

    .line 5659
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting denylist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5662
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_6a
    :goto_6a
    nop

    .line 5663
    :goto_6b
    return-void
.end method

.method private setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V
    .registers 9
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 6175
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6176
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 6177
    .local v1, "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6178
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidForPackage(Ljava/lang/String;I)I

    move-result v4

    .line 6179
    .local v4, "uid":I
    if-ltz v4, :cond_25

    .line 6180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6182
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_25
    goto :goto_c

    .line 6183
    :cond_26
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 6184
    .local v2, "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6185
    invoke-direct {p0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V

    .line 6186
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meteredRestrictedPkgsChanged(Ljava/util/Set;)V

    .line 6187
    .end local v1    # "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 6188
    return-void

    .line 6187
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .registers 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .line 2047
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2048
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2049
    return-void
.end method

.method private setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V
    .registers 11
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .line 2055
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 2056
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_78

    .line 2061
    :cond_f
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 2062
    .local v0, "matchingSubIds":Landroid/util/IntArray;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2063
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    :try_start_18
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_58

    .line 2064
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2065
    .local v4, "subId":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2066
    .local v5, "subscriberId":Ljava/lang/String;
    new-instance v6, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v6}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    const/4 v7, 0x0

    .line 2067
    invoke-virtual {v6, v7}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v6

    .line 2068
    invoke-virtual {v6, v5}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v6

    .line 2069
    invoke-virtual {v6, v1}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v6

    .line 2070
    invoke-virtual {v6, v1}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v6

    .line 2071
    invoke-virtual {v6, v4}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v6

    .line 2073
    .local v6, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v6}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 2074
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    .line 2063
    .end local v4    # "subId":I
    .end local v5    # "subscriberId":Ljava/lang/String;
    .end local v6    # "probeIdent":Landroid/net/NetworkIdentity;
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 2077
    .end local v3    # "i":I
    :cond_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_18 .. :try_end_59} :catchall_79

    .line 2080
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2081
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_64
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 2082
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 2083
    .local v3, "subId":I
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(Z)V

    .line 2081
    .end local v3    # "subId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 2086
    .end local v0    # "matchingSubIds":Landroid/util/IntArray;
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "i":I
    :cond_78
    return-void

    .line 2077
    .restart local v0    # "matchingSubIds":Landroid/util/IntArray;
    :catchall_79
    move-exception v1

    :try_start_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v1
.end method

.method private setRestrictBackgroundUL(ZLjava/lang/String;)V
    .registers 9
    .param p1, "restrictBackground"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 3254
    const-string/jumbo v0, "setRestrictBackgroundUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3256
    :try_start_9
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-ne p1, v0, :cond_2a

    .line 3258
    const-string v0, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL: already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_a3

    .line 3292
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3259
    return-void

    .line 3261
    :cond_2a
    :try_start_2a
    const-string v0, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3263
    .local v0, "oldRestrictBackground":Z
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3267
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V
    :try_end_54
    .catchall {:try_start_2a .. :try_end_54} :catchall_a3

    .line 3269
    :try_start_54
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 3270
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not change Data Saver Mode on NMS to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_7a} :catch_7f
    .catchall {:try_start_54 .. :try_end_7a} :catchall_a3

    .line 3292
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3275
    return-void

    .line 3279
    :cond_7e
    goto :goto_80

    .line 3277
    :catch_7f
    move-exception v3

    .line 3281
    :goto_80
    :try_start_80
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendRestrictBackgroundChangedMsg()V

    .line 3282
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v0, v4}, Lcom/android/server/net/NetworkPolicyLogger;->restrictBackgroundChanged(ZZ)V

    .line 3284
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    if-eqz v3, :cond_91

    .line 3285
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 3287
    :cond_91
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_94
    .catchall {:try_start_80 .. :try_end_94} :catchall_a3

    .line 3288
    :try_start_94
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 3289
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3290
    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_a0

    .line 3292
    .end local v0    # "oldRestrictBackground":Z
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3293
    nop

    .line 3294
    return-void

    .line 3290
    .restart local v0    # "oldRestrictBackground":Z
    :catchall_a0
    move-exception v4

    :try_start_a1
    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "restrictBackground":Z
    .end local p2    # "reason":Ljava/lang/String;
    :try_start_a2
    throw v4
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a3

    .line 3292
    .end local v0    # "oldRestrictBackground":Z
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "restrictBackground":Z
    .restart local p2    # "reason":Ljava/lang/String;
    :catchall_a3
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3293
    throw v0
.end method

.method private setSubscriptionPlansInternal(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    .registers 13
    .param p1, "subId"    # I
    .param p2, "plans"    # [Landroid/telephony/SubscriptionPlan;
    .param p3, "expirationDurationMillis"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 3717
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3718
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_84

    .line 3719
    :try_start_6
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3720
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3722
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3723
    .local v2, "subscriberId":Ljava/lang/String;
    if-eqz v2, :cond_22

    .line 3724
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    .line 3725
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z

    goto :goto_3a

    .line 3727
    :cond_22
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing subscriberId for subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    :goto_3a
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3732
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3734
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3735
    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3736
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3738
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3740
    iget v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIdCounter:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIdCounter:I

    .line 3741
    .local v4, "setPlansId":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3742
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-lez v5, :cond_7e

    .line 3743
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x16

    invoke-virtual {v5, v6, p1, v4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3746
    .end local v2    # "subscriberId":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "setPlansId":I
    :cond_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_6 .. :try_end_7f} :catchall_81

    .line 3747
    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_84

    .line 3748
    return-void

    .line 3746
    :catchall_81
    move-exception v2

    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "subId":I
    .end local p2    # "plans":[Landroid/telephony/SubscriptionPlan;
    .end local p3    # "expirationDurationMillis":J
    .end local p5    # "callingPackage":Ljava/lang/String;
    :try_start_83
    throw v2

    .line 3747
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "subId":I
    .restart local p2    # "plans":[Landroid/telephony/SubscriptionPlan;
    .restart local p3    # "expirationDurationMillis":J
    .restart local p5    # "callingPackage":Ljava/lang/String;
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_84

    throw v1
.end method

.method private setUidFirewallRuleUL(III)V
    .registers 9
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 5760
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 5761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUidFirewallRuleUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5765
    :cond_32
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3d

    .line 5766
    :try_start_35
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_60

    .line 5791
    :catchall_3b
    move-exception v2

    goto :goto_90

    .line 5767
    :cond_3d
    const/4 v2, 0x2

    if-ne p1, v2, :cond_46

    .line 5768
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_60

    .line 5769
    :cond_46
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4f

    .line 5770
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_60

    .line 5771
    :cond_4f
    const/4 v2, 0x4

    if-ne p1, v2, :cond_58

    .line 5772
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_60

    .line 5773
    :cond_58
    const/4 v2, 0x5

    if-ne p1, v2, :cond_60

    .line 5774
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_60
    .catchall {:try_start_35 .. :try_end_60} :catchall_3b

    .line 5778
    :cond_60
    :goto_60
    :try_start_60
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5779
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V

    .line 5780
    invoke-static {p2}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 5781
    invoke-static {p2}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v2

    .line 5782
    .local v2, "sdkSandboxUid":I
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, v2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5783
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, v2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V
    :try_end_7e
    .catch Ljava/lang/IllegalStateException; {:try_start_60 .. :try_end_7e} :catch_81
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_7e} :catch_7f
    .catchall {:try_start_60 .. :try_end_7e} :catchall_3b

    .line 5789
    .end local v2    # "sdkSandboxUid":I
    :cond_7e
    goto :goto_8b

    .line 5787
    :catch_7f
    move-exception v2

    goto :goto_8b

    .line 5785
    :catch_81
    move-exception v2

    .line 5786
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_82
    const-string v3, "NetworkPolicy"

    const-string/jumbo v4, "problem setting firewall uid rules"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_3b

    .line 5789
    nop

    .line 5791
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_8b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5792
    nop

    .line 5793
    return-void

    .line 5791
    :goto_90
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5792
    throw v2
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V
    .registers 8
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .line 5737
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->addSdkSandboxUidsIfNeeded(Landroid/util/SparseIntArray;)V

    .line 5739
    :try_start_3
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 5740
    .local v0, "size":I
    new-array v1, v0, [I

    .line 5741
    .local v1, "uids":[I
    new-array v2, v0, [I

    .line 5742
    .local v2, "rules":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "index":I
    :goto_d
    if-ltz v3, :cond_1e

    .line 5743
    invoke-virtual {p2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 5744
    invoke-virtual {p2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 5742
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    .line 5746
    .end local v3    # "index":I
    :cond_1e
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, v1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V

    .line 5747
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallRulesChanged(I[I[I)V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_28} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_28} :catch_29

    .end local v0    # "size":I
    .end local v1    # "uids":[I
    .end local v2    # "rules":[I
    goto :goto_34

    .line 5750
    :catch_29
    move-exception v0

    goto :goto_35

    .line 5748
    :catch_2b
    move-exception v0

    .line 5749
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting firewall uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5752
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_34
    nop

    .line 5753
    :goto_35
    return-void
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    .registers 5
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;
    .param p3, "toggle"    # I

    .line 5705
    if-eqz p2, :cond_5

    .line 5706
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    .line 5708
    :cond_5
    if-eqz p3, :cond_f

    .line 5709
    const/4 v0, 0x1

    if-ne p3, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 5711
    :cond_f
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIIZ)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "oldPolicy"    # I
    .param p3, "policy"    # I
    .param p4, "persist"    # Z

    .line 2924
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2927
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2928
    const/4 v0, 0x0

    .local v0, "notifyApp":Z
    goto/16 :goto_7b

    .line 2930
    .end local v0    # "notifyApp":Z
    :cond_d
    const/4 v1, 0x1

    if-ne p2, v1, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    move v2, v0

    .line 2931
    .local v2, "wasDenied":Z
    :goto_13
    if-ne p3, v1, :cond_17

    move v3, v1

    goto :goto_18

    :cond_17
    move v3, v0

    .line 2932
    .local v3, "isDenied":Z
    :goto_18
    const/4 v4, 0x4

    if-ne p2, v4, :cond_1d

    move v5, v1

    goto :goto_1e

    :cond_1d
    move v5, v0

    .line 2933
    .local v5, "wasAllowed":Z
    :goto_1e
    if-ne p3, v4, :cond_22

    move v4, v1

    goto :goto_23

    :cond_22
    move v4, v0

    .line 2934
    .local v4, "isAllowed":Z
    :goto_23
    if-nez v2, :cond_2e

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v6, :cond_2c

    if-nez v5, :cond_2c

    goto :goto_2e

    :cond_2c
    move v6, v0

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v6, v1

    .line 2935
    .local v6, "wasBlocked":Z
    :goto_2f
    if-nez v3, :cond_3a

    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v7, :cond_38

    if-nez v4, :cond_38

    goto :goto_3a

    :cond_38
    move v7, v0

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v7, v1

    .line 2936
    .local v7, "isBlocked":Z
    :goto_3b
    if-eqz v5, :cond_78

    if-eqz v4, :cond_41

    if-eqz v3, :cond_78

    :cond_41
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 2937
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_78

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2938
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_78

    .line 2939
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_73

    .line 2940
    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to revoked restrict background allowlist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    :cond_73
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2943
    :cond_78
    if-eq v6, v7, :cond_7b

    move v0, v1

    .line 2945
    .end local v2    # "wasDenied":Z
    .end local v3    # "isDenied":Z
    .end local v4    # "isAllowed":Z
    .end local v5    # "wasAllowed":Z
    .end local v6    # "wasBlocked":Z
    .end local v7    # "isBlocked":Z
    .restart local v0    # "notifyApp":Z
    :cond_7b
    :goto_7b
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, p1, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2946
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2947
    if-eqz p4, :cond_97

    .line 2948
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2949
    :try_start_8f
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2950
    monitor-exit v1

    goto :goto_97

    :catchall_94
    move-exception v2

    monitor-exit v1
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_94

    throw v2

    .line 2952
    :cond_97
    :goto_97
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .line 2956
    if-nez p2, :cond_8

    .line 2957
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_d

    .line 2959
    :cond_8
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2963
    :goto_d
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 2964
    if-eqz p3, :cond_1d

    .line 2965
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2966
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2967
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw v1

    .line 2969
    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateBlockedReasonsForRestrictedModeUL(I)I
    .registers 8
    .param p1, "uid"    # I

    .line 4257
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRestrictedModeAccess(I)Z

    move-result v0

    .line 4261
    .local v0, "hasRestrictedModeAccess":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4262
    :try_start_7
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-static {v2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(Landroid/util/SparseArray;I)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    move-result-object v2

    .line 4264
    .local v2, "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    iget v3, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 4265
    .local v3, "oldEffectiveBlockedReasons":I
    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    if-eqz v4, :cond_1a

    .line 4266
    iget v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    goto :goto_20

    .line 4268
    :cond_1a
    iget v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 4270
    :goto_20
    if-eqz v0, :cond_29

    .line 4271
    iget v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    goto :goto_2f

    .line 4273
    :cond_29
    iget v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/lit8 v4, v4, -0x11

    iput v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 4275
    :goto_2f
    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    .line 4277
    iget v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 4278
    .local v4, "newEffectiveBlockedReasons":I
    if-ne v3, v4, :cond_38

    .line 4279
    const/4 v5, 0x0

    goto :goto_3c

    .line 4280
    :cond_38
    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->deriveUidRules()I

    move-result v5

    :goto_3c
    move v2, v5

    .line 4281
    .local v2, "uidRules":I
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_47

    .line 4282
    if-eq v3, v4, :cond_46

    .line 4283
    invoke-direct {p0, p1, v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->handleBlockedReasonsChanged(III)V

    .line 4286
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->postUidRulesChangedMsg(II)V

    .line 4288
    :cond_46
    return v4

    .line 4281
    .end local v2    # "uidRules":I
    .end local v3    # "oldEffectiveBlockedReasons":I
    .end local v4    # "newEffectiveBlockedReasons":I
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

.method private static updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .registers 6
    .param p0, "lastValues"    # Landroid/util/SparseBooleanArray;
    .param p1, "newValue"    # Z
    .param p2, "network"    # Landroid/net/Network;

    .line 1333
    invoke-virtual {p2}, Landroid/net/Network;->getNetId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1334
    .local v0, "lastValue":Z
    if-ne v0, p1, :cond_15

    .line 1335
    invoke-virtual {p2}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_16

    :cond_15
    const/4 v1, 0x1

    .line 1336
    .local v1, "changed":Z
    :cond_16
    if-eqz v1, :cond_1f

    .line 1337
    invoke-virtual {p2}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1339
    :cond_1f
    return v1
.end method

.method private updateDefaultCarrierPolicyAL(ILandroid/net/NetworkPolicy;)Z
    .registers 22
    .param p1, "subId"    # I
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .line 2451
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->inferred:Z

    const-string v4, "NetworkPolicy"

    const/4 v5, 0x0

    if-nez v3, :cond_28

    .line 2452
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring user-defined policy "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    :cond_27
    return v5

    .line 2456
    :cond_28
    new-instance v3, Landroid/net/NetworkPolicy;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v13, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    iget-wide v5, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    iget-boolean v15, v2, Landroid/net/NetworkPolicy;->metered:Z

    move-wide/from16 v16, v5

    iget-boolean v5, v2, Landroid/net/NetworkPolicy;->inferred:Z

    move-object v6, v3

    move/from16 v18, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v5

    invoke-direct/range {v6 .. v18}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2460
    .local v3, "original":Landroid/net/NetworkPolicy;
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    .line 2461
    .local v5, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9a

    .line 2462
    const/4 v6, 0x0

    aget-object v7, v5, v6

    .line 2463
    .local v7, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v6

    iput-object v6, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2464
    invoke-virtual {v7}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v8

    .line 2465
    .local v8, "planLimitBytes":J
    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_76

    .line 2466
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2467
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_99

    .line 2468
    :cond_76
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v6, v8, v12

    if-nez v6, :cond_84

    .line 2469
    iput-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2470
    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_99

    .line 2472
    :cond_84
    const-wide/16 v12, 0x9

    mul-long/2addr v12, v8

    const-wide/16 v14, 0xa

    div-long/2addr v12, v14

    iput-wide v12, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2473
    invoke-virtual {v7}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v6

    packed-switch v6, :pswitch_data_fc

    .line 2479
    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_99

    .line 2476
    :pswitch_96
    iput-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2477
    nop

    .line 2483
    .end local v7    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v8    # "planLimitBytes":J
    :goto_99
    goto :goto_d2

    .line 2484
    :cond_9a
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersistableBundle;

    .line 2486
    .local v6, "config":Landroid/os/PersistableBundle;
    iget-object v7, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v7}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 2487
    iget-object v7, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v7, v7, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v7

    .local v7, "currentCycleDay":I
    goto :goto_b4

    .line 2489
    .end local v7    # "currentCycleDay":I
    :cond_b3
    const/4 v7, -0x1

    .line 2491
    .restart local v7    # "currentCycleDay":I
    :goto_b4
    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I

    move-result v8

    .line 2492
    .local v8, "cycleDay":I
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v9

    iput-object v9, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2493
    iget-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v6, v9, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v9

    iput-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2494
    iget-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v6, v9, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v9

    iput-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2497
    .end local v6    # "config":Landroid/os/PersistableBundle;
    .end local v7    # "currentCycleDay":I
    .end local v8    # "cycleDay":I
    :goto_d2
    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_da

    .line 2498
    const/4 v4, 0x0

    return v4

    .line 2500
    :cond_da
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    const/4 v4, 0x1

    return v4

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_96
        :pswitch_96
    .end packed-switch
.end method

.method private updateNetworkStats(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .line 4182
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 4183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4184
    if-eqz p2, :cond_24

    const-string v3, "F"

    goto :goto_26

    :cond_24
    const-string v3, "B"

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4183
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4187
    :cond_31
    :try_start_31
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v2, p1, p2}, Landroid/app/usage/NetworkStatsManager;->noteUidForeground(IZ)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3b

    .line 4189
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4190
    nop

    .line 4191
    return-void

    .line 4189
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4190
    throw v2
.end method

.method private updateNetworkToIfacesNL(ILandroid/util/ArraySet;)Z
    .registers 8
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1345
    .local p2, "newIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1346
    .local v0, "lastIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_a

    :goto_9
    goto :goto_12

    :cond_a
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    .line 1348
    .local v1, "changed":Z
    :goto_12
    if-eqz v1, :cond_2f

    .line 1352
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1353
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1354
    .local v3, "iface":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 1355
    .end local v3    # "iface":Ljava/lang/String;
    goto :goto_1d

    .line 1357
    :cond_2f
    return v1
.end method

.method private updateNetworksInternal()V
    .registers 4

    .line 1792
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 1794
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1795
    :try_start_6
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1e

    .line 1796
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL()V

    .line 1797
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1798
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1800
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1801
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1b

    .line 1802
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    .line 1803
    return-void

    .line 1801
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1d
    throw v2

    .line 1802
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private updatePowerSaveWhitelistUL()V
    .registers 8

    .line 852
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerWhitelistManager;->getWhitelistedAppIds(Z)[I

    move-result-object v0

    .line 853
    .local v0, "whitelist":[I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 854
    array-length v2, v0

    move v3, v1

    :goto_e
    const/4 v4, 0x1

    if-ge v3, v2, :cond_1b

    aget v5, v0, v3

    .line 855
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 854
    .end local v5    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 858
    :cond_1b
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    invoke-virtual {v2, v4}, Landroid/os/PowerWhitelistManager;->getWhitelistedAppIds(Z)[I

    move-result-object v0

    .line 859
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 860
    array-length v2, v0

    :goto_27
    if-ge v1, v2, :cond_33

    aget v3, v0, v1

    .line 861
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 860
    .end local v3    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 863
    :cond_33
    return-void
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedUL(ILandroid/net/NetworkPolicyManager$UidState;Landroid/net/NetworkPolicyManager$UidState;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # Landroid/net/NetworkPolicyManager$UidState;
    .param p3, "newUidState"    # Landroid/net/NetworkPolicyManager$UidState;

    .line 4195
    nop

    .line 4196
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v0

    .line 4197
    .local v0, "oldForeground":Z
    nop

    .line 4198
    invoke-static {p3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v1

    .line 4199
    .local v1, "newForeground":Z
    if-eq v0, v1, :cond_f

    .line 4200
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4202
    :cond_f
    return-void
.end method

.method private updateRestrictionRulesForUidUL(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 4906
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4907
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 4908
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4912
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeForUidUL(I)V

    .line 4915
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4918
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4919
    return-void
.end method

.method private updateRulesForAppIdleParoleUL()V
    .registers 13

    .line 4539
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result v0

    .line 4540
    .local v0, "paroled":Z
    xor-int/lit8 v1, v0, 0x1

    .line 4542
    .local v1, "enableChain":Z
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 4543
    .local v2, "ruleCount":I
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 4544
    .local v3, "blockedUids":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v4, v2, :cond_65

    .line 4545
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 4546
    .local v7, "uid":I
    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForDenylistRulesUL(I)Z

    move-result v8

    if-nez v8, :cond_25

    .line 4547
    goto :goto_62

    .line 4549
    :cond_25
    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getBlockedReasons(I)I

    move-result v8

    .line 4550
    .local v8, "blockedReasons":I
    if-nez v1, :cond_32

    const v9, 0xffff

    and-int/2addr v9, v8

    if-nez v9, :cond_32

    .line 4553
    goto :goto_62

    .line 4555
    :cond_32
    const/4 v9, 0x0

    if-nez v0, :cond_3c

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v10

    if-eqz v10, :cond_3c

    goto :goto_3d

    :cond_3c
    move v6, v9

    .line 4556
    .local v6, "isUidIdle":Z
    :goto_3d
    if-eqz v6, :cond_5a

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_5a

    .line 4557
    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v10

    if-nez v10, :cond_5a

    .line 4558
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 4559
    invoke-virtual {v3, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5f

    .line 4561
    :cond_5a
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 4563
    :goto_5f
    invoke-direct {p0, v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IZ)V

    .line 4544
    .end local v6    # "isUidIdle":Z
    .end local v7    # "uid":I
    .end local v8    # "blockedReasons":I
    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 4565
    .end local v4    # "i":I
    :cond_65
    nop

    .line 4566
    if-eqz v1, :cond_69

    goto :goto_6a

    :cond_69
    move v6, v5

    .line 4565
    :goto_6a
    invoke-direct {p0, v5, v3, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 4567
    return-void
.end method

.method private updateRulesForDataUsageRestrictionsUL(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 4962
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 4963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForDataUsageRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4967
    :cond_20
    :try_start_20
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsULInner(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_28

    .line 4969
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4970
    nop

    .line 4971
    return-void

    .line 4969
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4970
    throw v2
.end method

.method private updateRulesForDataUsageRestrictionsULInner(I)V
    .registers 22
    .param p1, "uid"    # I

    .line 4975
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 4976
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_27

    const-string v0, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no need to update restrict data rules for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4977
    :cond_27
    return-void

    .line 4980
    :cond_28
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 4981
    .local v4, "uidPolicy":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v5

    .line 4982
    .local v5, "isForeground":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedByAdminUL(I)Z

    move-result v6

    .line 4984
    .local v6, "isRestrictedByAdmin":Z
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    move v0, v3

    :goto_3e
    move v8, v0

    .line 4985
    .local v8, "isDenied":Z
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    goto :goto_46

    :cond_45
    move v0, v3

    :goto_46
    move v9, v0

    .line 4987
    .local v9, "isAllowed":Z
    const/4 v0, 0x0

    .line 4988
    .local v0, "newBlockedReasons":I
    const/4 v10, 0x0

    .line 4989
    .local v10, "newAllowedReasons":I
    const/high16 v11, 0x40000

    if-eqz v6, :cond_4f

    move v12, v11

    goto :goto_50

    :cond_4f
    move v12, v3

    :goto_50
    or-int/2addr v0, v12

    .line 4990
    iget-boolean v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const/high16 v13, 0x10000

    if-eqz v12, :cond_59

    move v12, v13

    goto :goto_5a

    :cond_59
    move v12, v3

    :goto_5a
    or-int/2addr v0, v12

    .line 4991
    const/high16 v12, 0x20000

    if-eqz v8, :cond_61

    move v14, v12

    goto :goto_62

    :cond_61
    move v14, v3

    :goto_62
    or-int/2addr v14, v0

    .line 4993
    .end local v0    # "newBlockedReasons":I
    .local v14, "newBlockedReasons":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_6b

    :cond_6a
    move v12, v3

    :goto_6b
    or-int v0, v10, v12

    .line 4994
    .end local v10    # "newAllowedReasons":I
    .local v0, "newAllowedReasons":I
    if-eqz v5, :cond_70

    goto :goto_71

    :cond_70
    move v11, v3

    :goto_71
    or-int/2addr v0, v11

    .line 4995
    if-eqz v9, :cond_75

    goto :goto_76

    :cond_75
    move v13, v3

    :goto_76
    or-int v10, v0, v13

    .line 5001
    .end local v0    # "newAllowedReasons":I
    .restart local v10    # "newAllowedReasons":I
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v11

    .line 5002
    :try_start_7b
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-static {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(Landroid/util/SparseArray;I)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    move-result-object v0

    .line 5004
    .local v0, "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTmpUidBlockedState:Landroid/util/SparseArray;

    invoke-static {v12, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(Landroid/util/SparseArray;I)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    move-result-object v12

    .line 5006
    .local v12, "previousUidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->copyFrom(Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V

    .line 5008
    iget v13, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const v15, 0xffff

    and-int/2addr v13, v15

    or-int/2addr v13, v14

    iput v13, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 5010
    iget v13, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v13, v15

    or-int/2addr v13, v10

    iput v13, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 5012
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    .line 5014
    iget v13, v12, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 5015
    .local v13, "oldEffectiveBlockedReasons":I
    iget v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 5016
    .local v15, "newEffectiveBlockedReasons":I
    iget v3, v12, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 5017
    .local v3, "oldAllowedReasons":I
    if-ne v13, v15, :cond_a7

    .line 5018
    const/16 v16, 0x0

    goto :goto_ab

    :cond_a7
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->deriveUidRules()I

    move-result v16

    :goto_ab
    move/from16 v17, v16

    .line 5020
    .local v17, "uidRules":I
    sget-boolean v16, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v16, :cond_127

    .line 5021
    const-string v7, "NetworkPolicy"
    :try_end_b3
    .catchall {:try_start_7b .. :try_end_b3} :catchall_164

    move/from16 v18, v4

    .end local v4    # "uidPolicy":I
    .local v18, "uidPolicy":I
    :try_start_b5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    .end local v3    # "oldAllowedReasons":I
    .local v19, "oldAllowedReasons":I
    const-string/jumbo v3, "updateRuleForRestrictBackgroundUL("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): isForeground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isDenied="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isRestrictedByAdmin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldBlockedState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newBlockedState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newBlockedMeteredReasons="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5028
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newAllowedMeteredReasons="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5029
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->allowedReasonsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5021
    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12b

    .line 5020
    .end local v18    # "uidPolicy":I
    .end local v19    # "oldAllowedReasons":I
    .restart local v3    # "oldAllowedReasons":I
    .restart local v4    # "uidPolicy":I
    :cond_127
    move/from16 v19, v3

    move/from16 v18, v4

    .line 5032
    .end local v0    # "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    .end local v3    # "oldAllowedReasons":I
    .end local v4    # "uidPolicy":I
    .end local v12    # "previousUidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    .restart local v18    # "uidPolicy":I
    .restart local v19    # "oldAllowedReasons":I
    :goto_12b
    monitor-exit v11
    :try_end_12c
    .catchall {:try_start_b5 .. :try_end_12c} :catchall_169

    .line 5033
    if-eq v13, v15, :cond_137

    .line 5034
    invoke-direct {v1, v2, v15, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->handleBlockedReasonsChanged(III)V

    .line 5037
    move/from16 v0, v17

    .end local v17    # "uidRules":I
    .local v0, "uidRules":I
    invoke-direct {v1, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->postUidRulesChangedMsg(II)V

    goto :goto_139

    .line 5033
    .end local v0    # "uidRules":I
    .restart local v17    # "uidRules":I
    :cond_137
    move/from16 v0, v17

    .line 5044
    .end local v17    # "uidRules":I
    .restart local v0    # "uidRules":I
    :goto_139
    const/high16 v3, 0x60000

    .line 5046
    .local v3, "denylistReasons":I
    const/high16 v4, 0x60000

    and-int v7, v13, v4

    if-nez v7, :cond_145

    and-int v7, v15, v4

    if-eqz v7, :cond_14e

    .line 5048
    :cond_145
    and-int/2addr v4, v15

    if-eqz v4, :cond_14a

    const/4 v4, 0x1

    goto :goto_14b

    :cond_14a
    const/4 v4, 0x0

    :goto_14b
    invoke-direct {v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkDenylist(IZ)V

    .line 5051
    :cond_14e
    const/high16 v4, 0x50000

    .line 5053
    .local v4, "allowlistReasons":I
    const/high16 v7, 0x50000

    and-int v11, v19, v7

    if-nez v11, :cond_15a

    and-int v11, v10, v7

    if-eqz v11, :cond_163

    .line 5055
    :cond_15a
    and-int/2addr v7, v10

    if-eqz v7, :cond_15f

    const/4 v7, 0x1

    goto :goto_160

    :cond_15f
    const/4 v7, 0x0

    :goto_160
    invoke-direct {v1, v2, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkAllowlist(IZ)V

    .line 5058
    :cond_163
    return-void

    .line 5032
    .end local v0    # "uidRules":I
    .end local v3    # "denylistReasons":I
    .end local v13    # "oldEffectiveBlockedReasons":I
    .end local v15    # "newEffectiveBlockedReasons":I
    .end local v18    # "uidPolicy":I
    .end local v19    # "oldAllowedReasons":I
    .local v4, "uidPolicy":I
    :catchall_164
    move-exception v0

    move/from16 v18, v4

    .end local v4    # "uidPolicy":I
    .restart local v18    # "uidPolicy":I
    :goto_167
    :try_start_167
    monitor-exit v11
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_169

    throw v0

    :catchall_169
    move-exception v0

    goto :goto_167
.end method

.method private updateRulesForGlobalChangeAL(Z)V
    .registers 6
    .param p1, "restrictedNetworksChanged"    # Z

    .line 4575
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForGlobalChangeAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4577
    if-eqz p1, :cond_1a

    const-string v3, "R"

    goto :goto_1c

    :cond_1a
    const-string v3, "-"

    :goto_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4576
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4580
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 4581
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 4582
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 4583
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeAllowlistUL()V

    .line 4586
    if-eqz p1, :cond_3b

    .line 4587
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 4588
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_40

    .line 4591
    :cond_3b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4592
    nop

    .line 4593
    return-void

    .line 4591
    :catchall_40
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4592
    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 5081
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    .line 5082
    return-void
.end method

.method private updateRulesForPowerRestrictionsUL(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "uidProcState"    # I

    .line 5086
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(II)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IZ)V

    .line 5087
    return-void
.end method

.method private updateRulesForPowerRestrictionsUL(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "isUidIdle"    # Z

    .line 5098
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 5099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5101
    if-eqz p2, :cond_24

    const-string v3, "I"

    goto :goto_26

    :cond_24
    const-string v3, "-"

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5099
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5104
    :cond_31
    :try_start_31
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsULInner(IZ)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_39

    .line 5106
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5107
    nop

    .line 5108
    return-void

    .line 5106
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5107
    throw v2
.end method

.method private updateRulesForPowerRestrictionsULInner(IZ)V
    .registers 21
    .param p1, "uid"    # I
    .param p2, "isUidIdle"    # Z

    .line 5112
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForDenylistRulesUL(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 5113
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_29

    const-string v0, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no need to update restrict power rules for uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5114
    :cond_29
    return-void

    .line 5117
    :cond_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v4

    .line 5118
    .local v4, "isForeground":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidTop(I)Z

    move-result v5

    .line 5120
    .local v5, "isTop":Z
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-direct {v1, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v6

    .line 5125
    .local v6, "isWhitelisted":Z
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v7

    .line 5126
    :try_start_3b
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-static {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(Landroid/util/SparseArray;I)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    move-result-object v0

    .line 5128
    .local v0, "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTmpUidBlockedState:Landroid/util/SparseArray;

    invoke-static {v8, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(Landroid/util/SparseArray;I)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    move-result-object v8

    .line 5130
    .local v8, "previousUidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->copyFrom(Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V

    .line 5132
    const/4 v9, 0x0

    .line 5133
    .local v9, "newBlockedReasons":I
    const/4 v10, 0x0

    .line 5134
    .local v10, "newAllowedReasons":I
    iget-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v11, :cond_54

    move v11, v12

    goto :goto_55

    :cond_54
    move v11, v13

    :goto_55
    or-int/2addr v9, v11

    .line 5135
    iget-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v14, 0x2

    if-eqz v11, :cond_5d

    move v11, v14

    goto :goto_5e

    :cond_5d
    move v11, v13

    :goto_5e
    or-int/2addr v9, v11

    .line 5136
    iget-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    const/16 v15, 0x20

    if-eqz v11, :cond_67

    move v11, v15

    goto :goto_68

    :cond_67
    move v11, v13

    :goto_68
    or-int/2addr v9, v11

    .line 5137
    if-eqz v3, :cond_6e

    const/16 v16, 0x4

    goto :goto_70

    :cond_6e
    move/from16 v16, v13

    :goto_70
    or-int v9, v9, v16

    .line 5138
    iget v11, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/16 v17, 0x8

    and-int/lit8 v11, v11, 0x8

    or-int/2addr v9, v11

    .line 5140
    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystem(I)Z

    move-result v11

    or-int/2addr v10, v11

    .line 5141
    if-eqz v4, :cond_81

    goto :goto_82

    :cond_81
    move v14, v13

    :goto_82
    or-int/2addr v10, v14

    .line 5142
    if-eqz v5, :cond_86

    goto :goto_87

    :cond_86
    move v15, v13

    :goto_87
    or-int/2addr v10, v15

    .line 5143
    invoke-direct {v1, v2, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v11

    if-eqz v11, :cond_90

    .line 5144
    const/4 v11, 0x4

    goto :goto_91

    :cond_90
    move v11, v13

    :goto_91
    or-int/2addr v10, v11

    .line 5145
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveExceptIdleUL(I)Z

    move-result v11

    if-eqz v11, :cond_99

    .line 5146
    goto :goto_9b

    :cond_99
    move/from16 v17, v13

    :goto_9b
    or-int v10, v10, v17

    .line 5147
    iget v11, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    .line 5149
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromLowPowerStandbyUL(I)Z

    move-result v11

    if-eqz v11, :cond_ab

    .line 5150
    const/16 v11, 0x40

    goto :goto_ac

    :cond_ab
    move v11, v13

    :goto_ac
    or-int/2addr v10, v11

    .line 5152
    iget v11, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/high16 v12, -0x10000

    and-int/2addr v11, v12

    or-int/2addr v11, v9

    iput v11, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 5154
    iget v11, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v11, v12

    or-int/2addr v11, v10

    iput v11, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 5156
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    .line 5158
    sget-boolean v11, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v11, :cond_12f

    .line 5159
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateRulesForPowerRestrictionsUL("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "), isIdle: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", mRestrictPower: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", mDeviceIdleMode: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", isForeground="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", isTop="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", isWhitelisted="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", oldUidBlockedState="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", newUidBlockedState="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5170
    :cond_12f
    iget v11, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 5171
    .local v11, "oldEffectiveBlockedReasons":I
    iget v12, v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 5172
    .local v12, "newEffectiveBlockedReasons":I
    if-ne v11, v12, :cond_136

    .line 5173
    goto :goto_13a

    .line 5174
    :cond_136
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->deriveUidRules()I

    move-result v13

    :goto_13a
    move v0, v13

    .line 5175
    .end local v8    # "previousUidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    .end local v9    # "newBlockedReasons":I
    .end local v10    # "newAllowedReasons":I
    .local v0, "uidRules":I
    monitor-exit v7
    :try_end_13c
    .catchall {:try_start_3b .. :try_end_13c} :catchall_145

    .line 5176
    if-eq v11, v12, :cond_144

    .line 5177
    invoke-direct {v1, v2, v12, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->handleBlockedReasonsChanged(III)V

    .line 5181
    invoke-direct {v1, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->postUidRulesChangedMsg(II)V

    .line 5183
    :cond_144
    return-void

    .line 5175
    .end local v0    # "uidRules":I
    .end local v11    # "oldEffectiveBlockedReasons":I
    .end local v12    # "newEffectiveBlockedReasons":I
    :catchall_145
    move-exception v0

    :try_start_146
    monitor-exit v7
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_145

    throw v0
.end method

.method private updateRulesForRestrictBackgroundUL()V
    .registers 5

    .line 4676
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictBackgroundUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4678
    :try_start_9
    const-string/jumbo v2, "updateRulesForRestrictBackground"

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_19

    .line 4681
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4682
    nop

    .line 4683
    return-void

    .line 4681
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4682
    throw v2
.end method

.method private updateRulesForRestrictPowerUL()V
    .registers 5

    .line 4663
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictPowerUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4665
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 4666
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerSaveUL()V

    .line 4667
    const-string/jumbo v2, "updateRulesForRestrictPower"

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1f

    .line 4670
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4671
    nop

    .line 4672
    return-void

    .line 4670
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4671
    throw v2
.end method

.method private updateRulesForTempWhitelistChangeUL(I)V
    .registers 8
    .param p1, "appId"    # I

    .line 4730
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 4731
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4732
    .local v1, "numUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_29

    .line 4733
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4734
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4736
    .local v4, "uid":I
    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 4737
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4738
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4740
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4732
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4742
    .end local v2    # "i":I
    :cond_29
    return-void
.end method

.method private updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V
    .registers 8
    .param p1, "uidRules"    # Landroid/util/SparseIntArray;
    .param p2, "whitelistedAppIds"    # Landroid/util/SparseBooleanArray;
    .param p3, "userId"    # I

    .line 4379
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1c

    .line 4380
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4381
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 4382
    .local v2, "appId":I
    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 4383
    .local v3, "uid":I
    invoke-virtual {p1, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4379
    .end local v2    # "appId":I
    .end local v3    # "uid":I
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 4386
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(IZI)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "enabled"    # Z
    .param p3, "chain"    # I

    .line 4470
    if-eqz p2, :cond_1d

    .line 4471
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    :goto_9
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v2

    .line 4473
    .local v2, "isWhitelisted":Z
    if-nez v2, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_1a

    .line 4476
    :cond_16
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    goto :goto_1d

    .line 4474
    :cond_1a
    :goto_1a
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 4479
    .end local v2    # "isWhitelisted":Z
    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    .registers 11
    .param p1, "enabled"    # Z
    .param p2, "chain"    # I
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    .line 4351
    if-eqz p1, :cond_5c

    .line 4354
    move-object v0, p3

    .line 4355
    .local v0, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4356
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 4357
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "ui":I
    :goto_12
    if-ltz v2, :cond_35

    .line 4358
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4359
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4360
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4361
    const/4 v5, 0x3

    if-ne p2, v5, :cond_32

    .line 4362
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4357
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 4366
    .end local v2    # "ui":I
    :cond_35
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_3c
    if-ltz v2, :cond_58

    .line 4367
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicyManager$UidState;

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 4368
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4366
    :cond_55
    add-int/lit8 v2, v2, -0x1

    goto :goto_3c

    .line 4371
    .end local v2    # "i":I
    :cond_58
    invoke-direct {p0, p2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 4372
    .end local v0    # "uidRules":Landroid/util/SparseIntArray;
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_61

    .line 4373
    :cond_5c
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 4375
    :goto_61
    return-void
.end method

.method private updateUidStateUL(IIJI)Z
    .registers 23
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 4107
    move-object/from16 v1, p0

    move/from16 v8, p1

    move-wide/from16 v9, p3

    move/from16 v11, p5

    const-wide/32 v12, 0x200000

    const-string/jumbo v0, "updateUidStateUL"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4109
    :try_start_11
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager$UidState;

    .line 4110
    .local v0, "oldUidState":Landroid/net/NetworkPolicyManager$UidState;
    const/4 v14, 0x0

    if-eqz v0, :cond_6f

    iget-wide v2, v0, Landroid/net/NetworkPolicyManager$UidState;->procStateSeq:J

    cmp-long v2, v9, v2

    if-gez v2, :cond_6f

    .line 4111
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v2, :cond_6a

    .line 4112
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring older uid state updates; uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",procState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4113
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",oldUidState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4112
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_11 .. :try_end_6a} :catchall_e3

    .line 4116
    :cond_6a
    nop

    .line 4151
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 4116
    return v14

    .line 4118
    :cond_6f
    if-eqz v0, :cond_81

    :try_start_71
    iget v2, v0, Landroid/net/NetworkPolicyManager$UidState;->procState:I
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_e3

    move/from16 v15, p2

    if-ne v2, v15, :cond_83

    :try_start_77
    iget v2, v0, Landroid/net/NetworkPolicyManager$UidState;->capability:I
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_e1

    if-eq v2, v11, :cond_7c

    goto :goto_83

    .line 4151
    .end local v0    # "oldUidState":Landroid/net/NetworkPolicyManager$UidState;
    :cond_7c
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 4152
    nop

    .line 4153
    return v14

    .line 4118
    .restart local v0    # "oldUidState":Landroid/net/NetworkPolicyManager$UidState;
    :cond_81
    move/from16 v15, p2

    .line 4120
    :cond_83
    :goto_83
    :try_start_83
    new-instance v16, Landroid/net/NetworkPolicyManager$UidState;

    move-object/from16 v2, v16

    move/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/net/NetworkPolicyManager$UidState;-><init>(IIJI)V

    move-object/from16 v2, v16

    .line 4122
    .local v2, "newUidState":Landroid/net/NetworkPolicyManager$UidState;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v3, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4123
    invoke-direct {v1, v8, v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(ILandroid/net/NetworkPolicyManager$UidState;Landroid/net/NetworkPolicyManager$UidState;)V

    .line 4124
    nop

    .line 4125
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v3

    .line 4126
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_aa

    move v3, v5

    goto :goto_ab

    :cond_aa
    move v3, v14

    .line 4127
    .local v3, "allowedWhileIdleOrPowerSaveModeChanged":Z
    :goto_ab
    if-eqz v3, :cond_c1

    .line 4128
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 4129
    iget-boolean v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v4, :cond_b7

    .line 4130
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4132
    :cond_b7
    iget-boolean v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v4, :cond_be

    .line 4133
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4135
    :cond_be
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    .line 4137
    :cond_c1
    iget-boolean v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    if-eqz v4, :cond_dc

    .line 4138
    nop

    .line 4139
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileInLowPowerStandby(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v4

    .line 4140
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileInLowPowerStandby(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v6

    if-eq v4, v6, :cond_d1

    move v14, v5

    :cond_d1
    move v4, v14

    .line 4141
    .local v4, "allowedInLpsChanged":Z
    if-eqz v4, :cond_dc

    .line 4142
    if-nez v3, :cond_d9

    .line 4143
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    .line 4145
    :cond_d9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForLowPowerStandbyUL(I)V
    :try_end_dc
    .catchall {:try_start_83 .. :try_end_dc} :catchall_e1

    .line 4148
    .end local v4    # "allowedInLpsChanged":Z
    :cond_dc
    nop

    .line 4151
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 4148
    return v5

    .line 4151
    .end local v0    # "oldUidState":Landroid/net/NetworkPolicyManager$UidState;
    .end local v2    # "newUidState":Landroid/net/NetworkPolicyManager$UidState;
    .end local v3    # "allowedWhileIdleOrPowerSaveModeChanged":Z
    :catchall_e1
    move-exception v0

    goto :goto_e6

    :catchall_e3
    move-exception v0

    move/from16 v15, p2

    :goto_e6
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 4152
    throw v0
.end method

.method private upgradeDefaultBackgroundDataUL()V
    .registers 4

    .line 2711
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 2712
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2711
    const-string v1, "default_restrict_background_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    :cond_11
    iput-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 2722
    return-void
.end method

.method private upgradeWifiMeteredOverride()V
    .registers 11

    .line 2729
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2730
    .local v0, "wifiNetworkKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2731
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 2732
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 2733
    .local v3, "policy":Landroid/net/NetworkPolicy;
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4e

    iget-boolean v4, v3, Landroid/net/NetworkPolicy;->inferred:Z

    if-nez v4, :cond_4e

    .line 2735
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2736
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v4

    .line 2737
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v5, 0x0

    goto :goto_43

    :cond_39
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_43
    iget-boolean v6, v3, Landroid/net/NetworkPolicy;->metered:Z

    .line 2738
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 2737
    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2739
    nop

    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_50

    .line 2740
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    .line 2742
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :goto_50
    goto :goto_9

    .line 2743
    .end local v2    # "i":I
    :cond_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_d4

    .line 2745
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2746
    return-void

    .line 2748
    :cond_59
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 2749
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 2750
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_69
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c2

    .line 2751
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2752
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getAllNetworkKeys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bf

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2753
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 2754
    .local v7, "metered":Ljava/lang/Boolean;
    if-eqz v7, :cond_be

    .line 2755
    const-string v5, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; upgrading metered hint"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 2757
    const/4 v5, 0x1

    goto :goto_b8

    .line 2758
    :cond_b7
    const/4 v5, 0x2

    :goto_b8
    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 2759
    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 2760
    goto :goto_bf

    .line 2762
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "metered":Ljava/lang/Boolean;
    :cond_be
    goto :goto_7d

    .line 2750
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_bf
    :goto_bf
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 2765
    .end local v1    # "i":I
    :cond_c2
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2766
    :try_start_c5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_d1

    .line 2767
    :try_start_c8
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2768
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_ce

    .line 2769
    :try_start_cc
    monitor-exit v4
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_d1

    .line 2770
    return-void

    .line 2768
    :catchall_ce
    move-exception v5

    :try_start_cf
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    .end local v0    # "wifiNetworkKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_d0
    throw v5

    .line 2769
    .restart local v0    # "wifiNetworkKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v2    # "wm":Landroid/net/wifi/WifiManager;
    .restart local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_d1
    move-exception v1

    monitor-exit v4
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d1

    throw v1

    .line 2743
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :catchall_d4
    move-exception v2

    :try_start_d5
    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw v2
.end method

.method private waitForAdminData()V
    .registers 5

    .line 6228
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6229
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 6232
    :cond_17
    return-void
.end method


# virtual methods
.method addDefaultRestrictBackgroundAllowlistUidsUL()Z
    .registers 7

    .line 873
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 874
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 876
    .local v1, "numberUsers":I
    const/4 v2, 0x0

    .line 877
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_26

    .line 878
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 879
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL(I)Z

    move-result v5

    if-nez v5, :cond_21

    if-eqz v2, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v5, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v5, 0x1

    :goto_22
    move v2, v5

    .line 877
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 881
    .end local v3    # "i":I
    :cond_26
    return v2
.end method

.method addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 5901
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5902
    return-void
.end method

.method addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V
    .registers 4
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .line 3096
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 3097
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 3098
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3099
    return-void
.end method

.method public addUidPolicy(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2888
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2894
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2895
    :try_start_12
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2896
    .local v1, "oldPolicy":I
    or-int/2addr p2, v1

    .line 2897
    if-eq v1, p2, :cond_25

    .line 2898
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2899
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 2901
    .end local v1    # "oldPolicy":I
    :cond_25
    monitor-exit v0

    .line 2902
    return-void

    .line 2901
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_27

    throw v1

    .line 2891
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindConnectivityManager()V
    .registers 3

    .line 846
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string/jumbo v1, "missing ConnectivityManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    .line 848
    return-void
.end method

.method buildDefaultCarrierPolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;
    .registers 20
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .line 2416
    move-object/from16 v1, p0

    invoke-static/range {p2 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v15

    .line 2418
    .local v15, "template":Landroid/net/NetworkTemplate;
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v16

    .line 2419
    .local v16, "cycleRule":Landroid/util/RecurrenceRule;
    new-instance v0, Landroid/net/NetworkPolicy;

    .line 2420
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v4, v16

    invoke-direct/range {v2 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2422
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2423
    :try_start_30
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3e

    .line 2424
    move/from16 v5, p1

    :try_start_35
    invoke-direct {v1, v5, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultCarrierPolicyAL(ILandroid/net/NetworkPolicy;)Z

    .line 2425
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3b

    .line 2426
    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_43

    .line 2427
    return-object v2

    .line 2425
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .end local v15    # "template":Landroid/net/NetworkTemplate;
    .end local v16    # "cycleRule":Landroid/util/RecurrenceRule;
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "subId":I
    .end local p2    # "subscriberId":Ljava/lang/String;
    :try_start_3d
    throw v0

    .line 2426
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    .restart local v15    # "template":Landroid/net/NetworkTemplate;
    .restart local v16    # "cycleRule":Landroid/util/RecurrenceRule;
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "subId":I
    .restart local p2    # "subscriberId":Ljava/lang/String;
    :catchall_3e
    move-exception v0

    move/from16 v5, p1

    :goto_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_43

    throw v0

    :catchall_43
    move-exception v0

    goto :goto_41
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3833
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkPolicy"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3835
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3837
    .local v0, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, p3

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 3838
    .local v1, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_25

    aget-object v5, p3, v4

    .line 3839
    .local v5, "arg":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3838
    .end local v5    # "arg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 3842
    :cond_25
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3843
    :try_start_28
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_447

    .line 3844
    :try_start_2b
    const-string v5, "--unsnooze"

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 3845
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .local v3, "i":I
    :goto_3b
    if-ltz v3, :cond_4b

    .line 3846
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3845
    add-int/lit8 v3, v3, -0x1

    goto :goto_3b

    .line 3849
    .end local v3    # "i":I
    :cond_4b
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3851
    const-string v3, "Cleared snooze timestamps"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3852
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_444

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_447

    return-void

    .line 3855
    :cond_56
    :try_start_56
    const-string v5, "System ready: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3856
    const-string v5, "Restrict background: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3857
    const-string v5, "Restrict power: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3858
    const-string v5, "Device idle: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3859
    const-string v5, "Restricted networking mode: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3860
    const-string v5, "Low Power Standby mode: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3861
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_95
    .catchall {:try_start_56 .. :try_end_95} :catchall_444

    .line 3862
    :try_start_95
    const-string v6, "Metered ifaces: "

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3863
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3864
    monitor-exit v5
    :try_end_a0
    .catchall {:try_start_95 .. :try_end_a0} :catchall_441

    .line 3866
    :try_start_a0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3867
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRestrictBackgroundLowPowerMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3868
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRestrictBackgroundBeforeBsm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3869
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLoadedRestrictBackground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3870
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRestrictBackgroundChangedInBsm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3872
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3873
    const-string v5, "Network policies:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3874
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3875
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_112
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_12c

    .line 3876
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3875
    add-int/lit8 v5, v5, 0x1

    goto :goto_112

    .line 3878
    .end local v5    # "i":I
    :cond_12c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3880
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3881
    const-string v5, "Subscription plans:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3882
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3883
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_13b
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_189

    .line 3884
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3885
    .local v6, "subId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Subscriber ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3886
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3887
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 3888
    .local v7, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_182

    .line 3889
    array-length v8, v7

    move v9, v3

    :goto_178
    if-ge v9, v8, :cond_182

    aget-object v10, v7, v9

    .line 3890
    .local v10, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3889
    .end local v10    # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v9, v9, 0x1

    goto :goto_178

    .line 3893
    :cond_182
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3883
    nop

    .end local v6    # "subId":I
    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v5, v5, 0x1

    goto :goto_13b

    .line 3895
    .end local v5    # "i":I
    :cond_189
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3897
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3898
    const-string v3, "Active subscriptions:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3899
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3900
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_198
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_1cf

    .line 3901
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3902
    .local v5, "subId":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3904
    .local v6, "subscriberId":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3905
    invoke-static {v6}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3904
    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3900
    .end local v5    # "subId":I
    .end local v6    # "subscriberId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_198

    .line 3907
    .end local v3    # "i":I
    :cond_1cf
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3909
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3910
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1db
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_206

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 3911
    .local v5, "mergedSubscribers":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Merged subscriptions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3912
    invoke-static {v5}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberIds([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3911
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3913
    .end local v5    # "mergedSubscribers":[Ljava/lang/String;
    goto :goto_1db

    .line 3915
    :cond_206
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3916
    const-string v3, "Policy for UIDs:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3917
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3918
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 3919
    .local v3, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_218
    if-ge v5, v3, :cond_240

    .line 3920
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 3921
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 3922
    .local v7, "policy":I
    const-string v8, "UID="

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3923
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3924
    const-string v8, " policy="

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3925
    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3926
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3919
    .end local v6    # "uid":I
    .end local v7    # "policy":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_218

    .line 3928
    .end local v5    # "i":I
    :cond_240
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3930
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move v3, v5

    .line 3931
    if-lez v3, :cond_27c

    .line 3932
    const-string v5, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3933
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3934
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_255
    if-ge v5, v3, :cond_279

    .line 3935
    const-string v6, "UID="

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3936
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3937
    const-string v6, ": "

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3938
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3939
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3934
    add-int/lit8 v5, v5, 0x1

    goto :goto_255

    .line 3941
    .end local v5    # "i":I
    :cond_279
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3944
    :cond_27c
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move v3, v5

    .line 3945
    if-lez v3, :cond_2b5

    .line 3946
    const-string v5, "Power save whitelist app ids:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3947
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3948
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_28e
    if-ge v5, v3, :cond_2b2

    .line 3949
    const-string v6, "UID="

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3950
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3951
    const-string v6, ": "

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3952
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3953
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3948
    add-int/lit8 v5, v5, 0x1

    goto :goto_28e

    .line 3955
    .end local v5    # "i":I
    :cond_2b2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3958
    :cond_2b5
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move v3, v5

    .line 3959
    if-lez v3, :cond_2ee

    .line 3960
    const-string v5, "App idle whitelist app ids:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3961
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3962
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2c7
    if-ge v5, v3, :cond_2eb

    .line 3963
    const-string v6, "UID="

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3964
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3965
    const-string v6, ": "

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3966
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3967
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3962
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c7

    .line 3969
    .end local v5    # "i":I
    :cond_2eb
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3972
    :cond_2ee
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move v3, v5

    .line 3973
    if-lez v3, :cond_319

    .line 3974
    const-string v5, "Default restrict background allowlist uids:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3975
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3976
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_300
    if-ge v5, v3, :cond_316

    .line 3977
    const-string v6, "UID="

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3978
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3979
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3976
    add-int/lit8 v5, v5, 0x1

    goto :goto_300

    .line 3981
    .end local v5    # "i":I
    :cond_316
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3984
    :cond_319
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move v3, v5

    .line 3985
    if-lez v3, :cond_344

    .line 3986
    const-string v5, "Default restrict background allowlist uids revoked by users:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3988
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_32b
    if-ge v5, v3, :cond_341

    .line 3989
    const-string v6, "UID="

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3990
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3991
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3988
    add-int/lit8 v5, v5, 0x1

    goto :goto_32b

    .line 3993
    .end local v5    # "i":I
    :cond_341
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3996
    :cond_344
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move v3, v5

    .line 3997
    if-lez v3, :cond_36f

    .line 3998
    const-string v5, "Low Power Standby allowlist uids:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3999
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4000
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_356
    if-ge v5, v3, :cond_36c

    .line 4001
    const-string v6, "UID="

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4002
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 4003
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4000
    add-int/lit8 v5, v5, 0x1

    goto :goto_356

    .line 4005
    .end local v5    # "i":I
    :cond_36c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4008
    :cond_36f
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 4009
    .local v5, "knownUids":Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-static {v6, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 4010
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_37c
    .catchall {:try_start_a0 .. :try_end_37c} :catchall_444

    .line 4011
    :try_start_37c
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-static {v7, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 4012
    monitor-exit v6
    :try_end_382
    .catchall {:try_start_37c .. :try_end_382} :catchall_43e

    .line 4014
    :try_start_382
    const-string v6, "Status for all known UIDs:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4015
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4016
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v3, v6

    .line 4017
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_390
    if-ge v6, v3, :cond_3df

    .line 4018
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 4019
    .local v7, "uid":I
    const-string v8, "UID="

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4020
    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 4022
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkPolicyManager$UidState;

    .line 4023
    .local v8, "uidState":Landroid/net/NetworkPolicyManager$UidState;
    if-nez v8, :cond_3ae

    .line 4024
    const-string v9, " state={null}"

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3ba

    .line 4026
    :cond_3ae
    const-string v9, " state="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4027
    invoke-virtual {v8}, Landroid/net/NetworkPolicyManager$UidState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4030
    :goto_3ba
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v9
    :try_end_3bd
    .catchall {:try_start_382 .. :try_end_3bd} :catchall_444

    .line 4031
    :try_start_3bd
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 4032
    .local v10, "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    if-nez v10, :cond_3cd

    .line 4033
    const-string v11, " blocked_state={null}"

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3d5

    .line 4035
    :cond_3cd
    const-string v11, " blocked_state="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4036
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 4038
    .end local v10    # "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    :goto_3d5
    monitor-exit v9
    :try_end_3d6
    .catchall {:try_start_3bd .. :try_end_3d6} :catchall_3dc

    .line 4039
    :try_start_3d6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_3d9
    .catchall {:try_start_3d6 .. :try_end_3d9} :catchall_444

    .line 4017
    .end local v7    # "uid":I
    .end local v8    # "uidState":Landroid/net/NetworkPolicyManager$UidState;
    add-int/lit8 v6, v6, 0x1

    goto :goto_390

    .line 4038
    .restart local v7    # "uid":I
    .restart local v8    # "uidState":Landroid/net/NetworkPolicyManager$UidState;
    :catchall_3dc
    move-exception v10

    :try_start_3dd
    monitor-exit v9
    :try_end_3de
    .catchall {:try_start_3dd .. :try_end_3de} :catchall_3dc

    .end local v0    # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v1    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "writer":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_3de
    throw v10

    .line 4041
    .end local v6    # "i":I
    .end local v7    # "uid":I
    .end local v8    # "uidState":Landroid/net/NetworkPolicyManager$UidState;
    .restart local v0    # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v1    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "writer":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_3df
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4043
    const-string v6, "Admin restricted uids for metered data:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4044
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4045
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v3, v6

    .line 4046
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3f2
    if-ge v6, v3, :cond_423

    .line 4047
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4048
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4046
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f2

    .line 4050
    .end local v6    # "i":I
    :cond_423
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4052
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4053
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v6, v0}, Lcom/android/internal/util/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 4055
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkPolicyLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4056
    .end local v3    # "size":I
    .end local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    monitor-exit v4
    :try_end_434
    .catchall {:try_start_3de .. :try_end_434} :catchall_444

    .line 4057
    :try_start_434
    monitor-exit v2
    :try_end_435
    .catchall {:try_start_434 .. :try_end_435} :catchall_447

    .line 4058
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4059
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4060
    return-void

    .line 4012
    .restart local v3    # "size":I
    .restart local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    :catchall_43e
    move-exception v7

    :try_start_43f
    monitor-exit v6
    :try_end_440
    .catchall {:try_start_43f .. :try_end_440} :catchall_43e

    .end local v0    # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v1    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "writer":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_440
    throw v7
    :try_end_441
    .catchall {:try_start_440 .. :try_end_441} :catchall_444

    .line 3864
    .end local v3    # "size":I
    .end local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v0    # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v1    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "writer":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_441
    move-exception v3

    :try_start_442
    monitor-exit v5
    :try_end_443
    .catchall {:try_start_442 .. :try_end_443} :catchall_441

    .end local v0    # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v1    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "writer":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_443
    throw v3

    .line 4056
    .restart local v0    # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v1    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "writer":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_444
    move-exception v3

    monitor-exit v4
    :try_end_446
    .catchall {:try_start_443 .. :try_end_446} :catchall_444

    .end local v0    # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v1    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "writer":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_446
    throw v3

    .line 4057
    .restart local v0    # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v1    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "writer":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_447
    move-exception v3

    monitor-exit v2
    :try_end_449
    .catchall {:try_start_446 .. :try_end_449} :catchall_447

    throw v3
.end method

.method public factoryReset(Ljava/lang/String;)V
    .registers 12
    .param p1, "subscriber"    # Ljava/lang/String;

    .line 5954
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5956
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5957
    return-void

    .line 5961
    :cond_15
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 5962
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 5963
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    goto :goto_28

    :cond_27
    move-object v2, v1

    .line 5964
    .local v2, "templateCarrier":Landroid/net/NetworkTemplate;
    :goto_28
    const/4 v3, 0x1

    if-eqz p1, :cond_41

    .line 5968
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v1, v3}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 5966
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v1

    .line 5967
    invoke-virtual {v1, v3}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v1

    .line 5968
    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    goto :goto_42

    :cond_41
    nop

    .line 5969
    .local v1, "templateMobile":Landroid/net/NetworkTemplate;
    :goto_42
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_45
    if-ge v6, v4, :cond_65

    aget-object v7, v0, v6

    .line 5973
    .local v7, "policy":Landroid/net/NetworkPolicy;
    iget-object v8, v7, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v8, v2}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_59

    iget-object v8, v7, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v8, v1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 5974
    :cond_59
    const-wide/16 v8, -0x1

    iput-wide v8, v7, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 5975
    iput-boolean v5, v7, Landroid/net/NetworkPolicy;->inferred:Z

    .line 5976
    invoke-virtual {v7}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 5969
    .end local v7    # "policy":Landroid/net/NetworkPolicy;
    :cond_62
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 5979
    :cond_65
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 5982
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 5984
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v6, "no_control_apps"

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_86

    .line 5986
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v3

    array-length v4, v3

    move v6, v5

    :goto_7c
    if-ge v6, v4, :cond_86

    aget v7, v3, v6

    .line 5987
    .local v7, "uid":I
    invoke-virtual {p0, v7, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 5986
    .end local v7    # "uid":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_7c

    .line 5990
    :cond_86
    return-void
.end method

.method getAppIdleWhitelist()[I
    .registers 6

    .line 4795
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4797
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4798
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 4799
    .local v1, "len":I
    new-array v2, v1, [I

    .line 4800
    .local v2, "uids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_22

    .line 4801
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 4800
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 4803
    .end local v3    # "i":I
    :cond_22
    monitor-exit v0

    return-object v2

    .line 4804
    .end local v1    # "len":I
    .end local v2    # "uids":[I
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_24

    throw v1
.end method

.method getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I
    .registers 7
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackCycleDay"    # I

    .line 1862
    if-nez p1, :cond_3

    .line 1863
    return p2

    .line 1865
    :cond_3
    nop

    .line 1866
    const-string/jumbo v0, "monthly_data_cycle_day_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1867
    .local v0, "cycleDay":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 1868
    return p2

    .line 1871
    :cond_f
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1872
    .local v1, "cal":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v3

    if-lt v0, v3, :cond_22

    .line 1873
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    if-le v0, v2, :cond_21

    goto :goto_22

    .line 1878
    :cond_21
    return v0

    .line 1874
    :cond_22
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date in CarrierConfigManager.KEY_MONTHLY_DATA_CYCLE_DAY_INT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    return p2
.end method

.method getHandlerForTesting()Landroid/os/Handler;
    .registers 2

    .line 1817
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .registers 9
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackLimitBytes"    # J

    .line 1927
    if-nez p1, :cond_3

    .line 1928
    return-wide p2

    .line 1930
    :cond_3
    nop

    .line 1931
    const-string v0, "data_limit_threshold_bytes_long"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1933
    .local v0, "limitBytes":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_13

    .line 1934
    return-wide v3

    .line 1935
    :cond_13
    cmp-long v2, v0, v3

    if-nez v2, :cond_1c

    .line 1936
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v2

    return-wide v2

    .line 1937
    :cond_1c
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3b

    .line 1938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value in CarrierConfigManager.KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    return-wide p2

    .line 1943
    :cond_3b
    return-wide v0
.end method

.method public getMultipathPreference(Landroid/net/Network;)I
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 3822
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 3823
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getMultipathPreference(Landroid/net/Network;)Ljava/lang/Integer;

    move-result-object v0

    .line 3824
    .local v0, "preference":Ljava/lang/Integer;
    if-eqz v0, :cond_12

    .line 3825
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 3827
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 3103
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_12} :catch_13

    .line 3115
    goto :goto_2f

    .line 3108
    :catch_13
    move-exception v0

    .line 3109
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2f

    .line 3113
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/NetworkPolicy;

    return-object v1

    .line 3117
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3118
    :try_start_32
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3119
    .local v1, "size":I
    new-array v2, v1, [Landroid/net/NetworkPolicy;

    .line 3120
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    if-ge v3, v1, :cond_4a

    .line 3121
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    aput-object v4, v2, v3

    .line 3120
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 3123
    .end local v3    # "i":I
    :cond_4a
    monitor-exit v0

    return-object v2

    .line 3124
    .end local v1    # "size":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public getRestrictBackground()Z
    .registers 4

    .line 3339
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3342
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v0

    return v1

    .line 3343
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getRestrictBackgroundByCaller()I
    .registers 4

    .line 3304
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3305
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundStatusInternal(I)I

    move-result v0

    return v0
.end method

.method public getRestrictBackgroundStatus(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 3310
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 3311
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundStatusInternal(I)I

    move-result v0

    return v0
.end method

.method public getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;
    .registers 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 3513
    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 3514
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3515
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v1

    .line 3516
    .local v1, "subId":I
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 3517
    .end local v1    # "subId":I
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;
    .registers 19
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 3537
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3539
    const-string v0, "fw.fake_plan"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3540
    .local v4, "fake":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44d

    .line 3541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3542
    .local v0, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    const-string/jumbo v5, "month_hard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x5

    if-eqz v5, :cond_e4

    .line 3543
    const-string v5, "2007-03-14T00:00:00.000Z"

    .line 3544
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v12, "G-Mobile"

    .line 3545
    invoke-virtual {v5, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v12, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3546
    invoke-virtual {v12, v10, v11}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-virtual {v5, v12, v13, v14}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v12, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3548
    invoke-virtual {v12, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v8

    .line 3549
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v12

    const-wide/16 v10, 0x24

    invoke-virtual {v12, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v12

    .line 3548
    invoke-virtual {v5, v8, v9, v12, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3550
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3543
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3551
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3552
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v8, "G-Mobile Happy"

    .line 3553
    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3554
    invoke-virtual {v5, v6, v7, v14}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3556
    const-wide/16 v7, 0x5

    invoke-virtual {v6, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v12

    .line 3557
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3556
    invoke-virtual {v5, v12, v13, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3558
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3551
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3559
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3560
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, Charged after limit"

    .line 3561
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3562
    const-wide/16 v7, 0x5

    invoke-virtual {v6, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13, v14}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3564
    invoke-virtual {v6, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    .line 3565
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3564
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3566
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3559
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_440

    .line 3567
    :cond_e4
    const-string/jumbo v5, "month_soft"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v5, :cond_1ae

    .line 3568
    const-string v5, "2007-03-14T00:00:00.000Z"

    .line 3569
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    .line 3570
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "Crazy unlimited bandwidth plan with incredibly long title that should be cut off to prevent UI from looking terrible"

    .line 3571
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3573
    const-wide/16 v12, 0x5

    invoke-virtual {v6, v12, v13}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3575
    invoke-virtual {v6, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    .line 3576
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v12

    .line 3575
    invoke-virtual {v5, v6, v7, v12, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3577
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3568
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3578
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3579
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, Throttled after limit"

    .line 3580
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3581
    const-wide/16 v12, 0x5

    invoke-virtual {v6, v12, v13}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3583
    invoke-virtual {v6, v12, v13}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    .line 3584
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v11

    .line 3583
    invoke-virtual {v5, v6, v7, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3585
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3578
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3586
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3587
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, No data connection after limit"

    .line 3588
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3589
    const-wide/16 v11, 0x5

    invoke-virtual {v6, v11, v12}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3591
    invoke-virtual {v6, v11, v12}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    .line 3592
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3591
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3593
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3586
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_440

    .line 3595
    :cond_1ae
    const-string/jumbo v5, "month_over"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_272

    .line 3596
    const-string v5, "2007-03-14T00:00:00.000Z"

    .line 3597
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    .line 3598
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3599
    const-wide/16 v12, 0x5

    invoke-virtual {v6, v12, v13}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v12, 0x6

    .line 3601
    invoke-virtual {v6, v12, v13}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    .line 3602
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v12

    .line 3601
    invoke-virtual {v5, v6, v7, v12, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3603
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3596
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3604
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3605
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, Throttled after limit"

    .line 3606
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3607
    const-wide/16 v12, 0x5

    invoke-virtual {v6, v12, v13}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3609
    invoke-virtual {v6, v12, v13}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    .line 3610
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v11

    .line 3609
    invoke-virtual {v5, v6, v7, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3611
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3604
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3612
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3613
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, No data connection after limit"

    .line 3614
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3615
    const-wide/16 v11, 0x5

    invoke-virtual {v6, v11, v12}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3617
    invoke-virtual {v6, v11, v12}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    .line 3618
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3617
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3619
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3612
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_440

    .line 3621
    :cond_272
    const-string/jumbo v5, "month_none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_294

    .line 3622
    const-string v5, "2007-03-14T00:00:00.000Z"

    .line 3623
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile"

    .line 3624
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3625
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3622
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_440

    .line 3626
    :cond_294
    const-string/jumbo v5, "prepaid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x200

    const-wide/16 v8, 0xa

    const-wide/16 v11, 0x14

    if-eqz v5, :cond_2ef

    .line 3627
    nop

    .line 3628
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3629
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    .line 3628
    invoke-static {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v8, "G-Mobile"

    .line 3630
    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v8, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 3631
    invoke-virtual {v8, v6, v7}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 3633
    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    .line 3634
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    const-wide/16 v9, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3633
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3635
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3627
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_440

    .line 3636
    :cond_2ef
    const-string/jumbo v5, "prepaid_crazy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3eb

    .line 3637
    nop

    .line 3638
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3639
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v13

    .line 3638
    invoke-static {v5, v13}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v13, "G-Mobile Anytime"

    .line 3640
    invoke-virtual {v5, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v13, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 3641
    invoke-virtual {v13, v6, v7}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 3643
    const-wide/16 v14, 0x64

    invoke-virtual {v6, v14, v15}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v13

    .line 3644
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    const-wide/16 v11, 0x3

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 3643
    invoke-virtual {v5, v13, v14, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3645
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3637
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3646
    nop

    .line 3647
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3648
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    const-wide/16 v10, 0x14

    invoke-virtual {v6, v10, v11}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3647
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile Nickel Nights"

    .line 3649
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "5\u00a2/GB between 1-5AM"

    .line 3650
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3651
    const-wide/16 v10, 0x5

    invoke-virtual {v6, v10, v11}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v10

    const/4 v6, 0x2

    invoke-virtual {v5, v10, v11, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v10, 0xf

    .line 3653
    invoke-virtual {v6, v10, v11}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    .line 3654
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v10

    const-wide/16 v11, 0x1e

    invoke-virtual {v10, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 3653
    invoke-virtual {v5, v6, v7, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3655
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3646
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3656
    nop

    .line 3657
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3658
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    const-wide/16 v7, 0x14

    invoke-virtual {v6, v7, v8}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3657
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile Bonus 3G"

    .line 3659
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "Unlimited 3G data"

    .line 3660
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3661
    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v9

    const/4 v6, 0x2

    invoke-virtual {v5, v9, v10, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v9, 0x12c

    .line 3663
    invoke-virtual {v6, v9, v10}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v9

    .line 3664
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3663
    invoke-virtual {v5, v9, v10, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3665
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3656
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_440

    .line 3666
    :cond_3eb
    const-string/jumbo v5, "unlimited"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_440

    .line 3667
    nop

    .line 3668
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    const-wide/16 v6, 0x14

    invoke-virtual {v5, v6, v7}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3669
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3668
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile Awesome"

    .line 3670
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3671
    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    sget-object v6, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v7, 0x32

    .line 3673
    invoke-virtual {v6, v7, v8}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    .line 3674
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    const-wide/16 v9, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3673
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3675
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3667
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3677
    :cond_440
    :goto_440
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    return-object v5

    .line 3680
    .end local v0    # "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    :cond_44d
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3684
    :try_start_450
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3685
    .local v0, "ownerPackage":Ljava/lang/String;
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_494

    .line 3686
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_494

    .line 3687
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v7, 0x3e9

    if-ne v6, v7, :cond_46f

    goto :goto_494

    .line 3690
    :cond_46f
    const-string v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not returning plans because caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t match owner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    const/4 v6, 0x0

    monitor-exit v5

    return-object v6

    .line 3688
    :cond_494
    :goto_494
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/telephony/SubscriptionPlan;

    monitor-exit v5

    return-object v6

    .line 3694
    .end local v0    # "ownerPackage":Ljava/lang/String;
    :catchall_49e
    move-exception v0

    monitor-exit v5
    :try_end_4a0
    .catchall {:try_start_450 .. :try_end_4a0} :catchall_49e

    throw v0
.end method

.method public getSubscriptionPlansOwner(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 3761
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_18

    .line 3765
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3766
    :try_start_b
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3767
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v1

    .line 3762
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method public getUidPolicy(I)I
    .registers 5
    .param p1, "uid"    # I

    .line 2973
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2976
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 2977
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getUidsWithPolicy(I)[I
    .registers 8
    .param p1, "policy"    # I

    .line 2982
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 2985
    .local v0, "uids":[I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2986
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    :try_start_10
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 2987
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 2988
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 2989
    .local v4, "uidPolicy":I
    if-nez p1, :cond_28

    if-eqz v4, :cond_2c

    :cond_28
    and-int v5, v4, p1

    if-eqz v5, :cond_31

    .line 2991
    :cond_2c
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v0, v5

    .line 2986
    .end local v3    # "uid":I
    .end local v4    # "uidPolicy":I
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2994
    .end local v2    # "i":I
    :cond_34
    monitor-exit v1

    .line 2995
    return-object v0

    .line 2994
    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_36

    throw v2
.end method

.method getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .registers 9
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackWarningBytes"    # J

    .line 1894
    if-nez p1, :cond_3

    .line 1895
    return-wide p2

    .line 1897
    :cond_3
    nop

    .line 1898
    const-string v0, "data_warning_threshold_bytes_long"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1900
    .local v0, "warningBytes":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_13

    .line 1901
    return-wide v3

    .line 1902
    :cond_13
    cmp-long v2, v0, v3

    if-nez v2, :cond_1c

    .line 1903
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v2

    return-wide v2

    .line 1904
    :cond_1c
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3b

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value in CarrierConfigManager.KEY_DATA_WARNING_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    return-wide p2

    .line 1911
    :cond_3b
    return-wide v0
.end method

.method handleNetworkPoliciesUpdateAL(Z)V
    .registers 2
    .param p1, "shouldNormalizePolicies"    # Z

    .line 1991
    if-eqz p1, :cond_5

    .line 1992
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1994
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1995
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1996
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1997
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 1998
    return-void
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;

    .line 4066
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 4067
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 4066
    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method handleUidChanged(Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;)V
    .registers 20
    .param p1, "uidStateCallbackInfo"    # Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;

    .line 5535
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string/jumbo v0, "onUidStateChanged"

    const-wide/32 v9, 0x200000

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5542
    :try_start_d
    iget-object v11, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_4e

    .line 5543
    :try_start_10
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_4b

    .line 5544
    :try_start_13
    iget v0, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->uid:I

    .line 5545
    .local v0, "uid":I
    iget v14, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    .line 5546
    .local v14, "procState":I
    iget-wide v2, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    move-wide v4, v2

    .line 5547
    .local v4, "procStateSeq":J
    iget v2, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->capability:I

    move/from16 v17, v2

    .line 5548
    .local v17, "capability":I
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->isPending:Z

    .line 5549
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_48

    .line 5553
    :try_start_22
    iget-object v12, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    move v13, v0

    move-wide v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/net/NetworkPolicyLogger;->uidStateChanged(IIJI)V

    .line 5555
    move-object/from16 v1, p0

    move v2, v0

    move v3, v14

    move-wide v12, v4

    .end local v4    # "procStateSeq":J
    .local v12, "procStateSeq":J
    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(IIJI)Z

    move-result v1

    .line 5557
    .local v1, "updated":Z
    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v0, v12, v13}, Landroid/app/ActivityManagerInternal;->notifyNetworkPolicyRulesUpdated(IJ)V

    .line 5558
    monitor-exit v11
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_4b

    .line 5561
    if-eqz v1, :cond_43

    .line 5562
    :try_start_3c
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v2

    invoke-direct {v7, v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_4e

    .line 5565
    .end local v0    # "uid":I
    .end local v1    # "updated":Z
    .end local v12    # "procStateSeq":J
    .end local v14    # "procState":I
    .end local v17    # "capability":I
    :cond_43
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 5566
    nop

    .line 5567
    return-void

    .line 5549
    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "uidStateCallbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    :try_start_4a
    throw v0

    .line 5558
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "uidStateCallbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    :catchall_4b
    move-exception v0

    monitor-exit v11
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4b

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "uidStateCallbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 5565
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "uidStateCallbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    :catchall_4e
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 5566
    throw v0
.end method

.method handleUidGone(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 5570
    const-string/jumbo v0, "onUidGone"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5573
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1f

    .line 5574
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)Z

    move-result v3

    .line 5575
    .local v3, "updated":Z
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1c

    .line 5578
    if-eqz v3, :cond_17

    .line 5579
    const/4 v0, 0x0

    :try_start_14
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1f

    .line 5582
    .end local v3    # "updated":Z
    :cond_17
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5583
    nop

    .line 5584
    return-void

    .line 5575
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "uid":I
    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 5582
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "uid":I
    :catchall_1f
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5583
    throw v0
.end method

.method isRestrictedModeEnabled()Z
    .registers 3

    .line 4206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4207
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    monitor-exit v0

    return v1

    .line 4208
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isUidForeground(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 4076
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4077
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager$UidState;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4078
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method isUidIdle(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 4810
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(II)Z

    move-result v0

    return v0
.end method

.method public isUidNetworkingBlocked(IZ)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "isNetworkMetered"    # Z

    .line 5994
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 5996
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.OBSERVE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5998
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5999
    :try_start_12
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 6000
    .local v3, "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    const/4 v4, 0x0

    if-nez v3, :cond_1f

    .line 6001
    move v5, v4

    goto :goto_21

    :cond_1f
    iget v5, v3, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6002
    .local v5, "blockedReasons":I
    :goto_21
    if-nez p2, :cond_27

    .line 6003
    const v6, 0xffff

    and-int/2addr v5, v6

    .line 6005
    :cond_27
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v6, p1, v3}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(ILcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V

    .line 6006
    .end local v3    # "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_37

    .line 6008
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 6010
    if-eqz v5, :cond_36

    move v4, v3

    :cond_36
    return v4

    .line 6006
    .end local v5    # "blockedReasons":I
    :catchall_37
    move-exception v3

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v3
.end method

.method public isUidRestrictedOnMeteredNetworks(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 6015
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6016
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6017
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 6018
    .local v1, "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 6019
    move v3, v2

    goto :goto_1b

    :cond_19
    iget v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6020
    .local v3, "blockedReasons":I
    :goto_1b
    const/high16 v4, -0x10000

    and-int/2addr v3, v4

    .line 6021
    if-eqz v3, :cond_21

    const/4 v2, 0x1

    :cond_21
    monitor-exit v0

    return v2

    .line 6022
    .end local v1    # "uidBlockedState":Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    .end local v3    # "blockedReasons":I
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw v1
.end method

.method synthetic lambda$handleDeviceIdleModeChangedUL$4$com-android-server-net-NetworkPolicyManagerService(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 4602
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4603
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4604
    monitor-exit v0

    .line 4605
    return-void

    .line 4604
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method synthetic lambda$initService$0$com-android-server-net-NetworkPolicyManagerService(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 970
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 971
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    .line 972
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeAllowlistUL()V

    .line 973
    monitor-exit v0

    .line 974
    return-void

    .line 973
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$networkScoreAndNetworkManagementServiceReady$1$com-android-server-net-NetworkPolicyManagerService(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 1108
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method synthetic lambda$updateRestrictedModeAllowlistUL$3$com-android-server-net-NetworkPolicyManagerService(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 4220
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4221
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateBlockedReasonsForRestrictedModeUL(I)I

    move-result v1

    .line 4223
    .local v1, "effectiveBlockedReasons":I
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictedModeFirewallRule(I)I

    move-result v2

    .line 4227
    .local v2, "newFirewallRule":I
    if-eqz v2, :cond_12

    .line 4228
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 4230
    .end local v1    # "effectiveBlockedReasons":I
    .end local v2    # "newFirewallRule":I
    :cond_12
    monitor-exit v0

    .line 4231
    return-void

    .line 4230
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method synthetic lambda$updateRulesForRestrictBackgroundUL$6$com-android-server-net-NetworkPolicyManagerService(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 4679
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    return-void
.end method

.method synthetic lambda$updateRulesForRestrictPowerUL$5$com-android-server-net-NetworkPolicyManagerService(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 4668
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method public networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;
    .registers 4

    .line 1106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    .line 1107
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v0, v1

    .line 1108
    .local v0, "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1109
    return-object v0
.end method

.method public notifyStatsProviderWarningOrLimitReached()V
    .registers 3

    .line 3527
    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 3529
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3530
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-nez v1, :cond_12

    monitor-exit v0

    return-void

    .line 3531
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_1f

    .line 3532
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3533
    return-void

    .line 3531
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .registers 11
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .line 3205
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 3206
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3207
    :try_start_9
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_50

    .line 3209
    :try_start_c
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 3210
    .local v4, "policy":Landroid/net/NetworkPolicy;
    if-eqz v4, :cond_33

    .line 3214
    sparse-switch p2, :sswitch_data_54

    .line 3225
    new-instance v5, Ljava/lang/IllegalArgumentException;

    goto :goto_2c

    .line 3222
    :sswitch_1c
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 3223
    goto :goto_25

    .line 3219
    :sswitch_1f
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 3220
    goto :goto_25

    .line 3216
    :sswitch_22
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 3217
    nop

    .line 3228
    :goto_25
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3229
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_4d

    .line 3230
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_50

    .line 3231
    return-void

    .line 3225
    .restart local v4    # "policy":Landroid/net/NetworkPolicy;
    :goto_2c
    :try_start_2c
    const-string/jumbo v6, "unexpected type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "currentTime":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "type":I
    throw v5

    .line 3211
    .restart local v0    # "currentTime":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "type":I
    :cond_33
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to find policy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "currentTime":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "type":I
    throw v5

    .line 3229
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .restart local v0    # "currentTime":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "type":I
    :catchall_4d
    move-exception v4

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_4d

    .end local v0    # "currentTime":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "type":I
    :try_start_4f
    throw v4

    .line 3230
    .restart local v0    # "currentTime":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "type":I
    :catchall_50
    move-exception v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_50

    throw v3

    nop

    :sswitch_data_54
    .sparse-switch
        0x22 -> :sswitch_22
        0x23 -> :sswitch_1f
        0x2d -> :sswitch_1c
    .end sparse-switch
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 3061
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3064
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 3065
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3067
    return-void
.end method

.method public removeUidPolicy(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2906
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2912
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2913
    :try_start_12
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2914
    .local v1, "oldPolicy":I
    not-int v2, p2

    and-int p2, v1, v2

    .line 2915
    if-eq v1, p2, :cond_27

    .line 2916
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2917
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 2919
    .end local v1    # "oldPolicy":I
    :cond_27
    monitor-exit v0

    .line 2920
    return-void

    .line 2919
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_29

    throw v1

    .line 2909
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeUserStateUL(IZZ)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "writePolicy"    # Z
    .param p3, "updateGlobalRules"    # Z

    .line 3005
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->removingUserState(I)V

    .line 3006
    const/4 v0, 0x0

    .line 3009
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_25

    .line 3010
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3011
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_22

    .line 3012
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 3013
    const/4 v0, 0x1

    .line 3009
    .end local v3    # "uid":I
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 3018
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    new-array v3, v1, [I

    .line 3019
    .local v3, "uids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 3020
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 3021
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_41

    .line 3022
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 3019
    .end local v5    # "uid":I
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 3026
    .end local v4    # "i":I
    :cond_44
    array-length v4, v3

    if-lez v4, :cond_55

    .line 3027
    array-length v4, v3

    :goto_48
    if-ge v1, v4, :cond_54

    aget v5, v3, v1

    .line 3028
    .restart local v5    # "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3027
    .end local v5    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 3030
    :cond_54
    const/4 v0, 0x1

    .line 3032
    :cond_55
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3033
    if-eqz p3, :cond_60

    .line 3034
    :try_start_5a
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    goto :goto_60

    .line 3039
    :catchall_5e
    move-exception v2

    goto :goto_69

    .line 3036
    :cond_60
    :goto_60
    if-eqz p2, :cond_67

    if-eqz v0, :cond_67

    .line 3037
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3039
    :cond_67
    monitor-exit v1

    .line 3040
    return v0

    .line 3039
    :goto_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_5e

    throw v2
.end method

.method setAppIdleWhitelist(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "shouldWhitelist"    # Z

    .line 4768
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4770
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4771
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-ne v1, p2, :cond_16

    .line 4773
    monitor-exit v0

    return-void

    .line 4776
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_40

    .line 4778
    .local v1, "token":J
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->appIdleWlChanged(IZ)V

    .line 4779
    if-eqz p2, :cond_28

    .line 4780
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2d

    .line 4782
    :cond_28
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4784
    :goto_2d
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 4785
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_3a

    .line 4787
    :try_start_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4788
    nop

    .line 4789
    .end local v1    # "token":J
    monitor-exit v0

    .line 4790
    return-void

    .line 4787
    .restart local v1    # "token":J
    :catchall_3a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4788
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "uid":I
    .end local p2    # "shouldWhitelist":Z
    throw v3

    .line 4789
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "shouldWhitelist":Z
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_40

    throw v1
.end method

.method setDebugUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 4071
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->setDebugUid(I)V

    .line 4072
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 3348
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    const-string/jumbo v0, "setDeviceIdleMode"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3351
    :try_start_12
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_44

    .line 3352
    :try_start_15
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-ne v3, p1, :cond_1e

    .line 3353
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_41

    .line 3369
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3353
    return-void

    .line 3355
    :cond_1e
    :try_start_1e
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 3356
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkPolicyLogger;->deviceIdleModeEnabled(Z)V

    .line 3357
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v3, :cond_2c

    .line 3360
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleDeviceIdleModeChangedUL(Z)V

    .line 3362
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_41

    .line 3363
    if-eqz p1, :cond_36

    .line 3364
    :try_start_2f
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_3c

    .line 3366
    :cond_36
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_44

    .line 3369
    :goto_3c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3370
    nop

    .line 3371
    return-void

    .line 3362
    :catchall_41
    move-exception v3

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "enabled":Z
    :try_start_43
    throw v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 3369
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "enabled":Z
    :catchall_44
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3370
    throw v0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .registers 7
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 3080
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3084
    .local v0, "token":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_27

    .line 3085
    :try_start_10
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_24

    .line 3086
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 3087
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3088
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_21

    .line 3089
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_24

    .line 3091
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3092
    nop

    .line 3093
    return-void

    .line 3088
    :catchall_21
    move-exception v4

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "policies":[Landroid/net/NetworkPolicy;
    :try_start_23
    throw v4

    .line 3089
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "policies":[Landroid/net/NetworkPolicy;
    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_24

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "policies":[Landroid/net/NetworkPolicy;
    :try_start_26
    throw v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 3091
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "policies":[Landroid/net/NetworkPolicy;
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3092
    throw v2
.end method

.method public setRestrictBackground(Z)V
    .registers 10
    .param p1, "restrictBackground"    # Z

    .line 3235
    const-string/jumbo v0, "setRestrictBackground"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3237
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3239
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_47

    .line 3241
    .local v3, "token":J
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_41

    .line 3242
    :try_start_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(ZLjava/lang/String;)V

    .line 3243
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_3e

    .line 3245
    :try_start_35
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_47

    .line 3246
    nop

    .line 3248
    .end local v0    # "callingUid":I
    .end local v3    # "token":J
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3249
    nop

    .line 3250
    return-void

    .line 3243
    .restart local v0    # "callingUid":I
    .restart local v3    # "token":J
    :catchall_3e
    move-exception v6

    :try_start_3f
    monitor-exit v5
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    .end local v0    # "callingUid":I
    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "restrictBackground":Z
    :try_start_40
    throw v6
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 3245
    .restart local v0    # "callingUid":I
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "restrictBackground":Z
    :catchall_41
    move-exception v5

    :try_start_42
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3246
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "restrictBackground":Z
    throw v5
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_47

    .line 3248
    .end local v0    # "callingUid":I
    .end local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "restrictBackground":Z
    :catchall_47
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3249
    throw v0
.end method

.method public setSubscriptionOverride(III[IJLjava/lang/String;)V
    .registers 24
    .param p1, "subId"    # I
    .param p2, "overrideMask"    # I
    .param p3, "overrideValue"    # I
    .param p4, "networkTypes"    # [I
    .param p5, "expirationDurationMillis"    # J
    .param p7, "callingPackage"    # Ljava/lang/String;

    .line 3773
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-wide/from16 v3, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move/from16 v5, p1

    move-object/from16 v6, p7

    invoke-direct {v1, v5, v0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3775
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v0

    .line 3776
    .local v7, "allNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    .line 3777
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v8, v0

    .line 3780
    .local v8, "applicableNetworks":Landroid/util/IntArray;
    array-length v0, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_27
    if-ge v10, v0, :cond_55

    aget v11, v2, v10

    .line 3781
    .local v11, "networkType":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39

    .line 3782
    invoke-virtual {v8, v11}, Landroid/util/IntArray;->add(I)V

    goto :goto_52

    .line 3784
    :cond_39
    const-string v12, "NetworkPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setSubscriptionOverride removing invalid network type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    .end local v11    # "networkType":I
    :goto_52
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    .line 3790
    :cond_55
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3791
    :try_start_58
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_c6

    .line 3792
    .local v0, "plan":Landroid/telephony/SubscriptionPlan;
    const/4 v11, 0x1

    move/from16 v12, p2

    if-eq v12, v11, :cond_63

    if-eqz v0, :cond_be

    .line 3793
    :cond_63
    :try_start_63
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_be

    .line 3797
    .end local v0    # "plan":Landroid/telephony/SubscriptionPlan;
    monitor-exit v10
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_cb

    .line 3801
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "netpolicy_override_enabled"

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7b

    goto :goto_7c

    :cond_7b
    move v11, v9

    :goto_7c
    move v0, v11

    .line 3803
    .local v0, "overrideEnabled":Z
    if-nez v0, :cond_81

    if-nez p3, :cond_bd

    .line 3804
    :cond_81
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    .line 3805
    .local v10, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3806
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 3807
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 3808
    invoke-virtual {v8}, Landroid/util/IntArray;->toArray()[I

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 3809
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x10

    invoke-virtual {v11, v13, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3810
    const-wide/16 v14, 0x0

    cmp-long v11, v3, v14

    if-lez v11, :cond_bd

    .line 3811
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 3812
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v13, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v9, v11, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3816
    .end local v10    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_bd
    return-void

    .line 3794
    .local v0, "plan":Landroid/telephony/SubscriptionPlan;
    :cond_be
    :try_start_be
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v11, "Must provide valid SubscriptionPlan to enable overriding"

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "allNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v8    # "applicableNetworks":Landroid/util/IntArray;
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "subId":I
    .end local p2    # "overrideMask":I
    .end local p3    # "overrideValue":I
    .end local p4    # "networkTypes":[I
    .end local p5    # "expirationDurationMillis":J
    .end local p7    # "callingPackage":Ljava/lang/String;
    throw v9

    .line 3797
    .end local v0    # "plan":Landroid/telephony/SubscriptionPlan;
    .restart local v7    # "allNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v8    # "applicableNetworks":Landroid/util/IntArray;
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "subId":I
    .restart local p2    # "overrideMask":I
    .restart local p3    # "overrideValue":I
    .restart local p4    # "networkTypes":[I
    .restart local p5    # "expirationDurationMillis":J
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :catchall_c6
    move-exception v0

    move/from16 v12, p2

    :goto_c9
    monitor-exit v10
    :try_end_ca
    .catchall {:try_start_be .. :try_end_ca} :catchall_cb

    throw v0

    :catchall_cb
    move-exception v0

    goto :goto_c9
.end method

.method public setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    .registers 9
    .param p1, "subId"    # I
    .param p2, "plans"    # [Landroid/telephony/SubscriptionPlan;
    .param p3, "expirationDurationMillis"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 3700
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p5}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3701
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanValidity([Landroid/telephony/SubscriptionPlan;)V

    .line 3703
    array-length v0, p2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p2, v1

    .line 3704
    .local v2, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3703
    .end local v2    # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3707
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3709
    .local v0, "token":J
    :try_start_1a
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->setSubscriptionPlansInternal(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_22

    .line 3711
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3712
    nop

    .line 3713
    return-void

    .line 3711
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3712
    throw v2
.end method

.method setSubscriptionPlansOwner(ILjava/lang/String;)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3755
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sub_plan_owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    return-void
.end method

.method public setUidPolicy(II)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2867
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2869
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2872
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2873
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_34

    .line 2875
    .local v1, "token":J
    :try_start_16
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 2876
    .local v3, "oldPolicy":I
    if-eq v3, p2, :cond_28

    .line 2877
    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2878
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2e

    .line 2881
    .end local v3    # "oldPolicy":I
    :cond_28
    :try_start_28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2882
    nop

    .line 2883
    .end local v1    # "token":J
    monitor-exit v0

    .line 2884
    return-void

    .line 2881
    .restart local v1    # "token":J
    :catchall_2e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2882
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "uid":I
    .end local p2    # "policy":I
    throw v3

    .line 2883
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "policy":I
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_34

    throw v1

    .line 2870
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWifiMeteredOverride(Ljava/lang/String;I)V
    .registers 10
    .param p1, "networkId"    # Ljava/lang/String;
    .param p2, "meteredOverride"    # I

    .line 3375
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3378
    .local v0, "token":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 3379
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 3380
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 3381
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 3382
    iput p2, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 3383
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_40

    .line 3385
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3a
    goto :goto_1f

    .line 3387
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3388
    nop

    .line 3389
    return-void

    .line 3387
    :catchall_40
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3388
    throw v2
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .registers 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 3194
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3198
    .local v0, "token":J
    const/16 v2, 0x23

    :try_start_f
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    .line 3200
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3201
    nop

    .line 3202
    return-void

    .line 3200
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3201
    throw v2
.end method

.method public systemReady(Ljava/util/concurrent/CountDownLatch;)V
    .registers 5
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 1115
    const-wide/16 v0, 0x1e

    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1118
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->start()V

    .line 1122
    nop

    .line 1123
    return-void

    .line 1116
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service NetworkPolicy init timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    throw v0
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_19} :catch_19

    .line 1119
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catch_19
    move-exception v0

    .line 1120
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1121
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service NetworkPolicy init interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 3071
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 3075
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3076
    return-void
.end method

.method updateNetworkEnabledNL()V
    .registers 21

    .line 2006
    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_e

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_e
    const-wide/32 v7, 0x200000

    const-string/jumbo v0, "updateNetworkEnabledNL"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2012
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v9

    .line 2014
    .local v9, "startTime":J
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move v12, v0

    .local v12, "i":I
    :goto_26
    const/4 v13, 0x0

    if-ltz v12, :cond_93

    .line 2015
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/net/NetworkPolicy;

    .line 2017
    .local v14, "policy":Landroid/net/NetworkPolicy;
    iget-wide v0, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8a

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_8a

    .line 2022
    :cond_41
    nop

    .line 2023
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/util/Pair;

    .line 2024
    .local v15, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    .line 2025
    .local v16, "start":J
    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v18

    .line 2026
    .local v18, "end":J
    iget-object v1, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide/from16 v2, v16

    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    .line 2029
    .local v0, "totalBytes":J
    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-wide v2, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v16

    if-gez v2, :cond_7f

    move v2, v11

    goto :goto_80

    :cond_7f
    move v2, v13

    .line 2031
    .local v2, "overLimitWithoutSnooze":Z
    :goto_80
    if-nez v2, :cond_83

    move v13, v11

    :cond_83
    move v3, v13

    .line 2033
    .local v3, "networkEnabled":Z
    iget-object v4, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_90

    .line 2018
    .end local v0    # "totalBytes":J
    .end local v2    # "overLimitWithoutSnooze":Z
    .end local v3    # "networkEnabled":Z
    .end local v15    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v16    # "start":J
    .end local v18    # "end":J
    :cond_8a
    :goto_8a
    iget-object v0, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    .line 2019
    nop

    .line 2014
    .end local v14    # "policy":Landroid/net/NetworkPolicy;
    :goto_90
    add-int/lit8 v12, v12, -0x1

    goto :goto_26

    .line 2036
    .end local v12    # "i":I
    :cond_93
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, v13, v9, v10}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 2037
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2038
    return-void
.end method

.method updateNetworkRulesNL()V
    .registers 46

    .line 2163
    move-object/from16 v7, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_e

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNetworkRulesNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_e
    const-string/jumbo v0, "updateNetworkRulesNL"

    const-wide/32 v8, 0x200000

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2166
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkStateSnapshots()Ljava/util/List;

    move-result-object v10

    .line 2170
    .local v10, "snapshots":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkStateSnapshot;>;"
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2171
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v0

    .line 2172
    .local v11, "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkStateSnapshot;Landroid/net/NetworkIdentity;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStateSnapshot;

    .line 2173
    .local v1, "snapshot":Landroid/net/NetworkStateSnapshot;
    invoke-virtual {v1}, Landroid/net/NetworkStateSnapshot;->getSubId()I

    move-result v2

    .line 2174
    .local v2, "subId":I
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Network;->getNetId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2177
    new-instance v3, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v3}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 2178
    invoke-virtual {v3, v1}, Landroid/net/NetworkIdentity$Builder;->setNetworkStateSnapshot(Landroid/net/NetworkStateSnapshot;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v3

    .line 2179
    .local v3, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v11, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    .end local v1    # "snapshot":Landroid/net/NetworkStateSnapshot;
    .end local v2    # "subId":I
    .end local v3    # "ident":Landroid/net/NetworkIdentity;
    goto :goto_2c

    .line 2182
    :cond_5f
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v0

    .line 2183
    .local v13, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 2187
    .local v0, "lowestRule":J
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v2

    .line 2188
    .local v14, "matchingIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v12

    move-wide v15, v0

    move v0, v2

    .local v0, "i":I
    .local v15, "lowestRule":J
    :goto_79
    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const-wide/16 v5, 0x1

    if-ltz v0, :cond_1bb

    .line 2189
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 2192
    .local v3, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {v14}, Landroid/util/ArraySet;->clear()V

    .line 2193
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v12

    .local v1, "j":I
    :goto_92
    if-ltz v1, :cond_ae

    .line 2194
    iget-object v2, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkIdentity;

    invoke-virtual {v2, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 2195
    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStateSnapshot;

    invoke-static {v14, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkStateSnapshot;)V

    .line 2193
    :cond_ab
    add-int/lit8 v1, v1, -0x1

    goto :goto_92

    .line 2199
    .end local v1    # "j":I
    :cond_ae
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v1, :cond_d4

    .line 2200
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Applying "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to ifaces "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    :cond_d4
    iget-wide v1, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_dc

    move v1, v12

    goto :goto_de

    :cond_dc
    move/from16 v1, v17

    :goto_de
    move/from16 v20, v1

    .line 2204
    .local v20, "hasWarning":Z
    iget-wide v1, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_e8

    move/from16 v17, v12

    .line 2205
    .local v17, "hasLimit":Z
    :cond_e8
    const-wide v18, 0x7fffffffffffffffL

    .line 2206
    .local v18, "limitBytes":J
    const-wide v21, 0x7fffffffffffffffL

    .line 2207
    .local v21, "warningBytes":J
    if-nez v17, :cond_fb

    if-eqz v20, :cond_f7

    goto :goto_fb

    :cond_f7
    move-object v8, v3

    move-object/from16 v28, v13

    goto :goto_15e

    :cond_fb
    :goto_fb
    invoke-virtual {v3}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 2208
    nop

    .line 2209
    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/util/Pair;

    .line 2210
    .local v4, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v23

    .line 2211
    .local v23, "start":J
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v25

    .line 2212
    .local v25, "end":J
    iget-object v2, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v1, p0

    move-object v8, v3

    move-object v9, v4

    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    .end local v4    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v8, "policy":Landroid/net/NetworkPolicy;
    .local v9, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    move-wide/from16 v3, v23

    move-object/from16 v28, v13

    move-wide v12, v5

    .end local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v28, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-wide/from16 v5, v25

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    .line 2215
    .local v1, "totalBytes":J
    if-eqz v17, :cond_145

    iget-wide v3, v8, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v3, v3, v23

    if-gez v3, :cond_145

    .line 2219
    iget-wide v3, v8, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long/2addr v3, v1

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 2224
    :cond_145
    if-eqz v20, :cond_15e

    iget-wide v3, v8, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v3, v3, v23

    if-gez v3, :cond_15e

    .line 2225
    invoke-virtual {v8, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v3

    if-nez v3, :cond_15e

    .line 2226
    iget-wide v3, v8, Landroid/net/NetworkPolicy;->warningBytes:J

    sub-long/2addr v3, v1

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    goto :goto_15e

    .line 2207
    .end local v1    # "totalBytes":J
    .end local v8    # "policy":Landroid/net/NetworkPolicy;
    .end local v9    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v23    # "start":J
    .end local v25    # "end":J
    .end local v28    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "policy":Landroid/net/NetworkPolicy;
    .restart local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_15b
    move-object v8, v3

    move-object/from16 v28, v13

    .line 2230
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    .end local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "policy":Landroid/net/NetworkPolicy;
    .restart local v28    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_15e
    :goto_15e
    if-nez v20, :cond_16a

    if-nez v17, :cond_16a

    iget-boolean v1, v8, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v1, :cond_167

    goto :goto_16a

    :cond_167
    move-object/from16 v5, v28

    goto :goto_19c

    .line 2231
    :cond_16a
    :goto_16a
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_179

    .line 2233
    const-string v1, "NetworkPolicy"

    const-string/jumbo v3, "shared quota unsupported; generating rule for each iface"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    :cond_179
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v2

    move v9, v1

    .local v9, "j":I
    :goto_17f
    if-ltz v9, :cond_19a

    .line 2242
    invoke-virtual {v14, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    .line 2243
    .local v12, "iface":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object v2, v12

    move-wide/from16 v3, v21

    move-wide/from16 v5, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotasAsync(Ljava/lang/String;JJ)V

    .line 2244
    move-object/from16 v5, v28

    .end local v28    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v5, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2241
    .end local v12    # "iface":Ljava/lang/String;
    add-int/lit8 v9, v9, -0x1

    goto :goto_17f

    .end local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v28    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_19a
    move-object/from16 v5, v28

    .line 2249
    .end local v9    # "j":I
    .end local v28    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_19c
    if-eqz v20, :cond_1a7

    iget-wide v1, v8, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v15

    if-gez v1, :cond_1a7

    .line 2250
    iget-wide v1, v8, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide v15, v1

    .line 2252
    :cond_1a7
    if-eqz v17, :cond_1b2

    iget-wide v1, v8, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v15

    if-gez v1, :cond_1b2

    .line 2253
    iget-wide v1, v8, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide v15, v1

    .line 2188
    .end local v8    # "policy":Landroid/net/NetworkPolicy;
    .end local v17    # "hasLimit":Z
    .end local v18    # "limitBytes":J
    .end local v20    # "hasWarning":Z
    .end local v21    # "warningBytes":J
    :cond_1b2
    add-int/lit8 v0, v0, -0x1

    move-object v13, v5

    const-wide/32 v8, 0x200000

    const/4 v12, 0x1

    goto/16 :goto_79

    .end local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1bb
    move-wide/from16 v43, v5

    move-object v5, v13

    move-wide/from16 v12, v43

    .line 2259
    .end local v0    # "i":I
    .end local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_220

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/net/NetworkStateSnapshot;

    .line 2260
    .local v8, "snapshot":Landroid/net/NetworkStateSnapshot;
    invoke-virtual {v8}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_21b

    .line 2261
    invoke-virtual {v14}, Landroid/util/ArraySet;->clear()V

    .line 2262
    invoke-static {v14, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkStateSnapshot;)V

    .line 2263
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v9, v1

    .restart local v9    # "j":I
    :goto_1ea
    if-ltz v9, :cond_219

    .line 2264
    invoke-virtual {v14, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 2265
    .local v6, "iface":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_211

    .line 2266
    const-wide v3, 0x7fffffffffffffffL

    const-wide v20, 0x7fffffffffffffffL

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v12, v5

    move-object v13, v6

    .end local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "iface":Ljava/lang/String;
    .local v12, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v13, "iface":Ljava/lang/String;
    move-wide/from16 v5, v20

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotasAsync(Ljava/lang/String;JJ)V

    .line 2267
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_213

    .line 2265
    .end local v12    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "iface":Ljava/lang/String;
    .restart local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "iface":Ljava/lang/String;
    :cond_211
    move-object v12, v5

    move-object v13, v6

    .line 2263
    .end local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "iface":Ljava/lang/String;
    .restart local v12    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_213
    add-int/lit8 v9, v9, -0x1

    move-object v5, v12

    const-wide/16 v12, 0x1

    goto :goto_1ea

    .end local v12    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_219
    move-object v12, v5

    .end local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_21c

    .line 2260
    .end local v9    # "j":I
    .end local v12    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_21b
    move-object v12, v5

    .line 2271
    .end local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "snapshot":Landroid/net/NetworkStateSnapshot;
    .restart local v12    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_21c
    move-object v5, v12

    const-wide/16 v12, 0x1

    goto :goto_1c4

    .line 2274
    .end local v12    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_220
    move-object v12, v5

    .end local v5    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2275
    :try_start_224
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_22c
    if-ltz v0, :cond_242

    .line 2276
    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2277
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23f

    .line 2278
    invoke-direct {v7, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuotasAsync(Ljava/lang/String;)V

    .line 2275
    .end local v2    # "iface":Ljava/lang/String;
    :cond_23f
    add-int/lit8 v0, v0, -0x1

    goto :goto_22c

    .line 2281
    .end local v0    # "i":I
    :cond_242
    iput-object v12, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 2282
    monitor-exit v1
    :try_end_245
    .catchall {:try_start_224 .. :try_end_245} :catchall_3c0

    .line 2284
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2285
    .local v8, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v0, "netpolicy_quota_enabled"

    const/4 v1, 0x1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_257

    move/from16 v17, v1

    :cond_257
    move/from16 v9, v17

    .line 2287
    .local v9, "quotaEnabled":Z
    const-string/jumbo v0, "netpolicy_quota_unlimited"

    sget-wide v1, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    invoke-static {v8, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v20

    .line 2289
    .local v20, "quotaUnlimited":J
    const-string/jumbo v0, "netpolicy_quota_limited"

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v13

    .line 2293
    .local v13, "quotaLimited":F
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 2294
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_275
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_388

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/net/NetworkStateSnapshot;

    .line 2295
    .local v17, "snapshot":Landroid/net/NetworkStateSnapshot;
    if-nez v9, :cond_286

    goto :goto_275

    .line 2296
    :cond_286
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_28d

    goto :goto_275

    .line 2297
    :cond_28d
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v5

    .line 2298
    .local v5, "subId":I
    const/4 v1, -0x1

    if-ne v5, v1, :cond_299

    goto :goto_275

    .line 2299
    :cond_299
    invoke-direct {v7, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v24

    .line 2300
    .local v24, "plan":Landroid/telephony/SubscriptionPlan;
    if-nez v24, :cond_2a0

    goto :goto_275

    .line 2303
    :cond_2a0
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v25

    .line 2304
    .local v25, "limitBytes":J
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2bc

    .line 2306
    const-wide/16 v1, 0x0

    move-object/from16 v22, v0

    move/from16 v37, v5

    move-object/from16 v35, v8

    move/from16 v36, v9

    .local v1, "quotaBytes":J
    goto/16 :goto_379

    .line 2307
    .end local v1    # "quotaBytes":J
    :cond_2bc
    cmp-long v1, v25, v18

    if-nez v1, :cond_2cc

    .line 2308
    const-wide/16 v1, -0x1

    move-object/from16 v22, v0

    move/from16 v37, v5

    move-object/from16 v35, v8

    move/from16 v36, v9

    .restart local v1    # "quotaBytes":J
    goto/16 :goto_379

    .line 2309
    .end local v1    # "quotaBytes":J
    :cond_2cc
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v25, v1

    if-nez v1, :cond_2e1

    .line 2311
    move-wide/from16 v1, v20

    move-object/from16 v22, v0

    move/from16 v37, v5

    move-object/from16 v35, v8

    move/from16 v36, v9

    .restart local v1    # "quotaBytes":J
    goto/16 :goto_379

    .line 2314
    .end local v1    # "quotaBytes":J
    :cond_2e1
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Landroid/util/Range;

    .line 2315
    .local v27, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    invoke-virtual/range {v27 .. v27}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v28

    .line 2316
    .local v28, "start":J
    invoke-virtual/range {v27 .. v27}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v30

    .line 2317
    .local v30, "end":J
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v6

    .line 2318
    .local v6, "now":Ljava/time/Instant;
    invoke-virtual/range {v27 .. v27}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 2319
    invoke-virtual {v1, v2}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 2320
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v32

    .line 2321
    .local v32, "startOfDay":J
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStateSnapshot;->getSubscriberId()Ljava/lang/String;

    move-result-object v34

    .line 2322
    .local v34, "subscriberId":Ljava/lang/String;
    const-wide/16 v3, 0x0

    if-nez v34, :cond_33d

    .line 2323
    move/from16 v37, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v8

    move/from16 v36, v9

    move-wide v8, v3

    goto :goto_354

    .line 2324
    :cond_33d
    invoke-static/range {v34 .. v34}, Lcom/android/server/net/NetworkPolicyManagerService;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 2323
    move-object/from16 v1, p0

    move-object/from16 v35, v8

    move/from16 v36, v9

    move-wide v8, v3

    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "quotaEnabled":Z
    .local v35, "cr":Landroid/content/ContentResolver;
    .local v36, "quotaEnabled":Z
    move-wide/from16 v3, v28

    move/from16 v37, v5

    move-object/from16 v38, v6

    .end local v5    # "subId":I
    .end local v6    # "now":Ljava/time/Instant;
    .local v37, "subId":I
    .local v38, "now":Ljava/time/Instant;
    move-wide/from16 v5, v32

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v3

    :goto_354
    move-wide v1, v3

    .line 2325
    .local v1, "totalBytes":J
    sub-long v3, v25, v1

    .line 2327
    .local v3, "remainingBytes":J
    nop

    .line 2328
    invoke-virtual/range {v38 .. v38}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    sub-long v5, v30, v5

    const-wide/16 v8, 0x1

    sub-long/2addr v5, v8

    move-object/from16 v22, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v39

    div-long v5, v5, v39

    add-long/2addr v5, v8

    .line 2330
    .local v5, "remainingDays":J
    div-long v8, v3, v5

    long-to-float v0, v8

    mul-float/2addr v0, v13

    float-to-long v8, v0

    move-wide/from16 v41, v1

    const-wide/16 v0, 0x0

    .end local v1    # "totalBytes":J
    .local v41, "totalBytes":J
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 2333
    .end local v3    # "remainingBytes":J
    .end local v5    # "remainingDays":J
    .end local v27    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    .end local v28    # "start":J
    .end local v30    # "end":J
    .end local v32    # "startOfDay":J
    .end local v34    # "subscriberId":Ljava/lang/String;
    .end local v38    # "now":Ljava/time/Instant;
    .end local v41    # "totalBytes":J
    .local v1, "quotaBytes":J
    :goto_379
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    move/from16 v3, v37

    .end local v37    # "subId":I
    .local v3, "subId":I
    invoke-virtual {v0, v3, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2334
    .end local v1    # "quotaBytes":J
    .end local v3    # "subId":I
    .end local v17    # "snapshot":Landroid/net/NetworkStateSnapshot;
    .end local v24    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v25    # "limitBytes":J
    move-object/from16 v0, v22

    move-object/from16 v8, v35

    move/from16 v9, v36

    goto/16 :goto_275

    .line 2337
    .end local v35    # "cr":Landroid/content/ContentResolver;
    .end local v36    # "quotaEnabled":Z
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    .restart local v9    # "quotaEnabled":Z
    :cond_388
    move-object/from16 v35, v8

    move/from16 v36, v9

    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "quotaEnabled":Z
    .restart local v35    # "cr":Landroid/content/ContentResolver;
    .restart local v36    # "quotaEnabled":Z
    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2338
    :try_start_38f
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2339
    .local v0, "meteredIfaces":[Ljava/lang/String;
    monitor-exit v2
    :try_end_39e
    .catchall {:try_start_38f .. :try_end_39e} :catchall_3bd

    .line 2340
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2342
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2344
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2345
    return-void

    .line 2339
    .end local v0    # "meteredIfaces":[Ljava/lang/String;
    :catchall_3bd
    move-exception v0

    :try_start_3be
    monitor-exit v2
    :try_end_3bf
    .catchall {:try_start_3be .. :try_end_3bf} :catchall_3bd

    throw v0

    .line 2282
    .end local v13    # "quotaLimited":F
    .end local v20    # "quotaUnlimited":J
    .end local v35    # "cr":Landroid/content/ContentResolver;
    .end local v36    # "quotaEnabled":Z
    :catchall_3c0
    move-exception v0

    :try_start_3c1
    monitor-exit v1
    :try_end_3c2
    .catchall {:try_start_3c1 .. :try_end_3c2} :catchall_3c0

    throw v0
.end method

.method updateNetworks()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1807
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    .line 1808
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1809
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1812
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1813
    return-void
.end method

.method updateNotificationsNL()V
    .registers 7

    .line 1425
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNotificationsNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_c
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateNotificationsNL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1429
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1430
    .local v2, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 1524
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_27
    if-ltz v3, :cond_3d

    .line 1525
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1526
    .local v4, "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 1527
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V

    .line 1524
    .end local v4    # "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    :cond_3a
    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    .line 1531
    .end local v3    # "i":I
    :cond_3d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1532
    return-void
.end method

.method updateRestrictBackgroundByLowPowerModeUL(Landroid/os/PowerSaveState;)V
    .registers 6
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .line 5907
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v0, v1, :cond_7

    .line 5909
    return-void

    .line 5911
    :cond_7
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 5913
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 5916
    .local v0, "restrictBackground":Z
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5918
    .local v1, "localRestrictBgChangedInBsm":Z
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    if-eqz v2, :cond_1d

    .line 5921
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    xor-int/lit8 v2, v2, 0x1

    .line 5922
    .local v2, "shouldInvokeRestrictBackground":Z
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5923
    const/4 v1, 0x0

    goto :goto_23

    .line 5926
    .end local v2    # "shouldInvokeRestrictBackground":Z
    :cond_1d
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    xor-int/lit8 v2, v2, 0x1

    .line 5927
    .restart local v2    # "shouldInvokeRestrictBackground":Z
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5930
    :goto_23
    if-eqz v2, :cond_2a

    .line 5931
    const-string v3, "low_power"

    invoke-direct {p0, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(ZLjava/lang/String;)V

    .line 5935
    :cond_2a
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5936
    return-void
.end method

.method updateRestrictedModeAllowlistUL()V
    .registers 3

    .line 4218
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4219
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    const-string/jumbo v1, "updateRestrictedModeAllowlist"

    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    .line 4232
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_1a

    .line 4234
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    .line 4236
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 4237
    return-void
.end method

.method updateRestrictedModeForUidUL(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 4243
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateBlockedReasonsForRestrictedModeUL(I)I

    move-result v0

    .line 4247
    .local v0, "effectiveBlockedReasons":I
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    if-eqz v1, :cond_10

    .line 4250
    const/4 v1, 0x4

    .line 4251
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictedModeFirewallRule(I)I

    move-result v2

    .line 4250
    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 4253
    :cond_10
    return-void
.end method

.method updateRuleForAppIdleUL(II)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "uidProcessState"    # I

    .line 4513
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForDenylistRulesUL(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4515
    :cond_7
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRuleForAppIdleUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4519
    :cond_27
    :try_start_27
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 4520
    .local v2, "appId":I
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_8b

    const-string v4, "NetworkPolicy"

    const/4 v5, 0x2

    if-nez v3, :cond_61

    :try_start_36
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(II)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 4521
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-nez v3, :cond_61

    .line 4522
    invoke-direct {p0, v5, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 4523
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_86

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRuleForAppIdleUL DENY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 4525
    :cond_61
    const/4 v3, 0x0

    invoke-direct {p0, v5, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 4526
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_86

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRuleForAppIdleUL "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to DEFAULT"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_36 .. :try_end_86} :catchall_8b

    .line 4529
    .end local v2    # "appId":I
    :cond_86
    :goto_86
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4530
    nop

    .line 4531
    return-void

    .line 4529
    :catchall_8b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4530
    throw v2
.end method

.method updateRuleForDeviceIdleUL(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 4343
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 4344
    return-void
.end method

.method updateRuleForLowPowerStandbyUL(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 4414
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4415
    return-void

    .line 4418
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getEffectiveBlockedReasons(I)I

    move-result v0

    .line 4419
    .local v0, "effectiveBlockedReasons":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_22

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_22

    .line 4421
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4422
    invoke-direct {p0, v2, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    goto :goto_2b

    .line 4424
    :cond_22
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4425
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 4427
    :goto_2b
    return-void
.end method

.method updateRuleForRestrictPowerUL(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 4327
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 4328
    return-void
.end method

.method updateRulesForAppIdleUL()V
    .registers 15

    .line 4483
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForAppIdleUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4485
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 4486
    .local v2, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 4489
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 4490
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "ui":I
    :goto_1a
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ltz v4, :cond_53

    .line 4491
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 4492
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v8

    .line 4493
    .local v8, "idleUids":[I
    array-length v9, v8

    move v10, v6

    :goto_2e
    if-ge v10, v9, :cond_50

    aget v11, v8, v10

    .line 4494
    .local v11, "uid":I
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    invoke-virtual {v12, v13, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    if-nez v12, :cond_4d

    .line 4498
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    move-result v12

    if-eqz v12, :cond_4d

    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v12

    if-nez v12, :cond_4d

    .line 4499
    invoke-virtual {v2, v11, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 4493
    .end local v11    # "uid":I
    :cond_4d
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 4490
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "idleUids":[I
    :cond_50
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 4505
    .end local v4    # "ui":I
    :cond_53
    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_56
    .catchall {:try_start_9 .. :try_end_56} :catchall_5b

    .line 4507
    .end local v2    # "uidRules":Landroid/util/SparseIntArray;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4508
    nop

    .line 4509
    return-void

    .line 4507
    :catchall_5b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4508
    throw v2
.end method

.method updateRulesForDeviceIdleUL()V
    .registers 6

    .line 4332
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForDeviceIdleUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4334
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 4337
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4338
    nop

    .line 4339
    return-void

    .line 4337
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4338
    throw v2
.end method

.method updateRulesForLowPowerStandbyUL()V
    .registers 9

    .line 4390
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForLowPowerStandbyUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4392
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_3f

    .line 4393
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 4394
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_1b
    if-ltz v2, :cond_39

    .line 4395
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 4396
    .local v5, "uid":I
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getEffectiveBlockedReasons(I)I

    move-result v6

    .line 4397
    .local v6, "effectiveBlockedReasons":I
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    move-result v7

    if-eqz v7, :cond_36

    and-int/lit8 v7, v6, 0x20

    if-nez v7, :cond_36

    .line 4399
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 4394
    .end local v5    # "uid":I
    .end local v6    # "effectiveBlockedReasons":I
    :cond_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 4402
    .end local v2    # "i":I
    :cond_39
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    goto :goto_44

    .line 4405
    :cond_3f
    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_44
    .catchall {:try_start_9 .. :try_end_44} :catchall_49

    .line 4408
    :goto_44
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4409
    nop

    .line 4410
    return-void

    .line 4408
    :catchall_49
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4409
    throw v2
.end method

.method updateRulesForPowerSaveUL()V
    .registers 6

    .line 4316
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForPowerSaveUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4318
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 4321
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4322
    nop

    .line 4323
    return-void

    .line 4321
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4322
    throw v2
.end method

.method updateSubscriptions()V
    .registers 18

    .line 2103
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_e

    const-string v0, "NetworkPolicy"

    const-string/jumbo v2, "updateSubscriptions()"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :cond_e
    const-string/jumbo v0, "updateSubscriptions"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2106
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 2107
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/telephony/SubscriptionManager;

    .line 2108
    .local v5, "sm":Landroid/telephony/SubscriptionManager;
    nop

    .line 2109
    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 2108
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 2111
    .local v6, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 2112
    .local v7, "mergedSubscriberIdsList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v0, v8}, Landroid/util/SparseArray;-><init>(I)V

    move-object v8, v0

    .line 2113
    .local v8, "subIdToSubscriberId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v9, v0

    .line 2115
    .local v9, "subIdToCarrierConfig":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/PersistableBundle;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    .line 2116
    .local v10, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    .line 2117
    .local v11, "subId":I
    invoke-virtual {v4, v11}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 2118
    .local v12, "tmSub":Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v13

    .line 2119
    .local v13, "subscriberId":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_76

    .line 2120
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v14

    invoke-virtual {v8, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_92

    .line 2122
    :cond_76
    const-string v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing subscriberId for subId "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :goto_92
    nop

    .line 2126
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getMergedImsisFromGroup()[Ljava/lang/String;

    move-result-object v2

    .line 2125
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2127
    .local v2, "mergedSubscriberId":[Ljava/lang/String;
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2129
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, v11}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 2130
    .local v3, "config":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_ac

    .line 2131
    invoke-virtual {v9, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v16, v0

    goto :goto_c6

    .line 2133
    :cond_ac
    const-string v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "Missing CarrierConfig for subId "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    .end local v2    # "mergedSubscriberId":[Ljava/lang/String;
    .end local v3    # "config":Landroid/os/PersistableBundle;
    .end local v10    # "sub":Landroid/telephony/SubscriptionInfo;
    .end local v11    # "subId":I
    .end local v12    # "tmSub":Landroid/telephony/TelephonyManager;
    .end local v13    # "subscriberId":Ljava/lang/String;
    :goto_c6
    move-object/from16 v0, v16

    const-wide/32 v2, 0x200000

    goto :goto_50

    .line 2137
    :cond_cc
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2138
    :try_start_cf
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d5
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_ed

    .line 2140
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 2141
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2140
    invoke-virtual {v3, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2139
    add-int/lit8 v0, v0, 0x1

    goto :goto_d5

    .line 2144
    .end local v0    # "i":I
    :cond_ed
    iput-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    .line 2146
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2147
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_f5
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_10d

    .line 2148
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 2149
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PersistableBundle;

    .line 2148
    invoke-virtual {v3, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2147
    add-int/lit8 v0, v0, 0x1

    goto :goto_f5

    .line 2151
    .end local v0    # "i":I
    :cond_10d
    monitor-exit v2
    :try_end_10e
    .catchall {:try_start_cf .. :try_end_10e} :catchall_115

    .line 2153
    const-wide/32 v2, 0x200000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2154
    return-void

    .line 2151
    :catchall_115
    move-exception v0

    :try_start_116
    monitor-exit v2
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    throw v0
.end method

.method writePolicyAL()V
    .registers 18

    .line 2774
    move-object/from16 v1, p0

    const-string/jumbo v0, "revoked-restrict-background"

    const-string/jumbo v2, "uid-policy"

    const-string/jumbo v3, "network-policy"

    const-string/jumbo v4, "whitelist"

    const-string/jumbo v5, "policy-list"

    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v6, :cond_1d

    const-string v6, "NetworkPolicy"

    const-string/jumbo v7, "writePolicyAL()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :cond_1d
    const/4 v6, 0x0

    .line 2778
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1e
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    move-object v6, v7

    .line 2780
    invoke-static {v6}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v7

    .line 2781
    .local v7, "out":Landroid/util/TypedXmlSerializer;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2783
    invoke-interface {v7, v10, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2784
    const-string/jumbo v9, "version"

    const/16 v11, 0xe

    invoke-static {v7, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2785
    const-string/jumbo v9, "restrictBackground"

    iget-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v7, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2788
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_46
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v9, v11, :cond_12c

    .line 2789
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    .line 2790
    .local v11, "policy":Landroid/net/NetworkPolicy;
    iget-object v12, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2791
    .local v12, "template":Landroid/net/NetworkTemplate;
    invoke-static {v12}, Landroid/net/NetworkPolicy;->isTemplatePersistable(Landroid/net/NetworkTemplate;)Z

    move-result v13

    if-nez v13, :cond_60

    goto/16 :goto_127

    .line 2793
    :cond_60
    invoke-interface {v7, v10, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2794
    const-string/jumbo v13, "networkTemplate"

    invoke-virtual {v12}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v14

    invoke-static {v7, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2795
    invoke-virtual {v12}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_79

    move-object v13, v10

    goto :goto_87

    .line 2796
    :cond_79
    invoke-virtual {v12}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    :goto_87
    nop

    .line 2797
    .local v13, "subscriberId":Ljava/lang/String;
    if-eqz v13, :cond_90

    .line 2798
    const-string/jumbo v14, "subscriberId"

    invoke-interface {v7, v10, v14, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2800
    :cond_90
    invoke-virtual {v12}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9c

    .line 2801
    move v14, v8

    goto :goto_9d

    .line 2802
    :cond_9c
    const/4 v14, 0x0

    :goto_9d
    nop

    .line 2803
    .local v14, "subscriberIdMatchRule":I
    const-string/jumbo v15, "subscriberIdMatchRule"

    invoke-static {v7, v15, v14}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2804
    invoke-virtual {v12}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_c4

    .line 2805
    const-string/jumbo v15, "networkId"

    .line 2806
    invoke-virtual {v12}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    .line 2805
    invoke-interface {v7, v10, v15, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2808
    :cond_c4
    const-string/jumbo v8, "templateMetered"

    .line 2809
    invoke-virtual {v12}, Landroid/net/NetworkTemplate;->getMeteredness()I

    move-result v15

    .line 2808
    invoke-static {v7, v8, v15}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2810
    const-string v8, "cycleStart"

    iget-object v15, v11, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v15, v15, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2811
    invoke-static {v15}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v15

    .line 2810
    invoke-static {v7, v8, v15}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2812
    const-string v8, "cycleEnd"

    iget-object v15, v11, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v15, v15, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2813
    invoke-static {v15}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v15

    .line 2812
    invoke-static {v7, v8, v15}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2814
    const-string v8, "cyclePeriod"

    iget-object v15, v11, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v15, v15, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2815
    invoke-static {v15}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v15

    .line 2814
    invoke-static {v7, v8, v15}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2816
    const-string/jumbo v8, "warningBytes"

    move-object v15, v12

    move-object/from16 v16, v13

    .end local v12    # "template":Landroid/net/NetworkTemplate;
    .end local v13    # "subscriberId":Ljava/lang/String;
    .local v15, "template":Landroid/net/NetworkTemplate;
    .local v16, "subscriberId":Ljava/lang/String;
    iget-wide v12, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v7, v8, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2817
    const-string v8, "limitBytes"

    iget-wide v12, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v7, v8, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2818
    const-string v8, "lastWarningSnooze"

    iget-wide v12, v11, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v7, v8, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2819
    const-string v8, "lastLimitSnooze"

    iget-wide v12, v11, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v7, v8, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2820
    const-string/jumbo v8, "metered"

    iget-boolean v12, v11, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v7, v8, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2821
    const-string v8, "inferred"

    iget-boolean v12, v11, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v7, v8, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2822
    invoke-interface {v7, v10, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2788
    .end local v11    # "policy":Landroid/net/NetworkPolicy;
    .end local v14    # "subscriberIdMatchRule":I
    .end local v15    # "template":Landroid/net/NetworkTemplate;
    .end local v16    # "subscriberId":Ljava/lang/String;
    :goto_127
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x1

    goto/16 :goto_46

    .line 2826
    .end local v9    # "i":I
    :cond_12c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12d
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_133} :catch_187

    const-string/jumbo v9, "uid"

    if-ge v3, v8, :cond_159

    .line 2827
    :try_start_138
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2828
    .local v8, "uid":I
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    .line 2831
    .local v11, "policy":I
    if-nez v11, :cond_147

    goto :goto_156

    .line 2833
    :cond_147
    invoke-interface {v7, v10, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2834
    invoke-static {v7, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2835
    const-string/jumbo v9, "policy"

    invoke-static {v7, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2836
    invoke-interface {v7, v10, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2826
    .end local v8    # "uid":I
    .end local v11    # "policy":I
    :goto_156
    add-int/lit8 v3, v3, 0x1

    goto :goto_12d

    .line 2839
    .end local v3    # "i":I
    :cond_159
    invoke-interface {v7, v10, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2842
    invoke-interface {v7, v10, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2845
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 2846
    .local v2, "size":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_166
    if-ge v3, v2, :cond_17b

    .line 2847
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 2848
    .local v5, "uid":I
    invoke-interface {v7, v10, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2849
    invoke-static {v7, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2850
    invoke-interface {v7, v10, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2846
    nop

    .end local v5    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_166

    .line 2853
    .end local v3    # "i":I
    :cond_17b
    invoke-interface {v7, v10, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2855
    invoke-interface {v7}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 2857
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_186} :catch_187

    .line 2862
    .end local v2    # "size":I
    .end local v7    # "out":Landroid/util/TypedXmlSerializer;
    goto :goto_18f

    .line 2858
    :catch_187
    move-exception v0

    .line 2859
    .local v0, "e":Ljava/io/IOException;
    if-eqz v6, :cond_18f

    .line 2860
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2863
    .end local v0    # "e":Ljava/io/IOException;
    :cond_18f
    :goto_18f
    return-void
.end method
