.class Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;
.super Lcom/android/server/connectivity/Vpn$VpnRunner;
.source "Vpn.java"

# interfaces
.implements Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IkeV2VpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IkeV2VpnRunner"


# instance fields
.field private mActiveNetwork:Landroid/net/Network;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mIpSecManager:Landroid/net/IpSecManager;

.field private mIsRunning:Z

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mProfile:Landroid/net/Ikev2VpnProfile;

.field private mSession:Landroid/net/ipsec/ike/IkeSession;

.field private final mSessionKey:Ljava/lang/String;

.field private mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

.field private mUnderlyingLinkProperties:Landroid/net/LinkProperties;

.field private mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSessionKey(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/connectivity/Vpn;Landroid/net/Ikev2VpnProfile;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "profile"    # Landroid/net/Ikev2VpnProfile;

    .line 2681
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 2682
    const-string v0, "IkeV2VpnRunner"

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 2669
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2672
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    .line 2683
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 2684
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "ipsec"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpSecManager;

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    .line 2685
    new-instance v2, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    invoke-direct {v2, v0, p0, v1}, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;-><init>(Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;Ljava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2686
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 2687
    return-void
.end method

.method private disconnectVpnRunner()V
    .registers 3

    .line 3123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 3124
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3125
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 3126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    .line 3128
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->resetIkeState()V

    .line 3130
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 3132
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3133
    return-void
.end method

.method private isActiveNetwork(Landroid/net/Network;)Z
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 2722
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private markFailedAndDisconnect(Ljava/lang/Exception;)V
    .registers 6
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 2918
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 2919
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2920
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 2922
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->disconnectVpnRunner()V

    .line 2923
    return-void

    .line 2920
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private resetIkeState()V
    .registers 3

    .line 3099
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 3101
    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    .line 3102
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 3104
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Landroid/net/ipsec/ike/IkeSession;

    if-eqz v0, :cond_13

    .line 3105
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSession;->kill()V

    .line 3106
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Landroid/net/ipsec/ike/IkeSession;

    .line 3108
    :cond_13
    return-void
.end method


# virtual methods
.method public exitVpnRunner()V
    .registers 3

    .line 3138
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    .line 3143
    goto :goto_c

    .line 3141
    :catch_b
    move-exception v0

    .line 3144
    :goto_c
    return-void
.end method

.method synthetic lambda$exitVpnRunner$0$com-android-server-connectivity-Vpn$IkeV2VpnRunner()V
    .registers 1

    .line 3139
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->disconnectVpnRunner()V

    .line 3140
    return-void
.end method

.method public onChildOpened(Landroid/net/Network;Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .registers 13
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "childConfig"    # Landroid/net/ipsec/ike/ChildSessionConfiguration;

    .line 2733
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveNetwork(Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2734
    const-string v0, "IkeV2VpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOpened called for obsolete network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    return-void

    .line 2745
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2746
    .local v0, "interfaceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v1}, Landroid/net/Ikev2VpnProfile;->getMaxMtu()I

    move-result v1

    .line 2747
    .local v1, "maxMtu":I
    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object v2

    .line 2748
    .local v2, "internalAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2750
    .local v3, "dnsAddrStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 2751
    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getOutboundTrafficSelectors()Ljava/util/List;

    move-result-object v4

    .line 2750
    invoke-static {v4}, Lcom/android/server/connectivity/VpnIkev2Utils;->getRoutesFromTrafficSelectors(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v4

    .line 2752
    .local v4, "newRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 2753
    .local v6, "address":Landroid/net/LinkAddress;
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/net/IpSecManager$IpSecTunnelInterface;->addAddress(Ljava/net/InetAddress;I)V

    .line 2754
    .end local v6    # "address":Landroid/net/LinkAddress;
    goto :goto_42

    .line 2755
    :cond_5c
    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 2756
    .local v6, "addr":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2757
    nop

    .end local v6    # "addr":Ljava/net/InetAddress;
    goto :goto_64

    .line 2762
    :cond_79
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v5
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_7c} :catch_122

    .line 2763
    :try_start_7c
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iput-object v0, v6, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 2764
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput v1, v6, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 2765
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2767
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2768
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2770
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2771
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2773
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-nez v6, :cond_c7

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 2774
    :cond_c7
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2775
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2777
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/net/Network;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 2779
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v8, v7, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/Vpn;->getAppExclusionList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 2781
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 2785
    .local v6, "networkAgent":Landroid/net/NetworkAgent;
    if-nez v6, :cond_10d

    .line 2786
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$misSettingsVpnLocked(Lcom/android/server/connectivity/Vpn;)Z

    move-result v7

    if-eqz v7, :cond_106

    .line 2787
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mprepareStatusIntent(Lcom/android/server/connectivity/Vpn;)V

    .line 2789
    :cond_106
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$magentConnect(Lcom/android/server/connectivity/Vpn;)V

    .line 2790
    monitor-exit v5

    return-void

    .line 2793
    :cond_10d
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 2796
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeLinkProperties(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;

    move-result-object v7

    .line 2797
    .local v7, "lp":Landroid/net/LinkProperties;
    monitor-exit v5
    :try_end_11b
    .catchall {:try_start_7c .. :try_end_11b} :catchall_11f

    .line 2799
    :try_start_11b
    invoke-virtual {v6, v7}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11e} :catch_122

    .line 2803
    .end local v0    # "interfaceName":Ljava/lang/String;
    .end local v1    # "maxMtu":I
    .end local v2    # "internalAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .end local v3    # "dnsAddrStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "newRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    .end local v6    # "networkAgent":Landroid/net/NetworkAgent;
    .end local v7    # "lp":Landroid/net/LinkProperties;
    goto :goto_13e

    .line 2797
    .restart local v0    # "interfaceName":Ljava/lang/String;
    .restart local v1    # "maxMtu":I
    .restart local v2    # "internalAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .restart local v3    # "dnsAddrStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "newRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    :catchall_11f
    move-exception v6

    :try_start_120
    monitor-exit v5
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_11f

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;
    .end local p1    # "network":Landroid/net/Network;
    .end local p2    # "childConfig":Landroid/net/ipsec/ike/ChildSessionConfiguration;
    :try_start_121
    throw v6
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_122} :catch_122

    .line 2800
    .end local v0    # "interfaceName":Ljava/lang/String;
    .end local v1    # "maxMtu":I
    .end local v2    # "internalAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .end local v3    # "dnsAddrStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "newRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;
    .restart local p1    # "network":Landroid/net/Network;
    .restart local p2    # "childConfig":Landroid/net/ipsec/ike/ChildSessionConfiguration;
    :catch_122
    move-exception v0

    .line 2801
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IkeV2VpnRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in ChildOpened for network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2802
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(Landroid/net/Network;Ljava/lang/Exception;)V

    .line 2804
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13e
    return-void
.end method

.method public onChildTransformCreated(Landroid/net/Network;Landroid/net/IpSecTransform;I)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "transform"    # Landroid/net/IpSecTransform;
    .param p3, "direction"    # I

    .line 2815
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveNetwork(Landroid/net/Network;)Z

    move-result v0

    const-string v1, "IkeV2VpnRunner"

    if-nez v0, :cond_1f

    .line 2816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformCreated for obsolete network "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    return-void

    .line 2829
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v0, v2, p3, p2}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_27

    .line 2833
    goto :goto_41

    .line 2830
    :catch_27
    move-exception v0

    .line 2831
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transform application failed for network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2832
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(Landroid/net/Network;Ljava/lang/Exception;)V

    .line 2834
    .end local v0    # "e":Ljava/io/IOException;
    :goto_41
    return-void
.end method

.method public onDefaultNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .registers 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2908
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2909
    return-void
.end method

.method public onDefaultNetworkChanged(Landroid/net/Network;)V
    .registers 14
    .param p1, "network"    # Landroid/net/Network;

    .line 2846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting IKEv2/IPsec session on new network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IkeV2VpnRunner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :try_start_18
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    if-nez v0, :cond_23

    .line 2850
    const-string/jumbo v0, "onDefaultNetworkChanged after exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    return-void

    .line 2856
    :cond_23
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 2859
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->resetIkeState()V

    .line 2860
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 2864
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 2865
    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    .line 2868
    .local v0, "ikeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    if-eqz v0, :cond_4c

    .line 2869
    new-instance v2, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 2870
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/net/ipsec/ike/IkeSessionParams;)V

    invoke-virtual {v2, p1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v2

    .line 2871
    .local v2, "builder":Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v3

    .line 2872
    .local v3, "ikeSessionParams":Landroid/net/ipsec/ike/IkeSessionParams;
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v4

    move-object v2, v4

    .line 2873
    .local v2, "childSessionParams":Landroid/net/ipsec/ike/ChildSessionParams;
    goto :goto_63

    .line 2874
    .end local v2    # "childSessionParams":Landroid/net/ipsec/ike/ChildSessionParams;
    .end local v3    # "ikeSessionParams":Landroid/net/ipsec/ike/IkeSessionParams;
    :cond_4c
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-static {v2, v3, p1}, Lcom/android/server/connectivity/VpnIkev2Utils;->buildIkeSessionParams(Landroid/content/Context;Landroid/net/Ikev2VpnProfile;Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v2

    move-object v3, v2

    .line 2876
    .restart local v3    # "ikeSessionParams":Landroid/net/ipsec/ike/IkeSessionParams;
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 2877
    invoke-virtual {v2}, Landroid/net/Ikev2VpnProfile;->getAllowedAlgorithms()Ljava/util/List;

    move-result-object v2

    .line 2876
    invoke-static {v2}, Lcom/android/server/connectivity/VpnIkev2Utils;->buildChildSessionParams(Ljava/util/List;)Landroid/net/ipsec/ike/ChildSessionParams;

    move-result-object v2

    .line 2882
    .restart local v2    # "childSessionParams":Landroid/net/ipsec/ike/ChildSessionParams;
    :goto_63
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    move-object v11, v4

    .line 2883
    .local v11, "address":Ljava/net/InetAddress;
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    .line 2884
    invoke-virtual {v4, v11, v11, p1}, Landroid/net/IpSecManager;->createIpSecTunnelInterface(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 2888
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmNetd(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetd;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v5}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/net/module/util/NetdUtils;->setInterfaceUp(Landroid/net/INetd;Ljava/lang/String;)V

    .line 2890
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmIkev2SessionCreator(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;

    invoke-direct {v9, v1, p0, p1}, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;-><init>(Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;Landroid/net/Network;)V

    new-instance v10, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;

    invoke-direct {v10, v1, p0, p1}, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;-><init>(Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;Landroid/net/Network;)V

    move-object v6, v3

    move-object v7, v2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;->createIkeSession(Landroid/content/Context;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Landroid/net/ipsec/ike/IkeSession;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Landroid/net/ipsec/ike/IkeSession;

    .line 2899
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ike Session started for network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_b5} :catch_b7

    .line 2903
    nop

    .end local v0    # "ikeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .end local v2    # "childSessionParams":Landroid/net/ipsec/ike/ChildSessionParams;
    .end local v3    # "ikeSessionParams":Landroid/net/ipsec/ike/IkeSessionParams;
    .end local v11    # "address":Ljava/net/InetAddress;
    goto :goto_d7

    .line 2900
    :catch_b7
    move-exception v0

    .line 2901
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setup failed for network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Aborting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2902
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(Landroid/net/Network;Ljava/lang/Exception;)V

    .line 2904
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d7
    return-void
.end method

.method public onDefaultNetworkLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .registers 2
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 2913
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 2914
    return-void
.end method

.method public onSessionLost(Landroid/net/Network;Ljava/lang/Exception;)V
    .registers 16
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 2935
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveNetwork(Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2936
    const-string v0, "IkeV2VpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionLost() called for obsolete network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    return-void

    .line 2946
    :cond_20
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 2947
    :try_start_23
    instance-of v1, p2, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    if-eqz v1, :cond_b1

    .line 2948
    move-object v1, p2

    check-cast v1, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    .line 2950
    .local v1, "ikeException":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    invoke-virtual {v1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    move-result v2

    sparse-switch v2, :sswitch_data_26a

    .line 2978
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v2

    goto :goto_77

    .line 2960
    :sswitch_36
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$misVpnApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2961
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string v4, "android.net.category.EVENT_IKE_ERROR"

    const/4 v5, 0x1

    .line 2963
    invoke-virtual {v1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    move-result v6

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 2964
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getPackage()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeVpnProfileStateLocked(Lcom/android/server/connectivity/Vpn;)Landroid/net/VpnProfileState;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2966
    invoke-virtual {v2, v11}, Lcom/android/server/connectivity/Vpn;->getRedactedNetworkCapabilitiesOfUnderlyingNetwork(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v11

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v12, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 2968
    invoke-virtual {v2, v12}, Lcom/android/server/connectivity/Vpn;->getRedactedLinkPropertiesOfUnderlyingNetwork(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v12

    .line 2961
    invoke-static/range {v3 .. v12}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msendEventToVpnManagerApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    .line 2971
    :cond_72
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->markFailedAndDisconnect(Ljava/lang/Exception;)V

    .line 2972
    monitor-exit v0

    return-void

    .line 2978
    :goto_77
    if-eqz v2, :cond_af

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$misVpnApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 2979
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string v4, "android.net.category.EVENT_IKE_ERROR"

    const/4 v5, 0x2

    .line 2981
    invoke-virtual {v1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    move-result v6

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 2982
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getPackage()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeVpnProfileStateLocked(Lcom/android/server/connectivity/Vpn;)Landroid/net/VpnProfileState;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2984
    invoke-virtual {v2, v11}, Lcom/android/server/connectivity/Vpn;->getRedactedNetworkCapabilitiesOfUnderlyingNetwork(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v11

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v12, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 2986
    invoke-virtual {v2, v12}, Lcom/android/server/connectivity/Vpn;->getRedactedLinkPropertiesOfUnderlyingNetwork(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v12

    .line 2979
    invoke-static/range {v3 .. v12}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msendEventToVpnManagerApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    .line 2990
    .end local v1    # "ikeException":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    :cond_af
    goto/16 :goto_1d7

    :cond_b1
    instance-of v1, p2, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_ba

    .line 2992
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->markFailedAndDisconnect(Ljava/lang/Exception;)V

    .line 2993
    monitor-exit v0

    return-void

    .line 2994
    :cond_ba
    instance-of v1, p2, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;

    if-eqz v1, :cond_f7

    .line 2997
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_1d7

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$misVpnApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d7

    .line 2998
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string v3, "android.net.category.EVENT_NETWORK_ERROR"

    const/4 v4, 0x2

    const/4 v5, 0x2

    .line 3001
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeVpnProfileStateLocked(Lcom/android/server/connectivity/Vpn;)Landroid/net/VpnProfileState;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3003
    invoke-virtual {v1, v10}, Lcom/android/server/connectivity/Vpn;->getRedactedNetworkCapabilitiesOfUnderlyingNetwork(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 3005
    invoke-virtual {v1, v11}, Lcom/android/server/connectivity/Vpn;->getRedactedLinkPropertiesOfUnderlyingNetwork(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v11

    .line 2998
    invoke-static/range {v2 .. v11}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msendEventToVpnManagerApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    goto/16 :goto_1d7

    .line 3008
    :cond_f7
    instance-of v1, p2, Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;

    if-eqz v1, :cond_1bc

    .line 3009
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_13c

    .line 3012
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_1d7

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$misVpnApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d7

    .line 3013
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string v3, "android.net.category.EVENT_NETWORK_ERROR"

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 3016
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeVpnProfileStateLocked(Lcom/android/server/connectivity/Vpn;)Landroid/net/VpnProfileState;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3018
    invoke-virtual {v1, v10}, Lcom/android/server/connectivity/Vpn;->getRedactedNetworkCapabilitiesOfUnderlyingNetwork(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 3020
    invoke-virtual {v1, v11}, Lcom/android/server/connectivity/Vpn;->getRedactedLinkPropertiesOfUnderlyingNetwork(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v11

    .line 3013
    invoke-static/range {v2 .. v11}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msendEventToVpnManagerApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    goto/16 :goto_1d7

    .line 3023
    :cond_13c
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/net/ipsec/ike/exceptions/IkeTimeoutException;

    if-eqz v1, :cond_17c

    .line 3026
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_1d7

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$misVpnApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d7

    .line 3027
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string v3, "android.net.category.EVENT_NETWORK_ERROR"

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 3030
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeVpnProfileStateLocked(Lcom/android/server/connectivity/Vpn;)Landroid/net/VpnProfileState;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3032
    invoke-virtual {v1, v10}, Lcom/android/server/connectivity/Vpn;->getRedactedNetworkCapabilitiesOfUnderlyingNetwork(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 3034
    invoke-virtual {v1, v11}, Lcom/android/server/connectivity/Vpn;->getRedactedLinkPropertiesOfUnderlyingNetwork(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v11

    .line 3027
    invoke-static/range {v2 .. v11}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msendEventToVpnManagerApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    goto :goto_1d7

    .line 3037
    :cond_17c
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_1d7

    .line 3040
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_1d7

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$misVpnApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d7

    .line 3041
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string v3, "android.net.category.EVENT_NETWORK_ERROR"

    const/4 v4, 0x2

    const/4 v5, 0x3

    .line 3044
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeVpnProfileStateLocked(Lcom/android/server/connectivity/Vpn;)Landroid/net/VpnProfileState;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3046
    invoke-virtual {v1, v10}, Lcom/android/server/connectivity/Vpn;->getRedactedNetworkCapabilitiesOfUnderlyingNetwork(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 3048
    invoke-virtual {v1, v11}, Lcom/android/server/connectivity/Vpn;->getRedactedLinkPropertiesOfUnderlyingNetwork(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v11

    .line 3041
    invoke-static/range {v2 .. v11}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msendEventToVpnManagerApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    goto :goto_1d7

    .line 3052
    :cond_1bc
    if-eqz p2, :cond_1d7

    .line 3053
    const-string v1, "IkeV2VpnRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSessionLost: exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    :cond_1d7
    :goto_1d7
    monitor-exit v0
    :try_end_1d8
    .catchall {:try_start_23 .. :try_end_1d8} :catchall_266

    .line 3057
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 3058
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3059
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 3063
    const-string v1, "IkeV2VpnRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resetting state for network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v1

    .line 3069
    :try_start_1fa
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iput-object v0, v2, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 3070
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz v2, :cond_25e

    .line 3071
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object v0, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 3074
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v2, :cond_25e

    .line 3075
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3077
    .local v2, "oldRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3078
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 3079
    .local v4, "route":Landroid/net/RouteInfo;
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v6, Landroid/net/RouteInfo;

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v7

    const/4 v8, 0x7

    invoke-direct {v6, v7, v0, v0, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3081
    nop

    .end local v4    # "route":Landroid/net/RouteInfo;
    goto :goto_22a

    .line 3082
    :cond_24b
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_25e

    .line 3083
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeLinkProperties(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 3087
    .end local v2    # "oldRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :cond_25e
    monitor-exit v1
    :try_end_25f
    .catchall {:try_start_1fa .. :try_end_25f} :catchall_263

    .line 3089
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->resetIkeState()V

    .line 3090
    return-void

    .line 3087
    :catchall_263
    move-exception v0

    :try_start_264
    monitor-exit v1
    :try_end_265
    .catchall {:try_start_264 .. :try_end_265} :catchall_263

    throw v0

    .line 3055
    :catchall_266
    move-exception v1

    :try_start_267
    monitor-exit v0
    :try_end_268
    .catchall {:try_start_267 .. :try_end_268} :catchall_266

    throw v1

    nop

    :sswitch_data_26a
    .sparse-switch
        0xe -> :sswitch_36
        0x11 -> :sswitch_36
        0x18 -> :sswitch_36
        0x22 -> :sswitch_36
        0x25 -> :sswitch_36
        0x26 -> :sswitch_36
    .end sparse-switch
.end method

.method public run()V
    .registers 4

    .line 2701
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->isRestrictedToTestNetworks()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2702
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 2703
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 2704
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 2705
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 2706
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .local v0, "req":Landroid/net/NetworkRequest;
    goto :goto_30

    .line 2713
    .end local v0    # "req":Landroid/net/NetworkRequest;
    :cond_21
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 2714
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 2715
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 2718
    .restart local v0    # "req":Landroid/net/NetworkRequest;
    :goto_30
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2719
    return-void
.end method
