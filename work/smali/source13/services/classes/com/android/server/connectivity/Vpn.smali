.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;,
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;,
        Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;,
        Lcom/android/server/connectivity/Vpn$VpnRunner;,
        Lcom/android/server/connectivity/Vpn$SystemServices;,
        Lcom/android/server/connectivity/Vpn$Connection;,
        Lcom/android/server/connectivity/Vpn$Dependencies;,
        Lcom/android/server/connectivity/Vpn$RetryScheduler;
    }
.end annotation


# static fields
.field private static final ANDROID_KEYSTORE_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"

.field private static final LOCKDOWN_ALLOWLIST_SETTING_NAME:Ljava/lang/String; = "always_on_vpn_lockdown_whitelist"

.field private static final LOGD:Z = true

.field static final MAX_VPN_PROFILE_SIZE_BYTES:I = 0x20000

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field static final VPN_APP_EXCLUDED:Ljava/lang/String; = "VPN_APP_EXCLUDED_"

.field private static final VPN_DEFAULT_SCORE:I = 0x65

.field private static final VPN_LAUNCH_IDLE_ALLOWLIST_DURATION_MS:J = 0xea60L

.field private static final VPN_MANAGER_EVENT_ALLOWLIST_DURATION_MS:J = 0x7530L

.field private static final VPN_PROVIDER_NAME_BASE:Ljava/lang/String; = "VpnNetworkProvider:"


# instance fields
.field protected mAlwaysOn:Z

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mBlockedUidsAsToldToConnectivity:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/UidRangeParcel;",
            ">;"
        }
    .end annotation
.end field

.field protected mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field final mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

.field private volatile mEnableTeardown:Z

.field private final mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

.field protected mInterface:Ljava/lang/String;

.field private mIsPackageTargetingAtLeastQ:Z

.field private mLegacyState:I

.field protected mLockdown:Z

.field private mLockdownAllowlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/net/INetd;

.field protected mNetworkAgent:Landroid/net/NetworkAgent;

.field protected mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkProvider:Landroid/net/NetworkProvider;

.field private final mNms:Landroid/os/INetworkManagementService;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field protected mPackage:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

.field private final mUserId:I

.field private final mUserIdContext:Landroid/content/Context;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

