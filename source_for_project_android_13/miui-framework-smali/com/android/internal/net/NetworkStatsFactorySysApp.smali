.class public Lcom/android/internal/net/NetworkStatsFactorySysApp;
.super Ljava/lang/Object;
.source "NetworkStatsFactorySysApp.java"


# static fields
.field private static final blacklist CLATD_INTERFACE_PREFIX:Ljava/lang/String; = "v4-"

.field private static final blacklist IPV4V6_HEADER_DELTA:I = 0x14


# instance fields
.field private final blacklist mStatsXtSysApp:Ljava/io/File;

.field private blacklist mUseBpfStats:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    const-string v2, "net/xt_qtaguid/system_app_stats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactorySysApp;->mStatsXtSysApp:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/bpf/map_netd_app_uid_stats_map"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/net/NetworkStatsFactorySysApp;->mUseBpfStats:Z

    .line 37
    return-void
.end method

.method public static native blacklist nativeReadNSDForSysApp(Landroid/net/NetworkStatsSysApp;[Ljava/lang/String;)I
.end method

.method public static blacklist readNetworkStatsDetail(Ljava/io/File;Landroid/net/NetworkStatsSysApp;[Ljava/lang/String;)V
    .registers 12
    .param p0, "detailPath"    # Ljava/io/File;
    .param p1, "stats"    # Landroid/net/NetworkStatsSysApp;
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 84
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/net/NetworkStatsSysApp$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStatsSysApp$Entry;-><init>()V

    .line 86
    .local v1, "entry":Landroid/net/NetworkStatsSysApp$Entry;
    const/4 v2, 0x1

    .line 87
    .local v2, "idx":I
    const/4 v3, 0x1

    .line 89
    .local v3, "lastIdx":I
    const/4 v4, 0x0

    .line 92
    .local v4, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_c
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 93
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 95
    :goto_1a
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 96
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v5

    move v2, v5

    .line 97
    add-int/lit8 v5, v3, 0x1

    if-ne v2, v5, :cond_63

    .line 101
    move v3, v2

    .line 102
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    .line 103
    if-eqz p2, :cond_3e

    iget-object v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 104
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 105
    goto :goto_1a

    .line 107
    :cond_3e
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    .line 108
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    .line 109
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    .line 110
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    .line 111
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    .line 112
    invoke-virtual {p1, v1}, Landroid/net/NetworkStatsSysApp;->combineValues(Landroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp;

    .line 113
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    goto :goto_1a

    .line 98
    :cond_63
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inconsistent idx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " after lastIdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v1    # "entry":Landroid/net/NetworkStatsSysApp$Entry;
    .end local v2    # "idx":I
    .end local v3    # "lastIdx":I
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .end local p0    # "detailPath":Ljava/io/File;
    .end local p1    # "stats":Landroid/net/NetworkStatsSysApp;
    .end local p2    # "limitIfaces":[Ljava/lang/String;
    throw v5
    :try_end_86
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_86} :catch_90
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_86} :catch_90
    .catchall {:try_start_c .. :try_end_86} :catchall_8e

    .line 118
    .restart local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v1    # "entry":Landroid/net/NetworkStatsSysApp$Entry;
    .restart local v2    # "idx":I
    .restart local v3    # "lastIdx":I
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local p0    # "detailPath":Ljava/io/File;
    .restart local p1    # "stats":Landroid/net/NetworkStatsSysApp;
    .restart local p2    # "limitIfaces":[Ljava/lang/String;
    :cond_86
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 119
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 120
    nop

    .line 121
    return-void

    .line 118
    :catchall_8e
    move-exception v5

    goto :goto_aa

    .line 115
    :catch_90
    move-exception v5

    .line 116
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_91
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem parsing idx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v1    # "entry":Landroid/net/NetworkStatsSysApp$Entry;
    .end local v2    # "idx":I
    .end local v3    # "lastIdx":I
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .end local p0    # "detailPath":Ljava/io/File;
    .end local p1    # "stats":Landroid/net/NetworkStatsSysApp;
    .end local p2    # "limitIfaces":[Ljava/lang/String;
    throw v6
    :try_end_aa
    .catchall {:try_start_91 .. :try_end_aa} :catchall_8e

    .line 118
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v1    # "entry":Landroid/net/NetworkStatsSysApp$Entry;
    .restart local v2    # "idx":I
    .restart local v3    # "lastIdx":I
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local p0    # "detailPath":Ljava/io/File;
    .restart local p1    # "stats":Landroid/net/NetworkStatsSysApp;
    .restart local p2    # "limitIfaces":[Ljava/lang/String;
    :goto_aa
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 119
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 120
    throw v5
.end method


# virtual methods
.method public blacklist readNSDForSystemApp([Ljava/lang/String;Landroid/net/NetworkStatsSysApp;)Landroid/net/NetworkStatsSysApp;
    .registers 10
    .param p1, "limitIfaces"    # [Ljava/lang/String;
    .param p2, "lastStats"    # Landroid/net/NetworkStatsSysApp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    if-eqz p2, :cond_b

    .line 50
    move-object v0, p2

    .line 51
    .local v0, "stats":Landroid/net/NetworkStatsSysApp;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsSysApp;->setElapsedRealtime(J)V

    goto :goto_15

    .line 53
    .end local v0    # "stats":Landroid/net/NetworkStatsSysApp;
    :cond_b
    new-instance v0, Landroid/net/NetworkStatsSysApp;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStatsSysApp;-><init>(JI)V

    .line 55
    .restart local v0    # "stats":Landroid/net/NetworkStatsSysApp;
    :goto_15
    iget-boolean v1, p0, Lcom/android/internal/net/NetworkStatsFactorySysApp;->mUseBpfStats:Z

    if-eqz v1, :cond_1d

    .line 56
    invoke-static {v0, p1}, Lcom/android/internal/net/NetworkStatsFactorySysApp;->nativeReadNSDForSysApp(Landroid/net/NetworkStatsSysApp;[Ljava/lang/String;)I

    goto :goto_22

    .line 58
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/net/NetworkStatsFactorySysApp;->mStatsXtSysApp:Ljava/io/File;

    invoke-static {v1, v0, p1}, Lcom/android/internal/net/NetworkStatsFactorySysApp;->readNetworkStatsDetail(Ljava/io/File;Landroid/net/NetworkStatsSysApp;[Ljava/lang/String;)V

    .line 64
    :goto_22
    const/4 v1, 0x0

    .line 65
    .local v1, "entry":Landroid/net/NetworkStatsSysApp$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    invoke-virtual {v0}, Landroid/net/NetworkStatsSysApp;->size()I

    move-result v3

    if-ge v2, v3, :cond_55

    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkStatsSysApp;->getValues(ILandroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp$Entry;

    move-result-object v1

    .line 67
    iget-object v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    if-eqz v3, :cond_52

    iget-object v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    const-string v4, "v4-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 68
    goto :goto_52

    .line 70
    :cond_3d
    iget-wide v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    const-wide/16 v5, 0x14

    mul-long/2addr v3, v5

    iput-wide v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    .line 71
    iget-wide v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    mul-long/2addr v3, v5

    iput-wide v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    .line 72
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    .line 73
    iput-wide v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    .line 74
    invoke-virtual {v0, v1}, Landroid/net/NetworkStatsSysApp;->combineValues(Landroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp;

    .line 65
    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 76
    .end local v2    # "i":I
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stats="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkStatsFactorySysApp"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-object v0
.end method
