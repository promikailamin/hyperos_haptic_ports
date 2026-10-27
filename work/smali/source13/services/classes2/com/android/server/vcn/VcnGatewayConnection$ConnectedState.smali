.class Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 1859
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase-IA;)V

    return-void
.end method

.method private handleMigrationCompleted(Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;)V
    .registers 9
    .param p1, "migrationCompletedInfo"    # Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    .line 1935
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1937
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmCurrentToken(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v5, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->inTransform:Landroid/net/IpSecTransform;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    .line 1944
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmCurrentToken(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v5, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->outTransform:Landroid/net/IpSecTransform;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    .line 1951
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 1954
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v1

    .line 1955
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v1

    .line 1954
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 1956
    return-void
.end method

.method private handleUnderlyingNetworkChanged(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1959
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    .line 1960
    .local v0, "oldUnderlying":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    iget-object v2, v2, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    .line 1962
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v1

    if-nez v1, :cond_21

    .line 1963
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v2, "Underlying network lost"

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1967
    return-void

    .line 1972
    :cond_21
    if-eqz v0, :cond_60

    iget-object v1, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_60

    .line 1980
    :cond_34
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 1982
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v4}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    goto :goto_91

    .line 1973
    :cond_60
    :goto_60
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migrating to new network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1974
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->setNetwork(Landroid/net/Network;)V

    .line 1986
    :cond_91
    :goto_91
    return-void
.end method


# virtual methods
.method protected enterState()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1862
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v0

    if-nez v0, :cond_28

    .line 1866
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIpSecManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager;

    move-result-object v1

    sget-object v2, Lcom/android/server/vcn/VcnGatewayConnection;->DUMMY_ADDR:Ljava/net/InetAddress;

    sget-object v3, Lcom/android/server/vcn/VcnGatewayConnection;->DUMMY_ADDR:Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v4}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 1867
    invoke-virtual {v1, v2, v3, v4}, Landroid/net/IpSecManager;->createIpSecTunnelInterface(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/IpSecManager$IpSecTunnelInterface;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_21} :catch_22
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_8 .. :try_end_21} :catch_22

    .line 1871
    goto :goto_28

    .line 1869
    :catch_22
    move-exception v0

    .line 1870
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 1873
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28
    :goto_28
    return-void
.end method

.method protected exitState()V
    .registers 2

    .line 2010
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->setSafeModeAlarm()V

    .line 2011
    return-void
.end method

.method protected processStateMsg(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1877
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_98

    .line 1929
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->logUnhandledMessage(Landroid/os/Message;)V

    goto/16 :goto_96

    .line 1925
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;

    iget-object v1, v1, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;->ikeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 1927
    goto/16 :goto_96

    .line 1919
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    .line 1922
    .local v0, "migrationCompletedInfo":Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;
    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->handleMigrationCompleted(Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;)V

    .line 1923
    goto/16 :goto_96

    .line 1916
    .end local v0    # "migrationCompletedInfo":Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->handleSafeModeTimeoutExceeded()V

    .line 1917
    goto/16 :goto_96

    .line 1913
    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->handleDisconnectRequested(Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 1914
    goto :goto_96

    .line 1902
    :pswitch_2d
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v0

    .line 1903
    .local v0, "oldChildConfig":Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    iget-object v2, v2, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;->childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    .line 1905
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmCurrentToken(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v2

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    move-result-object v6

    move-object v1, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->setupInterfaceAndNetworkAgent(ILandroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 1911
    goto :goto_96

    .line 1891
    .end local v0    # "oldChildConfig":Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    :pswitch_5c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    .line 1894
    .local v0, "transformCreatedInfo":Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmCurrentToken(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v3

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v1

    iget-object v5, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v6, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->transform:Landroid/net/IpSecTransform;

    iget v7, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;->direction:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->applyTransform(ILandroid/net/IpSecManager$IpSecTunnelInterface;Landroid/net/Network;Landroid/net/IpSecTransform;I)V

    .line 1900
    goto :goto_96

    .line 1884
    .end local v0    # "transformCreatedInfo":Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;
    :pswitch_7d
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->deferMessage(Landroid/os/Message;)V

    .line 1885
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1886
    goto :goto_96

    .line 1888
    :pswitch_8a
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1889
    goto :goto_96

    .line 1879
    :pswitch_92
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->handleUnderlyingNetworkChanged(Landroid/os/Message;)V

    .line 1880
    nop

    .line 1932
    :goto_96
    return-void

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_92
        :pswitch_5
        :pswitch_8a
        :pswitch_7d
        :pswitch_5c
        :pswitch_2d
        :pswitch_25
        :pswitch_5
        :pswitch_5
        :pswitch_20
        :pswitch_17
        :pswitch_a
    .end packed-switch
.end method

.method protected setupInterfaceAndNetworkAgent(ILandroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 8
    .param p1, "token"    # I
    .param p2, "tunnelIface"    # Landroid/net/IpSecManager$IpSecTunnelInterface;
    .param p3, "childConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .param p4, "oldChildConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .param p5, "ikeConnectionInfo"    # Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 1994
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->setupInterface(ILandroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    .line 1996
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v0

    if-nez v0, :cond_15

    .line 1997
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->buildNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V

    goto :goto_21

    .line 1999
    :cond_15
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p3, p5}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->updateNetworkAgent(Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 2003
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->clearFailedAttemptCounterAndSafeModeAlarm()V

    .line 2005
    :goto_21
    return-void
.end method