.field protected mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppOpsManager(Lcom/android/server/connectivity/Vpn;)Landroid/app/AppOpsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableTeardown(Lcom/android/server/connectivity/Vpn;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIkev2SessionCreator(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetd(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetd;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/net/INetd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkInfo(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmObserver(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOwnerUID(Lcom/android/server/connectivity/Vpn;)I
    .registers 1

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$magentConnect(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$magentDisconnect(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanupVpnStateLocked(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->cleanupVpnStateLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misSettingsVpnLocked(Lcom/android/server/connectivity/Vpn;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misVpnApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mjniCheck(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mjniCreate(Lcom/android/server/connectivity/Vpn;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mjniGetName(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mjniSetAddresses(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmakeLinkProperties(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmakeVpnProfileStateLocked(Lcom/android/server/connectivity/Vpn;)Landroid/net/VpnProfileState;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprepareStatusIntent(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEventToVpnManagerApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;)V
    .registers 18
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "netd"    # Landroid/net/INetd;
    .param p5, "userId"    # I
    .param p6, "vpnProfileStore"    # Lcom/android/server/connectivity/VpnProfileStore;

    .line 482
    new-instance v3, Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-direct {v3}, Lcom/android/server/connectivity/Vpn$Dependencies;-><init>()V

    new-instance v8, Lcom/android/server/connectivity/Vpn$SystemServices;

    move-object v10, p2

    invoke-direct {v8, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    invoke-direct {v9}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V

    .line 484
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;)V
    .registers 19
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deps"    # Lcom/android/server/connectivity/Vpn$Dependencies;
    .param p4, "netService"    # Landroid/os/INetworkManagementService;
    .param p5, "netd"    # Landroid/net/INetd;
    .param p6, "userId"    # I
    .param p7, "vpnProfileStore"    # Lcom/android/server/connectivity/VpnProfileStore;

    .line 490
    new-instance v8, Lcom/android/server/connectivity/Vpn$SystemServices;

    move-object v10, p2

    invoke-direct {v8, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    invoke-direct {v9}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V

    .line 492
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V
    .registers 15
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deps"    # Lcom/android/server/connectivity/Vpn$Dependencies;
    .param p4, "netService"    # Landroid/os/INetworkManagementService;
    .param p5, "netd"    # Landroid/net/INetd;
    .param p6, "userId"    # I
    .param p7, "vpnProfileStore"    # Lcom/android/server/connectivity/VpnProfileStore;
    .param p8, "systemServices"    # Lcom/android/server/connectivity/Vpn$SystemServices;
    .param p9, "ikev2SessionCreator"    # Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 274
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 297
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    .line 1968
    new-instance v1, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 499
    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 500
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 501
    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 502
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 503
    invoke-static {p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    .line 504
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 505
    iput-object p4, p0, Lcom/android/server/connectivity/Vpn;->mNms:Landroid/os/INetworkManagementService;

    .line 506
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/net/INetd;

    .line 507
    iput p6, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 508
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 509
    iput-object p8, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 510
    iput-object p9, p0, Lcom/android/server/connectivity/Vpn;->mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    .line 511
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    .line 513
    const-string v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 514
    invoke-direct {p0, v1, p6}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 515
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    .line 518
    :try_start_6b
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p4, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_70} :catch_71

    .line 521
    goto :goto_79

    .line 519
    :catch_71
    move-exception v1

    .line 520
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Vpn"

    const-string v3, "Problem registering observer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_79
    new-instance v1, Landroid/net/NetworkProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VpnNetworkProvider:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, p1, v2}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    .line 526
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    .line 527
    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 528
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v2, 0x11

    const-string v3, "VPN"

    const-string v4, ""

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 530
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 v1, 0x4

    .line 531
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 532
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    const/16 v1, 0x1c

    .line 533
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    new-instance v1, Landroid/net/VpnTransportInfo;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    .line 534
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 537
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->loadAlwaysOnPackage()V

    .line 538
    return-void
.end method

.method private agentConnect()V
    .registers 19

    .line 1410
    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v12

    .line 1420
    .local v12, "lp":Landroid/net/LinkProperties;
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, v11, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object v13, v0

    .line 1422
    .local v13, "capsBuilder":Landroid/net/NetworkCapabilities$Builder;
    const/16 v0, 0xc

    invoke-virtual {v13, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1424
    const/4 v0, 0x2

    iput v0, v11, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 1425
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v14, "agentConnect"

    invoke-virtual {v11, v0, v14}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1427
    new-instance v0, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    .line 1428
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v0

    .line 1429
    const-string v1, "VPN"

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v2, 0x0

    const/4 v15, 0x1

    if-eqz v1, :cond_3c

    iget-boolean v1, v11, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v1, :cond_3c

    move v1, v15

    goto :goto_3d

    :cond_3c
    move v1, v2

    .line 1430
    :goto_3d
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setBypassableVpn(Z)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 1431
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setVpnRequiresValidation(Z)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 1432
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setLocalRoutesExcludedForVpn(Z)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v0

    .line 1433
    invoke-virtual {v0}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v16

    .line 1435
    .local v16, "networkAgentConfig":Landroid/net/NetworkAgentConfig;
    iget v0, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v13, v0}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1436
    new-array v0, v15, [I

    iget v1, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    aput v1, v0, v2

    invoke-virtual {v13, v0}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 1437
    iget v0, v11, Lcom/android/server/connectivity/Vpn;->mUserId:I

    iget-object v1, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v2, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 1440
    new-instance v0, Landroid/net/VpnTransportInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->getActiveVpnType()I

    move-result v1

    iget-object v2, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 1444
    iget-boolean v0, v11, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    const/16 v1, 0xb

    if-eqz v0, :cond_94

    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    if-eqz v0, :cond_94

    .line 1445
    invoke-virtual {v13, v1}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_97

    .line 1447
    :cond_94
    invoke-virtual {v13, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1450
    :goto_97
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    const/4 v10, 0x0

    if-eqz v0, :cond_a7

    .line 1451
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_a8

    :cond_a7
    move-object v0, v10

    .line 1450
    :goto_a8
    invoke-virtual {v13, v0}, Landroid/net/NetworkCapabilities$Builder;->setUnderlyingNetworks(Ljava/util/List;)Landroid/net/NetworkCapabilities$Builder;

    .line 1453
    invoke-virtual {v13}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1454
    new-instance v0, Lcom/android/server/connectivity/Vpn$1;

    iget-object v3, v11, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v4, v11, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iget-object v6, v11, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    new-instance v1, Landroid/net/NetworkScore$Builder;

    invoke-direct {v1}, Landroid/net/NetworkScore$Builder;-><init>()V

    const/16 v2, 0x65

    .line 1456
    invoke-virtual {v1, v2}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v8

    iget-object v9, v11, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    const-string v5, "VPN"

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v7, v12

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    iput-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1463
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1465
    .local v1, "token":J
    :try_start_df
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e4} :catch_104
    .catchall {:try_start_df .. :try_end_e4} :catchall_102

    .line 1471
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1472
    nop

    .line 1473
    invoke-static {}, Lcom/android/server/connectivity/VpnStub;->get()Lcom/android/server/connectivity/VpnStub;

    move-result-object v0

    iget-object v3, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/android/server/connectivity/VpnStub;->connect(Ljava/lang/String;)V

    .line 1475
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    iget v3, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v4, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v15, v3, v4}, Lcom/android/server/am/SmartPowerServiceStub;->onVpnChanged(ZILjava/lang/String;)V

    .line 1476
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v11, v0, v14}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1477
    return-void

    .line 1471
    :catchall_102
    move-exception v0

    goto :goto_10a

    .line 1466
    :catch_104
    move-exception v0

    .line 1468
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_106
    iput-object v3, v11, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1469
    nop

    .end local v1    # "token":J
    .end local v12    # "lp":Landroid/net/LinkProperties;
    .end local v13    # "capsBuilder":Landroid/net/NetworkCapabilities$Builder;
    .end local v16    # "networkAgentConfig":Landroid/net/NetworkAgentConfig;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw v0
    :try_end_10a
    .catchall {:try_start_106 .. :try_end_10a} :catchall_102

    .line 1471
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "token":J
    .restart local v12    # "lp":Landroid/net/LinkProperties;
    .restart local v13    # "capsBuilder":Landroid/net/NetworkCapabilities$Builder;
    .restart local v16    # "networkAgentConfig":Landroid/net/NetworkAgentConfig;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :goto_10a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1472
    throw v0
.end method

.method private agentDisconnect()V
    .registers 5

    .line 1496
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1497
    invoke-static {}, Lcom/android/server/connectivity/VpnStub;->get()Lcom/android/server/connectivity/VpnStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/connectivity/VpnStub;->disconnect(Ljava/lang/String;)V

    .line 1499
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/android/server/am/SmartPowerServiceStub;->onVpnChanged(ZILjava/lang/String;)V

    .line 1500
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 2
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    .line 1490
    if-eqz p1, :cond_5

    .line 1491
    invoke-virtual {p1}, Landroid/net/NetworkAgent;->unregister()V

    .line 1493
    :cond_5
    return-void
.end method

.method private canHaveRestrictedProfile(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 1480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1482
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    .line 1483
    .local v2, "userContext":Landroid/content/Context;
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->canHaveRestrictedProfile()Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1f

    .line 1485
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1483
    return v3

    .line 1485
    .end local v2    # "userContext":Landroid/content/Context;
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1486
    throw v2
.end method

.method private cleanupVpnStateLocked()V
    .registers 2

    .line 2003
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 2004
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->resetNetworkCapabilities()V

    .line 2005
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 2006
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 2009
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2010
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 2011
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 2012
    return-void
.end method

.method static createUidRangeForUser(I)Landroid/util/Range;
    .registers 5
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3891
    new-instance v0, Landroid/util/Range;

    const v1, 0x186a0

    mul-int v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v3, p0, 0x1

    mul-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method private static doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appOpStr"    # Ljava/lang/String;

    .line 1249
    nop

    .line 1250
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1253
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private doesPackageTargetAtLeastQ(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1282
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1283
    return v1

    .line 1285
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1287
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_11
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 1288
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1289
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_19} :catch_20

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1

    .line 1290
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_20
    move-exception v1

    .line 1291
    .local v1, "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Vpn"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    return v2
.end method

.method private enforceControlPermission()V
    .registers 4

    .line 2015
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    return-void
.end method

.method private enforceControlPermissionOrInternalCaller()V
    .registers 4

    .line 2021
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    return-void
.end method

.method private enforceNotRestrictedUser()V
    .registers 6

    .line 2237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2239
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2241
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1f

    if-nez v3, :cond_17

    .line 2245
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2246
    nop

    .line 2247
    return-void

    .line 2242
    .restart local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_17
    :try_start_17
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Restricted users cannot configure VPNs"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    throw v3
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1f

    .line 2245
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2246
    throw v2
.end method

.method private enforceSettingsPermission()V
    .registers 4

    .line 2025
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .line 2226
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 2228
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_23

    .line 2229
    return-object v1

    .line 2231
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_23
    goto :goto_8

    .line 2233
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find IPv4 default gateway"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 8
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1267
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1268
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0

    .line 1270
    :cond_d
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1271
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1273
    .local v1, "token":J
    :try_start_17
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1b} :catch_24
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    .line 1277
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1273
    return v3

    .line 1277
    :catchall_1f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1278
    throw v3

    .line 1274
    :catch_24
    move-exception v3

    .line 1275
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, -0x1

    .line 1277
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1275
    return v4
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1653
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1654
    .local v0, "uids":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1655
    .local v2, "app":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v3

    .line 1656
    .local v3, "uid":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1659
    :cond_23
    invoke-static {v3}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1660
    invoke-static {v3}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1662
    .end local v2    # "app":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_3a
    goto :goto_9

    .line 1663
    :cond_3b
    return-object v0
.end method

.method private getCaCertificateFromKeystoreAsPem(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 2301
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 2302
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 2303
    .local v0, "cert":Ljava/security/cert/Certificate;
    if-nez v0, :cond_f

    return-object v1

    .line 2304
    :cond_f
    new-instance v1, Ljava/lang/String;

    new-array v2, v2, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 2306
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    :cond_20
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 2309
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_3d

    array-length v3, v0

    if-gt v3, v2, :cond_2a

    goto :goto_3d

    .line 2315
    :cond_2a
    new-instance v1, Ljava/lang/String;

    array-length v3, v0

    .line 2316
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    .line 2315
    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 2310
    :cond_3d
    :goto_3d
    return-object v1
.end method

.method private declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    monitor-enter p0

    .line 2549
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_27

    if-nez v0, :cond_a

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2551
    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 2552
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 2553
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 2554
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2555
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_27

    .line 2557
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_25
    monitor-exit p0

    return-object v0

    .line 2548
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSessionKeyLocked()Ljava/lang/String;
    .registers 2

    .line 3616
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->-$$Nest$fgetmSessionKey(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method private getStateFromLegacyState(I)I
    .registers 5
    .param p1, "legacyState"    # I

    .line 3818
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2a

    .line 3828
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", treat it as STATE_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Vpn"

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    return v0

    .line 3826
    :pswitch_23
    const/4 v0, 0x3

    return v0

    .line 3822
    :pswitch_25
    const/4 v0, 0x2

    return v0

    .line 3820
    :pswitch_27
    const/4 v0, 0x1

    return v0

    .line 3824
    :pswitch_29
    return v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_29
        :pswitch_4
        :pswitch_27
        :pswitch_25
        :pswitch_4
        :pswitch_23
    .end packed-switch
.end method

.method private isCurrentIkev2VpnLocked(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3555
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isCurrentPreparedPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1108
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private isIkev2VpnRunner()Z
    .registers 2

    .line 3610
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    instance-of v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    return v0
.end method

.method private static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 880
    if-eqz p0, :cond_d

    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private isRunningLocked()Z
    .registers 2

    .line 1638
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isSettingsVpnLocked()Z
    .registers 3

    .line 2511
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const-string v1, "[Legacy VPN]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isVpnApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 743
    if-eqz p1, :cond_c

    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isVpnPreConsented(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vpnType"    # I

    .line 1235
    packed-switch p2, :pswitch_data_16

    .line 1243
    const/4 v0, 0x0

    return v0

    .line 1241
    :pswitch_5
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1239
    :pswitch_c
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnProfilePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1237
    :pswitch_11
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_c
        :pswitch_5
    .end packed-switch
.end method

.method private static isVpnProfilePreConsented(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1262
    const-string v0, "android:activate_platform_vpn"

    invoke-static {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1263
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 1262
    :goto_12
    return v0
.end method

.method private static isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1258
    const-string v0, "android:activate_vpn"

    invoke-static {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
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

.method private loadAlwaysOnPackage()V
    .registers 8

    .line 922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 924
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 926
    .local v2, "alwaysOnPackage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v4, "always_on_vpn_lockdown"

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetIntForUser(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v6, 0x1

    :cond_1c
    move v3, v6

    .line 928
    .local v3, "alwaysOnLockdown":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v5, "always_on_vpn_lockdown_whitelist"

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 930
    .local v4, "allowlistString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_3c

    :cond_32
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 932
    .local v5, "allowedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3c
    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_45

    .line 935
    nop

    .end local v2    # "alwaysOnPackage":Ljava/lang/String;
    .end local v3    # "alwaysOnLockdown":Z
    .end local v4    # "allowlistString":Ljava/lang/String;
    .end local v5    # "allowedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    nop

    .line 937
    return-void

    .line 935
    :catchall_45
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    throw v2
.end method

.method private makeDisconnectedVpnProfileState()Landroid/net/VpnProfileState;
    .registers 4

    .line 3843
    new-instance v0, Landroid/net/VpnProfileState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/net/VpnProfileState;-><init>(ILjava/lang/String;ZZ)V

    return-object v0
.end method

.method private makeKeystoreEngineGrantString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;

    .line 2269
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2270
    return-object v0

    .line 2272
    :cond_4
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v1

    .line 2274
    .local v1, "keystore2":Landroid/security/KeyStore2;
    new-instance v2, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v2}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 2275
    .local v2, "key":Landroid/system/keystore2/KeyDescriptor;
    const/4 v3, 0x0

    iput v3, v2, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 2276
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 2277
    iput-object p1, v2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 2278
    iput-object v0, v2, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 2280
    const/16 v0, 0x104

    .line 2287
    .local v0, "grantAccessVector":I
    const/16 v3, 0x3f8

    const/16 v4, 0x104

    :try_start_1e
    invoke-virtual {v1, v2, v3, v4}, Landroid/security/KeyStore2;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v3
    :try_end_22
    .catch Landroid/security/KeyStoreException; {:try_start_1e .. :try_end_22} :catch_2b

    move-object v2, v3

    .line 2291
    nop

    .line 2295
    iget-wide v3, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v3, v4}, Landroid/security/KeyStore2;->makeKeystoreEngineGrantString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2288
    :catch_2b
    move-exception v3

    .line 2289
    .local v3, "e":Landroid/security/KeyStoreException;
    const-string v4, "Vpn"

    const-string v5, "Failed to get grant for keystore key."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2290
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .registers 10

    .line 1317
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 1318
    .local v0, "allowIPv4":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 1320
    .local v1, "allowIPv6":Z
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 1322
    .local v2, "lp":Landroid/net/LinkProperties;
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1324
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v3, :cond_3e

    .line 1325
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 1326
    .local v4, "address":Landroid/net/LinkAddress;
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1327
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v5

    .line 1328
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v5

    .line 1329
    .end local v4    # "address":Landroid/net/LinkAddress;
    goto :goto_20

    .line 1332
    :cond_3e
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v3, :cond_71

    .line 1333
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 1334
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1335
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 1337
    .local v5, "address":Ljava/net/InetAddress;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_70

    .line 1338
    instance-of v6, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v6

    .line 1339
    instance-of v6, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v6

    .line 1341
    .end local v4    # "route":Landroid/net/RouteInfo;
    .end local v5    # "address":Ljava/net/InetAddress;
    :cond_70
    goto :goto_4c

    .line 1344
    :cond_71
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v3, :cond_99

    .line 1345
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1346
    .local v4, "dnsServer":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 1347
    .restart local v5    # "address":Ljava/net/InetAddress;
    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 1348
    instance-of v6, v5, Ljava/net/Inet4Address;

    or-int/2addr v0, v6

    .line 1349
    instance-of v6, v5, Ljava/net/Inet6Address;

    or-int/2addr v1, v6

    .line 1350
    .end local v4    # "dnsServer":Ljava/lang/String;
    .end local v5    # "address":Ljava/net/InetAddress;
    goto :goto_7f

    .line 1353
    :cond_99
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1355
    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_b4

    .line 1356
    new-instance v6, Landroid/net/RouteInfo;

    new-instance v7, Landroid/net/IpPrefix;

    sget-object v8, Lcom/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    invoke-direct {v7, v8, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v6, v7, v5, v5, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v2, v6}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1360
    :cond_b4
    if-nez v1, :cond_c5

    .line 1361
    new-instance v6, Landroid/net/RouteInfo;

    new-instance v7, Landroid/net/IpPrefix;

    sget-object v8, Lcom/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ANY:Ljava/net/Inet6Address;

    invoke-direct {v7, v8, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v6, v7, v5, v5, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v2, v6}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1367
    :cond_c5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1368
    .local v3, "buffer":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v4, :cond_ee

    .line 1369
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ee

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1370
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1371
    .end local v5    # "domain":Ljava/lang/String;
    goto :goto_d8

    .line 1373
    :cond_ee
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1375
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget v4, v4, Lcom/android/internal/net/VpnConfig;->mtu:I

    if-lez v4, :cond_106

    .line 1376
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget v4, v4, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 1381
    :cond_106
    return-object v2
.end method

.method private makeVpnProfileStateLocked()Landroid/net/VpnProfileState;
    .registers 6

    .line 3837
    new-instance v0, Landroid/net/VpnProfileState;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->getStateFromLegacyState(I)I

    move-result v1

    .line 3838
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/VpnProfileState;-><init>(ILjava/lang/String;ZZ)V

    .line 3837
    return-object v0
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .registers 21
    .param p1, "newPackage"    # Ljava/lang/String;

    .line 1114
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string v13, " to call protect() "

    const-string v14, "Vpn"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1117
    .local v15, "token":J
    :try_start_c
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_139

    const/4 v10, 0x0

    if-eqz v0, :cond_26

    .line 1118
    :try_start_11
    iput-object v10, v11, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 1119
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1120
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 1121
    iput-object v10, v11, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1122
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->resetNetworkCapabilities()V
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_21

    goto :goto_26

    .line 1177
    :catchall_21
    move-exception v0

    move-wide/from16 v17, v15

    goto/16 :goto_13c

    .line 1126
    :cond_26
    :goto_26
    :try_start_26
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_139

    if-eqz v0, :cond_54

    .line 1128
    :try_start_2a
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$Connection;->-$$Nest$fgetmService(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v0

    const v1, 0xffffff

    .line 1129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x1

    .line 1128
    invoke-interface {v0, v1, v2, v10, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_39} :catch_3a
    .catchall {:try_start_2a .. :try_end_39} :catchall_21

    .line 1132
    goto :goto_3b

    .line 1130
    :catch_3a
    move-exception v0

    .line 1133
    :goto_3b
    :try_start_3b
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android:establish_vpn_service"

    iget v2, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v3, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, v11, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1136
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->cleanupVpnStateLocked()V
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_21

    move-wide/from16 v17, v15

    move-object v15, v10

    goto :goto_9e

    .line 1137
    :cond_54
    :try_start_54
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eqz v0, :cond_9b

    .line 1138
    const-string v0, "[Legacy VPN]"

    iget-object v1, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 1139
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android:establish_vpn_manager"

    iget v2, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v3, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1147
    const-string v2, "android.net.category.EVENT_DEACTIVATED_BY_USER"

    const/4 v3, -0x1

    const/4 v4, -0x1

    iget-object v5, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 1149
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object v7
    :try_end_81
    .catchall {:try_start_54 .. :try_end_81} :catchall_139

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 1147
    move-object/from16 v1, p0

    move-wide/from16 v17, v15

    move-object v15, v10

    .end local v15    # "token":J
    .local v17, "token":J
    move-object v10, v0

    :try_start_8a
    invoke-direct/range {v1 .. v10}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    goto :goto_95

    .line 1146
    .end local v17    # "token":J
    .restart local v15    # "token":J
    :cond_8e
    move-wide/from16 v17, v15

    move-object v15, v10

    .end local v15    # "token":J
    .restart local v17    # "token":J
    goto :goto_95

    .line 1138
    .end local v17    # "token":J
    .restart local v15    # "token":J
    :cond_92
    move-wide/from16 v17, v15

    move-object v15, v10

    .line 1154
    .end local v15    # "token":J
    .restart local v17    # "token":J
    :goto_95
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exit()V
    :try_end_9a
    .catchall {:try_start_8a .. :try_end_9a} :catchall_a6

    goto :goto_9e

    .line 1137
    .end local v17    # "token":J
    .restart local v15    # "token":J
    :cond_9b
    move-wide/from16 v17, v15

    move-object v15, v10

    .line 1158
    .end local v15    # "token":J
    .restart local v17    # "token":J
    :goto_9e
    :try_start_9e
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNms:Landroid/os/INetworkManagementService;

    iget v1, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a5} :catch_a9
    .catchall {:try_start_9e .. :try_end_a5} :catchall_a6

    .line 1161
    goto :goto_ca

    .line 1177
    :catchall_a6
    move-exception v0

    goto/16 :goto_13c

    .line 1159
    :catch_a9
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/lang/Exception;
    :try_start_aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to disallow UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ca
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switched from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iput-object v12, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 1165
    iget v0, v11, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-direct {v11, v12, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 1166
    invoke-direct/range {p0 .. p1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z
    :try_end_fc
    .catchall {:try_start_aa .. :try_end_fc} :catchall_a6

    .line 1168
    :try_start_fc
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNms:Landroid/os/INetworkManagementService;

    iget v1, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_103} :catch_104
    .catchall {:try_start_fc .. :try_end_103} :catchall_a6

    .line 1171
    goto :goto_125

    .line 1169
    :catch_104
    move-exception v0

    .line 1170
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to allow UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_125
    iput-object v15, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1174
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "prepare"

    invoke-virtual {v11, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1175
    iget-boolean v0, v11, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {v11, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_134
    .catchall {:try_start_105 .. :try_end_134} :catchall_a6

    .line 1177
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1178
    nop

    .line 1179
    return-void

    .line 1177
    .end local v17    # "token":J
    .restart local v15    # "token":J
    :catchall_139
    move-exception v0

    move-wide/from16 v17, v15

    .end local v15    # "token":J
    .restart local v17    # "token":J
    :goto_13c
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1178
    throw v0
.end method

.method private prepareStatusIntent()V
    .registers 5

    .line 2044
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2046
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/Vpn$Dependencies;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 2048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2049
    nop

    .line 2050
    return-void

    .line 2048
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2049
    throw v2
.end method

.method private resetNetworkCapabilities()V
    .registers 5

    .line 596
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 597
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    new-instance v2, Landroid/net/VpnTransportInfo;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    .line 598
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 600
    return-void
.end method

.method private saveAlwaysOnPackage()V
    .registers 7

    .line 905
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 907
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    .line 908
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 907
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 909
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown"

    .line 910
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v4, :cond_1f

    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 909
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutIntForUser(Ljava/lang/String;II)V

    .line 911
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown_whitelist"

    const-string v4, ","

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 913
    invoke-static {v4, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 911
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3b

    .line 915
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 916
    nop

    .line 917
    return-void

    .line 915
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 916
    throw v2
.end method

.method private sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    .registers 32
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "errorClass"    # I
    .param p3, "errorCode"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "sessionKey"    # Ljava/lang/String;
    .param p6, "profileState"    # Landroid/net/VpnProfileState;
    .param p7, "underlyingNetwork"    # Landroid/net/Network;
    .param p8, "nc"    # Landroid/net/NetworkCapabilities;
    .param p9, "lp"    # Landroid/net/LinkProperties;

    .line 712
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.action.VPN_MANAGER_EVENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 713
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v13, p4

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v0, "android.net.extra.VPN_PROFILE_STATE"

    move-object/from16 v14, p6

    invoke-virtual {v3, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 716
    const-string v0, "android.net.extra.SESSION_KEY"

    move-object/from16 v15, p5

    invoke-virtual {v3, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    const-string v0, "android.net.extra.UNDERLYING_NETWORK"

    move-object/from16 v12, p7

    invoke-virtual {v3, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 718
    const-string v0, "android.net.extra.UNDERLYING_NETWORK_CAPABILITIES"

    move-object/from16 v11, p8

    invoke-virtual {v3, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 719
    const-string v0, "android.net.extra.UNDERLYING_LINK_PROPERTIES"

    move-object/from16 v10, p9

    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v0, "android.net.extra.TIMESTAMP_MILLIS"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 721
    const-string v0, "android.net.category.EVENT_DEACTIVATED_BY_USER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 722
    const-string v0, "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_56

    :cond_51
    move/from16 v9, p2

    move/from16 v7, p3

    goto :goto_64

    .line 723
    :cond_56
    :goto_56
    const-string v0, "android.net.extra.ERROR_CLASS"

    move/from16 v9, p2

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 724
    const-string v0, "android.net.extra.ERROR_CODE"

    move/from16 v7, p3

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    :goto_64
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$Dependencies;->getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;

    move-result-object v16

    .line 731
    .local v16, "idleController":Lcom/android/server/DeviceIdleInternal;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const-wide/16 v17, 0x7530

    iget v0, v1, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const/16 v19, 0x0

    const/16 v20, 0x135

    const-string v21, "VpnManager event"

    move-object/from16 v4, v16

    move-object/from16 v6, p4

    move-wide/from16 v7, v17

    move v9, v0

    move/from16 v10, v19

    move/from16 v11, v20

    move-object/from16 v12, v21

    invoke-interface/range {v4 .. v12}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 735
    const/4 v4, 0x0

    :try_start_89
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_8f
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_8f} :catch_93

    if-eqz v0, :cond_92

    const/4 v4, 0x1

    :cond_92
    return v4

    .line 736
    :catch_93
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service of VpnManager app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed to start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Vpn"

    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    return v4
.end method

.method private setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .registers 10
    .param p1, "enforce"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/UidRangeParcel;",
            ">;)Z"
        }
    .end annotation

    .line 1928
    .local p2, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/UidRangeParcel;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1929
    return v1

    .line 1932
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1933
    .local v0, "integerRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRangeParcel;

    .line 1934
    .local v3, "uidRange":Landroid/net/UidRangeParcel;
    new-instance v4, Landroid/util/Range;

    iget v5, v3, Landroid/net/UidRangeParcel;->start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v3, Landroid/net/UidRangeParcel;->stop:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    .end local v3    # "uidRange":Landroid/net/UidRangeParcel;
    goto :goto_15

    .line 1937
    :cond_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1, v0}, Landroid/net/ConnectivityManager;->setRequireVpnForUids(ZLjava/util/Collection;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_3b} :catch_4a

    .line 1942
    nop

    .line 1943
    if-eqz p1, :cond_44

    .line 1944
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_49

    .line 1946
    :cond_44
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1948
    :goto_49
    return v1

    .line 1938
    :catch_4a
    move-exception v1

    .line 1939
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating blocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for UIDs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1940
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1939
    const-string v3, "Vpn"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1941
    const/4 v2, 0x0

    return v2
.end method

.method private setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 828
    .local p3, "lockdownAllowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Vpn"

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not setting legacy VPN \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" as always-on."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return v2

    .line 833
    :cond_28
    if-eqz p3, :cond_5a

    .line 834
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 835
    .local v3, "pkg":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting always-on vpn, invalid allowed package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return v2

    .line 839
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_59
    goto :goto_2e

    .line 842
    :cond_5a
    const/4 v0, 0x1

    if-eqz p1, :cond_7d

    .line 844
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 846
    .local v3, "oldId":J
    :try_start_61
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v1
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_78

    .line 848
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    nop

    .line 853
    if-nez v1, :cond_6d

    move v5, v0

    goto :goto_6e

    :cond_6d
    const/4 v5, 0x2

    .line 854
    .local v5, "grantType":I
    :goto_6e
    invoke-virtual {p0, p1, v5}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_75

    .line 855
    return v2

    .line 857
    :cond_75
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 858
    .end local v1    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldId":J
    .end local v5    # "grantType":I
    goto :goto_81

    .line 848
    .restart local v3    # "oldId":J
    :catchall_78
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    throw v0

    .line 859
    .end local v3    # "oldId":J
    :cond_7d
    const-string p1, "[Legacy VPN]"

    .line 860
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 863
    :goto_81
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v1, :cond_88

    if-eqz p2, :cond_88

    move v2, v0

    :cond_88
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 864
    if-eqz v2, :cond_98

    if-eqz p3, :cond_98

    .line 865
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_9c

    .line 866
    :cond_98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_9c
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 868
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 869
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 870
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    goto :goto_b6

    .line 874
    :cond_b3
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 876
    :goto_b6
    return v0
.end method

.method private setVpnForcedLocked(Z)V
    .registers 12
    .param p1, "enforce"    # Z

    .line 1871
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1872
    const/4 v0, 0x0

    .local v0, "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_16

    .line 1874
    .end local v0    # "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1875
    .restart local v0    # "exemptedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1877
    :goto_16
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1879
    .local v1, "rangesToRemove":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRangeParcel;>;"
    const/4 v2, 0x1

    if-eqz p1, :cond_9a

    .line 1880
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const/4 v4, 0x0

    .line 1881
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    .line 1884
    .local v3, "restrictedProfilesRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1889
    .local v4, "rangesThatShouldBeBlocked":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRangeParcel;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_90

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Range;

    .line 1890
    .local v6, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_67

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_67

    .line 1891
    new-instance v7, Landroid/net/UidRangeParcel;

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v2, v8}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 1892
    :cond_67
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_8f

    .line 1893
    new-instance v7, Landroid/net/UidRangeParcel;

    .line 1894
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/net/UidRangeParcel;-><init>(II)V

    .line 1893
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1896
    .end local v6    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_8f
    :goto_8f
    goto :goto_30

    .line 1898
    :cond_90
    invoke-interface {v1, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1899
    move-object v5, v4

    .line 1904
    .local v5, "rangesToAdd":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRangeParcel;>;"
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1905
    .end local v3    # "restrictedProfilesRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .end local v4    # "rangesThatShouldBeBlocked":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRangeParcel;>;"
    goto :goto_9e

    .line 1906
    .end local v5    # "rangesToAdd":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRangeParcel;>;"
    :cond_9a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    .line 1910
    .restart local v5    # "rangesToAdd":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRangeParcel;>;"
    :goto_9e
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1912
    invoke-direct {p0, v2, v5}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1913
    return-void
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    .registers 13
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;
    .param p4, "profile"    # Lcom/android/internal/net/VpnProfile;

    monitor-enter p0

    .line 2489
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerPrivileged()V

    .line 2492
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 2493
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2496
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2497
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnRunner()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 2498
    monitor-exit p0

    return-void

    .line 2488
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    .end local p2    # "racoon":[Ljava/lang/String;
    .end local p3    # "mtpd":[Ljava/lang/String;
    .end local p4    # "profile":Lcom/android/internal/net/VpnProfile;
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V
    .registers 10
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 3662
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 3663
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startPlatformVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_b6

    .line 3667
    :try_start_c
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 3668
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3669
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 3670
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 3671
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 3675
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    goto :goto_3b

    .line 3677
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_31
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p2, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 3678
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, p1, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 3680
    :goto_3b
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 3681
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 3682
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, p1, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 3683
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, p1, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 3685
    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v0, :pswitch_data_ba

    .line 3695
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_6c

    .line 3690
    :pswitch_5d
    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 3691
    invoke-static {p1}, Landroid/net/Ikev2VpnProfile;->fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/Ikev2VpnProfile;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/net/Ikev2VpnProfile;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 3692
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->start()V

    .line 3693
    goto :goto_8b

    .line 3695
    :goto_6c
    const-string v1, "Invalid platform VPN type"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 3696
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown VPN profile type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    :goto_8b
    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 3702
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v2, "android:establish_vpn_manager"

    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_a0} :catch_a3
    .catchall {:try_start_c .. :try_end_a0} :catchall_b6

    .line 3712
    :cond_a0
    nop

    .line 3713
    monitor-exit p0

    return-void

    .line 3706
    :catch_a3
    move-exception v0

    .line 3708
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const/4 v1, 0x0

    :try_start_a5
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 3710
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, "VPN startup failed"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 3711
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "VPN startup failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_b6
    .catchall {:try_start_a5 .. :try_end_b6} :catchall_b6

    .line 3661
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local p1    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_b6
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_ba
    .packed-switch 0x6
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
    .end packed-switch
.end method

.method private storeAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3739
    .local p2, "excludedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v0, Lcom/android/server/vcn/util/PersistableBundleUtils;->STRING_SERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;

    invoke-static {p2, v0}, Lcom/android/server/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 3741
    .local v0, "bundle":Landroid/os/PersistableBundle;
    invoke-static {v0}, Lcom/android/server/vcn/util/PersistableBundleUtils;->toDiskStableBytes(Landroid/os/PersistableBundle;)[B

    move-result-object v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_26

    move-object v0, v1

    .line 3745
    .local v0, "data":[B
    nop

    .line 3747
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3749
    .local v1, "oldId":J
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnAppExcludedForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/server/connectivity/VpnProfileStore;->put(Ljava/lang/String;[B)Z
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_21

    .line 3751
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3752
    nop

    .line 3753
    const/4 v3, 0x1

    return v3

    .line 3751
    :catchall_21
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3752
    throw v3

    .line 3742
    .end local v0    # "data":[B
    .end local v1    # "oldId":J
    :catch_26
    move-exception v0

    .line 3743
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Vpn"

    const-string/jumbo v2, "problem writing into stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3744
    const/4 v1, 0x0

    return v1
.end method

.method private static uidRangesForUser(ILjava/util/Set;)Ljava/util/List;
    .registers 7
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1766
    .local p1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object v0

    .line 1767
    .local v0, "userRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1768
    .local v1, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 1769
    .local v3, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v0, v3}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1770
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1772
    .end local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_22
    goto :goto_d

    .line 1773
    :cond_23
    return-object v1
.end method

.method private updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 15
    .param p1, "networkState"    # Landroid/net/NetworkInfo$DetailedState;

    .line 2124
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2126
    .local v0, "visible":Z
    :goto_c
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2127
    .local v2, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2129
    .local v3, "token":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    const-class v6, Landroid/app/NotificationManager;

    .line 2130
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_ad

    .line 2131
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const/16 v6, 0x11

    const-string v7, "Vpn"

    if-nez v0, :cond_2d

    .line 2132
    :try_start_26
    invoke-virtual {v5, v7, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_ad

    .line 2155
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2133
    return-void

    .line 2135
    :cond_2d
    :try_start_2d
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2136
    .local v8, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v10, 0x104023f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2138
    const-string/jumbo v9, "lockdown"

    iget-boolean v10, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2139
    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2140
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const/high16 v10, 0xc000000

    invoke-virtual {v9, v8, v10, v2}, Lcom/android/server/connectivity/Vpn$SystemServices;->pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 2142
    .local v9, "configIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v12, "VPN"

    invoke-direct {v10, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v11, 0x1080954

    .line 2144
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v12, 0x10409a4

    .line 2145
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v12, 0x10409a1

    .line 2146
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 2147
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    const-string/jumbo v11, "sys"

    .line 2148
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 2149
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 2150
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v11, 0x106001c

    .line 2151
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2153
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v5, v7, v6, v10}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_a8
    .catchall {:try_start_2d .. :try_end_a8} :catchall_ad

    .line 2155
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "configIntent":Landroid/app/PendingIntent;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2156
    nop

    .line 2157
    return-void

    .line 2155
    :catchall_ad
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2156
    throw v1
.end method

.method private updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z
    .registers 7
    .param p1, "agent"    # Landroid/net/NetworkAgent;
    .param p2, "oldConfig"    # Lcom/android/internal/net/VpnConfig;

    .line 1391
    iget-boolean v0, p2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v2, 0x0

    const-string v3, "Vpn"

    if-eq v0, v1, :cond_11

    .line 1392
    const-string v0, "Handover not possible due to changes to allowBypass"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return v2

    .line 1398
    :cond_11
    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 1399
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_33

    .line 1404
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 1405
    const/4 v0, 0x1

    return v0

    .line 1400
    :cond_33
    :goto_33
    const-string v0, "Handover not possible due to changes to allowed/denied apps"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    return v2
.end method

.method private verifyCallingUidAndPackage(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3484
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3485
    .local v0, "callingUid":I
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_d

    .line 3488
    return-void

    .line 3486
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    monitor-enter p0

    .line 2053
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    .line 2054
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2056
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 2057
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 2058
    monitor-exit p0

    return v0

    .line 2052
    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "prefixLength":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .registers 12
    .param p2, "userId"    # I
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

    .line 1728
    .local p1, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .local p3, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_4b

    .line 1730
    const/4 v0, -0x1

    .local v0, "start":I
    const/4 v1, -0x1

    .line 1731
    .local v1, "stop":I
    invoke-direct {p0, p3, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1732
    .local v3, "uid":I
    if-ne v0, v4, :cond_21

    .line 1733
    move v0, v3

    goto :goto_36

    .line 1734
    :cond_21
    add-int/lit8 v4, v1, 0x1

    if-eq v3, v4, :cond_36

    .line 1735
    new-instance v4, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1736
    move v0, v3

    .line 1738
    :cond_36
    :goto_36
    move v1, v3

    .line 1739
    .end local v3    # "uid":I
    goto :goto_c

    .line 1740
    :cond_38
    if-eq v0, v4, :cond_4a

    new-instance v2, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1741
    .end local v0    # "start":I
    .end local v1    # "stop":I
    :cond_4a
    goto :goto_b3

    :cond_4b
    if-eqz p4, :cond_ac

    .line 1743
    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object v0

    .line 1744
    .local v0, "userRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1745
    .local v1, "start":I
    invoke-direct {p0, p4, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1746
    .restart local v3    # "uid":I
    if-ne v3, v1, :cond_78

    .line 1747
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 1749
    :cond_78
    new-instance v4, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1750
    add-int/lit8 v1, v3, 0x1

    .line 1752
    .end local v3    # "uid":I
    :goto_8c
    goto :goto_63

    .line 1753
    :cond_8d
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_ab

    .line 1754
    new-instance v2, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1756
    .end local v0    # "userRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v1    # "start":I
    :cond_ab
    goto :goto_b3

    .line 1758
    :cond_ac
    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1760
    :goto_b3
    return-void
.end method

.method public declared-synchronized appliesToUid(I)Z
    .registers 8
    .param p1, "uid"    # I

    monitor-enter p0

    .line 2098
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_34

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2099
    monitor-exit p0

    return v1

    .line 2101
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_34

    .line 2102
    .local v0, "uids":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    const/4 v2, 0x1

    if-nez v0, :cond_15

    monitor-exit p0

    return v2

    .line 2103
    :cond_15
    :try_start_15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    .line 2104
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_34

    if-eqz v5, :cond_31

    monitor-exit p0

    return v2

    .line 2105
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_31
    goto :goto_19

    .line 2106
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_32
    monitor-exit p0

    return v1

    .line 2097
    .end local v0    # "uids":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .end local p1    # "uid":I
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 11
    .param p1, "userId"    # I
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

    .line 1683
    .local p2, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1686
    .local v0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1689
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1693
    .local v1, "token":J
    :try_start_12
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v3
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_42

    .line 1695
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1696
    nop

    .line 1697
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1701
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_36

    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v6, p1, :cond_3c

    .line 1702
    :cond_36
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1704
    :cond_3c
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v6, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1706
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_41
    goto :goto_20

    .line 1695
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_42
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1696
    throw v3

    .line 1708
    .end local v1    # "token":J
    :cond_47
    return-object v0
.end method

.method public declared-synchronized deleteVpnProfile(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 3565
    :try_start_1
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3567
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 3568
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 3570
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_3e

    .line 3574
    .local v0, "token":J
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_39

    if-eqz v2, :cond_28

    .line 3575
    :try_start_16
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_20

    .line 3577
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    goto :goto_28

    .line 3579
    :cond_20
    const-string v2, "[Legacy VPN]"

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_26

    goto :goto_28

    .line 3585
    :catchall_26
    move-exception v2

    goto :goto_3a

    .line 3583
    :cond_28
    :goto_28
    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/VpnProfileStore;->remove(Ljava/lang/String;)Z
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_39

    .line 3585
    :try_start_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3e

    .line 3586
    nop

    .line 3587
    monitor-exit p0

    return-void

    .line 3585
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_39
    move-exception v2

    :goto_3a
    :try_start_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3586
    throw v2
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    .line 3564
    .end local v0    # "token":J
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 25
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 1514
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v3, v1, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1ef

    const/4 v4, 0x0

    if-eq v0, v3, :cond_10

    .line 1515
    monitor-exit p0

    return-object v4

    .line 1518
    :cond_10
    :try_start_10
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/Vpn;->isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1ef

    if-nez v0, :cond_1c

    .line 1519
    monitor-exit p0

    return-object v4

    .line 1522
    :cond_1c
    :try_start_1c
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.VpnService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 1523
    .local v3, "intent":Landroid/content/Intent;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_1ef

    .line 1527
    .local v5, "token":J
    :try_start_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 1529
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1530
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1e2

    .line 1533
    const/4 v7, 0x0

    invoke-virtual {v0, v3, v7}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1534
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_1c7

    .line 1537
    const-string v8, "android.permission.BIND_VPN_SERVICE"

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_1ea

    if-eqz v8, :cond_1a6

    .line 1541
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :try_start_4d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1542
    nop

    .line 1545
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object v7, v0

    .line 1546
    .local v7, "oldConfig":Lcom/android/internal/net/VpnConfig;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object v8, v0

    .line 1547
    .local v8, "oldInterface":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object v9, v0

    .line 1548
    .local v9, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object v10, v0

    .line 1549
    .local v10, "oldNetworkAgent":Landroid/net/NetworkAgent;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0

    move-object v11, v0

    .line 1552
    .local v11, "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget v12, v2, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-virtual {v0, v1, v12}, Lcom/android/server/connectivity/Vpn$Dependencies;->adoptFd(Lcom/android/server/connectivity/Vpn;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_6c
    .catchall {:try_start_4d .. :try_end_6c} :catchall_1ef

    move-object v12, v0

    .line 1554
    .local v12, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_6d
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v13

    invoke-virtual {v0, v1, v13}, Lcom/android/server/connectivity/Vpn$Dependencies;->jniGetName(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    move-result-object v0

    .line 1557
    .local v0, "interfaze":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1558
    .local v13, "builder":Ljava/lang/StringBuilder;
    iget-object v14, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_82
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_98

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/LinkAddress;

    .line 1559
    .local v15, "address":Landroid/net/LinkAddress;
    const-string v4, " "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1561
    const/4 v4, 0x0

    .end local v15    # "address":Landroid/net/LinkAddress;
    goto :goto_82

    .line 1562
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_98
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v1, v0, v14}, Lcom/android/server/connectivity/Vpn$Dependencies;->jniSetAddresses(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v14, 0x1

    if-lt v4, v14, :cond_177

    .line 1565
    new-instance v4, Lcom/android/server/connectivity/Vpn$Connection;

    const/4 v14, 0x0

    invoke-direct {v4, v1, v14}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection-IA;)V

    .line 1566
    .local v4, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    iget-object v14, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    move-object/from16 v16, v13

    .end local v13    # "builder":Ljava/lang/StringBuilder;
    .local v16, "builder":Ljava/lang/StringBuilder;
    iget v13, v1, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-direct {v15, v13}, Landroid/os/UserHandle;-><init>(I)V

    const v13, 0x4000001

    invoke-virtual {v14, v3, v4, v13, v15}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v13

    if-eqz v13, :cond_15c

    .line 1572
    iput-object v4, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1573
    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1576
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iput-object v13, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1577
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v13, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1578
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1579
    iput-object v2, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1584
    if-eqz v7, :cond_ed

    iget-object v13, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1585
    invoke-direct {v1, v13, v7}, Lcom/android/server/connectivity/Vpn;->updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z

    move-result v13

    if-eqz v13, :cond_ed

    .line 1587
    iget-object v13, v7, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    iget-object v14, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_fd

    .line 1588
    iget-object v13, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    invoke-virtual {v1, v13}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z

    goto :goto_fd

    .line 1593
    :cond_ed
    const/4 v13, 0x0

    iput-object v13, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1594
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v14, "establish"

    invoke-virtual {v1, v13, v14}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1596
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    .line 1600
    invoke-direct {v1, v10}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    .line 1603
    :cond_fd
    :goto_fd
    if-eqz v9, :cond_104

    .line 1604
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1607
    :cond_104
    if-eqz v8, :cond_10f

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10f

    .line 1608
    invoke-direct {v1, v8}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 1611
    :cond_10f
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    iget-boolean v15, v2, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v13, v14, v15}, Lcom/android/server/connectivity/Vpn$Dependencies;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 1613
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eq v10, v13, :cond_133

    .line 1614
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v18, "android:establish_vpn_service"

    iget v14, v1, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v15, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v13

    move/from16 v19, v14

    move-object/from16 v20, v15

    invoke-virtual/range {v17 .. v22}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_133} :catch_181
    .catchall {:try_start_6d .. :try_end_133} :catchall_1ef

    .line 1632
    .end local v0    # "interfaze":Ljava/lang/String;
    .end local v4    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v16    # "builder":Ljava/lang/StringBuilder;
    :cond_133
    nop

    .line 1633
    :try_start_134
    const-string v0, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Established by "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v13, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, " on "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v13, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catchall {:try_start_134 .. :try_end_15a} :catchall_1ef

    .line 1634
    monitor-exit p0

    return-object v12

    .line 1569
    .restart local v0    # "interfaze":Ljava/lang/String;
    .restart local v4    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v16    # "builder":Ljava/lang/StringBuilder;
    :cond_15c
    :try_start_15c
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot bind "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local v7    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v8    # "oldInterface":Ljava/lang/String;
    .end local v9    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v10    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v11    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .end local v12    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v13

    .line 1563
    .end local v4    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v16    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local v7    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v8    # "oldInterface":Ljava/lang/String;
    .restart local v9    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v10    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v11    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .restart local v12    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "builder":Ljava/lang/StringBuilder;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_177
    move-object/from16 v16, v13

    .end local v13    # "builder":Ljava/lang/StringBuilder;
    .restart local v16    # "builder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v13, "At least one address must be specified"

    invoke-direct {v4, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local v7    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .end local v8    # "oldInterface":Ljava/lang/String;
    .end local v9    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v10    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v11    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .end local v12    # "tun":Landroid/os/ParcelFileDescriptor;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v4
    :try_end_181
    .catch Ljava/lang/RuntimeException; {:try_start_15c .. :try_end_181} :catch_181
    .catchall {:try_start_15c .. :try_end_181} :catchall_1ef

    .line 1617
    .end local v0    # "interfaze":Ljava/lang/String;
    .end local v16    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local v7    # "oldConfig":Lcom/android/internal/net/VpnConfig;
    .restart local v8    # "oldInterface":Ljava/lang/String;
    .restart local v9    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .restart local v10    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .restart local v11    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .restart local v12    # "tun":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catch_181
    move-exception v0

    .line 1618
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_182
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1621
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eq v10, v4, :cond_18c

    .line 1622
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1625
    :cond_18c
    iput-object v7, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1626
    iput-object v9, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1627
    new-instance v4, Landroid/net/NetworkCapabilities$Builder;

    iget-object v13, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v4, v13}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1628
    invoke-virtual {v4, v11}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1629
    iput-object v10, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1630
    iput-object v8, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1631
    throw v0
    :try_end_1a6
    .catchall {:try_start_182 .. :try_end_1a6} :catchall_1ef

    .line 1538
    .end local v8    # "oldInterface":Ljava/lang/String;
    .end local v9    # "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v10    # "oldNetworkAgent":Landroid/net/NetworkAgent;
    .end local v11    # "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .end local v12    # "tun":Landroid/os/ParcelFileDescriptor;
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    :cond_1a6
    :try_start_1a6
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not require "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v4

    .line 1535
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_1c7
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v4

    .line 1531
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_1e2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v7, "Cannot get PackageManager."

    invoke-direct {v4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    throw v4
    :try_end_1ea
    .catchall {:try_start_1a6 .. :try_end_1ea} :catchall_1ea

    .line 1541
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_1ea
    move-exception v0

    :try_start_1eb
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1542
    throw v0
    :try_end_1ef
    .catchall {:try_start_1eb .. :try_end_1ef} :catchall_1ef

    .line 1513
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "config":Lcom/android/internal/net/VpnConfig;
    :catchall_1ef
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActiveVpnType()I
    .registers 2

    monitor-enter p0

    .line 2117
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1e

    if-nez v0, :cond_c

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 2118
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_1e

    if-nez v0, :cond_13

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2119
    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

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

    .line 2116
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOn()Z
    .registers 2

    monitor-enter p0

    .line 644
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 644
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 889
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 890
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    goto :goto_c

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return-object v0

    .line 888
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppExclusionList(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 3798
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 3800
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4d

    .line 3802
    .local v0, "oldId":J
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnAppExcludedForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    .line 3804
    .local v2, "bytes":[B
    if-eqz v2, :cond_29

    array-length v3, v2

    if-nez v3, :cond_1a

    goto :goto_29

    .line 3806
    :cond_1a
    invoke-static {v2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->fromDiskStableBytes([B)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 3807
    .local v3, "bundle":Landroid/os/PersistableBundle;
    sget-object v4, Lcom/android/server/vcn/util/PersistableBundleUtils;->STRING_DESERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;

    invoke-static {v3, v4}, Lcom/android/server/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v4
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_24} :catch_35
    .catchall {:try_start_8 .. :try_end_24} :catchall_33

    .line 3811
    :try_start_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_4d

    .line 3807
    monitor-exit p0

    return-object v4

    .line 3804
    .end local v3    # "bundle":Landroid/os/PersistableBundle;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_29
    :goto_29
    :try_start_29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_35
    .catchall {:try_start_29 .. :try_end_2e} :catchall_33

    .line 3811
    :try_start_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_4d

    .line 3804
    monitor-exit p0

    return-object v3

    .line 3811
    .end local v2    # "bytes":[B
    :catchall_33
    move-exception v2

    goto :goto_49

    .line 3808
    :catch_35
    move-exception v2

    .line 3809
    .local v2, "e":Ljava/io/IOException;
    :try_start_36
    const-string v3, "Vpn"

    const-string/jumbo v4, "problem reading from stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_33

    .line 3811
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3812
    nop

    .line 3814
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_4d

    monitor-exit p0

    return-object v2

    .line 3811
    :goto_49
    :try_start_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3812
    throw v2
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    .line 3797
    .end local v0    # "oldId":J
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getEnableTeardown()Z
    .registers 2

    .line 551
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method public declared-synchronized getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    monitor-enter p0

    .line 2561
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2562
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_e

    monitor-exit p0

    return-object v0

    .line 2564
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_b
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2560
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    monitor-enter p0

    .line 2540
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 2541
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 2539
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockdown()Z
    .registers 2

    monitor-enter p0

    .line 637
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 637
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockdownAllowlist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 897
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    goto :goto_9

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return-object v0

    .line 897
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNetwork()Landroid/net/Network;
    .registers 4

    monitor-enter p0

    .line 1309
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    .line 1310
    .local v0, "agent":Landroid/net/NetworkAgent;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    monitor-exit p0

    return-object v1

    .line 1311
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_12

    .line 1312
    .local v2, "network":Landroid/net/Network;
    if-nez v2, :cond_10

    monitor-exit p0

    return-object v1

    .line 1313
    :cond_10
    monitor-exit p0

    return-object v2

    .line 1308
    .end local v0    # "agent":Landroid/net/NetworkAgent;
    .end local v2    # "network":Landroid/net/Network;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .line 1297
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public declared-synchronized getPackage()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 628
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 628
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLATFORM_VPN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 3856
    :try_start_1
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3857
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 3858
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    goto :goto_15

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_14
    const/4 v0, 0x0

    :goto_15
    monitor-exit p0

    return-object v0

    .line 3855
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized getRedactedLinkPropertiesOfUnderlyingNetwork(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 5
    .param p1, "lp"    # Landroid/net/LinkProperties;

    monitor-enter p0

    .line 2579
    if-nez p1, :cond_6

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2580
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/ConnectivityManager;->getRedactedLinkPropertiesForPackage(Landroid/net/LinkProperties;ILjava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 2578
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "lp":Landroid/net/LinkProperties;
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized getRedactedNetworkCapabilitiesOfUnderlyingNetwork(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .registers 5
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    monitor-enter p0

    .line 2571
    if-nez p1, :cond_6

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2572
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/ConnectivityManager;->getRedactedNetworkCapabilitiesForPackage(Landroid/net/NetworkCapabilities;ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 2570
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "nc":Landroid/net/NetworkCapabilities;
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUnderlyingNetworkInfo()Landroid/net/UnderlyingNetworkInfo;
    .registers 5

    monitor-enter p0

    .line 2090
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1a

    if-nez v0, :cond_a

    .line 2091
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2094
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

    .line 2089
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getVpnAppExcludedForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPN_APP_EXCLUDED_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    monitor-enter p0

    .line 1955
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1956
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 1954
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3598
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$Dependencies;->isCallerSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 3599
    const-string v0, "Vpn"

    const-string/jumbo v2, "getVpnProfilePrivileged called as non-System UID "

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    return-object v1

    .line 3603
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 3604
    .local v0, "encoded":[B
    if-nez v0, :cond_21

    return-object v1

    .line 3606
    :cond_21
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    return-object v1
.end method

.method getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    return-object v0
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1962
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3} :catch_c
    .catchall {:try_start_1 .. :try_end_3} :catchall_9

    :try_start_3
    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    .line 1965
    goto :goto_d

    .line 1963
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catch_7
    move-exception v0

    goto :goto_d

    .line 1961
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "up":Z
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1963
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "up":Z
    :catch_c
    move-exception v0

    .line 1966
    :goto_d
    monitor-exit p0

    return-void
.end method

.method public isAlwaysOnPackageSupported(Ljava/lang/String;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .line 663
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceSettingsPermission()V

    .line 665
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 666
    return v0

    .line 669
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 671
    .local v1, "oldId":J
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_90

    const/4 v4, 0x1

    if-eqz v3, :cond_17

    .line 672
    nop

    .line 675
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    return v4

    .line 675
    :cond_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 676
    nop

    .line 678
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 679
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 681
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_22
    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v3, p1, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_28} :catch_2a

    move-object v5, v6

    .line 684
    goto :goto_49

    .line 682
    :catch_2a
    move-exception v6

    .line 683
    .local v6, "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" when checking always-on support"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Vpn"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v6    # "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_49
    if-eqz v5, :cond_8f

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x18

    if-ge v6, v7, :cond_52

    goto :goto_8f

    .line 689
    :cond_52
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.VpnService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 690
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const/16 v7, 0x80

    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 692
    invoke-virtual {v3, v6, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 693
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_8e

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_6d

    goto :goto_8e

    .line 697
    :cond_6d
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_71
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 698
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 699
    .local v10, "metaData":Landroid/os/Bundle;
    if-eqz v10, :cond_8c

    .line 700
    const-string v11, "android.net.VpnService.SUPPORTS_ALWAYS_ON"

    invoke-virtual {v10, v11, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_8c

    .line 701
    return v0

    .line 703
    .end local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "metaData":Landroid/os/Bundle;
    :cond_8c
    goto :goto_71

    .line 705
    :cond_8d
    return v4

    .line 694
    :cond_8e
    :goto_8e
    return v0

    .line 686
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_8f
    :goto_8f
    return v0

    .line 675
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_90
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 676
    throw v0
.end method

.method protected isCallerEstablishedOwnerLocked()Z
    .registers 3

    .line 1645
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public onUserAdded(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1783
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1784
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_53

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    if-ne v1, v2, :cond_53

    .line 1785
    monitor-enter p0

    .line 1786
    :try_start_13
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_50

    .line 1787
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-eqz v1, :cond_49

    .line 1789
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1791
    new-instance v2, Landroid/net/NetworkCapabilities$Builder;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1792
    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_37} :catch_38
    .catchall {:try_start_1b .. :try_end_37} :catchall_50

    .line 1795
    goto :goto_40

    .line 1793
    :catch_38
    move-exception v2

    .line 1794
    .local v2, "e":Ljava/lang/Exception;
    :try_start_39
    const-string v3, "Vpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1796
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_40
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v2, :cond_49

    .line 1797
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 1800
    :cond_49
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1801
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    monitor-exit p0

    goto :goto_53

    :catchall_50
    move-exception v1

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_50

    throw v1

    .line 1803
    :cond_53
    :goto_53
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1812
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1813
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_50

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    if-ne v1, v2, :cond_50

    .line 1814
    monitor-enter p0

    .line 1815
    :try_start_13
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_4d

    .line 1816
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-eqz v1, :cond_46

    .line 1818
    nop

    .line 1819
    :try_start_1c
    invoke-static {p1, v1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(ILjava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 1820
    .local v2, "removedRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1821
    new-instance v3, Landroid/net/NetworkCapabilities$Builder;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v3, v4}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1822
    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_34} :catch_35
    .catchall {:try_start_1c .. :try_end_34} :catchall_4d

    .line 1825
    .end local v2    # "removedRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    goto :goto_3d

    .line 1823
    :catch_35
    move-exception v2

    .line 1824
    .local v2, "e":Ljava/lang/Exception;
    :try_start_36
    const-string v3, "Vpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1826
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3d
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v2, :cond_46

    .line 1827
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 1830
    :cond_46
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1831
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    monitor-exit p0

    goto :goto_50

    :catchall_4d
    move-exception v1

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_36 .. :try_end_4f} :catchall_4d

    throw v1

    .line 1833
    :cond_50
    :goto_50
    return-void
.end method

.method public declared-synchronized onUserStopped()V
    .registers 3

    monitor-enter p0

    .line 1840
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1841
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 1844
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1847
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkProvider(Landroid/net/NetworkProvider;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    .line 1848
    monitor-exit p0

    return-void

    .line 1839
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "vpnType"    # I

    monitor-enter p0

    .line 1052
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 1053
    if-eqz p1, :cond_10

    .line 1054
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 1056
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_10
    if-eqz p2, :cond_15

    .line 1057
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 1061
    :cond_15
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_59

    .line 1063
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_25

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_80

    if-nez v2, :cond_25

    .line 1064
    monitor-exit p0

    return v1

    .line 1068
    :cond_25
    :try_start_25
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 1071
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 1072
    invoke-static {v2, p1, p3}, Lcom/android/server/connectivity/Vpn;->isVpnPreConsented(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1073
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_80

    .line 1074
    monitor-exit p0

    return v0

    .line 1076
    :cond_40
    monitor-exit p0

    return v1

    .line 1077
    :cond_42
    :try_start_42
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 1078
    invoke-static {v2, p1, p3}, Lcom/android/server/connectivity/Vpn;->isVpnPreConsented(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_59

    .line 1080
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_80

    .line 1081
    monitor-exit p0

    return v1

    .line 1086
    :cond_59
    if-eqz p2, :cond_7e

    :try_start_5b
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 1087
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    goto :goto_7e

    .line 1092
    :cond_6a
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1095
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_79

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_75
    .catchall {:try_start_5b .. :try_end_75} :catchall_80

    if-nez v2, :cond_79

    .line 1096
    monitor-exit p0

    return v1

    .line 1099
    :cond_79
    :try_start_79
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_80

    .line 1100
    monitor-exit p0

    return v0

    .line 1088
    :cond_7e
    :goto_7e
    monitor-exit p0

    return v0

    .line 1051
    .end local p1    # "oldPackage":Ljava/lang/String;
    .end local p2    # "newPackage":Ljava/lang/String;
    .end local p3    # "vpnType":I
    :catchall_80
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized provisionVpnProfile(Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/internal/net/VpnProfile;

    monitor-enter p0

    .line 3522
    :try_start_1
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3523
    const-string v0, "No profile provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3525
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 3526
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 3527
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->validateRequiredFeatures(Lcom/android/internal/net/VpnProfile;)V

    .line 3529
    iget-boolean v0, p2, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    if-eqz v0, :cond_21

    .line 3530
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v2, "Test-mode profiles require the MANAGE_TEST_NETWORKS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_21
    invoke-virtual {p2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v0

    .line 3535
    .local v0, "encodedProfile":[B
    array-length v1, v0

    const/high16 v2, 0x20000

    if-gt v1, v2, :cond_4a

    .line 3540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_52

    .line 3542
    .local v1, "token":J
    :try_start_2e
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/server/connectivity/VpnProfileStore;->put(Ljava/lang/String;[B)Z
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_45

    .line 3544
    :try_start_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3545
    nop

    .line 3551
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/connectivity/Vpn;->isVpnProfilePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_52

    monitor-exit p0

    return v3

    .line 3544
    :catchall_45
    move-exception v3

    :try_start_46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3545
    throw v3

    .line 3536
    .end local v1    # "token":J
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Profile too big"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_52

    .line 3521
    .end local v0    # "encodedProfile":[B
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "profile":Lcom/android/internal/net/VpnProfile;
    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    monitor-enter p0

    .line 2062
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    .line 2063
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2065
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 2066
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 2067
    monitor-exit p0

    return v0

    .line 2061
    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "prefixLength":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p3, "lockdownAllowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v11, p0

    monitor-enter p0

    .line 767
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 769
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 770
    .local v0, "oldPackage":Ljava/lang/String;
    move-object/from16 v12, p1

    invoke-static {v12, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v13, 0x1

    if-nez v1, :cond_14

    move v1, v13

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    move v14, v1

    .line 775
    .local v14, "isPackageChanged":Z
    invoke-direct {v11, v0}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-boolean v1, v11, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, v11, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    move/from16 v15, p2

    if-ne v15, v1, :cond_28

    if-eqz v14, :cond_2c

    :cond_28
    move v1, v13

    goto :goto_2d

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_2a
    move/from16 v15, p2

    :cond_2c
    move v1, v2

    :goto_2d
    move/from16 v16, v1

    .line 778
    .local v16, "shouldNotifyOldPkg":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    if-eqz v14, :cond_39

    move v1, v13

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    move/from16 v17, v1

    .line 780
    .local v17, "shouldNotifyNewPkg":Z
    invoke-direct/range {p0 .. p3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z

    move-result v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_86

    if-nez v1, :cond_44

    .line 781
    monitor-exit p0

    return v2

    .line 784
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_44
    :try_start_44
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V

    .line 788
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v1
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_86

    if-nez v1, :cond_4f

    .line 789
    monitor-exit p0

    return v13

    .line 792
    :cond_4f
    if-eqz v16, :cond_6c

    .line 796
    :try_start_51
    const-string v2, "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 798
    if-eqz v14, :cond_5e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->makeDisconnectedVpnProfileState()Landroid/net/VpnProfileState;

    move-result-object v1

    move-object v7, v1

    goto :goto_63

    .line 799
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_5e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object v1

    move-object v7, v1

    :goto_63
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 796
    move-object/from16 v1, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    .line 803
    :cond_6c
    if-eqz v17, :cond_84

    .line 804
    const-string v2, "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 804
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    :try_end_84
    .catchall {:try_start_51 .. :try_end_84} :catchall_86

    .line 809
    :cond_84
    monitor-exit p0

    return v13

    .line 766
    .end local v0    # "oldPackage":Ljava/lang/String;
    .end local v14    # "isPackageChanged":Z
    .end local v16    # "shouldNotifyOldPkg":Z
    .end local v17    # "shouldNotifyNewPkg":Z
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "lockdown":Z
    .end local p3    # "lockdownAllowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_86
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p2, "excludedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 3771
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 3772
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->storeAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3f

    if-nez v0, :cond_d

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 3774
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_3c

    .line 3776
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3777
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {p2}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 3778
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const/4 v2, 0x0

    .line 3779
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 3781
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3782
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3f

    .line 3786
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_3c
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 3770
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "excludedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEnableTeardown(Z)V
    .registers 2
    .param p1, "enableTeardown"    # Z

    .line 546
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 547
    return-void
.end method

.method public declared-synchronized setLockdown(Z)V
    .registers 3
    .param p1, "lockdown"    # Z

    monitor-enter p0

    .line 614
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 616
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 617
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 621
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_10

    .line 622
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 624
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_10
    monitor-exit p0

    return-void

    .line 613
    .end local p1    # "lockdown":Z
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPackageAuthorization(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vpnType"    # I

    .line 1184
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 1186
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    .line 1187
    .local v0, "uid":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_88

    const-string v3, "[Legacy VPN]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_88

    .line 1192
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1197
    .local v3, "token":J
    const-string v5, "android:activate_platform_vpn"

    const-string v6, "android:activate_vpn"

    const-string v7, "Vpn"

    packed-switch p2, :pswitch_data_8a

    .line 1213
    :pswitch_24
    goto :goto_51

    .line 1211
    :pswitch_25
    nop

    .line 1229
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1211
    return v2

    .line 1205
    :pswitch_2a
    :try_start_2a
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 1206
    .local v5, "toChange":[Ljava/lang/String;
    goto :goto_39

    .line 1208
    .end local v5    # "toChange":[Ljava/lang/String;
    :pswitch_2f
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v5

    .line 1209
    .restart local v5    # "toChange":[Ljava/lang/String;
    goto :goto_39

    .line 1199
    .end local v5    # "toChange":[Ljava/lang/String;
    :pswitch_34
    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 1203
    .restart local v5    # "toChange":[Ljava/lang/String;
    nop

    .line 1217
    :goto_39
    array-length v6, v5

    move v8, v2

    :goto_3b
    const/4 v9, 0x1

    if-ge v8, v6, :cond_4c

    aget-object v10, v5, v8

    .line 1218
    .local v10, "appOpStr":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1222
    if-ne p2, v1, :cond_45

    .line 1223
    goto :goto_46

    :cond_45
    move v9, v2

    .line 1218
    :goto_46
    invoke-virtual {v11, v10, v0, p1, v9}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_49} :catch_5d
    .catchall {:try_start_2a .. :try_end_49} :catchall_5b

    .line 1217
    .end local v10    # "appOpStr":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 1225
    :cond_4c
    nop

    .line 1229
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1225
    return v9

    .line 1213
    .end local v5    # "toChange":[Ljava/lang/String;
    :goto_51
    :try_start_51
    const-string v1, "Unrecognized VPN type while granting authorization"

    invoke-static {v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_56} :catch_5d
    .catchall {:try_start_51 .. :try_end_56} :catchall_5b

    .line 1214
    nop

    .line 1229
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1214
    return v2

    .line 1229
    :catchall_5b
    move-exception v1

    goto :goto_84

    .line 1226
    :catch_5d
    move-exception v1

    .line 1227
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set app ops for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_5e .. :try_end_7e} :catchall_5b

    .line 1229
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1230
    nop

    .line 1231
    return v2

    .line 1229
    :goto_84
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1230
    throw v1

    .line 1189
    .end local v3    # "token":J
    :cond_88
    :goto_88
    return v2

    nop

    :pswitch_data_8a
    .packed-switch -0x1
        :pswitch_34
        :pswitch_24
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
    .end packed-switch
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 5
    .param p1, "networks"    # [Landroid/net/Network;

    monitor-enter p0

    .line 2074
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_32

    if-nez v0, :cond_a

    .line 2075
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2078
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 2079
    const/4 v1, 0x0

    if-eqz p1, :cond_17

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Network;

    goto :goto_18

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_17
    move-object v2, v1

    :goto_18
    iput-object v2, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 2080
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    if-eqz v2, :cond_2b

    .line 2081
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_2c

    :cond_2b
    nop

    .line 2080
    :goto_2c
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_32

    .line 2082
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2073
    .end local p1    # "networks":[Landroid/net/Network;
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startAlwaysOnVpn()Z
    .registers 16

    .line 947
    monitor-enter p0

    .line 948
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "alwaysOnPackage":Ljava/lang/String;
    const/4 v10, 0x1

    if-nez v0, :cond_a

    .line 951
    monitor-exit p0

    return v10

    .line 954
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_17

    .line 955
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v11, v1}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 956
    monitor-exit p0

    return v11

    .line 961
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 962
    monitor-exit p0

    return v10

    .line 964
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_9f

    .line 966
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 969
    .local v12, "oldId":J
    :try_start_28
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    move-object v14, v1

    .line 970
    .local v14, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v14, :cond_37

    .line 971
    invoke-direct {p0, v14, v0}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_8e
    .catchall {:try_start_28 .. :try_end_32} :catchall_8c

    .line 978
    nop

    .line 1001
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 978
    return v10

    .line 983
    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn$Dependencies;->getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;

    move-result-object v1

    .line 984
    .local v1, "idleController":Lcom/android/server/DeviceIdleInternal;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-wide/32 v4, 0xea60

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const/4 v7, 0x0

    const/16 v8, 0x135

    const-string/jumbo v9, "vpn"

    move-object v3, v0

    invoke-interface/range {v1 .. v9}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 989
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.VpnService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 990
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5a} :catch_8e
    .catchall {:try_start_37 .. :try_end_5a} :catchall_8c

    .line 992
    :try_start_5a
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_60} :catch_68
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_60} :catch_8e
    .catchall {:try_start_5a .. :try_end_60} :catchall_8c

    if-eqz v3, :cond_63

    goto :goto_64

    :cond_63
    move v10, v11

    .line 1001
    :goto_64
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 992
    return v10

    .line 993
    :catch_68
    move-exception v3

    .line 994
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_69
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VpnService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed to start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_87} :catch_8e
    .catchall {:try_start_69 .. :try_end_87} :catchall_8c

    .line 995
    nop

    .line 1001
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 995
    return v11

    .line 1001
    .end local v1    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v14    # "profile":Lcom/android/internal/net/VpnProfile;
    :catchall_8c
    move-exception v1

    goto :goto_9b

    .line 997
    :catch_8e
    move-exception v1

    .line 998
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8f
    const-string v2, "Vpn"

    const-string v3, "Error starting always-on VPN"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_8c

    .line 999
    nop

    .line 1001
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 999
    return v11

    .line 1001
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9b
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    throw v1

    .line 964
    .end local v0    # "alwaysOnPackage":Ljava/lang/String;
    .end local v12    # "oldId":J
    :catchall_9f
    move-exception v0

    :try_start_a0
    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v0
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "underlying"    # Landroid/net/Network;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .line 2259
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 2260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2262
    .local v0, "token":J
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 2264
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2265
    nop

    .line 2266
    return-void

    .line 2264
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2265
    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 32
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "underlying"    # Landroid/net/Network;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .line 2328
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    iget v3, v1, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 2329
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_320

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v1, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "no_config_vpn"

    invoke-virtual {v0, v5, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_320

    .line 2334
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v4

    .line 2335
    .local v4, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 2336
    .local v5, "gateway":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v6

    .line 2339
    .local v6, "iface":Ljava/lang/String;
    const-string v7, ""

    .line 2340
    .local v7, "privateKey":Ljava/lang/String;
    const-string v8, ""

    .line 2341
    .local v8, "userCert":Ljava/lang/String;
    const-string v9, ""

    .line 2342
    .local v9, "caCert":Ljava/lang/String;
    const-string v10, ""

    .line 2345
    .local v10, "serverCert":Ljava/lang/String;
    :try_start_3c
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 2346
    .local v0, "keystore":Ljava/security/KeyStore;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 2347
    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v12, :cond_6d

    .line 2348
    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    move-object v7, v12

    .line 2349
    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v12

    .line 2350
    .local v12, "cert":Ljava/security/cert/Certificate;
    if-nez v12, :cond_5d

    move-object v15, v11

    goto :goto_6c

    .line 2351
    :cond_5d
    new-instance v15, Ljava/lang/String;

    new-array v11, v14, [Ljava/security/cert/Certificate;

    aput-object v12, v11, v13

    invoke-static {v11}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v11

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v11, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_6c
    move-object v8, v15

    .line 2353
    .end local v12    # "cert":Ljava/security/cert/Certificate;
    :cond_6d
    iget-object v11, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7c

    .line 2354
    iget-object v11, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {v1, v0, v11}, Lcom/android/server/connectivity/Vpn;->getCaCertificateFromKeystoreAsPem(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 2356
    :cond_7c
    iget-object v11, v2, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9f

    .line 2357
    iget-object v11, v2, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v11

    .line 2358
    .local v11, "cert":Ljava/security/cert/Certificate;
    if-nez v11, :cond_8e

    const/4 v12, 0x0

    goto :goto_9e

    .line 2359
    :cond_8e
    new-instance v12, Ljava/lang/String;

    new-array v13, v14, [Ljava/security/cert/Certificate;

    const/4 v15, 0x0

    aput-object v11, v13, v15

    invoke-static {v13}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v13

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v12, v13, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_9e
    .catch Ljava/security/cert/CertificateException; {:try_start_3c .. :try_end_9e} :catch_317
    .catch Ljava/security/KeyStoreException; {:try_start_3c .. :try_end_9e} :catch_317
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_9e} :catch_317
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3c .. :try_end_9e} :catch_317

    :goto_9e
    move-object v10, v12

    .line 2364
    .end local v0    # "keystore":Ljava/security/KeyStore;
    .end local v11    # "cert":Ljava/security/cert/Certificate;
    :cond_9f
    nop

    .line 2365
    if-eqz v8, :cond_30f

    if-eqz v9, :cond_30f

    if-eqz v10, :cond_30f

    .line 2370
    const/4 v0, 0x0

    .line 2371
    .local v0, "racoon":[Ljava/lang/String;
    iget v11, v2, Lcom/android/internal/net/VpnProfile;->type:I

    const-string v15, ""

    const-string v16, "1701"

    const-string v12, "[Legacy VPN]"

    const/16 v13, 0x9

    const/16 v17, 0x7

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/4 v14, 0x6

    packed-switch v11, :pswitch_data_328

    goto/16 :goto_1b6

    .line 2398
    :pswitch_c1
    invoke-direct {v1, v2, v12}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    .line 2399
    return-void

    .line 2376
    :pswitch_c5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KEYSTORE_ALIAS:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 2377
    iput-object v8, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    goto :goto_f2

    .line 2388
    :pswitch_dd
    iget-object v11, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 2389
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Landroid/net/Ikev2VpnProfile;->encodeForIpsecSecret([B)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 2392
    sget-object v11, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    invoke-virtual {v2, v11}, Lcom/android/internal/net/VpnProfile;->setAllowedAlgorithms(Ljava/util/List;)V

    .line 2393
    invoke-direct {v1, v2, v12}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    .line 2394
    return-void

    .line 2380
    :goto_f2
    :pswitch_f2
    iput-object v9, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 2383
    sget-object v11, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    invoke-virtual {v2, v11}, Lcom/android/internal/net/VpnProfile;->setAllowedAlgorithms(Ljava/util/List;)V

    .line 2384
    invoke-direct {v1, v2, v12}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    .line 2385
    return-void

    .line 2425
    :pswitch_fd
    new-array v11, v13, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v18, 0x1

    aput-object v12, v11, v18

    const-string/jumbo v12, "hybridrsa"

    aput-object v12, v11, v22

    aput-object v9, v11, v21

    aput-object v10, v11, v20

    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v11, v19

    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v11, v14

    aput-object v15, v11, v17

    const/16 v12, 0x8

    aput-object v5, v11, v12

    move-object v0, v11

    goto/16 :goto_1b6

    .line 2419
    :pswitch_122
    const/16 v11, 0xb

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v12, v11

    iget-object v11, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v18, 0x1

    aput-object v11, v12, v18

    const-string/jumbo v11, "xauthrsa"

    aput-object v11, v12, v22

    .line 2420
    invoke-direct {v1, v7}, Lcom/android/server/connectivity/Vpn;->makeKeystoreEngineGrantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v21

    aput-object v8, v12, v20

    aput-object v9, v12, v19

    aput-object v10, v12, v14

    iget-object v11, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v11, v12, v17

    iget-object v11, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v23, 0x8

    aput-object v11, v12, v23

    aput-object v15, v12, v13

    const/16 v11, 0xa

    aput-object v5, v12, v11

    move-object v0, v12

    .line 2423
    goto :goto_1b6

    .line 2413
    :pswitch_152
    new-array v11, v13, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v18, 0x1

    aput-object v12, v11, v18

    const-string/jumbo v12, "xauthpsk"

    aput-object v12, v11, v22

    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v11, v21

    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v11, v20

    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v11, v19

    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v11, v14

    aput-object v15, v11, v17

    const/16 v12, 0x8

    aput-object v5, v11, v12

    move-object v0, v11

    .line 2417
    goto :goto_1b6

    .line 2407
    :pswitch_17a
    const/16 v12, 0x8

    new-array v11, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v12, v11, v15

    const-string/jumbo v12, "udprsa"

    aput-object v12, v11, v22

    .line 2408
    invoke-direct {v1, v7}, Lcom/android/server/connectivity/Vpn;->makeKeystoreEngineGrantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v21

    aput-object v8, v11, v20

    aput-object v9, v11, v19

    aput-object v10, v11, v14

    aput-object v16, v11, v17

    move-object v0, v11

    .line 2411
    goto :goto_1b6

    .line 2401
    :pswitch_19b
    new-array v11, v14, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v12, v11, v15

    const-string/jumbo v12, "udppsk"

    aput-object v12, v11, v22

    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v11, v21

    iget-object v12, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v11, v20

    aput-object v16, v11, v19

    move-object v0, v11

    .line 2405
    nop

    .line 2437
    :goto_1b6
    const/4 v11, 0x0

    .line 2438
    .local v11, "mtpd":[Ljava/lang/String;
    iget v12, v2, Lcom/android/internal/net/VpnProfile;->type:I

    const-string/jumbo v15, "vpn"

    const-string/jumbo v24, "linkname"

    const-string/jumbo v25, "password"

    const-string/jumbo v26, "name"

    const/16 v13, 0x14

    const-string v27, "1270"

    packed-switch v12, :pswitch_data_33e

    goto/16 :goto_2b8

    .line 2457
    :pswitch_1ce
    new-array v12, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const-string/jumbo v13, "l2tp"

    const/16 v18, 0x1

    aput-object v13, v12, v18

    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v12, v22

    aput-object v16, v12, v21

    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v13, v12, v20

    aput-object v26, v12, v19

    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v12, v14

    aput-object v25, v12, v17

    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const/16 v13, 0x9

    aput-object v24, v12, v13

    const/16 v13, 0xa

    aput-object v15, v12, v13

    const-string/jumbo v13, "refuse-eap"

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const/16 v13, 0xc

    const-string/jumbo v14, "nodefaultroute"

    aput-object v14, v12, v13

    const/16 v13, 0xd

    const-string/jumbo v14, "usepeerdns"

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string/jumbo v14, "idle"

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "1800"

    aput-object v14, v12, v13

    const/16 v13, 0x10

    const-string/jumbo v14, "mtu"

    aput-object v14, v12, v13

    const/16 v13, 0x11

    aput-object v27, v12, v13

    const/16 v13, 0x12

    const-string/jumbo v14, "mru"

    aput-object v14, v12, v13

    const/16 v13, 0x13

    aput-object v27, v12, v13

    move-object v11, v12

    goto/16 :goto_2b8

    .line 2440
    :pswitch_235
    new-array v12, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const-string/jumbo v13, "pptp"

    const/16 v16, 0x1

    aput-object v13, v12, v16

    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v12, v22

    const-string v13, "1723"

    aput-object v13, v12, v21

    aput-object v26, v12, v20

    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v12, v19

    aput-object v25, v12, v14

    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v13, v12, v17

    const/16 v13, 0x8

    aput-object v24, v12, v13

    const/16 v13, 0x9

    aput-object v15, v12, v13

    const-string/jumbo v13, "refuse-eap"

    const/16 v14, 0xa

    aput-object v13, v12, v14

    const-string/jumbo v13, "nodefaultroute"

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const/16 v13, 0xc

    const-string/jumbo v14, "usepeerdns"

    aput-object v14, v12, v13

    const/16 v13, 0xd

    const-string/jumbo v14, "idle"

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "1800"

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string/jumbo v14, "mtu"

    aput-object v14, v12, v13

    const/16 v13, 0x10

    aput-object v27, v12, v13

    const/16 v13, 0x11

    const-string/jumbo v14, "mru"

    aput-object v14, v12, v13

    const/16 v13, 0x12

    aput-object v27, v12, v13

    const/16 v13, 0x13

    .line 2445
    iget-boolean v14, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v14, :cond_29e

    const-string v14, "+mppe"

    goto :goto_2a1

    :cond_29e
    const-string/jumbo v14, "nomppe"

    :goto_2a1
    aput-object v14, v12, v13

    move-object v11, v12

    .line 2447
    iget-boolean v12, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v12, :cond_2b8

    .line 2451
    array-length v12, v11

    const/4 v13, 0x1

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, [Ljava/lang/String;

    .line 2452
    array-length v12, v11

    sub-int/2addr v12, v13

    const-string v13, "-pap"

    aput-object v13, v11, v12

    .line 2466
    :cond_2b8
    :goto_2b8
    new-instance v12, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v12}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 2467
    .local v12, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 2468
    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 2469
    iput-object v6, v12, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2470
    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 2471
    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 2472
    iget-object v14, v2, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iput-object v14, v12, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 2473
    if-eqz p2, :cond_2da

    .line 2474
    const/4 v14, 0x1

    new-array v14, v14, [Landroid/net/Network;

    aput-object p2, v14, v13

    iput-object v14, v12, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 2477
    :cond_2da
    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 2478
    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2f5

    .line 2479
    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v14, " +"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v12, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 2481
    :cond_2f5
    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_30b

    .line 2482
    iget-object v13, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v14, " +"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v12, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 2484
    :cond_30b
    invoke-direct {v1, v12, v0, v11, v2}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    .line 2485
    return-void

    .line 2366
    .end local v0    # "racoon":[Ljava/lang/String;
    .end local v11    # "mtpd":[Ljava/lang/String;
    .end local v12    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_30f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v11, "Cannot load credentials"

    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2361
    :catch_317
    move-exception v0

    .line 2363
    .local v0, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Failed to load credentials from AndroidKeyStore"

    invoke-direct {v11, v12, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 2331
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "ipv4DefaultRoute":Landroid/net/RouteInfo;
    .end local v5    # "gateway":Ljava/lang/String;
    .end local v6    # "iface":Ljava/lang/String;
    .end local v7    # "privateKey":Ljava/lang/String;
    .end local v8    # "userCert":Ljava/lang/String;
    .end local v9    # "caCert":Ljava/lang/String;
    .end local v10    # "serverCert":Ljava/lang/String;
    :cond_320
    new-instance v0, Ljava/lang/SecurityException;

    const-string v4, "Restricted users cannot establish VPNs"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_328
    .packed-switch 0x1
        :pswitch_19b
        :pswitch_17a
        :pswitch_152
        :pswitch_122
        :pswitch_fd
        :pswitch_f2
        :pswitch_dd
        :pswitch_c5
        :pswitch_c1
    .end packed-switch

    :pswitch_data_33e
    .packed-switch 0x0
        :pswitch_235
        :pswitch_1ce
        :pswitch_1ce
    .end packed-switch
.end method

.method protected startLegacyVpnRunner()V
    .registers 2

    .line 2502
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->start()V

    .line 2503
    return-void
.end method

.method public declared-synchronized startVpnProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 3629
    :try_start_1
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3631
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 3634
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_6f

    .line 3640
    .local v0, "token":J
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 3641
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v2, :cond_38

    .line 3645
    invoke-direct {p0, v2, p1}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    .line 3646
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v3
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_51

    if-eqz v3, :cond_2f

    .line 3650
    :try_start_24
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_2d

    .line 3652
    :try_start_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_6f

    .line 3650
    monitor-exit p0

    return-object v3

    .line 3652
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_2d
    move-exception v2

    goto :goto_52

    .line 3647
    .restart local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_2f
    :try_start_2f
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "mVpnRunner shouldn\'t be null and should also be an instance of Ikev2VpnRunner"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":J
    .end local p1    # "packageName":Ljava/lang/String;
    throw v3

    .line 3642
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No profile found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v3
    :try_end_51
    .catchall {:try_start_2f .. :try_end_51} :catchall_51

    .line 3652
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catchall_51
    move-exception v2

    :goto_52
    :try_start_52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3653
    throw v2

    .line 3635
    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_56
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User consent not granted for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6f
    .catchall {:try_start_52 .. :try_end_6f} :catchall_6f

    .line 3628
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopVpnProfile(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 3724
    :try_start_1
    const-string v0, "No package name provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3726
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 3730
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3731
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 3733
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :cond_14
    monitor-exit p0

    return-void

    .line 3723
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopVpnRunnerPrivileged()V
    .registers 4

    monitor-enter p0

    .line 2516
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    if-nez v0, :cond_9

    .line 2517
    monitor-exit p0

    return-void

    .line 2520
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    instance-of v1, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 2522
    .local v1, "isLegacyVpn":Z
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exit()V

    .line 2523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2527
    if-eqz v1, :cond_1f

    .line 2528
    const-string v0, "LegacyVpnRunner"

    monitor-enter v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_21

    .line 2531
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1a

    goto :goto_1f

    :catchall_1a
    move-exception v2

    :goto_1b
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1d

    :try_start_1c
    throw v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_21

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn;
    :catchall_1d
    move-exception v2

    goto :goto_1b

    .line 2533
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 2515
    .end local v1    # "isLegacyVpn":Z
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 6
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-static {p1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo$DetailedState;)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 562
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    sget-object v0, Lcom/android/server/connectivity/Vpn$3;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_76

    .line 590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :pswitch_53
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-nez v0, :cond_58

    goto :goto_71

    .line 585
    :cond_58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VPN can only go to CONNECTING state when the agent is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :pswitch_60
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_71

    .line 579
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->unregister()V

    .line 580
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    goto :goto_71

    .line 572
    :pswitch_6a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_71

    .line 573
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->markConnected()V

    .line 592
    :cond_71
    :goto_71
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 593
    return-void

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_60
        :pswitch_60
        :pswitch_53
    .end packed-switch
.end method

.method validateRequiredFeatures(Lcom/android/internal/net/VpnProfile;)V
    .registers 4
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 3497
    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v0, :pswitch_data_1e

    .line 3509
    return-void

    .line 3502
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.ipsec_tunnels"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3511
    return-void

    .line 3504
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Ikev2VpnProfile(s) requires PackageManager.FEATURE_IPSEC_TUNNELS"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_1e
    .packed-switch 0x6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
