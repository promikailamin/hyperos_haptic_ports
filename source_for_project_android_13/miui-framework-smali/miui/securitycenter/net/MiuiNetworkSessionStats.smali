.class public Lmiui/securitycenter/net/MiuiNetworkSessionStats;
.super Ljava/lang/Object;
.source "MiuiNetworkSessionStats.java"


# instance fields
.field private blacklist mStatsService:Landroid/net/INetworkStatsService;

.field private blacklist mStatsSession:Landroid/net/INetworkStatsSession;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    .line 27
    return-void
.end method

.method private blacklist buildNetworkStatsMap(Landroid/net/NetworkTemplate;JJ)Landroid/util/SparseArray;
    .registers 22
    .param p1, "networkTemplate"    # Landroid/net/NetworkTemplate;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "JJ)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "networkStats":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    move-object/from16 v10, p0

    :try_start_4
    iget-object v0, v10, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_1a

    if-nez p1, :cond_b

    goto :goto_1a

    .line 151
    :cond_b
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v3 .. v9}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_1b

    move-object v1, v0

    .line 154
    goto :goto_1f

    .line 149
    :cond_1a
    :goto_1a
    return-object v2

    .line 152
    :catch_1b
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    if-eqz v1, :cond_c4

    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v0

    if-nez v0, :cond_2a

    move-object v9, v1

    goto/16 :goto_c5

    .line 160
    :cond_2a
    new-instance v0, Landroid/util/SparseArray;

    const/16 v2, 0xff

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 161
    .local v0, "networkStatsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 164
    .local v2, "statsEntry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    .line 165
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3b
    if-ge v4, v3, :cond_c3

    .line 166
    invoke-virtual {v1, v4, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 167
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    if-nez v5, :cond_48

    .line 168
    move-object v9, v1

    move-object v15, v2

    move v8, v3

    goto/16 :goto_bc

    .line 171
    :cond_48
    iget v6, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 172
    .local v6, "uid":I
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 173
    .local v7, "statsInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v7, :cond_59

    .line 174
    invoke-direct/range {p0 .. p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildStatsMap()Ljava/util/Map;

    move-result-object v7

    .line 175
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    :cond_59
    iget v8, v5, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8d

    .line 179
    const-string v8, "txForegroundBytes"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-wide v13, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v11, v13

    .line 180
    .local v11, "txForegroundBytes":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v8, "rxForegroundBytes"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object v9, v1

    move-object v15, v2

    .end local v1    # "networkStats":Landroid/net/NetworkStats;
    .end local v2    # "statsEntry":Landroid/net/NetworkStats$Entry;
    .local v9, "networkStats":Landroid/net/NetworkStats;
    .local v15, "statsEntry":Landroid/net/NetworkStats$Entry;
    iget-wide v1, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v13, v1

    .line 183
    .local v13, "rxForegroundBytes":J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    .line 178
    .end local v9    # "networkStats":Landroid/net/NetworkStats;
    .end local v11    # "txForegroundBytes":J
    .end local v13    # "rxForegroundBytes":J
    .end local v15    # "statsEntry":Landroid/net/NetworkStats$Entry;
    .restart local v1    # "networkStats":Landroid/net/NetworkStats;
    .restart local v2    # "statsEntry":Landroid/net/NetworkStats$Entry;
    :cond_8d
    move-object v9, v1

    move-object v15, v2

    .line 186
    .end local v1    # "networkStats":Landroid/net/NetworkStats;
    .end local v2    # "statsEntry":Landroid/net/NetworkStats$Entry;
    .restart local v9    # "networkStats":Landroid/net/NetworkStats;
    .restart local v15    # "statsEntry":Landroid/net/NetworkStats$Entry;
    :goto_8f
    const-string v1, "txBytes"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-wide v13, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v11, v13

    .line 187
    .local v11, "txBytes":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "rxBytes"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move v8, v3

    .end local v3    # "size":I
    .local v8, "size":I
    iget-wide v2, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v13, v2

    .line 190
    .local v13, "rxBytes":J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v6    # "uid":I
    .end local v7    # "statsInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "txBytes":J
    .end local v13    # "rxBytes":J
    :goto_bc
    add-int/lit8 v4, v4, 0x1

    move v3, v8

    move-object v1, v9

    move-object v2, v15

    goto/16 :goto_3b

    .line 193
    .end local v4    # "i":I
    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v8    # "size":I
    .end local v9    # "networkStats":Landroid/net/NetworkStats;
    .end local v15    # "statsEntry":Landroid/net/NetworkStats$Entry;
    .restart local v1    # "networkStats":Landroid/net/NetworkStats;
    .restart local v2    # "statsEntry":Landroid/net/NetworkStats$Entry;
    .restart local v3    # "size":I
    :cond_c3
    return-object v0

    .line 156
    .end local v0    # "networkStatsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v2    # "statsEntry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "size":I
    :cond_c4
    move-object v9, v1

    .line 157
    .end local v1    # "networkStats":Landroid/net/NetworkStats;
    .restart local v9    # "networkStats":Landroid/net/NetworkStats;
    :goto_c5
    return-object v2
.end method

.method private blacklist buildStatsMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v0, "statsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "rxForegroundBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v2, "txForegroundBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v2, "txBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v2, "rxBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-object v0
.end method

.method private blacklist buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 3
    .param p1, "imsi"    # Ljava/lang/String;

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_8
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private blacklist buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;
    .registers 2

    .line 228
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getHistoryStats(Landroid/net/NetworkStatsHistory;JJ)[J
    .registers 14
    .param p1, "networkHistory"    # Landroid/net/NetworkStatsHistory;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 118
    .local v0, "total":[J
    if-eqz p1, :cond_2b

    .line 119
    const/4 v6, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    .line 120
    .local v1, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-ltz v2, :cond_1b

    .line 121
    iget-wide v6, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    aput-wide v6, v0, v3

    goto :goto_1d

    .line 123
    :cond_1b
    aput-wide v4, v0, v3

    .line 126
    :goto_1d
    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-ltz v2, :cond_29

    .line 127
    iget-wide v4, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    aput-wide v4, v0, v3

    goto :goto_2b

    .line 129
    :cond_29
    aput-wide v4, v0, v3

    .line 132
    .end local v1    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_2b
    :goto_2b
    return-object v0
.end method

.method private blacklist getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 12
    .param p1, "networkTemplate"    # Landroid/net/NetworkTemplate;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .registers 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist closeSession()V
    .registers 2

    .line 38
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_c

    .line 40
    :try_start_4
    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 44
    goto :goto_c

    .line 43
    :catch_8
    move-exception v0

    goto :goto_c

    .line 41
    :catch_a
    move-exception v0

    .line 42
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 46
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_c
    :goto_c
    return-void
.end method

.method public whitelist forceUpdate()V
    .registers 3

    .line 50
    :try_start_0
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 53
    nop

    .line 54
    return-void

    .line 51
    :catch_7
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getMobileHistoryForUid(Ljava/lang/String;IJJ)[J
    .registers 21
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J

    .line 74
    const/4 v0, 0x2

    new-array v1, v0, [J

    .line 76
    .local v1, "total":[J
    :try_start_3
    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 77
    .local v0, "mobileTemplate":Landroid/net/NetworkTemplate;
    if-nez v0, :cond_a

    .line 78
    return-object v1

    .line 81
    :cond_a
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0xa

    move-object v2, p0

    move-object v3, v0

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v9

    .line 83
    .local v9, "networkHistory":Landroid/net/NetworkStatsHistory;
    move-object v8, p0

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-direct/range {v8 .. v13}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryStats(Landroid/net/NetworkStatsHistory;JJ)[J

    move-result-object v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1f} :catch_21

    move-object v1, v2

    .line 86
    .end local v0    # "mobileTemplate":Landroid/net/NetworkTemplate;
    .end local v9    # "networkHistory":Landroid/net/NetworkStatsHistory;
    goto :goto_25

    .line 84
    :catch_21
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    return-object v1
.end method

.method public whitelist getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;
    .registers 13
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    .line 137
    .local v6, "mobileTemplate":Landroid/net/NetworkTemplate;
    move-object v0, p0

    move-object v1, v6

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildNetworkStatsMap(Landroid/net/NetworkTemplate;JJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkMobileTotalBytes(Ljava/lang/String;JJ)J
    .registers 15
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .line 104
    const-wide/16 v0, 0x0

    .line 106
    .local v0, "total":J
    :try_start_2
    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 107
    .local v2, "mobileTemplate":Landroid/net/NetworkTemplate;
    if-eqz v2, :cond_11

    .line 108
    move-object v3, p0

    move-object v4, v2

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v3 .. v8}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v3
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_12

    move-wide v0, v3

    .line 112
    .end local v2    # "mobileTemplate":Landroid/net/NetworkTemplate;
    :cond_11
    goto :goto_16

    .line 110
    :catch_12
    move-exception v2

    .line 111
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 113
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_16
    return-wide v0
.end method

.method public whitelist getNetworkWifiTotalBytes(JJ)J
    .registers 14
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    .line 91
    const-wide/16 v0, 0x0

    .line 93
    .local v0, "total":J
    :try_start_2
    invoke-direct {p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 94
    .local v2, "wifiTemplate":Landroid/net/NetworkTemplate;
    if-eqz v2, :cond_11

    .line 95
    move-object v3, p0

    move-object v4, v2

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v3
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_12

    move-wide v0, v3

    .line 99
    .end local v2    # "wifiTemplate":Landroid/net/NetworkTemplate;
    :cond_11
    goto :goto_16

    .line 97
    :catch_12
    move-exception v2

    .line 98
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 100
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_16
    return-wide v0
.end method

.method public whitelist getWifiHistoryForUid(IJJ)[J
    .registers 20
    .param p1, "uid"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .line 57
    const/4 v0, 0x2

    new-array v1, v0, [J

    .line 59
    .local v1, "total":[J
    :try_start_3
    invoke-direct {p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 60
    .local v0, "wifiTemplate":Landroid/net/NetworkTemplate;
    if-nez v0, :cond_a

    .line 61
    return-object v1

    .line 64
    :cond_a
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0xa

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v9

    .line 66
    .local v9, "networkHistory":Landroid/net/NetworkStatsHistory;
    move-object v8, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryStats(Landroid/net/NetworkStatsHistory;JJ)[J

    move-result-object v2
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1e} :catch_20

    move-object v1, v2

    .line 69
    .end local v0    # "wifiTemplate":Landroid/net/NetworkTemplate;
    .end local v9    # "networkHistory":Landroid/net/NetworkStatsHistory;
    goto :goto_24

    .line 67
    :catch_20
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-object v1
.end method

.method public whitelist getWifiSummaryForAllUid(JJ)Landroid/util/SparseArray;
    .registers 12
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    .line 142
    .local v6, "wifiTemplate":Landroid/net/NetworkTemplate;
    move-object v0, p0

    move-object v1, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildNetworkStatsMap(Landroid/net/NetworkTemplate;JJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openSession()V
    .registers 3

    .line 31
    :try_start_0
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 34
    nop

    .line 35
    return-void

    .line 32
    :catch_a
    move-exception v0

    .line 33
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
