.class public abstract Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;
.super Ljava/lang/Object;
.source "NetworkStatsUtils.java"


# direct methods
.method public static convertBucketDefaultNetworkStatus(I)I
    .registers 2

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0

    :cond_a
    return v0
.end method

.method public static convertBucketMetered(I)I
    .registers 2

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0

    :cond_a
    return v0
.end method

.method public static convertBucketRoaming(I)I
    .registers 2

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0

    :cond_a
    return v0
.end method

.method public static convertBucketState(I)I
    .registers 2

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0

    :cond_a
    return v0
.end method

.method public static convertBucketTag(I)I
    .registers 1

    .line 0
    if-eqz p0, :cond_3

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static fromBucket(Landroid/app/usage/NetworkStats$Bucket;)Landroid/net/NetworkStats$Entry;
    .registers 19

    .line 66
    new-instance v0, Landroid/net/NetworkStats$Entry;

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->convertBucketState(I)I

    move-result v3

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getTag()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->convertBucketTag(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getMetered()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->convertBucketMetered(I)I

    move-result v5

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getRoaming()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->convertBucketRoaming(I)I

    move-result v6

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getDefaultNetworkStatus()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->convertBucketDefaultNetworkStatus(I)I

    move-result v7

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v10

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v0
.end method

.method public static fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;
    .registers 5

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    :goto_5
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 43
    new-instance v1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 44
    invoke-virtual {p0, v1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 45
    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->fromBucket(Landroid/app/usage/NetworkStats$Bucket;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 47
    :cond_1b
    new-instance p0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 50
    invoke-static {}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->isAddEntriesSupported()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 51
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->addEntries(Ljava/util/List;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0

    .line 53
    :cond_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v1, :cond_42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/net/NetworkStats$Entry;

    .line 54
    invoke-virtual {p0, v3}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object p0

    goto :goto_33

    :cond_42
    return-object p0
.end method

.method public static isAddEntriesSupported()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static isTransportTypeSupported()Z
    .registers 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
