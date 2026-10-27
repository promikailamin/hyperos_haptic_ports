.class public Lmiui/securitycenter/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OverLayUtil"

.field private static blacklist mNMService:Landroid/os/INetworkManagementService;

.field private static blacklist mSystemServiceClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static blacklist getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;
    .registers 11

    .line 158
    const-string v0, "an exception occurred!!"

    const-string v1, "OverLayUtil"

    const/4 v2, 0x0

    .line 161
    .local v2, "networkStatsTethering":Landroid/net/NetworkStats;
    :try_start_5
    sget-object v3, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v3, :cond_15

    .line 162
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    sput-object v3, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    .line 165
    :cond_15
    sget-object v3, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3

    move-object v2, v3

    .line 166
    if-eqz v2, :cond_79

    invoke-virtual {v2}, Landroid/net/NetworkStats;->size()I

    move-result v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_7a

    if-lez v3, :cond_79

    .line 168
    :try_start_25
    sget-object v3, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    if-nez v3, :cond_47

    .line 169
    const-string v3, "SYSTEMSERVERCLASSPATH"

    invoke-static {v3}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "systemServerClasspath":Ljava/lang/String;
    if-eqz v3, :cond_3d

    .line 171
    new-instance v5, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v5, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    goto :goto_47

    .line 173
    :cond_3d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    sput-object v5, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 177
    .end local v3    # "systemServerClasspath":Ljava/lang/String;
    :cond_47
    :goto_47
    const-string v3, "com.android.server.NetPluginDelegate"

    sget-object v5, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 179
    .local v3, "netPluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getTetherStats"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/net/NetworkStats;

    aput-object v9, v8, v6

    const-class v9, Landroid/net/NetworkStats;

    aput-object v9, v8, v4

    const-class v9, Landroid/net/NetworkStats;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 181
    .local v5, "method":Ljava/lang/reflect/Method;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v6

    const/4 v6, 0x0

    aput-object v6, v7, v4

    aput-object v6, v7, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_72} :catch_78
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_72} :catch_73

    goto :goto_79

    .line 184
    .end local v3    # "netPluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_73
    move-exception v3

    .line 185
    .local v3, "e":Ljava/lang/Exception;
    :try_start_74
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_7a

    goto :goto_79

    .line 182
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_78
    move-exception v0

    .line 190
    :cond_79
    :goto_79
    goto :goto_7e

    .line 188
    :catch_7a
    move-exception v3

    .line 189
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_7e
    return-object v2
.end method

