.class public abstract Landroid/net/networkstack/NetworkStackClientBase;
.super Ljava/lang/Object;
.source "NetworkStackClientBase.java"


# instance fields
.field private mConnector:Landroid/net/INetworkStackConnector;

.field private final mPendingNetStackRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Landroid/net/INetworkStackConnector;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$48w_f5bE_-SHUizoPUm5Nk7I_rQ(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 3

    .line 72
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not create IpClient"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$W7vPNax4FJkXUNCRAsG5q0i5siM(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 4

    .line 57
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not create DhcpServer"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$o36wiYmu4CK8lia6L1FfocOrHHc(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 3

    .line 103
    :try_start_0
    invoke-interface {p1, p0}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not fetch IpMemoryStore"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$o_PdOWRUuao3JqvKE8gTlhXzpWQ(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 4

    .line 88
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 90
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not create NetworkMonitor"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    .registers 3

    .line 101
    new-instance v0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda1;-><init>(Landroid/net/IIpMemoryStoreCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getQueueLength()I
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object p0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 160
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .registers 5

    .line 55
    new-instance v0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .registers 4

    .line 70
    new-instance v0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .registers 5

    .line 86
    new-instance v0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda3;-><init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V
    .registers 6

    .line 134
    :goto_0
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 135
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    iget-object v2, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 137
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_38

    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_23

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/util/function/Consumer;

    .line 140
    invoke-interface {v3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_15

    .line 143
    :cond_23
    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v1

    .line 144
    :try_start_26
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_34

    .line 146
    iput-object p1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mConnector:Landroid/net/INetworkStackConnector;

    .line 147
    monitor-exit v1

    return-void

    :catchall_32
    move-exception p0

    goto :goto_36

    .line 149
    :cond_34
    monitor-exit v1

    goto :goto_0

    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_32

    throw p0

    :catchall_38
    move-exception p0

    .line 137
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public requestConnector(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/INetworkStackConnector;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mConnector:Landroid/net/INetworkStackConnector;

    if-nez v1, :cond_10

    .line 115
    iget-object p0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_15

    .line 118
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_e

    .line 120
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 118
    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_e

    throw p0
.end method
