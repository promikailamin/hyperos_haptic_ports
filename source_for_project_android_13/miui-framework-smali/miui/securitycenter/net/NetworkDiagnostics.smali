.class public Lmiui/securitycenter/net/NetworkDiagnostics;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;,
        Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;,
        Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;,
        Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "NetworkDiagnostics"

.field private static final blacklist TEST_DNS4:Ljava/net/InetAddress;

.field private static final blacklist TEST_DNS6:Ljava/net/InetAddress;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lmiui/securitycenter/net/NetworkDiagnostics;->getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnow()J
    .registers 2

    invoke-static {}, Lmiui/securitycenter/net/NetworkDiagnostics;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    const-string v0, "8.8.8.8"

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    .line 86
    const-string v0, "2001:4860:4860::8888"

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist activeNetworkDnsCheck(Landroid/content/Context;Ljava/net/InetAddress;Ljava/lang/Long;)Ljava/lang/Boolean;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Ljava/net/InetAddress;
    .param p2, "timeoutMs"    # Ljava/lang/Long;

    .line 376
    const/4 v0, 0x0

    .line 378
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 376
    if-eqz p0, :cond_44

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_12

    goto :goto_44

    .line 381
    :cond_12
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 382
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1d

    .line 383
    return-object v0

    .line 386
    :cond_1d
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 387
    .local v0, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_37

    if-eqz v0, :cond_37

    .line 388
    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_35

    .line 391
    :cond_32
    sget-object p1, Lmiui/securitycenter/net/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    goto :goto_37

    .line 389
    :cond_35
    :goto_35
    sget-object p1, Lmiui/securitycenter/net/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    .line 395
    :cond_37
    :goto_37
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-static {v2, v0, p1, p2}, Lmiui/securitycenter/net/NetworkDiagnostics;->dnsCheck(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/lang/Long;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 377
    .end local v0    # "lp":Landroid/net/LinkProperties;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_44
    :goto_44
    const-string v1, "NetworkDiagnostics"

    const-string v2, "activeNetworkIcmpCheck. invalidate parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-object v0
.end method

.method public static blacklist activeNetworkIcmpCheck(Landroid/content/Context;Ljava/net/InetAddress;Ljava/lang/Long;)Ljava/lang/Boolean;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Ljava/net/InetAddress;
    .param p2, "timeoutMs"    # Ljava/lang/Long;

    .line 339
    const/4 v0, 0x0

    .line 341
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 339
    if-eqz p0, :cond_48

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_12

    goto :goto_48

    .line 344
    :cond_12
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 345
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1d

    .line 346
    return-object v0

    .line 348
    :cond_1d
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 349
    .local v0, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_37

    if-eqz v0, :cond_37

    .line 350
    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_35

    .line 353
    :cond_32
    sget-object p1, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    goto :goto_37

    .line 351
    :cond_35
    :goto_35
    sget-object p1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    .line 356
    :cond_37
    :goto_37
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v0, p1, v3, v4}, Lmiui/securitycenter/net/NetworkDiagnostics;->icmpCheck(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 340
    .end local v0    # "lp":Landroid/net/LinkProperties;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_48
    :goto_48
    const-string v1, "NetworkDiagnostics"

    const-string v2, "activeNetworkIcmpCheck. invalidate parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-object v0
.end method

.method public static blacklist dnsCheck(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/lang/Long;)Z
    .registers 13
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "timeoutMs"    # Ljava/lang/Long;

    .line 400
    const/4 v0, 0x0

    const-string v1, "NetworkDiagnostics"

    if-eqz p0, :cond_2a

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    :try_start_9
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    goto :goto_2a

    .line 405
    :cond_14
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 406
    .local v5, "newLp":Landroid/net/LinkProperties;
    new-instance v2, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v3, v2

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V

    .line 407
    .local v2, "dnsCheck":Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;
    invoke-virtual {v2}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->call()Z

    move-result v0

    return v0

    .line 401
    .end local v2    # "dnsCheck":Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;
    .end local v5    # "newLp":Landroid/net/LinkProperties;
    :cond_2a
    :goto_2a
    const-string v2, "dnsCheck. invalidate parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_30

    .line 402
    return v0

    .line 408
    :catch_30
    move-exception v2

    .line 409
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "dnsCheck"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v2    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private static blacklist getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p0, "ifname"    # Ljava/lang/String;

    .line 95
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 96
    .local v0, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    .line 97
    .end local v0    # "ni":Ljava/net/NetworkInterface;
    :catch_d
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist icmpCheck(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)Z
    .registers 14
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "timeoutMs"    # J

    .line 361
    const/4 v0, 0x0

    const-string v1, "NetworkDiagnostics"

    if-eqz p0, :cond_23

    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_10

    goto :goto_23

    .line 366
    :cond_10
    :try_start_10
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 367
    .local v5, "newLp":Landroid/net/LinkProperties;
    new-instance v2, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;

    move-object v3, v2

    move-object v4, p0

    move-object v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V

    .line 368
    .local v2, "icmpCheck":Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;
    invoke-virtual {v2}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->call()Z

    move-result v0

    return v0

    .line 362
    .end local v2    # "icmpCheck":Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;
    .end local v5    # "newLp":Landroid/net/LinkProperties;
    :cond_23
    :goto_23
    const-string v2, "icmpCheck. invalidate parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_28} :catch_29

    .line 363
    return v0

    .line 369
    :catch_29
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "icmpCheck"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v2    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private static final blacklist now()J
    .registers 2

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