.method public static whitelist getMobileIface(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 110
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 111
    .local v1, "activeLink":Landroid/net/LinkProperties;
    if-eqz v1, :cond_14

    .line 112
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 114
    :cond_14
    const-string v2, ""

    return-object v2
.end method

.method public static whitelist getNetworkStatsTethering()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lmiui/securitycenter/NetworkUtils;->getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v1

    .line 198
    .local v1, "networkStatsTethering":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    .line 199
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz v1, :cond_57

    .line 200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 201
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-ge v3, v4, :cond_57

    .line 202
    invoke-virtual {v1, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 203
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v4, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v5, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "uid"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-string v6, "iface"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "rxBytes"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "txBytes"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget v5, v2, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tag"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v4    # "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 212
    .end local v3    # "i":I
    :cond_57
    return-object v0
.end method

.method public static whitelist isVpnConnected()Z
    .registers 4

    .line 143
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "vpn_management"

    .line 144
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v1

    .line 146
    .local v1, "service":Landroid/net/IVpnManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 147
    .local v2, "userId":I
    invoke-interface {v1, v2}, Landroid/net/IVpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_17

    .line 149
    .local v3, "mConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v3, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0

    .line 150
    .end local v1    # "service":Landroid/net/IVpnManager;
    .end local v2    # "userId":I
    .end local v3    # "mConfig":Lcom/android/internal/net/VpnConfig;
    :catch_17
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OverLayUtil"

    const-string v3, "isVpnConnected"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static whitelist saveWifiConfiguration(Landroid/content/Context;Ljava/net/InetAddress;Landroid/net/wifi/WifiConfiguration;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "wifiConf"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 48
    if-eqz p0, :cond_ba

    if-eqz p1, :cond_ba

    if-nez p2, :cond_8

    goto/16 :goto_ba

    .line 53
    :cond_8
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 54
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_13

    .line 55
    return-void

    .line 58
    :cond_13
    const/4 v1, 0x0

    .line 59
    .local v1, "isModified":Z
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v3, :cond_50

    .line 60
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    .line 61
    .local v2, "config":Landroid/net/StaticIpConfiguration;
    const/4 v3, 0x0

    .line 62
    .local v3, "oldDns":Ljava/net/InetAddress;
    invoke-virtual {v2}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3f

    .line 63
    invoke-virtual {v2}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/net/InetAddress;

    .line 65
    :cond_3f
    invoke-virtual {v2}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 66
    invoke-virtual {v2, p1}, Landroid/net/StaticIpConfiguration;->addDnsServer(Ljava/net/InetAddress;)V

    .line 67
    if-eqz v3, :cond_4e

    .line 68
    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration;->addDnsServer(Ljava/net/InetAddress;)V

    .line 70
    :cond_4e
    const/4 v1, 0x1

    .end local v2    # "config":Landroid/net/StaticIpConfiguration;
    .end local v3    # "oldDns":Ljava/net/InetAddress;
    goto :goto_ae

    .line 71
    :cond_50
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v3, :cond_ae

    .line 72
    new-instance v2, Landroid/net/StaticIpConfiguration;

    invoke-direct {v2}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 74
    .local v2, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v3

    .line 75
    .local v3, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v3, :cond_ac

    .line 76
    iget v4, v3, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v4}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v4

    .line 77
    .local v4, "ipAddress":Ljava/net/InetAddress;
    new-instance v5, Landroid/net/LinkAddress;

    iget v6, v3, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v6}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v6

    invoke-direct {v5, v4, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v5, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 78
    iget v5, v3, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v5}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v5

    iput-object v5, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 79
    iget-object v5, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :try_start_87
    iget-object v5, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    iget v6, v3, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v6}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_92} :catch_93

    .line 84
    goto :goto_9f

    .line 82
    :catch_93
    move-exception v5

    .line 83
    .local v5, "e":Ljava/lang/Exception;
    iget-object v6, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    const-string v7, "8.8.8.8"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_9f
    new-instance v5, Landroid/net/IpConfiguration;

    sget-object v6, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v2, v8}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {p2, v5}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 90
    .end local v4    # "ipAddress":Ljava/net/InetAddress;
    :cond_ac
    const/4 v1, 0x1

    goto :goto_af

    .line 71
    .end local v2    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v3    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_ae
    :goto_ae
    nop

    .line 93
    :goto_af
    if-eqz v1, :cond_b9

    .line 94
    new-instance v2, Lmiui/securitycenter/NetworkUtils$1;

    invoke-direct {v2}, Lmiui/securitycenter/NetworkUtils$1;-><init>()V

    invoke-virtual {v0, p2, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 106
    :cond_b9
    return-void

    .line 49
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v1    # "isModified":Z
    :cond_ba
    :goto_ba
    const-string v0, "OverLayUtil"

    const-string v1, "saveWifiConfiguration:  invalidate parameter!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public static whitelist setMobileDataState(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mobileDataEnabled"    # Z

    .line 42
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 43
    .local v0, "telephonyService":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 44
    return-void
.end method

.method public static whitelist vpnPrepareAndAuthorize(Ljava/lang/String;)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 128
    nop

    .line 129
    const-string v0, "vpn_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v0

    .line 132
    .local v0, "service":Landroid/net/IVpnManager;
    :try_start_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 133
    .local v1, "userId":I
    const/4 v2, 0x0

    invoke-interface {v0, v2, p0, v1}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 134
    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Landroid/net/IVpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1b

    .line 138
    .end local v1    # "userId":I
    :cond_1a
    goto :goto_23

    .line 136
    :catch_1b
    move-exception v1

    .line 137
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OverLayUtil"

    const-string v3, "prepareAndAuthorize"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method
