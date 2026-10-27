.class Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dependencies"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mContext:Landroid/content/Context;

    .line 762
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 768
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    .line 769
    return-void
.end method


# virtual methods
.method getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 772
    const-wide/32 v0, 0x200000

    const-string v2, "getNetworkTotalBytes"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 774
    :try_start_8
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 775
    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v2

    .line 776
    .local v2, "ret":Landroid/app/usage/NetworkStats$Bucket;
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_19} :catch_20
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    add-long/2addr v3, v5

    .line 781
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 776
    return-wide v3

    .line 781
    .end local v2    # "ret":Landroid/app/usage/NetworkStats$Bucket;
    :catchall_1e
    move-exception v2

    goto :goto_3f

    .line 777
    :catch_20
    move-exception v2

    .line 778
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_21
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read network stats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_1e

    .line 779
    const-wide/16 v3, 0x0

    .line 781
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 779
    return-wide v3

    .line 781
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_3f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 782
    throw v2
.end method

.method getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Ljava/util/List;
    .registers 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "JJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;"
        }
    .end annotation

    .line 788
    const-wide/32 v0, 0x200000

    const-string v2, "getNetworkUidBytes"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 789
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v2, "buckets":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    :try_start_d
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v3

    .line 792
    .local v3, "stats":Landroid/app/usage/NetworkStats;
    :goto_16
    invoke-virtual {v3}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 793
    new-instance v4, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v4}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 794
    .local v4, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    invoke-virtual {v3, v4}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 795
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_27} :catch_30
    .catchall {:try_start_d .. :try_end_27} :catchall_2e

    .line 796
    nop

    .end local v4    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    goto :goto_16

    .line 800
    .end local v3    # "stats":Landroid/app/usage/NetworkStats;
    :cond_29
    nop

    :goto_2a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 801
    goto :goto_4b

    .line 800
    :catchall_2e
    move-exception v3

    goto :goto_4c

    .line 797
    :catch_30
    move-exception v3

    .line 798
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_31
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read network stats: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_2e

    .line 800
    nop

    .end local v3    # "e":Ljava/lang/RuntimeException;
    goto :goto_2a

    .line 802
    :goto_4b
    return-object v2

    .line 800
    :goto_4c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 801
    throw v3
.end method
