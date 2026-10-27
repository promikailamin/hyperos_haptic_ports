.class public Lmiui/securitycenter/net/NetworkStatWrapper;
.super Ljava/lang/Object;
.source "NetworkStatWrapper.java"


# static fields
.field private static blacklist mNMService:Landroid/net/INetworkStatsService;

.field private static blacklist mPreSnapshot:Landroid/net/NetworkStats;

.field private static blacklist mStatsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static blacklist getNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 3

    .line 65
    :try_start_0
    sget-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mNMService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_10

    .line 66
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    sput-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mNMService:Landroid/net/INetworkStatsService;

    .line 68
    :cond_10
    sget-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mNMService:Landroid/net/INetworkStatsService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->getUidStatsForTransport(I)Landroid/net/NetworkStats;

    move-result-object v0

    .line 69
    .local v0, "wifiStats":Landroid/net/NetworkStats;
    sget-object v1, Lmiui/securitycenter/net/NetworkStatWrapper;->mNMService:Landroid/net/INetworkStatsService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/net/INetworkStatsService;->getUidStatsForTransport(I)Landroid/net/NetworkStats;

    move-result-object v1

    .line 70
    .local v1, "mobileStats":Landroid/net/NetworkStats;
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 71
    return-object v0

    .line 72
    .end local v0    # "wifiStats":Landroid/net/NetworkStats;
    .end local v1    # "mobileStats":Landroid/net/NetworkStats;
    :catch_22
    move-exception v0

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getRxBytes(Ljava/lang/String;)J
    .registers 3
    .param p0, "iface"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getStatsInfo()Ljava/util/ArrayList;
    .registers 9
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

    .line 26
    :try_start_0
    invoke-static {}, Lmiui/securitycenter/net/NetworkStatWrapper;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v0

    .line 28
    .local v0, "newSnapshot":Landroid/net/NetworkStats;
    if-nez v0, :cond_9

    .line 29
    sget-object v1, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    return-object v1

    .line 32
    :cond_9
    invoke-static {}, Lmiui/securitycenter/NetworkUtils;->getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v1

    .line 33
    .local v1, "newTetheringSnapshot":Landroid/net/NetworkStats;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v2

    if-lez v2, :cond_18

    .line 34
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 37
    :cond_18
    sget-object v2, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    if-nez v2, :cond_1f

    .line 38
    sput-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    goto :goto_7d

    .line 40
    :cond_1f
    sget-object v2, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 41
    sget-object v2, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 42
    .local v2, "delta":Landroid/net/NetworkStats;
    sput-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mPreSnapshot:Landroid/net/NetworkStats;

    .line 43
    const/4 v3, 0x0

    .line 44
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz v2, :cond_7d

    .line 45
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    invoke-virtual {v2}, Landroid/net/NetworkStats;->size()I

    move-result v5

    if-ge v4, v5, :cond_7d

    .line 46
    invoke-virtual {v2, v4, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    move-object v3, v5

    .line 47
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v5, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "uid"

    iget v7, v3, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v6, "iface"

    iget-object v7, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v6, "rxBytes"

    iget-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v6, "txBytes"

    iget-wide v7, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v6, "tag"

    iget v7, v3, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v6, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_79} :catch_7e

    .line 45
    nop

    .end local v5    # "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 59
    .end local v0    # "newSnapshot":Landroid/net/NetworkStats;
    .end local v1    # "newTetheringSnapshot":Landroid/net/NetworkStats;
    .end local v2    # "delta":Landroid/net/NetworkStats;
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v4    # "i":I
    :cond_7d
    :goto_7d
    goto :goto_7f

    .line 57
    :catch_7e
    move-exception v0

    .line 60
    :goto_7f
    sget-object v0, Lmiui/securitycenter/net/NetworkStatWrapper;->mStatsInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static whitelist getTxBytes(Ljava/lang/String;)J
    .registers 3
    .param p0, "iface"    # Ljava/lang/String;

    .line 79
    invoke-static {p0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
