.class public Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;
.super Lcom/android/server/connectivity/Vpn$VpnRunner;
.source "Vpn.java"

# interfaces
.implements Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;


# instance fields
.field public mActiveNetwork:Landroid/net/Network;

.field public mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

.field public mCurrentToken:I

.field public final mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

.field public final mIpSecManager:Landroid/net/IpSecManager;

.field public mIsRunning:Z

.field public mMobikeEnabled:Z

.field public final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final mProfile:Landroid/net/Ikev2VpnProfile;

.field public mRetryCount:I

.field public mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

.field public mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

.field public mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

.field public mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

.field public final mSessionKey:Ljava/lang/String;

.field public mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

.field public mUnderlyingLinkProperties:Landroid/net/LinkProperties;

.field public mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field mValidationFailRetryCount:I

.field public final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public static synthetic $r8$lambda$Euak8MHU4Bz6Z3I7uVD0qO8Qdc4(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;ILandroid/net/Network;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->lambda$onDefaultNetworkLost$5(ILandroid/net/Network;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LGGlfVDEDVU9_W19D9sYlbQ_5JQ(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->lambda$onValidationStatus$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$S-ctvZC1_MvZLKR5QgOK0bNZNW4(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->lambda$onValidationStatus$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$dboPwn1sn1Puw6Pt_gTPmOuf1Cg(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3

    .line 2928
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Runnable "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " rejected by the mExecutor"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IkeV2VpnRunner"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$hmX2dAqgq5PBx11oqMyybl5FJWs(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->lambda$scheduleStartIkeSession$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$krCDDI3izS-4tQH0Bsj2bPiRWUI(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->lambda$exitVpnRunner$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$rgfjfJWtALtNPxDyFfFlPOdICcA(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->lambda$onValidationStatus$3()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveNetwork(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Landroid/net/Network;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentToken(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMobikeEnabled(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProfile(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Landroid/net/Ikev2VpnProfile;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduledHandleDataStallFuture(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSession(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionKey(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrGuessKeepaliveDelaySeconds(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getOrGuessKeepaliveDelaySeconds()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Landroid/net/Ikev2VpnProfile;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .registers 9

    .line 2909
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 2910
    const-string v0, "IkeV2VpnRunner"

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2848
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    const/4 v2, -0x1

    .line 2857
    iput v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    const/4 v2, 0x0

    .line 2869
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    .line 2877
    iput v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 2886
    iput v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I

    .line 2888
    new-instance v3, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    .line 2911
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 2912
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2913
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object p2

    const-string v3, "ipsec"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/IpSecManager;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    .line 2914
    new-instance p2, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    invoke-direct {p2, v0, p0, p3}, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;-><init>(Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2915
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 2917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generate session key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    invoke-virtual {p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    .line 2923
    invoke-virtual {p3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    .line 2926
    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 2930
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmUserId(Lcom/android/server/connectivity/Vpn;)I

    move-result v0

    iget-object v1, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 2931
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 2930
    invoke-static {p1, p2, v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetVpnNetworkPreference(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/util/Set;)V

    .line 2934
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmCarrierConfigManager(Lcom/android/server/connectivity/Vpn;)Landroid/telephony/CarrierConfigManager;

    move-result-object p2

    if-eqz p2, :cond_80

    .line 2935
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmCarrierConfigManager(Lcom/android/server/connectivity/Vpn;)Landroid/telephony/CarrierConfigManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    invoke-virtual {p1, p3, p0}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    :cond_80
    return-void
.end method


# virtual methods
.method public final buildCarrierConfigInfo(Ljava/lang/String;II)Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;
    .registers 7

    if-eqz p3, :cond_16

    const/16 p0, 0x28

    const/4 v0, 0x4

    const/16 v1, 0x11

    if-eq p3, p0, :cond_18

    const/16 p0, 0x3c

    const/4 v2, 0x6

    if-eq p3, p0, :cond_14

    const/16 p0, 0x3d

    if-eq p3, p0, :cond_13

    goto :goto_18

    :cond_13
    const/4 v1, -0x1

    :cond_14
    move v0, v2

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    move v1, v0

    .line 3527
    :cond_18
    :goto_18
    new-instance p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;-><init>(Ljava/lang/String;III)V

    return-object p0
.end method

.method public final calculateVpnMtu()I
    .registers 5

    .line 3323
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    move-result-object v0

    .line 3324
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v0, :cond_6b

    if-nez v1, :cond_15

    goto :goto_6b

    .line 3331
    :cond_15
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v0

    if-nez v0, :cond_4c

    .line 3336
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 3337
    invoke-virtual {v2}, Landroid/net/Ikev2VpnProfile;->getMaxMtu()I

    move-result v2

    .line 3336
    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Vpn$Dependencies;->getJavaNetworkInterfaceMtu(Ljava/lang/String;I)I

    move-result v0
    :try_end_2d
    .catch Ljava/net/SocketException; {:try_start_1b .. :try_end_2d} :catch_2e

    goto :goto_4c

    :catch_2e
    move-exception v0

    .line 3339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got a SocketException when getting MTU from kernel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IkeV2VpnRunner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getMaxMtu()I

    move-result p0

    return p0

    .line 3344
    :cond_4c
    :goto_4c
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 3345
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getChildSessionParams()Landroid/net/ipsec/ike/ChildSessionParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSessionParams;->getSaProposals()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 3346
    invoke-virtual {v3}, Landroid/net/Ikev2VpnProfile;->getMaxMtu()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 3348
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet4Address;

    .line 3344
    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/android/server/connectivity/Vpn$Dependencies;->calculateVpnMtu(Ljava/util/List;IIZ)I

    move-result p0

    return p0

    .line 3328
    :cond_6b
    :goto_6b
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getMaxMtu()I

    move-result p0

    return p0
.end method

.method public final cancelHandleNetworkLostTimeout()V
    .registers 3

    .line 3861
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_14

    .line 3866
    const-string v0, "IkeV2VpnRunner"

    const-string v1, "Cancel the task for handling network lost timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3868
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_14
    return-void
.end method

.method public final cancelRetryNewIkeSessionFuture()V
    .registers 3

    .line 3873
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_14

    .line 3878
    const-string v0, "IkeV2VpnRunner"

    const-string v1, "Cancel the task for handling new ike session timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3880
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_14
    return-void
.end method

.method public final disconnectVpnRunner()V
    .registers 4

    .line 4070
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VPNRunner] Disconnect runner, underlying net "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4071
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 4072
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4073
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    const/4 v0, 0x0

    .line 4074
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    .line 4076
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->resetIkeState()V

    .line 4078
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmCarrierConfigManager(Lcom/android/server/connectivity/Vpn;)Landroid/telephony/CarrierConfigManager;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 4079
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmCarrierConfigManager(Lcom/android/server/connectivity/Vpn;)Landroid/telephony/CarrierConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->unregisterCarrierConfigChangeListener(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 4082
    :cond_3c
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 4084
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method public exitVpnRunner()V
    .registers 3

    .line 4093
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mclearVpnNetworkPreference(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 4095
    :try_start_7
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_7 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method public final getCarrierConfigForUnderlyingNetwork()Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;
    .registers 7

    .line 3455
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmCarrierConfigManager(Lcom/android/server/connectivity/Vpn;)Landroid/telephony/CarrierConfigManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3459
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$smgetCellSubIdForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b

    .line 3461
    const-string p0, "IkeV2VpnRunner"

    const-string v0, "Underlying network is not a cellular network"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3465
    :cond_1b
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v3

    .line 3466
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmCachedCarrierConfigInfoPerSubId(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 3467
    const-string v1, "IkeV2VpnRunner"

    const-string v2, "Get cached config"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmCachedCarrierConfigInfoPerSubId(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;

    monitor-exit v3

    return-object p0

    :catchall_3f
    move-exception p0

    goto :goto_a3

    .line 3470
    :cond_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_1e .. :try_end_42} :catchall_3f

    .line 3472
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmTelephonyManager(Lcom/android/server/connectivity/Vpn;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 3473
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimApplicationState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6b

    .line 3474
    const-string p0, "IkeV2VpnRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM card is not ready on sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3478
    :cond_6b
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmCarrierConfigManager(Lcom/android/server/connectivity/Vpn;)Landroid/telephony/CarrierConfigManager;

    move-result-object v4

    .line 3479
    invoke-virtual {v4, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 3480
    invoke-static {v4}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v5

    if-nez v5, :cond_7c

    return-object v1

    .line 3484
    :cond_7c
    const-string/jumbo v1, "min_udp_port_4500_nat_timeout_sec_int"

    .line 3485
    invoke-virtual {v4, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3486
    const-string/jumbo v5, "preferred_ike_protocol_int"

    invoke-virtual {v4, v5, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3488
    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    .line 3490
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->buildCarrierConfigInfo(Ljava/lang/String;II)Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;

    move-result-object v1

    .line 3491
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v2

    .line 3492
    :try_start_95
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmCachedCarrierConfigInfoPerSubId(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3493
    monitor-exit v2

    return-object v1

    :catchall_a0
    move-exception p0

    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_95 .. :try_end_a2} :catchall_a0

    throw p0

    .line 3470
    :goto_a3
    :try_start_a3
    monitor-exit v3
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_3f

    throw p0
.end method

.method public final getChildSessionParams()Landroid/net/ipsec/ike/ChildSessionParams;
    .registers 2

    .line 3313
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 3314
    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3316
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object p0

    return-object p0

    .line 3318
    :cond_d
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getAllowedAlgorithms()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/connectivity/VpnIkev2Utils;->buildChildSessionParams(Ljava/util/List;)Landroid/net/ipsec/ike/ChildSessionParams;

    move-result-object p0

    return-object p0
.end method

.method public final getIkeSessionParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;
    .registers 4

    .line 3291
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 3292
    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3295
    new-instance v1, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/net/ipsec/ike/IkeSessionParams;)V

    .line 3296
    invoke-virtual {v1, p1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p1

    goto :goto_22

    .line 3298
    :cond_16
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/VpnIkev2Utils;->makeIkeSessionParamsBuilder(Landroid/content/Context;Landroid/net/Ikev2VpnProfile;Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p1

    .line 3301
    :goto_22
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->isAutomaticNattKeepaliveTimerEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3302
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->guessNattKeepaliveTimerForNetwork()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNattKeepAliveDelaySeconds(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 3304
    :cond_31
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->isAutomaticIpVersionSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 3305
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->guessEspIpVersionForNetwork()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setIpVersion(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 3306
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->guessEspEncapTypeForNetwork()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setEncapType(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 3308
    :cond_47
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object p0

    return-object p0
.end method

.method public final getOrGuessKeepaliveDelaySeconds()I
    .registers 2

    .line 3531
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->isAutomaticNattKeepaliveTimerEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3532
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->guessNattKeepaliveTimerForNetwork()I

    move-result p0

    return p0

    .line 3533
    :cond_d
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3534
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object p0

    .line 3535
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams;->getNattKeepAliveDelaySeconds()I

    move-result p0

    return p0

    :cond_24
    const/16 p0, 0x12c

    return p0
.end method

.method public final guessEspEncapTypeForNetwork()I
    .registers 5

    .line 3413
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    instance-of v0, v0, Landroid/net/vcn/VcnTransportInfo;

    const/4 v1, 0x0

    const-string v2, "IkeV2VpnRunner"

    if-eqz v0, :cond_13

    .line 3414
    const-string p0, "Running over VCN, encap type is auto"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3417
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getCarrierConfigForUnderlyingNetwork()Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 3419
    iget v1, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->encapType:I

    :cond_1b
    if-eqz p0, :cond_40

    .line 3421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get customized encap type ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") on SIM (mccmnc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return v1
.end method

.method public final guessEspIpVersionForNetwork()I
    .registers 5

    .line 3398
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    instance-of v0, v0, Landroid/net/vcn/VcnTransportInfo;

    const/4 v1, 0x0

    const-string v2, "IkeV2VpnRunner"

    if-eqz v0, :cond_13

    .line 3399
    const-string p0, "Running over VCN, esp IP version is auto"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3402
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getCarrierConfigForUnderlyingNetwork()Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 3404
    iget v1, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->ipVersion:I

    :cond_1b
    if-eqz p0, :cond_40

    .line 3406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get customized IP version ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") on SIM (mccmnc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return v1
.end method

.method public final guessNattKeepaliveTimerForNetwork()I
    .registers 5

    .line 3429
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    .line 3430
    instance-of v1, v0, Landroid/net/vcn/VcnTransportInfo;

    const-string v2, "IkeV2VpnRunner"

    if-eqz v1, :cond_30

    .line 3431
    check-cast v0, Landroid/net/vcn/VcnTransportInfo;

    .line 3432
    invoke-virtual {v0}, Landroid/net/vcn/VcnTransportInfo;->getMinUdpPort4500NatTimeoutSeconds()I

    move-result v0

    .line 3433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running over VCN, keepalive timer : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_30

    return v0

    .line 3440
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getCarrierConfigForUnderlyingNetwork()Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 3442
    iget v0, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->keepaliveDelaySec:I

    goto :goto_3b

    :cond_39
    const/16 v0, 0x1e

    :goto_3b
    if-eqz p0, :cond_61

    .line 3444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get customized keepalive ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s) on SIM (mccmnc="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$CarrierConfigInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return v0
.end method

.method public final handleSessionLost(Ljava/lang/Exception;Landroid/net/Network;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3928
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->cancelHandleNetworkLostTimeout()V

    .line 3933
    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_f

    .line 3935
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->markFailedAndDisconnect(Ljava/lang/Exception;)V

    return-void

    .line 3939
    :cond_f
    instance-of v2, v1, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_42

    .line 3940
    move-object v2, v1

    check-cast v2, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    .line 3941
    const-string v7, "android.net.category.EVENT_IKE_ERROR"

    .line 3942
    invoke-virtual {v2}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    move-result v8

    .line 3944
    invoke-virtual {v2}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    move-result v2

    const/16 v9, 0xe

    if-eq v2, v9, :cond_3d

    const/16 v9, 0x11

    if-eq v2, v9, :cond_3d

    const/16 v9, 0x18

    if-eq v2, v9, :cond_3d

    const/16 v9, 0x22

    if-eq v2, v9, :cond_3d

    const/16 v9, 0x25

    if-eq v2, v9, :cond_3d

    const/16 v9, 0x26

    if-eq v2, v9, :cond_3d

    move v2, v5

    goto :goto_3e

    :cond_3d
    move v2, v4

    :goto_3e
    move v11, v2

    :goto_3f
    move-object v10, v7

    move v12, v8

    goto :goto_91

    .line 3958
    :cond_42
    instance-of v2, v1, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;

    if-eqz v2, :cond_4c

    .line 3959
    const-string v7, "android.net.category.EVENT_NETWORK_ERROR"

    move v11, v5

    move v12, v11

    :goto_4a
    move-object v10, v7

    goto :goto_91

    .line 3962
    :cond_4c
    instance-of v2, v1, Landroid/net/ipsec/ike/exceptions/IkeNonProtocolException;

    const/4 v8, -0x1

    if-eqz v2, :cond_75

    .line 3963
    const-string v7, "android.net.category.EVENT_NETWORK_ERROR"

    .line 3965
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_5f

    move v11, v5

    move-object v10, v7

    const/4 v12, 0x0

    goto :goto_91

    .line 3967
    :cond_5f
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/net/ipsec/ike/exceptions/IkeTimeoutException;

    if-eqz v2, :cond_6a

    move v12, v4

    move v11, v5

    goto :goto_4a

    .line 3969
    :cond_6a
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_73

    const/4 v8, 0x3

    :cond_73
    move v11, v5

    goto :goto_3f

    :cond_75
    if-eqz v1, :cond_8e

    .line 3973
    const-string v2, "IkeV2VpnRunner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onSessionLost: exception = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    move-object v10, v6

    move v11, v8

    move v12, v11

    .line 3976
    :goto_91
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v2

    .line 3978
    :try_start_94
    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v8, v7, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eq v8, v0, :cond_9f

    monitor-exit v2

    return-void

    :catchall_9c
    move-exception v0

    goto/16 :goto_170

    :cond_9f
    if-eqz v10, :cond_ce

    .line 3980
    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$smisVpnApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 3981
    iget-object v9, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3982
    invoke-virtual {v9}, Lcom/android/server/connectivity/Vpn;->getPackage()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeVpnProfileStateLocked(Lcom/android/server/connectivity/Vpn;)Landroid/net/VpnProfileState;

    move-result-object v15

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    iget-object v8, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3984
    invoke-static {v8, v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mgetRedactedNetworkCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v17

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v8, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 3985
    invoke-static {v3, v8}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mgetRedactedLinkProperties(Lcom/android/server/connectivity/Vpn;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v18

    move-object/from16 v16, v7

    .line 3981
    invoke-static/range {v9 .. v18}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msendEventToVpnManagerApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    .line 3987
    :cond_ce
    monitor-exit v2
    :try_end_cf
    .catchall {:try_start_94 .. :try_end_cf} :catchall_9c

    if-ne v11, v4, :cond_d5

    .line 3990
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->markFailedAndDisconnect(Ljava/lang/Exception;)V

    return-void

    :cond_d5
    const-wide/16 v1, -0x1

    .line 3993
    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->scheduleStartIkeSession(J)V

    .line 3998
    const-string v1, "IkeV2VpnRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resetting state for token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v1

    .line 4002
    :try_start_f5
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eq v3, v0, :cond_ff

    monitor-exit v1

    return-void

    :catchall_fd
    move-exception v0

    goto :goto_16e

    .line 4007
    :cond_ff
    iput-object v6, v2, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 4008
    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz v2, :cond_14f

    .line 4009
    iput-object v6, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 4012
    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v2, :cond_14f

    .line 4013
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4015
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 4016
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_124
    if-ge v7, v3, :cond_142

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/net/RouteInfo;

    .line 4017
    iget-object v9, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v10, Landroid/net/RouteInfo;

    invoke-virtual {v8}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v8

    const/4 v11, 0x7

    invoke-direct {v10, v8, v6, v6, v11}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_124

    .line 4020
    :cond_142
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v3, :cond_14f

    .line 4021
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeLinkProperties(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$smdoSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V

    .line 4025
    :cond_14f
    monitor-exit v1
    :try_end_150
    .catchall {:try_start_f5 .. :try_end_150} :catchall_fd

    .line 4027
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->resetIkeState()V

    if-eq v12, v5, :cond_16d

    .line 4028
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I

    sub-int/2addr v2, v4

    .line 4032
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn$Dependencies;->getNextRetryDelayMs(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-lez v1, :cond_16d

    .line 4033
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mclearVpnNetworkPreference(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    :cond_16d
    return-void

    .line 4025
    :goto_16e
    :try_start_16e
    monitor-exit v1
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_fd

    throw v0

    .line 3987
    :goto_170
    :try_start_170
    monitor-exit v2
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_9c

    throw v0
.end method

.method public final isActiveNetwork(Landroid/net/Network;)Z
    .registers 3

    .line 2965
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isActiveToken(I)Z
    .registers 3

    .line 2969
    iget v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    if-ne v0, p1, :cond_a

    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$exitVpnRunner$6()V
    .registers 1

    .line 4096
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->disconnectVpnRunner()V

    return-void
.end method

.method public final synthetic lambda$onDefaultNetworkLost$5(ILandroid/net/Network;)V
    .registers 5

    .line 3832
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3833
    new-instance p1, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;

    invoke-direct {p1, p2}, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;-><init>(Landroid/net/Network;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->handleSessionLost(Ljava/lang/Exception;Landroid/net/Network;)V

    .line 3836
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter p2

    .line 3838
    :try_start_11
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, p1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eq v0, p0, :cond_1b

    monitor-exit p2

    return-void

    :catchall_19
    move-exception p0

    goto :goto_24

    .line 3840
    :cond_1b
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "Network lost"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 3842
    monitor-exit p2

    goto :goto_3c

    :goto_24
    monitor-exit p2
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_19

    throw p0

    .line 3844
    :cond_26
    const-string p2, "IkeV2VpnRunner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduled handleSessionLost fired for obsolete token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    const/4 p1, 0x0

    .line 3853
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final synthetic lambda$onValidationStatus$2()V
    .registers 4

    const/4 v0, 0x0

    .line 3724
    iput v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 3725
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_16

    .line 3726
    const-string v1, "IkeV2VpnRunner"

    const-string v2, "Recovered from stall. Cancel pending reset action."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3728
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_16
    return-void
.end method

.method public final synthetic lambda$onValidationStatus$3()V
    .registers 2

    .line 3752
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->maybeMigrateIkeSessionAndUpdateVpnTransportInfo(Landroid/net/Network;)Z

    return-void
.end method

.method public final synthetic lambda$onValidationStatus$4()V
    .registers 3

    .line 3761
    iget v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    if-lez v0, :cond_10

    .line 3762
    const-string v0, "IkeV2VpnRunner"

    const-string v1, "Reset session to recover stalled network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->startIkeSession(Landroid/net/Network;)V

    :cond_10
    const/4 v0, 0x0

    .line 3769
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final synthetic lambda$scheduleStartIkeSession$1()V
    .registers 2

    .line 3666
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->startOrMigrateIkeSession(Landroid/net/Network;)V

    const/4 v0, 0x0

    .line 3670
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final markFailedAndDisconnect(Ljava/lang/Exception;)V
    .registers 5

    .line 3886
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 3888
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eq v2, p0, :cond_d

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_22

    .line 3890
    :cond_d
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 3891
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_b

    .line 3893
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mclearVpnNetworkPreference(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 3894
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->disconnectVpnRunner()V

    return-void

    .line 3891
    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_b

    throw p0
.end method

.method public final maybeMigrateIkeSession(Landroid/net/Network;I)Z
    .registers 6

    .line 3571
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    if-nez v0, :cond_a

    goto :goto_68

    .line 3575
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migrate IKE Session with token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to network "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IkeV2VpnRunner"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->isAutomaticIpVersionSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3583
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->guessEspIpVersionForNetwork()I

    move-result v1

    .line 3584
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->guessEspEncapTypeForNetwork()I

    move-result v0

    goto :goto_61

    .line 3585
    :cond_3b
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 3586
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    .line 3587
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getIpVersion()I

    move-result v1

    .line 3588
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    .line 3589
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getEncapType()I

    move-result v0

    goto :goto_61

    :cond_60
    move v0, v1

    .line 3595
    :goto_61
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->setNetwork(Landroid/net/Network;III)V

    const/4 p0, 0x1

    return p0

    :cond_68
    :goto_68
    return v1
.end method

.method public maybeMigrateIkeSessionAndUpdateVpnTransportInfo(Landroid/net/Network;)Z
    .registers 3

    .line 3542
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getOrGuessKeepaliveDelaySeconds()I

    move-result v0

    .line 3543
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->maybeMigrateIkeSession(Landroid/net/Network;I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 3545
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->updateVpnTransportInfoAndNetCap(I)V

    :cond_d
    return p1
.end method

.method public onChildMigrated(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .registers 12

    .line 3184
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    move-result v0

    if-nez v0, :cond_42

    .line 3185
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[IKEEvent-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] onChildMigrated obsolete token="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3187
    const-string p0, "IkeV2VpnRunner"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onChildMigrated for obsolete token "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3190
    :cond_42
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IKEEvent-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] onChildMigrated token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", in="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3196
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    move-result-object v0

    .line 3199
    :try_start_7c
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v1
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_122
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7c .. :try_end_7f} :catch_122

    .line 3201
    :try_start_7f
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eq v3, p0, :cond_8a

    monitor-exit v1

    return-void

    :catchall_87
    move-exception p2

    goto/16 :goto_124

    .line 3203
    :cond_8a
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeLinkProperties(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;

    move-result-object v2

    .line 3205
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/net/Network;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v5}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetUnderlyingNetworksAndMetrics(Lcom/android/server/connectivity/Vpn;[Landroid/net/Network;)V

    .line 3206
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->calculateVpnMtu()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetMtuAndMetrics(Lcom/android/server/connectivity/Vpn;I)V

    .line 3207
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeLinkProperties(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;

    move-result-object v3

    .line 3211
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 3212
    new-instance p2, Landroid/net/ipsec/ike/exceptions/IkeIOException;

    new-instance p3, Ljava/io/IOException;

    const-string v0, "No valid addresses for MTU < 1280"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Landroid/net/ipsec/ike/exceptions/IkeIOException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    .line 3216
    monitor-exit v1

    return-void

    .line 3219
    :cond_c3
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3220
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 3226
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_100

    .line 3227
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    const-string v7, "MTU too low for IPv6; restarting network agent"

    invoke-static {v2, v3, v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mstartNewNetworkAgent(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkAgent;Ljava/lang/String;)V

    .line 3230
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 3231
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 3232
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    .line 3231
    invoke-virtual {v5, v7, v3}, Landroid/net/IpSecManager$IpSecTunnelInterface;->removeAddress(Ljava/net/InetAddress;I)V

    goto :goto_e6

    .line 3237
    :cond_100
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10d

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$smdoSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V

    .line 3239
    :cond_10d
    monitor-exit v1
    :try_end_10e
    .catchall {:try_start_7f .. :try_end_10e} :catchall_87

    .line 3241
    :try_start_10e
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v1, v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->setUnderlyingNetwork(Landroid/net/Network;)V

    .line 3245
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v0, v1, v6, p2}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V

    .line 3247
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {p2, v0, v4, p3}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_121} :catch_122
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10e .. :try_end_121} :catch_122

    return-void

    :catch_122
    move-exception p2

    goto :goto_126

    .line 3239
    :goto_124
    :try_start_124
    monitor-exit v1
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_87

    :try_start_125
    throw p2
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_126} :catch_122
    .catch Ljava/lang/IllegalArgumentException; {:try_start_125 .. :try_end_126} :catch_122

    .line 3250
    :goto_126
    const-string p3, "IkeV2VpnRunner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transform application failed for token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3251
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    return-void
.end method

.method public onChildOpened(ILandroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .registers 12

    .line 3034
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    move-result v0

    if-nez v0, :cond_42

    .line 3035
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IKEEvent-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] onChildOpened obsolete token="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3037
    const-string p0, "IkeV2VpnRunner"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChildOpened called for obsolete token "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3046
    :cond_42
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IKEEvent-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] onChildOpened token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 3047
    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 3048
    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3046
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3050
    :try_start_8a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 3051
    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object v1

    .line 3052
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3054
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->calculateVpnMtu()I

    move-result v3

    .line 3058
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$smisIPv6Only(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_ba

    const/16 v4, 0x500

    if-ge v3, v4, :cond_ba

    .line 3059
    new-instance p2, Landroid/net/ipsec/ike/exceptions/IkeIOException;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No valid addresses for MTU < 1280"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Landroid/net/ipsec/ike/exceptions/IkeIOException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    return-void

    :catch_b7
    move-exception p2

    goto/16 :goto_1dc

    .line 3067
    :cond_ba
    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getOutboundTrafficSelectors()Ljava/util/List;

    move-result-object v4

    .line 3066
    invoke-static {v4}, Lcom/android/server/connectivity/VpnIkev2Utils;->getRoutesFromTrafficSelectors(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v4

    .line 3068
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 3069
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/net/IpSecManager$IpSecTunnelInterface;->addAddress(Ljava/net/InetAddress;I)V

    goto :goto_c6

    .line 3072
    :cond_e0
    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fc

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 3073
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    .line 3079
    :cond_fc
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    invoke-virtual {p2}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    move-result-object p2

    .line 3084
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v5
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_105} :catch_b7

    .line 3086
    :try_start_105
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v6, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eq v7, p0, :cond_110

    monitor-exit v5

    return-void

    :catchall_10d
    move-exception p2

    goto/16 :goto_1da

    .line 3088
    :cond_110
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnConnectivityMetrics(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnConnectivityMetrics;

    move-result-object v6

    if-eqz v6, :cond_140

    .line 3089
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnConnectivityMetrics(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnConnectivityMetrics;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->setVpnType(I)V

    .line 3090
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnConnectivityMetrics(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnConnectivityMetrics;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v7}, Landroid/net/Ikev2VpnProfile;->toVpnProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->setVpnProfileType(I)V

    .line 3091
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnConnectivityMetrics(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnConnectivityMetrics;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    .line 3092
    invoke-virtual {v7}, Landroid/net/Ikev2VpnProfile;->getAllowedAlgorithms()Ljava/util/List;

    move-result-object v7

    .line 3091
    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->setAllowedAlgorithms(Ljava/util/List;)V

    .line 3095
    :cond_140
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iput-object v0, v6, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 3096
    invoke-static {v6, v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetMtuAndMetrics(Lcom/android/server/connectivity/Vpn;I)V

    .line 3097
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 3099
    iget-object v0, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3100
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3101
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnConnectivityMetrics(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnConnectivityMetrics;

    move-result-object v0

    if-eqz v0, :cond_174

    .line 3102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnConnectivityMetrics(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnConnectivityMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->updateVpnNetworkIpProtocol(Ljava/util/List;)V

    .line 3105
    :cond_174
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3106
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3108
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-nez v1, :cond_195

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 3109
    :cond_195
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3110
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3112
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Network;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetUnderlyingNetworksAndMetrics(Lcom/android/server/connectivity/Vpn;[Landroid/net/Network;)V

    .line 3114
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, p2, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-nez v0, :cond_1cf

    .line 3119
    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$misSettingsVpnLocked(Lcom/android/server/connectivity/Vpn;)Z

    move-result p2

    if-eqz p2, :cond_1c3

    .line 3120
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mprepareStatusIntent(Lcom/android/server/connectivity/Vpn;)V

    .line 3122
    :cond_1c3
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V

    invoke-static {p2, v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$magentConnect(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)V

    .line 3123
    monitor-exit v5

    return-void

    .line 3126
    :cond_1cf
    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mmakeLinkProperties(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;

    move-result-object p2

    .line 3127
    monitor-exit v5
    :try_end_1d4
    .catchall {:try_start_105 .. :try_end_1d4} :catchall_10d

    .line 3129
    :try_start_1d4
    invoke-static {v0, p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$smdoSendLinkProperties(Landroid/net/NetworkAgent;Landroid/net/LinkProperties;)V

    .line 3130
    iput v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1d9} :catch_b7

    return-void

    .line 3127
    :goto_1da
    :try_start_1da
    monitor-exit v5
    :try_end_1db
    .catchall {:try_start_1da .. :try_end_1db} :catchall_10d

    :try_start_1db
    throw p2
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1dc} :catch_b7

    .line 3132
    :goto_1dc
    const-string v0, "IkeV2VpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in ChildOpened for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3133
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    return-void
.end method

.method public onChildTransformCreated(ILandroid/net/IpSecTransform;I)V
    .registers 8

    .line 3146
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    move-result v0

    const-string v1, "IkeV2VpnRunner"

    const-string v2, "[IKEEvent-"

    if-nez v0, :cond_41

    .line 3147
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] onChildTransformCreated obsolete token="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3149
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ChildTransformCreated for obsolete token "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3158
    :cond_41
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] onChildTransformCreated token="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", direction="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", transform="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3162
    :try_start_73
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/IpSecManager$IpSecTunnelInterface;->setUnderlyingNetwork(Landroid/net/Network;)V

    .line 3166
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v0, v2, p3, p2}, Landroid/net/IpSecManager;->applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_85} :catch_86
    .catch Ljava/lang/IllegalArgumentException; {:try_start_73 .. :try_end_85} :catch_86

    return-void

    :catch_86
    move-exception p2

    .line 3168
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transform application failed for token "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3169
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    return-void
.end method

.method public onDefaultNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .registers 5

    .line 3690
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->significantCapsChange(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3692
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UnderlyingNW] Cap changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3695
    :cond_2c
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3696
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_42

    .line 3697
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_42

    :cond_41
    return-void

    :cond_42
    :goto_42
    const-wide/16 v0, 0x12c

    .line 3700
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->scheduleStartIkeSession(J)V

    return-void
.end method

.method public onDefaultNetworkChanged(Landroid/net/Network;)V
    .registers 5

    .line 3267
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UnderlyingNW] Default network changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDefaultNetworkChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IkeV2VpnRunner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->cancelRetryNewIkeSessionFuture()V

    .line 3276
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->cancelHandleNetworkLostTimeout()V

    .line 3278
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    if-nez v0, :cond_42

    .line 3279
    const-string/jumbo p0, "onDefaultNetworkChanged after exit"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3283
    :cond_42
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    const/4 p1, 0x0

    .line 3284
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 3285
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 p1, 0x0

    .line 3286
    iput p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I

    return-void
.end method

.method public onDefaultNetworkLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .registers 6

    .line 3706
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 3707
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UnderlyingNW] Lp changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3708
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_30

    .line 3709
    invoke-static {v0, p1}, Lcom/android/net/module/util/LinkPropertiesUtils;->isIdenticalAllLinkAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_30

    :cond_2f
    return-void

    :cond_30
    :goto_30
    const-wide/16 v0, 0x12c

    .line 3715
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->scheduleStartIkeSession(J)V

    return-void
.end method

.method public onDefaultNetworkLost(Landroid/net/Network;)V
    .registers 7

    .line 3787
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UnderlyingNW] Network lost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3791
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->cancelRetryNewIkeSessionFuture()V

    .line 3793
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveNetwork(Landroid/net/Network;)Z

    move-result v0

    const-string v1, "IkeV2VpnRunner"

    if-nez v0, :cond_3b

    .line 3794
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onDefaultNetworkLost called for obsolete network "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    const/4 v0, 0x0

    .line 3803
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 3804
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3805
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 3808
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_56

    .line 3809
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Found a pending mScheduledHandleNetworkLostFuture"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3812
    const-string v2, "Unexpected error in onDefaultNetworkLost. Tear down session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3816
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->handleSessionLost(Ljava/lang/Exception;Landroid/net/Network;)V

    return-void

    .line 3820
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule a delay handleSessionLost for losing network "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on session with token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    iget v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 3829
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;ILandroid/net/Network;)V

    const-wide/16 v3, 0x1388

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3830
    invoke-virtual {v1, v2, v3, v4, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public onIkeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 6

    .line 3008
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    move-result v0

    const-string v1, "[IKEEvent-"

    if-nez v0, :cond_42

    .line 3009
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] onIkeConnectionInfoChanged obsolete token="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3011
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onIkeConnectionInfoChanged called for obsolete token "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IkeV2VpnRunner"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3014
    :cond_42
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] onIkeConnectionInfoChanged token="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", localAddr="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    invoke-virtual {p2}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", network="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3017
    invoke-virtual {p2}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3014
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3020
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 3021
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnConnectivityMetrics(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnConnectivityMetrics;

    move-result-object p1

    if-eqz p1, :cond_93

    .line 3022
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnConnectivityMetrics(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnConnectivityMetrics;

    move-result-object p0

    .line 3023
    invoke-virtual {p2}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 3022
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->updateServerIpProtocol(Ljava/net/InetAddress;)V

    :cond_93
    return-void
.end method

.method public onIkeOpened(ILandroid/net/ipsec/ike/IkeSessionConfiguration;)V
    .registers 6

    .line 2979
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    move-result v0

    const-string v1, "[IKEEvent-"

    if-nez v0, :cond_42

    .line 2980
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] onIkeOpened obsolete token="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2982
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onIkeOpened called for obsolete token "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IkeV2VpnRunner"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_42
    const/4 v0, 0x2

    .line 2987
    invoke-virtual {p2, v0}, Landroid/net/ipsec/ike/IkeSessionConfiguration;->isIkeExtensionEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    .line 2989
    invoke-virtual {p2}, Landroid/net/ipsec/ike/IkeSessionConfiguration;->getIkeSessionConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    move-result-object p2

    .line 2990
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] onIkeOpened token="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", localAddr="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2991
    invoke-virtual {p2}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", network="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2992
    invoke-virtual {p2}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mobikeEnabled= "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2990
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2994
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onIkeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    return-void
.end method

.method public onSessionLost(ILjava/lang/Exception;)V
    .registers 7

    .line 3907
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IKE] Session lost on network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1a

    .line 3908
    const-string v2, ""

    goto :goto_2f

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3907
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSessionLost() called for token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IkeV2VpnRunner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->isActiveToken(I)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 3912
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onSessionLost() called for obsolete token "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3922
    :cond_6c
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->handleSessionLost(Ljava/lang/Exception;Landroid/net/Network;)V

    return-void
.end method

.method public onValidationStatus(I)V
    .registers 6

    .line 3720
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Validation] validation status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_28

    .line 3723
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3733
    :cond_28
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_2d

    return-void

    .line 3742
    :cond_2d
    iget p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    if-nez p1, :cond_3d

    .line 3743
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 3747
    :cond_3d
    iget p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_64

    .line 3748
    const-string p1, "IkeV2VpnRunner"

    const-string v0, "Validation failed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 3753
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn$Dependencies;->getValidationFailRecoveryMs(I)J

    move-result-wide v1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3751
    invoke-virtual {p1, v0, v1, v2, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 3759
    :cond_64
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 3771
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn$Dependencies;->getValidationFailRecoveryMs(I)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3759
    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final resetIkeState()V
    .registers 3

    .line 4044
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 4046
    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    .line 4047
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 4049
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    if-eqz v0, :cond_13

    .line 4050
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->kill()V

    .line 4051
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    .line 4053
    :cond_13
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    const/4 v0, 0x0

    .line 4054
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mMobikeEnabled:Z

    return-void
.end method

.method public run()V
    .registers 4

    .line 2951
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mProfile:Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile;->isRestrictedToTestNetworks()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2952
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 2953
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 2954
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 2955
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 2956
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 2957
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void

    .line 2959
    :cond_2c
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v2, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmLooper(Lcom/android/server/connectivity/Vpn;)Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final scheduleStartIkeSession(J)V
    .registers 7

    .line 3653
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    const-string v1, "IkeV2VpnRunner"

    if-eqz v0, :cond_c

    .line 3654
    const-string p0, "There is a pending retrying task, skip the new retrying task"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const-wide/16 v2, -0x1

    cmp-long v0, v2, p1

    if-eqz v0, :cond_13

    goto :goto_21

    .line 3659
    :cond_13
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I

    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/Vpn$Dependencies;->getNextRetryDelayMs(I)J

    move-result-wide p1

    .line 3660
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry new IKE session after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " milliseconds."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3665
    invoke-virtual {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final significantCapsChange(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 5

    const/4 p0, 0x0

    if-ne p1, p2, :cond_4

    return p0

    :cond_4
    if-eqz p1, :cond_6c

    if-eqz p2, :cond_6c

    .line 3679
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 3680
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 3681
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getEnterpriseIds()[I

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getEnterpriseIds()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 3682
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 3683
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getAllowedUids()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getAllowedUids()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 3684
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 3685
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto :goto_6c

    :cond_6b
    return p0

    :cond_6c
    :goto_6c
    const/4 p0, 0x1

    return p0
.end method

.method public final startIkeSession(Landroid/net/Network;)V
    .registers 11

    .line 3600
    const-string v0, "IkeV2VpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start new IKE session on network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IKE] Start IKE session over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3606
    :try_start_30
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_a7

    .line 3608
    :try_start_33
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eq v2, p0, :cond_3e

    monitor-exit v1

    return-void

    :catchall_3b
    move-exception v0

    move-object p1, v0

    goto :goto_aa

    :cond_3e
    const/4 v2, 0x0

    .line 3610
    iput-object v2, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 3611
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_3b

    .line 3614
    :try_start_42
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->resetIkeState()V

    .line 3618
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 3624
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIpSecManager:Landroid/net/IpSecManager;

    .line 3625
    invoke-virtual {v1, v0, v0, p1}, Landroid/net/IpSecManager;->createIpSecTunnelInterface(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 3627
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmNetd(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetd;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    invoke-virtual {v1}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/NetdUtils;->setInterfaceUp(Landroid/net/INetd;Ljava/lang/String;)V

    .line 3629
    iget v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 3630
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmIkev2SessionCreator(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v3

    .line 3633
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getIkeSessionParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v4

    .line 3634
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->getChildSessionParams()Landroid/net/ipsec/ike/ChildSessionParams;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v7, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;

    const-string p1, "IkeV2VpnRunner"

    invoke-direct {v7, p1, p0, v0}, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;-><init>(Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;I)V

    new-instance v8, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;

    const-string p1, "IkeV2VpnRunner"

    invoke-direct {v8, p1, p0, v0}, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;-><init>(Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;I)V

    .line 3631
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;->createIkeSession(Landroid/content/Context;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSession:Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    .line 3640
    const-string p1, "IkeV2VpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IKE session started for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_a6} :catch_a7

    return-void

    :catch_a7
    move-exception v0

    move-object p1, v0

    goto :goto_ac

    .line 3611
    :goto_aa
    :try_start_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_3b

    :try_start_ab
    throw p1
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ac} :catch_a7

    .line 3642
    :goto_ac
    const-string v0, "IkeV2VpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup failed for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Aborting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3643
    iget v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->onSessionLost(ILjava/lang/Exception;)V

    return-void
.end method

.method public final startOrMigrateIkeSession(Landroid/net/Network;)V
    .registers 8

    .line 3362
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 3364
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eq v2, p0, :cond_d

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_68

    .line 3365
    :cond_d
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmUserId(Lcom/android/server/connectivity/Vpn;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v4, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 3366
    invoke-virtual {v1, v3, v5, v4}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    .line 3365
    invoke-static {v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetVpnNetworkPreference(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/util/Set;)V

    .line 3368
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_b

    if-nez p1, :cond_2d

    .line 3374
    const-string p0, "IkeV2VpnRunner"

    const-string p1, "There is no active network for starting an IKE session"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3378
    :cond_2d
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3380
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 3381
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    new-instance v2, Landroid/net/NetworkCapabilities$Builder;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 3383
    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities$Builder;->setUnderlyingNetworks(Ljava/util/List;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v2

    .line 3384
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3387
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v2, :cond_5d

    .line 3388
    invoke-static {v1, v2, v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mdoSetUnderlyingNetworks(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkAgent;Ljava/util/List;)V

    .line 3392
    :cond_5d
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->maybeMigrateIkeSessionAndUpdateVpnTransportInfo(Landroid/net/Network;)Z

    move-result v0

    if-eqz v0, :cond_64

    return-void

    .line 3394
    :cond_64
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->startIkeSession(Landroid/net/Network;)V

    return-void

    .line 3368
    :goto_68
    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_b

    throw p0
.end method

.method public updateVpnTransportInfoAndNetCap(I)V
    .registers 8

    .line 3552
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 3553
    :try_start_3
    new-instance v1, Landroid/net/VpnTransportInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3554
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getActiveVpnType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v4, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    iget-boolean v4, v4, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    if-eqz v4, :cond_1d

    iget-boolean v3, v3, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_1e

    :catchall_1b
    move-exception p0

    goto :goto_71

    :cond_1d
    const/4 v3, 0x0

    .line 3557
    :goto_1e
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$smareLongLivedTcpConnectionsExpensive(I)Z

    move-result p1

    invoke-direct {v1, v2, v5, v3, p1}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;ZZ)V

    .line 3558
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_1b

    .line 3559
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    .line 3561
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v2}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 3562
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 3563
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3564
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VPNRunner] Update agent caps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3565
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {p1, p0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$smdoSendNetworkCapabilities(Landroid/net/NetworkAgent;Landroid/net/NetworkCapabilities;)V

    :cond_70
    return-void

    .line 3558
    :goto_71
    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_1b

    throw p0
.end method
