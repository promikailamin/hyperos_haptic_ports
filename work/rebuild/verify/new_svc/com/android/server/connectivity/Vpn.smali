.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# static fields
.field public static final AUTOMATIC_KEEPALIVE_DELAY_SECONDS:I = 0x1e

.field public static final DATA_STALL_RECOVERY_DELAYS_MS:[J

.field static final DEFAULT_LONG_LIVED_TCP_CONNS_EXPENSIVE_TIMEOUT_SEC:I = 0x3c

.field static final DEFAULT_UDP_PORT_4500_NAT_TIMEOUT_SEC_INT:I = 0x12c

.field public static final IKEV2_VPN_RETRY_DELAYS_MS:[J

.field static final MAX_VPN_PROFILE_SIZE_BYTES:I = 0x20000

.field public static final PREFERRED_IKE_PROTOCOL_AUTO:I = 0x0

.field public static final PREFERRED_IKE_PROTOCOL_IPV4_UDP:I = 0x28

.field public static final PREFERRED_IKE_PROTOCOL_IPV6_ESP:I = 0x3d

.field public static final PREFERRED_IKE_PROTOCOL_IPV6_UDP:I = 0x3c

.field static final VPN_APP_EXCLUDED:Ljava/lang/String; = "VPNAPPEXCLUDED_"


# instance fields
.field protected mAlwaysOn:Z

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

.field public final mCachedCarrierConfigInfoPerSubId:Landroid/util/SparseArray;

.field public final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field protected mConfig:Lcom/android/internal/net/VpnConfig;

.field public mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field public final mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field final mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

.field public volatile mEnableTeardown:Z

.field public final mEventChanges:Landroid/util/LocalLog;

.field public final mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

.field protected mInterface:Ljava/lang/String;

.field public mIsPackageTargetingAtLeastQ:Z

.field public mLegacyState:I

.field protected mLockdown:Z

.field public mLockdownAllowlist:Ljava/util/List;

.field public final mLooper:Landroid/os/Looper;

.field public final mNetd:Landroid/net/INetd;

.field protected mNetworkAgent:Landroid/net/NetworkAgent;

.field protected mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public final mNetworkInfo:Landroid/net/NetworkInfo;

.field public final mNetworkProvider:Landroid/net/NetworkProvider;

.field public mObserver:Landroid/net/INetworkManagementEventObserver;

.field public mOwnerUID:I

.field protected mPackage:Ljava/lang/String;

.field public mStatusIntent:Landroid/app/PendingIntent;

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUserId:I

.field public final mUserIdContext:Landroid/content/Context;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVpnConnectivityMetrics:Lcom/android/server/connectivity/VpnConnectivityMetrics;

.field public final mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

.field protected mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;


# direct methods
.method public static synthetic $r8$lambda$73ewkCB2I8FM2sfP7wLNLasIr6E(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->lambda$clearVpnNetworkPreference$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ccw-M06Kt_L5iOLfmFoAk0C9rzg(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/util/Set;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->lambda$setVpnNetworkPreference$0(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsManager(Lcom/android/server/connectivity/Vpn;)Landroid/app/AppOpsManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCachedCarrierConfigInfoPerSubId(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mCachedCarrierConfigInfoPerSubId:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCarrierConfigManager(Lcom/android/server/connectivity/Vpn;)Landroid/telephony/CarrierConfigManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnection(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIkev2SessionCreator(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLooper(Lcom/android/server/connectivity/Vpn;)Landroid/os/Looper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetd(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetd;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/net/INetd;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOwnerUID(Lcom/android/server/connectivity/Vpn;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/server/connectivity/Vpn;)Landroid/telephony/TelephonyManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/connectivity/Vpn;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVpnConnectivityMetrics(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnConnectivityMetrics;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectivityMetrics:Lcom/android/server/connectivity/VpnConnectivityMetrics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$magentConnect(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->agentConnect(Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupVpnStateLocked(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->cleanupVpnStateLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearVpnNetworkPreference(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->clearVpnNetworkPreference(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoSetUnderlyingNetworks(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkAgent;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->doSetUnderlyingNetworks(Landroid/net/NetworkAgent;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetRedactedLinkProperties(Lcom/android/server/connectivity/Vpn;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getRedactedLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRedactedNetworkCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getRedactedNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misSettingsVpnLocked(Lcom/android/server/connectivity/Vpn;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mjniCheck(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mjniCreate(Lcom/android/server/connectivity/Vpn;I)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mjniGetName(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mjniSetAddresses(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmakeLinkProperties(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeVpnProfileStateLocked(Lcom/android/server/connectivity/Vpn;)Landroid/net/VpnProfileState;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mprepareStatusIntent(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendEventToVpnManagerApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetMtuAndMetrics(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setMtuAndMetrics(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUnderlyingNetworksAndMetrics(Lcom/android/server/connectivity/Vpn;[Landroid/net/Network;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworksAndMetrics([Landroid/net/Network;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVpnNetworkPreference(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/util/Set;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->setVpnNetworkPreference(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartNewNetworkAgent(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkAgent;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->startNewNetworkAgent(Landroid/net/NetworkAgent;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDATA_STALL_RECOVERY_DELAYS_MS()[J
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/connectivity/Vpn;->DATA_STALL_RECOVERY_DELAYS_MS:[J

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetIKEV2_VPN_RETRY_DELAYS_MS()[J
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smareLongLivedTcpConnectionsExpensive(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->areLongLivedTcpConnectionsExpensive(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smdoSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->doSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smdoSendNetworkCapabilities(Landroid/net/NetworkAgent;Landroid/net/NetworkCapabilities;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->doSendNetworkCapabilities(Landroid/net/NetworkAgent;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetAppUid(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetCellSubIdForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->getCellSubIdForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisIPv6Only(Ljava/util/List;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->isIPv6Only(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisVpnApp(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    .line 222
    new-array v0, v0, [J

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    const/16 v0, 0x8

    .line 277
    new-array v0, v0, [J

    fill-array-data v0, :array_32

    sput-object v0, Lcom/android/server/connectivity/Vpn;->DATA_STALL_RECOVERY_DELAYS_MS:[J

    return-void

    :array_12
    .array-data 8
        0x3e8
        0x7d0
        0x1388
        0x7530
        0xea60
        0x493e0
        0xdbba0
    .end array-data

    :array_32
    .array-data 8
        0x3e8
        0x1388
        0x7530
        0xea60
        0x1d4c0
        0x3a980
        0x75300
        0xea600
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;)V
    .registers 17

    .line 641
    new-instance v3, Lcom/android/server/connectivity/Vpn$DependenciesWithJniRegistration;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/android/server/connectivity/Vpn$DependenciesWithJniRegistration;-><init>(Lcom/android/server/connectivity/Vpn-IA;)V

    new-instance v8, Lcom/android/server/connectivity/Vpn$SystemServices;

    invoke-direct {v8, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    invoke-direct {v9}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;)V
    .registers 18

    .line 649
    new-instance v8, Lcom/android/server/connectivity/Vpn$SystemServices;

    invoke-direct {v8, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    invoke-direct {v9}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V
    .registers 12

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 403
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 410
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCachedCarrierConfigInfoPerSubId:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 426
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 433
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 449
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    .line 2224
    new-instance v1, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 658
    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 659
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 660
    const-class p7, Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/net/ConnectivityManager;

    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 661
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 662
    invoke-static {p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    .line 663
    const-class v1, Landroid/net/ConnectivityDiagnosticsManager;

    .line 664
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityDiagnosticsManager;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 665
    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 666
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 667
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 669
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 670
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/net/INetd;

    .line 671
    iput p6, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 672
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 673
    iput-object p8, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 674
    iput-object p9, p0, Lcom/android/server/connectivity/Vpn;->mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    .line 675
    const-class p5, Landroid/os/UserManager;

    invoke-virtual {p2, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/UserManager;

    iput-object p5, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    .line 677
    const-string p5, "[Legacy VPN]"

    iput-object p5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 678
    invoke-static {p2, p5, p6}, Lcom/android/server/connectivity/Vpn;->getAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p5

    iput p5, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 679
    iget-object p5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p5}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    .line 681
    invoke-virtual {p3, p6, p7}, Lcom/android/server/connectivity/Vpn$Dependencies;->makeVpnConnectivityMetrics(ILandroid/net/ConnectivityManager;)Lcom/android/server/connectivity/VpnConnectivityMetrics;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectivityMetrics:Lcom/android/server/connectivity/VpnConnectivityMetrics;

    .line 684
    :try_start_a5
    iget-object p3, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p4, p3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_aa} :catch_ab

    goto :goto_b3

    :catch_ab
    move-exception p3

    .line 686
    const-string p4, "Vpn"

    const-string p5, "Problem registering observer"

    invoke-static {p4, p5, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    :goto_b3
    new-instance p3, Landroid/net/NetworkProvider;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "VpnNetworkProvider:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p1, p4}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    .line 692
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p3}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    .line 693
    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 694
    new-instance p1, Landroid/net/NetworkInfo;

    const-string p2, "VPN"

    const-string p3, ""

    const/16 p4, 0x11

    invoke-direct {p1, p4, v0, p2, p3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 696
    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {p1}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 p2, 0x4

    .line 697
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    const/16 p2, 0xf

    .line 698
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    const/16 p2, 0x1c

    .line 699
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    new-instance p2, Landroid/net/VpnTransportInfo;

    const/4 p3, -0x1

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4, v0, v0}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;ZZ)V

    .line 700
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    .line 705
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 707
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->loadAlwaysOnPackage()V

    return-void
.end method

.method public static areLongLivedTcpConnectionsExpensive(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x3c

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static areLongLivedTcpConnectionsExpensive(Lcom/android/server/connectivity/Vpn$VpnRunner;)Z
    .registers 2

    .line 1706
    instance-of v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1708
    :cond_6
    check-cast p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    invoke-static {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->-$$Nest$mgetOrGuessKeepaliveDelaySeconds(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)I

    move-result p0

    .line 1709
    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->areLongLivedTcpConnectionsExpensive(I)Z

    move-result p0

    return p0
.end method

.method public static createUidRangeForUser(I)Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4723
    new-instance v0, Landroid/util/Range;

    const v1, 0x186a0

    mul-int v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static doSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V
    .registers 3

    .line 4575
    instance-of v0, p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    if-eqz v0, :cond_a

    .line 4576
    check-cast p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;->doSendLinkProperties(Landroid/net/LinkProperties;)V

    return-void

    .line 4578
    :cond_a
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public static doSendNetworkCapabilities(Landroid/net/NetworkAgent;Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 4587
    instance-of v0, p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    if-eqz v0, :cond_a

    .line 4588
    check-cast p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;->doSendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    return-void

    .line 4590
    :cond_a
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public static doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 1451
    const-string v0, "appops"

    .line 1452
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static getAppUid(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5

    .line 1469
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1470
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    return p0

    .line 1472
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1473
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1475
    :try_start_15
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_19} :catch_22
    .catchall {:try_start_15 .. :try_end_19} :catchall_1d

    .line 1479
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1480
    throw p0

    .line 1479
    :catch_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getCellSubIdForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 4787
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 4791
    :cond_c
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p0

    .line 4792
    instance-of v1, p0, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v1, :cond_1b

    .line 4793
    check-cast p0, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {p0}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result p0

    return p0

    :cond_1b
    return v0
.end method

.method public static isIPv6Only(Ljava/util/List;)Z
    .registers 6

    .line 2781
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 2782
    invoke-virtual {v3}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v4

    or-int/2addr v1, v4

    .line 2783
    invoke-virtual {v3}, Landroid/net/LinkAddress;->isIpv4()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_7

    :cond_1e
    if-eqz v1, :cond_24

    if-nez v2, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    return v0
.end method

.method public static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_d

    .line 1089
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static isVpnApp(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 950
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static isVpnPreConsented(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_17

    const/4 v0, 0x2

    if-eq p2, v0, :cond_12

    const/4 p0, 0x3

    if-eq p2, p0, :cond_b

    const/4 p0, 0x0

    return p0

    .line 1443
    :cond_b
    const-string p0, "[Legacy VPN]"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1441
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnProfilePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1439
    :cond_17
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isVpnProfilePreConsented(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1464
    const-string v0, "android:activate_platform_vpn"

    invoke-static {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1465
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public static isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1460
    const-string v0, "android:activate_vpn"

    invoke-static {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static uidRangesForUser(ILjava/util/Set;)Ljava/util/List;
    .registers 5

    .line 2005
    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object p0

    .line 2006
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2007
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 2008
    invoke-virtual {p0, v1}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2009
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .registers 4

    monitor-enter p0

    .line 2301
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    .line 2302
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 2304
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 2305
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/connectivity/Vpn;->doSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 2306
    monitor-exit p0

    return p1

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_4a

    .line 1970
    invoke-virtual {p0, p3, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, -0x1

    move p3, p2

    move p4, p3

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p3, p2, :cond_20

    goto :goto_34

    :cond_20
    add-int/lit8 v1, p4, 0x1

    if-eq v0, v1, :cond_35

    .line 1974
    new-instance v1, Landroid/util/Range;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {v1, p3, p4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_34
    move p3, v0

    :cond_35
    move p4, v0

    goto :goto_d

    :cond_37
    if-eq p3, p2, :cond_ab

    .line 1979
    new-instance p0, Landroid/util/Range;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4a
    if-eqz p4, :cond_ac

    .line 1982
    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object p3

    .line 1983
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1984
    invoke-virtual {p0, p4, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_62
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_77

    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 1988
    :cond_77
    new-instance p4, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    move v0, p2

    goto :goto_62

    .line 1992
    :cond_8d
    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt v0, p0, :cond_ab

    .line 1993
    new-instance p0, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_ab
    return-void

    .line 1997
    :cond_ac
    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final agentConnect()V
    .registers 2

    const/4 v0, 0x0

    .line 1627
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->agentConnect(Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)V

    return-void
.end method

.method public final agentConnect(Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)V
    .registers 14

    .line 1632
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    .line 1642
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    const/16 v1, 0xc

    .line 1644
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    const/4 v1, 0x2

    .line 1646
    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 1647
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v10, "agentConnect"

    invoke-virtual {p0, v1, v10}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1649
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 1650
    :goto_27
    new-instance v2, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v2}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    const/16 v3, 0x11

    .line 1651
    invoke-virtual {v2, v3}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v2

    const-string v3, "VPN"

    .line 1652
    invoke-virtual {v2, v3}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v2

    .line 1653
    invoke-virtual {v2, v1}, Landroid/net/NetworkAgentConfig$Builder;->setBypassableVpn(Z)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 1654
    invoke-virtual {v2, v3}, Landroid/net/NetworkAgentConfig$Builder;->setVpnRequiresValidation(Z)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 1655
    invoke-virtual {v2, v3}, Landroid/net/NetworkAgentConfig$Builder;->setLocalRoutesExcludedForVpn(Z)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1656
    invoke-virtual {v2, v3}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v2

    .line 1657
    invoke-virtual {v2}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v7

    .line 1659
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1660
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 1661
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v3, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 1664
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->areLongLivedTcpConnectionsExpensive(Lcom/android/server/connectivity/Vpn$VpnRunner;)Z

    move-result v2

    .line 1665
    new-instance v3, Landroid/net/VpnTransportInfo;

    .line 1666
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getActiveVpnType()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {v3, v4, v6, v1, v2}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;ZZ)V

    .line 1665
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 1673
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    const/16 v2, 0xb

    if-eqz v1, :cond_aa

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    if-eqz v1, :cond_aa

    .line 1674
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_ad

    .line 1676
    :cond_aa
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1679
    :goto_ad
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    const/4 v11, 0x0

    if-eqz v1, :cond_b9

    .line 1680
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_ba

    :cond_b9
    move-object v1, v11

    .line 1679
    :goto_ba
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUnderlyingNetworks(Ljava/util/List;)Landroid/net/NetworkCapabilities$Builder;

    .line 1682
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1683
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->logUnderlyNetworkChanges(Ljava/util/List;)V

    .line 1684
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    new-instance v3, Landroid/net/NetworkScore$Builder;

    invoke-direct {v3}, Landroid/net/NetworkScore$Builder;-><init>()V

    const/16 v6, 0x65

    .line 1686
    invoke-virtual {v3, v6}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    .line 1684
    const-string v3, "VPN"

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$Dependencies;->newNetworkAgent(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)Landroid/net/NetworkAgent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1690
    :try_start_f0
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {p1}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f5} :catch_11a
    .catchall {:try_start_f0 .. :try_end_f5} :catchall_117

    .line 1696
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1698
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, p1, v10}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result p1

    if-eqz p1, :cond_116

    .line 1700
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    check-cast p1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->-$$Nest$fgetmSession(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    move-result-object p1

    if-eqz p1, :cond_116

    .line 1701
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {p0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->setUnderpinnedNetwork(Landroid/net/Network;)V

    :cond_116
    return-void

    :catchall_117
    move-exception v0

    move-object p0, v0

    goto :goto_11f

    :catch_11a
    move-exception v0

    move-object p1, v0

    .line 1693
    :try_start_11c
    iput-object v11, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1694
    throw p1
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_117

    .line 1696
    :goto_11f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1697
    throw p0
.end method

.method public final agentDisconnect()V
    .registers 3

    .line 1738
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method public final agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1733
    invoke-virtual {p1}, Landroid/net/NetworkAgent;->unregister()V

    :cond_5
    return-void
.end method

.method public final buildVpnManagerEventIntent(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/content/Intent;
    .registers 11

    .line 895
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buildVpnManagerEventIntent: sessionKey = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Vpn"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.net.action.VPN_MANAGER_EVENT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    const-string p4, "android.net.extra.VPN_PROFILE_STATE"

    invoke-virtual {p0, p4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 900
    const-string p4, "android.net.extra.SESSION_KEY"

    invoke-virtual {p0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    const-string p4, "android.net.extra.UNDERLYING_NETWORK"

    invoke-virtual {p0, p4, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 902
    const-string p4, "android.net.extra.UNDERLYING_NETWORK_CAPABILITIES"

    invoke-virtual {p0, p4, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 903
    const-string p4, "android.net.extra.UNDERLYING_LINK_PROPERTIES"

    invoke-virtual {p0, p4, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 904
    const-string p4, "android.net.extra.TIMESTAMP_MILLIS"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    invoke-virtual {p0, p4, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 905
    const-string p4, "android.net.category.EVENT_DEACTIVATED_BY_USER"

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_57

    const-string p4, "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

    .line 906
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_57

    :cond_56
    return-object p0

    .line 907
    :cond_57
    :goto_57
    const-string p1, "android.net.extra.ERROR_CLASS"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 908
    const-string p1, "android.net.extra.ERROR_CODE"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public final canHaveRestrictedProfile(I)Z
    .registers 5

    .line 1717
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1719
    :try_start_4
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 1720
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->canHaveRestrictedProfile()Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1f

    .line 1722
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1723
    throw p0
.end method

.method public final cleanupVpnStateLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 2251
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 2252
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->resetNetworkCapabilities()V

    .line 2253
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 2254
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 2257
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2258
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 2259
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method public final clearVpnNetworkPreference(Ljava/lang/String;)V
    .registers 3

    .line 2795
    new-instance v0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/net/module/util/BinderUtils;->withCleanCallingIdentity(Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;)V

    return-void
.end method

.method public createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1927
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1930
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1933
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1937
    :try_start_12
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v3
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_3b

    .line 1939
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1941
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1942
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget v3, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v3, p1, :cond_1f

    .line 1943
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    goto :goto_1f

    :catchall_3b
    move-exception p0

    .line 1939
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1940
    throw p0

    :cond_40
    return-object v0
.end method

.method public declared-synchronized deleteVpnProfile(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 4191
    :try_start_1
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4193
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 4194
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 4196
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_37

    .line 4200
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4201
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4203
    invoke-virtual {p0, v3, v2, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    goto :goto_27

    :catchall_20
    move-exception p1

    goto :goto_39

    .line 4205
    :cond_22
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 4209
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/VpnProfileStore;->remove(Ljava/lang/String;)Z
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_20

    .line 4211
    :try_start_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_37

    .line 4213
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    goto :goto_3d

    .line 4211
    :goto_39
    :try_start_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4212
    throw p1

    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_37

    throw p1
.end method

.method public final doSetUnderlyingNetworks(Landroid/net/NetworkAgent;Ljava/util/List;)V
    .registers 3

    .line 4599
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->logUnderlyNetworkChanges(Ljava/util/List;)V

    .line 4601
    instance-of p0, p1, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    if-eqz p0, :cond_d

    .line 4602
    check-cast p1, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;->doSetUnderlyingNetworks(Ljava/util/List;)V

    return-void

    .line 4604
    :cond_d
    invoke-virtual {p1, p2}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    return-void
.end method

.method public final doesPackageTargetAtLeastQ(Ljava/lang/String;)Z
    .registers 5

    .line 1484
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 1487
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 1489
    :try_start_11
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 1490
    invoke-virtual {v0, p1, v2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1491
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_19} :catch_1f

    const/16 p1, 0x1d

    if-lt p0, p1, :cond_1e

    return v1

    :cond_1e
    return v2

    .line 1493
    :catch_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find \""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Vpn"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 4754
    monitor-enter p0

    .line 4755
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active vpn type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getActiveVpnType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkCapabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4758
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 4759
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 4760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->-$$Nest$fgetmSessionKey(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOBIKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->-$$Nest$fgetmMobikeEnabled(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string v2, "enabled"

    goto :goto_7f

    :catchall_7a
    move-exception p1

    goto/16 :goto_113

    :cond_7d
    const-string v2, "disabled"

    :goto_7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->-$$Nest$fgetmProfile(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Landroid/net/Ikev2VpnProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->-$$Nest$fgetmCurrentToken(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validation failed retry count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4765
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->-$$Nest$fgetmScheduledHandleDataStallFuture(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_da

    .line 4766
    const-string v0, "Reset session scheduled"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4769
    :cond_da
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCachedCarrierConfigInfoPerSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mCachedCarrierConfigInfoPerSubId:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4772
    const-string/jumbo v0, "mEventChanges (most recent first):"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4773
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4774
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->reverseDump(Ljava/io/PrintWriter;)V

    .line 4775
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4777
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectivityMetrics:Lcom/android/server/connectivity/VpnConnectivityMetrics;

    if-eqz v0, :cond_111

    .line 4778
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4779
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectivityMetrics:Lcom/android/server/connectivity/VpnConnectivityMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 4781
    :cond_111
    monitor-exit p0

    return-void

    :goto_113
    monitor-exit p0
    :try_end_114
    .catchall {:try_start_1 .. :try_end_114} :catchall_7a

    throw p1
.end method

.method public final enforceControlPermission()V
    .registers 3

    .line 2263
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CONTROL_VPN"

    const-string v1, "Unauthorized Caller"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceControlPermissionOrInternalCaller()V
    .registers 3

    .line 2269
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CONTROL_VPN"

    const-string v1, "Unauthorized Caller"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceNotRestrictedUser()V
    .registers 4

    .line 2495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2497
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v2, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 2499
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1e

    if-nez p0, :cond_16

    .line 2503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2500
    :cond_16
    :try_start_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string v2, "Restricted users cannot configure VPNs"

    invoke-direct {p0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 2503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2504
    throw p0
.end method

.method public final enforceSettingsPermission()V
    .registers 3

    .line 2273
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "Unauthorized Caller"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 16

    monitor-enter p0

    .line 1765
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 1766
    monitor-exit p0

    return-object v2

    .line 1769
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_8b

    if-nez v0, :cond_18

    .line 1770
    monitor-exit p0

    return-object v2

    .line 1773
    :cond_18
    :try_start_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.VpnService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1774
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_8b

    .line 1778
    :try_start_2a
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 1780
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1c0

    const/4 v5, 0x0

    .line 1784
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1a7

    .line 1788
    const-string v5, "android.permission.BIND_VPN_SERVICE"

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_1a4

    if-eqz v1, :cond_186

    .line 1792
    :try_start_48
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1796
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1797
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1798
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1799
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1800
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v6

    .line 1803
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget v8, p1, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-virtual {v7, p0, v8}, Lcom/android/server/connectivity/Vpn$Dependencies;->adoptFd(Lcom/android/server/connectivity/Vpn;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_61
    .catchall {:try_start_48 .. :try_end_61} :catchall_8b

    .line 1805
    :try_start_61
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v9

    invoke-virtual {v8, p0, v9}, Lcom/android/server/connectivity/Vpn$Dependencies;->jniGetName(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    move-result-object v8

    .line 1808
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1809
    iget-object v10, p1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_76
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_93

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/LinkAddress;

    .line 1810
    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_76

    :catchall_8b
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1cc

    :catch_8f
    move-exception v0

    move-object p1, v0

    goto/16 :goto_162

    .line 1813
    :cond_93
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, p0, v8, v9}, Lcom/android/server/connectivity/Vpn$Dependencies;->jniSetAddresses(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_15a

    .line 1816
    new-instance v9, Lcom/android/server/connectivity/Vpn$Connection;

    invoke-direct {v9, p0, v2}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn-IA;)V

    .line 1817
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    iget v12, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    const v12, 0x4000001

    invoke-virtual {v2, v0, v9, v12, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 1823
    iput-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1824
    iput-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1827
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1828
    iput-object v8, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1829
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1830
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1832
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectivityMetrics:Lcom/android/server/connectivity/VpnConnectivityMetrics;

    if-eqz v0, :cond_d0

    .line 1833
    invoke-virtual {v0, v10}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->setVpnType(I)V

    :cond_d0
    if-eqz v1, :cond_ea

    .line 1839
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1840
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 1842
    iget-object v0, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    .line 1843
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z

    goto :goto_ef

    .line 1846
    :cond_ea
    const-string v0, "establish"

    invoke-virtual {p0, v5, v0}, Lcom/android/server/connectivity/Vpn;->startNewNetworkAgent(Landroid/net/NetworkAgent;Ljava/lang/String;)V

    :cond_ef
    :goto_ef
    if-eqz v4, :cond_f6

    .line 1850
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_f6
    if-eqz v3, :cond_101

    .line 1853
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_101

    .line 1854
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 1857
    :cond_101
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-boolean v8, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v0, v2, v8}, Lcom/android/server/connectivity/Vpn$Dependencies;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 1859
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eq v5, v0, :cond_11d

    .line 1860
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v9, "android:establish_vpn_service"

    iget v10, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_11d} :catch_8f
    .catchall {:try_start_61 .. :try_end_11d} :catchall_8b

    .line 1879
    :cond_11d
    :try_start_11d
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Established by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catchall {:try_start_11d .. :try_end_13f} :catchall_8b

    .line 1880
    monitor-exit p0

    return-object v7

    .line 1820
    :cond_141
    :try_start_141
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot bind "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1814
    :cond_15a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one address must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_162
    .catch Ljava/lang/RuntimeException; {:try_start_141 .. :try_end_162} :catch_8f
    .catchall {:try_start_141 .. :try_end_162} :catchall_8b

    .line 1864
    :goto_162
    :try_start_162
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1867
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eq v5, v0, :cond_16c

    .line 1868
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1871
    :cond_16c
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1872
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1873
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1874
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1875
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1876
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1877
    throw p1
    :try_end_186
    .catchall {:try_start_162 .. :try_end_186} :catchall_8b

    .line 1789
    :cond_186
    :try_start_186
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not require "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1a4
    move-exception v0

    move-object p1, v0

    goto :goto_1c8

    .line 1786
    :cond_1a7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1782
    :cond_1c0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get PackageManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1c8
    .catchall {:try_start_186 .. :try_end_1c8} :catchall_1a4

    .line 1792
    :goto_1c8
    :try_start_1c8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1793
    throw p1

    :goto_1cc
    monitor-exit p0
    :try_end_1cd
    .catchall {:try_start_1c8 .. :try_end_1cd} :catchall_8b

    throw p1
.end method

.method public declared-synchronized getActiveVpnType()I
    .registers 2

    monitor-enter p0

    .line 2386
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1e

    if-nez v0, :cond_c

    monitor-exit p0

    const/4 p0, -0x1

    return p0

    .line 2387
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_1e

    if-nez v0, :cond_13

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 2388
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1e

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x3

    :goto_1c
    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public declared-synchronized getAlwaysOn()Z
    .registers 2

    monitor-enter p0

    .line 826
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 1098
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 1099
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception v0

    goto :goto_10

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return-object v0

    :goto_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_b

    throw v0
.end method

.method public declared-synchronized getAppExclusionList(Ljava/lang/String;)Ljava/util/List;
    .registers 6

    monitor-enter p0

    .line 4509
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_26

    .line 4511
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnAppExcludedForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 4513
    array-length v2, p1

    if-nez v2, :cond_17

    goto :goto_2c

    .line 4515
    :cond_17
    invoke-static {p1}, Landroid/net/vcn/util/PersistableBundleUtils;->fromDiskStableBytes([B)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 4516
    sget-object v2, Landroid/net/vcn/util/PersistableBundleUtils;->STRING_DESERIALIZER:Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;

    invoke-static {p1, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object p1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_2a
    .catchall {:try_start_5 .. :try_end_21} :catchall_28

    .line 4520
    :try_start_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_26

    .line 4516
    monitor-exit p0

    return-object p1

    :catchall_26
    move-exception p1

    goto :goto_4c

    :catchall_28
    move-exception p1

    goto :goto_48

    :catch_2a
    move-exception p1

    goto :goto_36

    .line 4513
    :cond_2c
    :goto_2c
    :try_start_2c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_2a
    .catchall {:try_start_2c .. :try_end_31} :catchall_28

    .line 4520
    :try_start_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_26

    .line 4513
    monitor-exit p0

    return-object p1

    .line 4518
    :goto_36
    :try_start_36
    const-string v2, "Vpn"

    const-string/jumbo v3, "problem reading from stream"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_28

    .line 4520
    :try_start_3e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4523
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_26

    monitor-exit p0

    return-object p1

    .line 4520
    :goto_48
    :try_start_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4521
    throw p1

    :goto_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_26

    throw p1
.end method

.method public final getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .registers 6

    .line 1899
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1900
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1901
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_25

    .line 1902
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1903
    :cond_25
    invoke-static {v1}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1904
    invoke-static {v1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_37
    return-object v0
.end method

.method public final getCaCertificateFromKeystoreAsPem(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2558
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_20

    .line 2559
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    .line 2561
    :cond_f
    new-instance p1, Ljava/lang/String;

    new-array p2, v1, [Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    invoke-static {p2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p0

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 2563
    :cond_20
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 2566
    array-length p1, p0

    if-gt p1, v1, :cond_2a

    goto :goto_3d

    .line 2572
    :cond_2a
    new-instance p1, Ljava/lang/String;

    array-length p2, p0

    .line 2573
    invoke-static {p0, v1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    .line 2572
    invoke-static {p0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p0

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method public getEnableTeardown()Z
    .registers 1

    .line 721
    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return p0
.end method

.method public declared-synchronized getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    monitor-enter p0

    .line 2700
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2701
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    goto :goto_10

    .line 2703
    :cond_d
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_b

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    monitor-enter p0

    .line 2679
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 2680
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    monitor-enter p0

    .line 2688
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_26

    if-nez v0, :cond_a

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 2690
    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 2691
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 2692
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 2693
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2694
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_26

    goto :goto_28

    :catchall_26
    move-exception v0

    goto :goto_2a

    .line 2696
    :cond_28
    :goto_28
    monitor-exit p0

    return-object v0

    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_26

    throw v0
.end method

.method public declared-synchronized getLockdown()Z
    .registers 2

    monitor-enter p0

    .line 819
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getLockdownAllowlist()Ljava/util/List;
    .registers 2

    monitor-enter p0

    .line 1106
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    goto :goto_d

    :cond_a
    const/4 v0, 0x0

    :goto_b
    monitor-exit p0

    return-object v0

    :goto_d
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_8

    throw v0
.end method

.method public declared-synchronized getNetwork()Landroid/net/Network;
    .registers 3

    monitor-enter p0

    .line 1511
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1512
    monitor-exit p0

    return-object v1

    .line 1513
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_12

    if-nez v0, :cond_10

    .line 1514
    monitor-exit p0

    return-object v1

    .line 1515
    :cond_10
    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 1

    .line 1499
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public declared-synchronized getPackage()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 810
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 4114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLATFORM_VPN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;
    .registers 3

    monitor-enter p0

    .line 4565
    :try_start_1
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4566
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 4567
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_14

    goto :goto_17

    :catchall_14
    move-exception p1

    goto :goto_19

    :cond_16
    const/4 p1, 0x0

    :goto_17
    monitor-exit p0

    return-object p1

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_14

    throw p1
.end method

.method public final declared-synchronized getRedactedLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_6

    .line 2717
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 2718
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/ConnectivityManager;->getRedactedLinkPropertiesForPackage(Landroid/net/LinkProperties;ILjava/lang/String;)Landroid/net/LinkProperties;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final declared-synchronized getRedactedNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_6

    .line 2710
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 2711
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/ConnectivityManager;->getRedactedNetworkCapabilitiesForPackage(Landroid/net/NetworkCapabilities;ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final getSessionKeyLocked()Ljava/lang/String;
    .registers 4

    .line 4269
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4271
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    check-cast p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    invoke-static {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->-$$Nest$fgetmSessionKey(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    .line 4272
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSessionKeyLocked: isIkev2VpnRunner = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", sessionKey = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final getStateFromLegacyState(I)I
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_2c

    const/4 v0, 0x5

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_29

    if-eq p1, v1, :cond_28

    .line 4537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", treat it as STATE_DISCONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Vpn"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_28
    return v0

    :cond_29
    const/4 p0, 0x1

    return p0

    :cond_2b
    return v1

    :cond_2c
    return p0
.end method

.method public declared-synchronized getUnderlyingNetworkInfo()Landroid/net/UnderlyingNetworkInfo;
    .registers 5

    monitor-enter p0

    .line 2359
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1a

    if-nez v0, :cond_a

    .line 2360
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 2363
    :cond_a
    :try_start_a
    new-instance v0, Landroid/net/UnderlyingNetworkInfo;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Landroid/net/UnderlyingNetworkInfo;-><init>(ILjava/lang/String;Ljava/util/List;)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public getVpnAppExcludedForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 4454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPNAPPEXCLUDED_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 3

    monitor-enter p0

    .line 2206
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 2209
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    if-nez v0, :cond_b

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 2212
    :cond_b
    :try_start_b
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnConfig;-><init>(Lcom/android/internal/net/VpnConfig;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public final getVpnManagerEventClassName(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_9

    .line 4733
    const-string p0, "UNKNOWN_CLASS"

    return-object p0

    .line 4731
    :cond_9
    const-string p0, "ERROR_CLASS_RECOVERABLE"

    return-object p0

    .line 4729
    :cond_c
    const-string p0, "ERROR_CLASS_NOT_RECOVERABLE"

    return-object p0
.end method

.method public final getVpnManagerEventErrorName(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_17

    const/4 p0, 0x1

    if-eq p1, p0, :cond_14

    const/4 p0, 0x2

    if-eq p1, p0, :cond_11

    const/4 p0, 0x3

    if-eq p1, p0, :cond_e

    .line 4748
    const-string p0, "UNKNOWN_ERROR"

    return-object p0

    .line 4744
    :cond_e
    const-string p0, "ERROR_CODE_NETWORK_IO"

    return-object p0

    .line 4746
    :cond_11
    const-string p0, "ERROR_CODE_NETWORK_LOST"

    return-object p0

    .line 4742
    :cond_14
    const-string p0, "ERROR_CODE_NETWORK_PROTOCOL_TIMEOUT"

    return-object p0

    .line 4740
    :cond_17
    const-string p0, "ERROR_CODE_NETWORK_UNKNOWN_HOST"

    return-object p0
.end method

.method public getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .registers 4

    .line 4250
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$Dependencies;->isCallerSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 4251
    const-string p0, "Vpn"

    const-string p1, "getVpnProfilePrivileged called as non-System UID "

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4255
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_20

    return-object v1

    .line 4258
    :cond_20
    const-string p1, ""

    invoke-static {p1, p0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object p0

    return-object p0
.end method

.method public getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;
    .registers 1

    .line 399
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    return-object p0
.end method

.method public isAlwaysOnPackageSupported(Ljava/lang/String;)Z
    .registers 7

    .line 845
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceSettingsPermission()V

    const/4 v0, 0x0

    if-nez p1, :cond_7

    return v0

    .line 851
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 853
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_87

    const/4 v4, 0x1

    if-eqz v3, :cond_16

    .line 857
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 863
    :try_start_1f
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_42

    .line 865
    :catch_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" when checking always-on support"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Vpn"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_42
    if-eqz v2, :cond_86

    .line 867
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_4b

    goto :goto_86

    .line 871
    :cond_4b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.VpnService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x80

    .line 873
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 874
    invoke-virtual {v1, v2, p1, p0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_86

    .line 875
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_66

    goto :goto_86

    .line 879
    :cond_66
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 880
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_6a

    .line 881
    const-string v1, "android.net.VpnService.SUPPORTS_ALWAYS_ON"

    .line 882
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_6a

    return v0

    :cond_85
    return v4

    :cond_86
    :goto_86
    return v0

    :catchall_87
    move-exception p0

    .line 857
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 858
    throw p0
.end method

.method public isCallerEstablishedOwnerLocked()Z
    .registers 2

    .line 1891
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final isCurrentIkev2VpnLocked(Ljava/lang/String;)Z
    .registers 2

    .line 4177
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isCurrentPreparedPackage(Ljava/lang/String;)Z
    .registers 4

    .line 1321
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-static {v0, p1, v1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isCurrentPreparedPackage(Ljava/lang/String;I)Z
    .registers 4

    .line 1326
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne p2, v0, :cond_e

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isIkev2VpnRunner()Z
    .registers 1

    .line 4262
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    instance-of p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    return p0
.end method

.method public final isRunningLocked()Z
    .registers 2

    .line 1884
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isSettingsVpnLocked()Z
    .registers 2

    .line 2662
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eqz v0, :cond_10

    const-string v0, "[Legacy VPN]"

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$clearVpnNetworkPreference$1(Ljava/lang/String;)V
    .registers 3

    .line 2796
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->setVpnDefaultForUids(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public final synthetic lambda$setVpnNetworkPreference$0(Ljava/lang/String;Ljava/util/Set;)V
    .registers 3

    .line 2791
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->setVpnDefaultForUids(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public final loadAlwaysOnPackage()V
    .registers 8

    .line 1131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1133
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1135
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v4, "always_on_vpn_lockdown"

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetIntForUser(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v6, 0x1

    .line 1137
    :cond_1c
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v4, "always_on_vpn_lockdown_whitelist"

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1139
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1140
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3b

    :catchall_2f
    move-exception p0

    goto :goto_42

    :cond_31
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1141
    :goto_3b
    invoke-virtual {p0, v2, v6, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_2f

    .line 1144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1145
    throw p0
.end method

.method public final logUnderlyNetworkChanges(Ljava/util/List;)V
    .registers 4

    .line 1727
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UnderlyingNW] Switch to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_15

    .line 1728
    const-string v1, ", "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_18

    :cond_15
    const-string/jumbo p1, "null"

    :goto_18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1727
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final makeDisconnectedVpnProfileState()Landroid/net/VpnProfileState;
    .registers 3

    .line 4552
    new-instance p0, Landroid/net/VpnProfileState;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0, v0}, Landroid/net/VpnProfileState;-><init>(ILjava/lang/String;ZZ)V

    return-object p0
.end method

.method public final makeLinkProperties()Landroid/net/LinkProperties;
    .registers 11

    .line 1525
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    const/16 v3, 0x500

    if-ge v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 1526
    :goto_13
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v4, v3, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 1527
    iget-boolean v3, v3, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 1529
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    .line 1531
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1533
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v6, :cond_54

    .line 1534
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    if-eqz v0, :cond_42

    .line 1535
    invoke-virtual {v7}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v8

    if-eqz v8, :cond_42

    goto :goto_2d

    .line 1536
    :cond_42
    invoke-virtual {v5, v7}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1537
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet4Address;

    or-int/2addr v4, v8

    .line 1538
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet6Address;

    or-int/2addr v3, v7

    goto :goto_2d

    .line 1542
    :cond_54
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v6, :cond_89

    .line 1543
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5e
    :goto_5e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 1544
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    if-eqz v0, :cond_79

    .line 1545
    instance-of v9, v8, Ljava/net/Inet6Address;

    if-eqz v9, :cond_79

    goto :goto_5e

    .line 1546
    :cond_79
    invoke-virtual {v5, v7}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1548
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getType()I

    move-result v7

    if-ne v7, v1, :cond_5e

    .line 1549
    instance-of v7, v8, Ljava/net/Inet4Address;

    or-int/2addr v4, v7

    .line 1550
    instance-of v7, v8, Ljava/net/Inet6Address;

    or-int/2addr v3, v7

    goto :goto_5e

    .line 1555
    :cond_89
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v1, :cond_b4

    .line 1556
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1557
    invoke-static {v6}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v0, :cond_aa

    .line 1558
    instance-of v7, v6, Ljava/net/Inet6Address;

    if-eqz v7, :cond_aa

    goto :goto_93

    .line 1559
    :cond_aa
    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 1560
    instance-of v7, v6, Ljava/net/Inet4Address;

    or-int/2addr v4, v7

    .line 1561
    instance-of v6, v6, Ljava/net/Inet6Address;

    or-int/2addr v3, v6

    goto :goto_93

    .line 1565
    :cond_b4
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v5, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    const/4 v1, 0x7

    const/4 v6, 0x0

    if-nez v4, :cond_ce

    .line 1568
    new-instance v4, Landroid/net/RouteInfo;

    new-instance v7, Landroid/net/IpPrefix;

    sget-object v8, Lcom/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    invoke-direct {v7, v8, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v4, v7, v6, v6, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v5, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    :cond_ce
    if-eqz v3, :cond_d2

    if-eqz v0, :cond_e1

    .line 1573
    :cond_d2
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v3, Landroid/net/IpPrefix;

    sget-object v4, Lcom/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ANY:Ljava/net/Inet6Address;

    invoke-direct {v3, v4, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v3, v6, v6, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1579
    :cond_e1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1580
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v1, :cond_105

    .line 1581
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_105

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1582
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f0

    .line 1585
    :cond_105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1587
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget p0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    if-lez p0, :cond_119

    .line 1588
    invoke-virtual {v5, p0}, Landroid/net/LinkProperties;->setMtu(I)V

    :cond_119
    return-object v5
.end method

.method public final makeVpnProfileStateLocked()Landroid/net/VpnProfileState;
    .registers 5

    .line 4546
    new-instance v0, Landroid/net/VpnProfileState;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Vpn;->getStateFromLegacyState(I)I

    move-result v1

    .line 4547
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/net/VpnProfileState;-><init>(ILjava/lang/String;ZZ)V

    return-object v0
.end method

.method public final declared-synchronized notifyVpnManagerVpnStopped(Ljava/lang/String;ILandroid/content/Intent;)V
    .registers 7

    monitor-enter p0

    .line 4422
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android:establish_vpn_manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4427
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VMEvent] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4428
    invoke-virtual {p0, p3, p1}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 4429
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public onUserAdded(I)V
    .registers 5

    .line 2022
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 2024
    const-string p0, "Vpn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not retrieve UserInfo for userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2027
    :cond_1f
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    if-ne v0, v1, :cond_6b

    .line 2028
    monitor-enter p0

    .line 2029
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_4f

    if-eqz v0, :cond_62

    .line 2032
    :try_start_34
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 2034
    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p1, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 2035
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4e} :catch_51
    .catchall {:try_start_34 .. :try_end_4e} :catchall_4f

    goto :goto_59

    :catchall_4f
    move-exception p1

    goto :goto_69

    :catch_51
    move-exception p1

    .line 2037
    :try_start_52
    const-string v0, "Vpn"

    const-string v1, "Failed to add restricted user to owner"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2039
    :goto_59
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p1, :cond_62

    .line 2040
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/Vpn;->doSendNetworkCapabilities(Landroid/net/NetworkAgent;Landroid/net/NetworkCapabilities;)V

    .line 2043
    :cond_62
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 2044
    monitor-exit p0

    goto :goto_6b

    :goto_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_52 .. :try_end_6a} :catchall_4f

    throw p1

    :cond_6b
    :goto_6b
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 4

    .line 2055
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 2061
    const-string p0, "Vpn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not retrieve UserInfo for userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2064
    :cond_1f
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_69

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    if-ne v0, v1, :cond_69

    .line 2065
    monitor-enter p0

    .line 2066
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_4d

    if-eqz v0, :cond_60

    .line 2070
    :try_start_34
    invoke-static {p1, v0}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(ILjava/util/Set;)Ljava/util/List;

    move-result-object p1

    .line 2071
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2072
    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p1, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 2073
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4c} :catch_4f
    .catchall {:try_start_34 .. :try_end_4c} :catchall_4d

    goto :goto_57

    :catchall_4d
    move-exception p1

    goto :goto_67

    :catch_4f
    move-exception p1

    .line 2075
    :try_start_50
    const-string v0, "Vpn"

    const-string v1, "Failed to remove restricted user to owner"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2077
    :goto_57
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p1, :cond_60

    .line 2078
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/Vpn;->doSendNetworkCapabilities(Landroid/net/NetworkAgent;Landroid/net/NetworkCapabilities;)V

    .line 2081
    :cond_60
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 2082
    monitor-exit p0

    goto :goto_69

    :goto_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_4d

    throw p1

    :cond_69
    :goto_69
    return-void
.end method

.method public declared-synchronized onUserStopped()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 2091
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 2092
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 2095
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 2098
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkProvider(Landroid/net/NetworkProvider;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    .line 2099
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    monitor-enter p0

    .line 1265
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    if-eqz p1, :cond_14

    .line 1267
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    goto :goto_14

    :catchall_11
    move-exception p1

    goto/16 :goto_84

    :cond_14
    :goto_14
    if-eqz p2, :cond_19

    .line 1270
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    :cond_19
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5d

    .line 1276
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_11

    if-nez v2, :cond_29

    .line 1277
    monitor-exit p0

    return v1

    .line 1281
    :cond_29
    :try_start_29
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 1284
    const-string p2, "[Legacy VPN]"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_44

    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 1285
    invoke-static {p2, p1, p3}, Lcom/android/server/connectivity/Vpn;->isVpnPreConsented(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 1286
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_11

    .line 1287
    monitor-exit p0

    return v0

    .line 1289
    :cond_44
    monitor-exit p0

    return v1

    .line 1290
    :cond_46
    :try_start_46
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 1291
    invoke-static {v2, p1, p3}, Lcom/android/server/connectivity/Vpn;->isVpnPreConsented(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_5d

    .line 1293
    const-string p1, "[Legacy VPN]"

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_11

    .line 1294
    monitor-exit p0

    return v1

    :cond_5d
    if-eqz p2, :cond_82

    .line 1299
    :try_start_5f
    const-string p1, "[Legacy VPN]"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6e

    .line 1300
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6e

    goto :goto_82

    .line 1305
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 1308
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz p1, :cond_7d

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result p1
    :try_end_79
    .catchall {:try_start_5f .. :try_end_79} :catchall_11

    if-nez p1, :cond_7d

    .line 1309
    monitor-exit p0

    return v1

    .line 1312
    :cond_7d
    :try_start_7d
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_11

    .line 1313
    monitor-exit p0

    return v0

    .line 1301
    :cond_82
    :goto_82
    monitor-exit p0

    return v0

    :goto_84
    :try_start_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_11

    throw p1
.end method

.method public final prepareInternal(Ljava/lang/String;)V
    .registers 11

    .line 1332
    const-string v0, " to call protect() "

    const-string v1, "Vpn"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1335
    :try_start_8
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_20

    .line 1336
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 1337
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1338
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 1339
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1340
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->resetNetworkCapabilities()V

    goto :goto_20

    :catchall_1d
    move-exception p0

    goto/16 :goto_dd

    .line 1344
    :cond_20
    :goto_20
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_1d

    if-eqz v4, :cond_49

    .line 1346
    :try_start_24
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn$Connection;->-$$Nest$fgetmService(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v4

    .line 1347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const/4 v7, 0x1

    const v8, 0xffffff

    .line 1346
    invoke-interface {v4, v8, v6, v5, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_1d

    .line 1351
    :catch_33
    :try_start_33
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v6, "android:establish_vpn_service"

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1353
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1354
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->cleanupVpnStateLocked()V

    goto :goto_50

    .line 1355
    :cond_49
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eqz v4, :cond_50

    .line 1356
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerAndNotifyAppLocked()V
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_1d

    .line 1360
    :cond_50
    :goto_50
    :try_start_50
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/net/INetd;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v4, v6}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_57} :catch_58
    .catchall {:try_start_50 .. :try_end_57} :catchall_1d

    goto :goto_75

    :catch_58
    move-exception v4

    .line 1362
    :try_start_59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to disallow UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :goto_75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switched from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 1367
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-static {v4, p1, v6}, Lcom/android/server/connectivity/Vpn;->getAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 1368
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z
    :try_end_a5
    .catchall {:try_start_59 .. :try_end_a5} :catchall_1d

    .line 1370
    :try_start_a5
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/net/INetd;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {p1, v4}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ac} :catch_ad
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_1d

    goto :goto_ca

    :catch_ad
    move-exception p1

    .line 1372
    :try_start_ae
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to allow UID "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :goto_ca
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1376
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v0, "prepare"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1377
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_d9
    .catchall {:try_start_ae .. :try_end_d9} :catchall_1d

    .line 1379
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_dd
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1380
    throw p0
.end method

.method public final prepareStatusIntent()V
    .registers 5

    .line 2292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2294
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/Vpn$Dependencies;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 2296
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2297
    throw p0
.end method

.method public declared-synchronized provisionVpnProfile(Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)Z
    .registers 7

    monitor-enter p0

    .line 4144
    :try_start_1
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4145
    const-string v0, "No profile provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4147
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 4148
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 4149
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->validateRequiredFeatures(Lcom/android/internal/net/VpnProfile;)V

    .line 4151
    iget-boolean v0, p2, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    if-eqz v0, :cond_24

    .line 4152
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v2, "Test-mode profiles require the MANAGE_TEST_NETWORKS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catchall_22
    move-exception p1

    goto :goto_54

    .line 4156
    :cond_24
    :goto_24
    invoke-virtual {p2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object p2

    .line 4157
    array-length v0, p2

    const/high16 v1, 0x20000

    if-gt v0, v1, :cond_4c

    .line 4162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_22

    .line 4164
    :try_start_31
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/connectivity/VpnProfileStore;->put(Ljava/lang/String;[B)Z
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_47

    .line 4166
    :try_start_3c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4173
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/server/connectivity/Vpn;->isVpnProfilePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_22

    monitor-exit p0

    return p1

    :catchall_47
    move-exception p1

    .line 4166
    :try_start_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4167
    throw p1

    .line 4158
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Profile too big"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4167
    :goto_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_22

    throw p1
.end method

.method public declared-synchronized refreshPlatformVpnAppExclusionList()V
    .registers 2

    monitor-enter p0

    .line 4479
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->getAppExclusionList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->updateAppExclusionList(Ljava/util/List;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 4480
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .registers 4

    monitor-enter p0

    .line 2310
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    .line 2311
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 2313
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 2314
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/connectivity/Vpn;->doSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 2315
    monitor-exit p0

    return p1

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public final resetNetworkCapabilities()V
    .registers 6

    .line 774
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    const/4 v1, 0x0

    .line 775
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    new-instance v2, Landroid/net/VpnTransportInfo;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v4}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;ZZ)V

    .line 776
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 781
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method public final saveAlwaysOnPackage()V
    .registers 7

    .line 1114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1116
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    .line 1117
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 1116
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1118
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown"

    .line 1119
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v4, :cond_21

    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    goto :goto_22

    :catchall_1f
    move-exception p0

    goto :goto_3c

    :cond_21
    const/4 v4, 0x0

    :goto_22
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 1118
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutIntForUser(Ljava/lang/String;II)V

    .line 1120
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown_whitelist"

    const-string v4, ","

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 1122
    invoke-static {v4, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 1120
    invoke-virtual {v2, v3, v4, p0}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_1f

    .line 1124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1125
    throw p0
.end method

.method public final sendEventToVpnManagerApp(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 15

    .line 931
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 933
    :try_start_4
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$Dependencies;->getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;

    move-result-object v3

    .line 934
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const-string v11, "VpnManager event"

    const-wide/16 v6, 0x7530

    const/4 v9, 0x0

    const/16 v10, 0x135

    move-object v5, p2

    invoke-interface/range {v3 .. v11}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_29

    const/4 p2, 0x0

    .line 939
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_22} :catch_2c
    .catchall {:try_start_1c .. :try_end_22} :catchall_29

    if-eqz p0, :cond_25

    const/4 p2, 0x1

    .line 945
    :cond_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :catchall_29
    move-exception v0

    move-object p0, v0

    goto :goto_4d

    :catch_2c
    move-exception v0

    move-object p0, v0

    .line 941
    :try_start_2e
    const-string v0, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service of VpnManager app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed to start"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_2e .. :try_end_49} :catchall_29

    .line 945
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :goto_4d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 946
    throw p0
.end method

.method public final sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    .registers 13

    .line 918
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VMEvent] Event class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->getVpnManagerEventClassName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn;->getVpnManagerEventErrorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 918
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/connectivity/Vpn;->buildVpnManagerEventIntent(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/content/Intent;

    move-result-object p1

    .line 923
    invoke-virtual {p0, p1, p4}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .registers 9

    .line 2179
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 2183
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2184
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRangeParcel;

    .line 2185
    new-instance v4, Landroid/util/Range;

    iget v5, v3, Landroid/net/UidRangeParcel;->start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v3, v3, Landroid/net/UidRangeParcel;->stop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 2188
    :cond_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1, v0}, Landroid/net/ConnectivityManager;->setRequireVpnForUids(ZLjava/util/Collection;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_3b} :catch_49

    if-eqz p1, :cond_43

    .line 2195
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_48

    .line 2197
    :cond_43
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :goto_48
    return v1

    :catch_49
    move-exception p0

    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating blocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " for UIDs "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2191
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2190
    const-string p2, "Vpn"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z
    .registers 17

    monitor-enter p0

    .line 974
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 976
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 977
    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 980
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_20

    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v3, :cond_20

    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-ne p2, v3, :cond_1c

    if-nez v2, :cond_20

    :cond_1c
    move v3, v11

    goto :goto_21

    :catchall_1e
    move-exception v0

    goto :goto_6b

    :cond_20
    move v3, v4

    .line 983
    :goto_21
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    if-nez v2, :cond_2b

    move v12, v11

    goto :goto_2c

    :cond_2b
    move v12, v4

    .line 985
    :goto_2c
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z

    move-result v6
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_1e

    if-nez v6, :cond_34

    .line 986
    monitor-exit p0

    return v4

    .line 989
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V

    if-eqz v3, :cond_53

    move v3, v2

    .line 995
    const-string v2, "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

    if-nez v3, :cond_44

    .line 997
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeDisconnectedVpnProfileState()Landroid/net/VpnProfileState;

    move-result-object v3

    :goto_42
    move-object v7, v3

    goto :goto_49

    .line 998
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object v3

    goto :goto_42

    :goto_49
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 995
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    :cond_53
    if-eqz v12, :cond_69

    .line 1003
    const-string v2, "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, p1

    .line 1003
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    :try_end_69
    .catchall {:try_start_34 .. :try_end_69} :catchall_1e

    .line 1008
    :cond_69
    monitor-exit p0

    return v11

    :goto_6b
    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_1e

    throw v0
.end method

.method public final setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    .registers 10

    .line 1027
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Vpn"

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    .line 1028
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not setting legacy VPN \""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" as always-on."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_25
    if-eqz p3, :cond_54

    .line 1033
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1034
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1035
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not setting always-on vpn, invalid allowed package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_54
    const/4 v1, 0x1

    if-eqz p1, :cond_76

    .line 1043
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1045
    :try_start_5b
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_71

    .line 1047
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_66

    move v0, v1

    goto :goto_67

    :cond_66
    const/4 v0, 0x2

    .line 1053
    :goto_67
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_6e

    return v3

    .line 1056
    :cond_6e
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    goto :goto_79

    :catchall_71
    move-exception p0

    .line 1047
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1048
    throw p0

    .line 1059
    :cond_76
    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    move-object p1, v0

    .line 1062
    :goto_79
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 1063
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_82

    if-eqz p2, :cond_82

    move v3, v1

    :cond_82
    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v3, :cond_92

    if-eqz p3, :cond_92

    .line 1065
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_94

    .line 1066
    :cond_92
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_94
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 1067
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LockdownAlwaysOn] Mode changed: lockdown="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " alwaysOn="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " calling from "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1067
    invoke-virtual {p2, p3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e6

    .line 1071
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1072
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1077
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p1, :cond_e9

    iget-boolean p2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eq v0, p2, :cond_e9

    .line 1078
    const-string p2, "Lockdown mode changed"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->startNewNetworkAgent(Landroid/net/NetworkAgent;Ljava/lang/String;)V

    goto :goto_e9

    .line 1083
    :cond_e6
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    :cond_e9
    :goto_e9
    return v1
.end method

.method public declared-synchronized setAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 3

    monitor-enter p0

    .line 4467
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 4468
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->storeAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    if-nez p1, :cond_d

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 4470
    :cond_d
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->updateAppExclusionList(Ljava/util/List;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_13

    .line 4472
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public setEnableTeardown(Z)V
    .registers 2

    .line 716
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return-void
.end method

.method public declared-synchronized setLockdown(Z)V
    .registers 2

    monitor-enter p0

    .line 796
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 798
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 799
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 803
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz p1, :cond_13

    .line 804
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p1

    goto :goto_15

    .line 806
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_11

    throw p1
.end method

.method public final setMtuAndMetrics(I)V
    .registers 3

    .line 2319
    monitor-enter p0

    .line 2320
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput p1, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 2321
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectivityMetrics:Lcom/android/server/connectivity/VpnConnectivityMetrics;

    if-eqz v0, :cond_f

    .line 2322
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->setMtu(I)V

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_11

    .line 2324
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :goto_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_d

    throw p1
.end method

.method public setPackageAuthorization(Ljava/lang/String;I)Z
    .registers 16

    .line 1386
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 1388
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-static {v0, p1, v1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_88

    .line 1389
    const-string v3, "[Legacy VPN]"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto/16 :goto_88

    .line 1394
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1399
    const-string v5, "android:activate_vpn"

    const-string v6, "android:activate_platform_vpn"

    const-string v7, "Vpn"

    const/4 v8, 0x1

    if-eq p2, v2, :cond_49

    if-eq p2, v8, :cond_44

    const/4 v5, 0x2

    if-eq p2, v5, :cond_3f

    const/4 p0, 0x3

    if-eq p2, p0, :cond_3b

    .line 1415
    :try_start_2e
    const-string p0, "Unrecognized VPN type while granting authorization"

    invoke-static {v7, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_39
    .catchall {:try_start_2e .. :try_end_33} :catchall_37

    .line 1431
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_37
    move-exception p0

    goto :goto_84

    :catch_39
    move-exception p0

    goto :goto_64

    :cond_3b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 1407
    :cond_3f
    :try_start_3f
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v5

    goto :goto_4d

    .line 1410
    :cond_44
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    goto :goto_4d

    .line 1401
    :cond_49
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .line 1419
    :goto_4d
    array-length v6, v5

    move v9, v1

    :goto_4f
    if-ge v9, v6, :cond_60

    aget-object v10, v5, v9

    .line 1420
    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-ne p2, v2, :cond_59

    move v12, v8

    goto :goto_5a

    :cond_59
    move v12, v1

    :goto_5a
    invoke-virtual {v11, v10, v0, p1, v12}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5d} :catch_39
    .catchall {:try_start_3f .. :try_end_5d} :catchall_37

    add-int/lit8 v9, v9, 0x1

    goto :goto_4f

    .line 1431
    :cond_60
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    .line 1429
    :goto_64
    :try_start_64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set app ops for package "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_64 .. :try_end_80} :catchall_37

    .line 1431
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_84
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1432
    throw p0

    :cond_88
    :goto_88
    return v1
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 5

    monitor-enter p0

    .line 2340
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_17

    if-nez v0, :cond_a

    .line 2341
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 2344
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x0

    if-eqz p1, :cond_19

    .line 2345
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Network;

    goto :goto_1a

    :catchall_17
    move-exception p1

    goto :goto_2e

    :cond_19
    move-object p1, v1

    :goto_1a
    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 2346
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 2348
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    if-eqz v0, :cond_28

    .line 2349
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2346
    :cond_28
    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->doSetUnderlyingNetworks(Landroid/net/NetworkAgent;Ljava/util/List;)V
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_17

    .line 2351
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_17

    throw p1
.end method

.method public final setUnderlyingNetworksAndMetrics([Landroid/net/Network;)V
    .registers 3

    .line 2328
    monitor-enter p0

    .line 2329
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 2330
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectivityMetrics:Lcom/android/server/connectivity/VpnConnectivityMetrics;

    if-eqz v0, :cond_f

    .line 2331
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->updateUnderlyingNetworkTypes([Landroid/net/Network;)V

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_11

    .line 2333
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :goto_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_d

    throw p1
.end method

.method public final setVpnForcedLocked(Z)V
    .registers 8

    .line 2122
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object v0, v1

    goto :goto_17

    .line 2125
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2126
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2128
    :goto_17
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_99

    .line 2131
    iget p1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 2132
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    .line 2135
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2140
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_30
    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 2141
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_67

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_67

    .line 2142
    new-instance v4, Landroid/net/UidRangeParcel;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v4, v3, v1}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 2143
    :cond_67
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_30

    .line 2144
    new-instance v4, Landroid/net/UidRangeParcel;

    .line 2145
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v4, v5, v1}, Landroid/net/UidRangeParcel;-><init>(II)V

    .line 2144
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 2149
    :cond_90
    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2155
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_9b

    .line 2157
    :cond_99
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_9b
    const/4 p1, 0x0

    .line 2161
    invoke-virtual {p0, p1, v2}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 2163
    invoke-virtual {p0, v3, v0}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    return-void
.end method

.method public final setVpnNetworkPreference(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4

    .line 2790
    new-instance v0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/util/Set;)V

    invoke-static {v0}, Lcom/android/net/module/util/BinderUtils;->withCleanCallingIdentity(Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;)V

    return-void
.end method

.method public startAlwaysOnVpn()Z
    .registers 14

    .line 1156
    monitor-enter p0

    .line 1157
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    if-nez v2, :cond_d

    .line 1160
    monitor-exit p0

    return v9

    :catchall_a
    move-exception v0

    goto/16 :goto_aa

    .line 1163
    :cond_d
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_26

    .line 1166
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    .line 1167
    invoke-virtual {p0, v0, v10, v0}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 1169
    :cond_24
    monitor-exit p0

    return v10

    .line 1174
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1175
    monitor-exit p0

    return v9

    .line 1177
    :cond_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_a

    .line 1179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1182
    :try_start_37
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1184
    invoke-virtual {p0, v0, v2}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_40} :catch_47
    .catchall {:try_start_37 .. :try_end_40} :catchall_44

    .line 1214
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :catchall_44
    move-exception v0

    move-object p0, v0

    goto :goto_a6

    :catch_47
    move-exception v0

    move-object p0, v0

    goto :goto_9b

    .line 1196
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$Dependencies;->getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;

    move-result-object v0

    .line 1197
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const-string/jumbo v8, "vpn"

    const-wide/32 v3, 0xea60

    const/4 v6, 0x0

    const/16 v7, 0x135

    invoke-interface/range {v0 .. v8}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 1202
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.net.VpnService"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_6c} :catch_47
    .catchall {:try_start_4a .. :try_end_6c} :catchall_44

    .line 1205
    :try_start_6c
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_72
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_72} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_72} :catch_47
    .catchall {:try_start_6c .. :try_end_72} :catchall_44

    if-eqz p0, :cond_75

    goto :goto_76

    :cond_75
    move v9, v10

    .line 1214
    :goto_76
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :catch_7a
    move-exception v0

    move-object p0, v0

    .line 1207
    :try_start_7c
    const-string v0, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VpnService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failed to start"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_97} :catch_47
    .catchall {:try_start_7c .. :try_end_97} :catchall_44

    .line 1214
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    .line 1211
    :goto_9b
    :try_start_9b
    const-string v0, "Vpn"

    const-string v1, "Error starting always-on VPN"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_44

    .line 1214
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :goto_a6
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1215
    throw p0

    .line 1177
    :goto_aa
    :try_start_aa
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a

    throw v0
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .registers 4

    .line 2516
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 2517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2519
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 2521
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2522
    throw p0
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;)V
    .registers 11

    .line 2584
    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->clone()Lcom/android/internal/net/VpnProfile;

    move-result-object p1

    .line 2585
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2586
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_e7

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v2, "no_config_vpn"

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 2598
    :try_start_24
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2599
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 2600
    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_34
    .catch Ljava/security/cert/CertificateException; {:try_start_24 .. :try_end_34} :catch_de
    .catch Ljava/security/KeyStoreException; {:try_start_24 .. :try_end_34} :catch_de
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_de
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_34} :catch_de

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    if-nez v2, :cond_54

    .line 2601
    :try_start_3a
    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 2602
    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    if-nez v6, :cond_44

    move-object v7, v1

    goto :goto_56

    .line 2604
    :cond_44
    new-instance v7, Ljava/lang/String;

    new-array v8, v4, [Ljava/security/cert/Certificate;

    aput-object v6, v8, v3

    invoke-static {v8}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v6

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_56

    :cond_54
    move-object v2, v5

    move-object v7, v2

    .line 2606
    :goto_56
    iget-object v6, p1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_65

    .line 2607
    iget-object v6, p1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/android/server/connectivity/Vpn;->getCaCertificateFromKeystoreAsPem(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_66

    :cond_65
    move-object v6, v5

    .line 2609
    :goto_66
    iget-object v8, p1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_87

    .line 2610
    iget-object v5, p1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_77

    goto :goto_86

    .line 2612
    :cond_77
    new-instance v1, Ljava/lang/String;

    new-array v4, v4, [Ljava/security/cert/Certificate;

    aput-object v0, v4, v3

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_86
    .catch Ljava/security/cert/CertificateException; {:try_start_3a .. :try_end_86} :catch_de
    .catch Ljava/security/KeyStoreException; {:try_start_3a .. :try_end_86} :catch_de
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_86} :catch_de
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3a .. :try_end_86} :catch_de

    :goto_86
    move-object v5, v1

    :cond_87
    if-eqz v7, :cond_d6

    if-eqz v6, :cond_d6

    if-eqz v5, :cond_d6

    .line 2622
    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    const-string v1, "[Legacy VPN]"

    packed-switch v0, :pswitch_data_f0

    .line 2653
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Legacy VPN is deprecated"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2649
    :pswitch_9c
    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    return-void

    .line 2627
    :pswitch_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYSTORE_ALIAS:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 2628
    iput-object v7, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    goto :goto_cb

    .line 2639
    :pswitch_b6
    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 2640
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/Ikev2VpnProfile;->encodeForIpsecSecret([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 2643
    sget-object v0, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/internal/net/VpnProfile;->setAllowedAlgorithms(Ljava/util/List;)V

    .line 2644
    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    return-void

    .line 2631
    :goto_cb
    :pswitch_cb
    iput-object v6, p1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 2634
    sget-object v0, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/internal/net/VpnProfile;->setAllowedAlgorithms(Ljava/util/List;)V

    .line 2635
    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    return-void

    .line 2619
    :cond_d6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot load credentials"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_de
    move-exception p0

    .line 2616
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to load credentials from AndroidKeyStore"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 2588
    :cond_e7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Restricted users cannot establish VPNs"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_f0
    .packed-switch 0x6
        :pswitch_cb
        :pswitch_b6
        :pswitch_a0
        :pswitch_9c
    .end packed-switch
.end method

.method public final startNewNetworkAgent(Landroid/net/NetworkAgent;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1745
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1746
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1749
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    .line 1750
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    return-void
.end method

.method public declared-synchronized startVpnProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 4287
    :try_start_1
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4289
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 4292
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 4296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2d

    .line 4298
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 4303
    invoke-virtual {p0, v2, p1}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    .line 4304
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 4308
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2f

    .line 4310
    :try_start_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    .line 4308
    monitor-exit p0

    return-object p1

    :catchall_2d
    move-exception p1

    goto :goto_6c

    :catchall_2f
    move-exception p1

    goto :goto_51

    .line 4305
    :cond_31
    :try_start_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "mVpnRunner shouldn\'t be null and should also be an instance of Ikev2VpnRunner"

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4300
    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No profile found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_2f

    .line 4310
    :goto_51
    :try_start_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4311
    throw p1

    .line 4293
    :cond_55
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User consent not granted for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4311
    :goto_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_51 .. :try_end_6d} :catchall_2d

    throw p1
.end method

.method public final declared-synchronized startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    .line 4320
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 4321
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startPlatformVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_28

    const/4 v1, 0x0

    .line 4325
    :try_start_d
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 4326
    const-string v2, "[Legacy VPN]"

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    .line 4327
    iput-boolean v2, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 4328
    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 4329
    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 4333
    iput-boolean v2, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    goto :goto_35

    :catchall_28
    move-exception v0

    move-object p1, v0

    goto/16 :goto_b8

    :catch_2c
    move-exception v0

    move-object p1, v0

    goto :goto_a7

    .line 4335
    :cond_2f
    iput-object p2, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 4336
    iget-boolean v2, p1, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    iput-boolean v2, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 4338
    :goto_35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 4339
    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iput-object v2, v0, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 4340
    iget-boolean v2, p1, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    iput-boolean v2, v0, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 4341
    iget-boolean v2, p1, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    iput-boolean v2, v0, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 4342
    iget-boolean v2, p1, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    iput-boolean v2, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    .line 4343
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Vpn;->getAppExclusionList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 4344
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 4346
    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v0, :pswitch_data_ba

    .line 4358
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 4359
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, "Invalid platform VPN type"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 4360
    const-string v0, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown VPN profile type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 4351
    :pswitch_7c
    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 4353
    invoke-static {p1}, Landroid/net/Ikev2VpnProfile;->fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/Ikev2VpnProfile;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 4354
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn$Dependencies;->newScheduledThreadPoolExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/net/Ikev2VpnProfile;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 4355
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4365
    :goto_90
    const-string p1, "[Legacy VPN]"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a5

    .line 4366
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v3, "android:establish_vpn_manager"

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/security/GeneralSecurityException; {:try_start_d .. :try_end_a5} :catch_2c
    .catchall {:try_start_d .. :try_end_a5} :catchall_28

    .line 4377
    :cond_a5
    monitor-exit p0

    return-void

    .line 4372
    :goto_a7
    :try_start_a7
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 4374
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v0, "VPN startup failed"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 4375
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "VPN startup failed"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_b8
    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_a7 .. :try_end_b9} :catchall_28

    throw p1

    :pswitch_data_ba
    .packed-switch 0x6
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
    .end packed-switch
.end method

.method public declared-synchronized stopVpnProfile(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 4409
    :try_start_1
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4411
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 4415
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 4416
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerAndNotifyAppLocked()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_13

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_17

    .line 4418
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_13

    throw p1
.end method

.method public final stopVpnRunnerAndNotifyAppLocked()V
    .registers 13

    .line 4384
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 4386
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4387
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 4390
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 4387
    const-string v3, "android.net.category.EVENT_DEACTIVATED_BY_USER"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/connectivity/Vpn;->buildVpnManagerEventIntent(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_23

    :cond_21
    move-object v2, p0

    const/4 p0, 0x0

    .line 4394
    :goto_23
    iget-object v1, v2, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exit()V

    if-eqz p0, :cond_37

    .line 4395
    iget-object v1, v2, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 4396
    iget-object v1, v2, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p0}, Lcom/android/server/connectivity/Vpn;->notifyVpnManagerVpnStopped(Ljava/lang/String;ILandroid/content/Intent;)V

    :cond_37
    return-void
.end method

.method public declared-synchronized stopVpnRunnerPrivileged()V
    .registers 2

    monitor-enter p0

    .line 2667
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    if-nez v0, :cond_9

    .line 2668
    monitor-exit p0

    return-void

    .line 2671
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exit()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 2672
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public final storeAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6

    .line 4435
    :try_start_0
    sget-object v0, Landroid/net/vcn/util/PersistableBundleUtils;->STRING_SERIALIZER:Landroid/net/vcn/util/PersistableBundleUtils$Serializer;

    invoke-static {p2, v0}, Landroid/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object p2

    .line 4437
    invoke-static {p2}, Landroid/net/vcn/util/PersistableBundleUtils;->toDiskStableBytes(Landroid/os/PersistableBundle;)[B

    move-result-object p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_23

    .line 4443
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4445
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnAppExcludedForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, p2}, Lcom/android/server/connectivity/VpnProfileStore;->put(Ljava/lang/String;[B)Z
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1e

    .line 4447
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4448
    throw p0

    :catch_23
    move-exception p0

    .line 4439
    const-string p1, "Vpn"

    const-string/jumbo p2, "problem writing into stream"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 11

    .line 2393
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_b

    move p1, v1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 2395
    :goto_c
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2398
    :try_start_16
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    const-class v5, Landroid/app/NotificationManager;

    .line 2399
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_2d

    const/16 v5, 0x11

    .line 2400
    const-string v6, "Vpn"

    if-nez p1, :cond_30

    .line 2401
    :try_start_26
    invoke-virtual {v4, v6, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2d

    .line 2424
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2d
    move-exception p0

    goto/16 :goto_af

    .line 2404
    :cond_30
    :try_start_30
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2405
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v8, 0x1040249

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2407
    const-string/jumbo v7, "lockdown"

    iget-boolean v8, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    .line 2408
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2409
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const/high16 v8, 0xc000000

    invoke-virtual {v7, p1, v8, v0}, Lcom/android/server/connectivity/Vpn$SystemServices;->pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 2411
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v8, "VPN"

    invoke-direct {v0, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v7, 0x1080ac7

    .line 2413
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v8, 0x1040afe

    .line 2414
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v8, 0x1040afb

    .line 2415
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2416
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string/jumbo v0, "sys"

    .line 2417
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 2418
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 2419
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v0, 0x106001c

    .line 2420
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 2422
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v4, v6, v5, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_ab
    .catchall {:try_start_30 .. :try_end_ab} :catchall_2d

    .line 2424
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_af
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2425
    throw p0
.end method

.method public final declared-synchronized updateAppExclusionList(Ljava/util/List;)V
    .registers 5

    monitor-enter p0

    .line 4484
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_48

    .line 4486
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 4487
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 4488
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const/4 v2, 0x0

    .line 4489
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    .line 4491
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4492
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 4493
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 4492
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->setVpnNetworkPreference(Ljava/lang/String;Ljava/util/Set;)V

    .line 4495
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/Vpn;->doSendNetworkCapabilities(Landroid/net/NetworkAgent;Landroid/net/NetworkCapabilities;)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_46

    goto :goto_48

    :catchall_46
    move-exception p1

    goto :goto_4a

    .line 4498
    :cond_48
    :goto_48
    monitor-exit p0

    return-void

    :goto_4a
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_46

    throw p1
.end method

.method public final updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z
    .registers 8

    .line 1608
    iget-boolean v0, p2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v2, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v3, 0x0

    const-string v4, "Vpn"

    if-eq v0, v2, :cond_11

    .line 1609
    const-string p0, "Handover not possible due to changes to allowBypass"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1615
    :cond_11
    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object p2, p2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 1616
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_28

    goto :goto_31

    .line 1621
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    const/4 p0, 0x1

    return p0

    .line 1617
    :cond_31
    :goto_31
    const-string p0, "Handover not possible due to changes to allowed/denied apps"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 5

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {p1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo$DetailedState;)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 732
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    sget-object p2, Lcom/android/server/connectivity/Vpn$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_79

    const/4 v0, 0x2

    if-eq p2, v0, :cond_63

    const/4 v0, 0x3

    if-eq p2, v0, :cond_63

    const/4 v0, 0x4

    if-ne p2, v0, :cond_4c

    .line 762
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-nez p2, :cond_44

    goto :goto_87

    .line 763
    :cond_44
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VPN can only go to CONNECTING state when the agent is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 768
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal state argument "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 751
    :cond_63
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p2, :cond_87

    .line 752
    invoke-virtual {p2}, Landroid/net/NetworkAgent;->unregister()V

    .line 753
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 754
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectivityMetrics:Lcom/android/server/connectivity/VpnConnectivityMetrics;

    if-eqz p2, :cond_87

    .line 755
    invoke-virtual {p2}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->notifyVpnDisconnected()V

    .line 757
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectivityMetrics:Lcom/android/server/connectivity/VpnConnectivityMetrics;

    invoke-virtual {p2}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->resetMetrics()V

    goto :goto_87

    .line 742
    :cond_79
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p2, :cond_87

    .line 743
    invoke-virtual {p2}, Landroid/net/NetworkAgent;->markConnected()V

    .line 744
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectivityMetrics:Lcom/android/server/connectivity/VpnConnectivityMetrics;

    if-eqz p2, :cond_87

    .line 745
    invoke-virtual {p2}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->notifyVpnConnected()V

    .line 770
    :cond_87
    :goto_87
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method public validateRequiredFeatures(Lcom/android/internal/net/VpnProfile;)V
    .registers 2

    .line 4119
    iget p1, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch p1, :pswitch_data_1e

    goto :goto_14

    .line 4124
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.software.ipsec_tunnels"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    :goto_14
    return-void

    .line 4126
    :cond_15
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Ikev2VpnProfile(s) requires PackageManager.FEATURE_IPSEC_TUNNELS"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_1e
    .packed-switch 0x6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final verifyCallingUidAndPackage(Ljava/lang/String;)V
    .registers 4

    .line 4105
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/server/connectivity/Vpn$Dependencies;->verifyCallingUidAndPackage(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
