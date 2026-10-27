.class public Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedRealTime()J
    .registers 3

    .line 2579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnderlyingIfaceMtu(Ljava/lang/String;)I
    .registers 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2585
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 2586
    .local v1, "underlyingIface":Ljava/net/NetworkInterface;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 2587
    .end local v1    # "underlyingIface":Ljava/net/NetworkInterface;
    :catch_d
    move-exception v1

    .line 2588
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not get MTU of underlying network"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2589
    return v0
.end method

.method public isAirplaneModeOn(Lcom/android/server/vcn/VcnContext;)Z
    .registers 5
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;

    .line 2573
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2
.end method

.method public newIkeSession(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .registers 13
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "ikeSessionParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p3, "childSessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p4, "ikeSessionCallback"    # Landroid/net/ipsec/ike/IkeSessionCallback;
    .param p5, "childSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 2525
    new-instance v6, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    return-object v6
.end method

.method public newNetworkAgent(Lcom/android/server/vcn/VcnContext;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .registers 21
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "caps"    # Landroid/net/NetworkCapabilities;
    .param p4, "lp"    # Landroid/net/LinkProperties;
    .param p5, "score"    # Landroid/net/NetworkScore;
    .param p6, "nac"    # Landroid/net/NetworkAgentConfig;
    .param p7, "provider"    # Landroid/net/NetworkProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/VcnContext;",
            "Ljava/lang/String;",
            "Landroid/net/NetworkCapabilities;",
            "Landroid/net/LinkProperties;",
            "Landroid/net/NetworkScore;",
            "Landroid/net/NetworkAgentConfig;",
            "Landroid/net/NetworkProvider;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;"
        }
    .end annotation

    .line 2559
    .local p8, "networkUnwantedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;>;"
    .local p9, "validationStatusCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    new-instance v10, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;-><init>(Lcom/android/server/vcn/VcnContext;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object v10
.end method

.method public newUnderlyingNetworkController(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;
    .registers 13
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "connectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .param p3, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p4, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p5, "callback"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

    .line 2514
    new-instance v6, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;)V

    return-object v6
.end method

.method public newWakeLock(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wakeLockFlag"    # I
    .param p3, "wakeLockTag"    # Ljava/lang/String;

    .line 2536
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method

.method public newWakeupMessage(Lcom/android/server/vcn/VcnContext;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/internal/util/WakeupMessage;
    .registers 7
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 2545
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method
