.class final Lcom/android/server/stats/pull/SystemMemoryUtil;
.super Ljava/lang/Object;
.source "SystemMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMetrics()Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
    .registers 16

    .line 29
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    move-result-wide v0

    long-to-int v0, v0

    .line 30
    .local v0, "totalIonKb":I
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    move-result-wide v1

    long-to-int v1, v1

    .line 31
    .local v1, "gpuTotalUsageKb":I
    invoke-static {}, Landroid/os/Debug;->getGpuPrivateMemoryKb()J

    move-result-wide v2

    long-to-int v2, v2

    .line 32
    .local v2, "gpuPrivateAllocationsKb":I
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    move-result-wide v3

    long-to-int v3, v3

    .line 34
    .local v3, "dmaBufTotalExportedKb":I
    const/16 v4, 0x17

    new-array v4, v4, [J

    .line 35
    .local v4, "mInfos":[J
    invoke-static {v4}, Landroid/os/Debug;->getMemInfo([J)V

    .line 37
    const/16 v5, 0xf

    aget-wide v5, v4, v5

    .line 41
    .local v5, "kReclaimableKb":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_28

    .line 42
    const/4 v7, 0x6

    aget-wide v5, v4, v7

    .line 45
    :cond_28
    const/4 v7, 0x1

    aget-wide v7, v4, v7

    const/16 v9, 0xa

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/4 v9, 0x2

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/16 v9, 0x10

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/16 v9, 0x11

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/16 v9, 0x12

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/4 v9, 0x7

    aget-wide v10, v4, v9

    add-long/2addr v7, v10

    add-long/2addr v7, v5

    const/16 v10, 0xc

    aget-wide v11, v4, v10

    add-long/2addr v7, v11

    const/16 v11, 0xd

    aget-wide v12, v4, v11

    add-long/2addr v7, v12

    .line 56
    .local v7, "accountedKb":J
    invoke-static {}, Landroid/os/Debug;->isVmapStack()Z

    move-result v12

    const/16 v13, 0xe

    if-nez v12, :cond_5d

    .line 58
    aget-wide v14, v4, v13

    add-long/2addr v7, v14

    .line 63
    :cond_5d
    const/4 v12, 0x0

    if-ltz v3, :cond_67

    if-ltz v2, :cond_67

    .line 67
    add-int v14, v3, v2

    int-to-long v14, v14

    add-long/2addr v7, v14

    goto :goto_76

    .line 71
    :cond_67
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v7, v14

    .line 72
    if-ltz v3, :cond_72

    .line 73
    int-to-long v14, v3

    add-long/2addr v7, v14

    goto :goto_76

    .line 74
    :cond_72
    if-ltz v0, :cond_76

    .line 76
    int-to-long v14, v0

    add-long/2addr v7, v14

    .line 80
    :cond_76
    :goto_76
    new-instance v14, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;

    invoke-direct {v14}, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;-><init>()V

    .line 81
    .local v14, "result":Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
    aget-wide v12, v4, v9

    long-to-int v9, v12

    iput v9, v14, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unreclaimableSlabKb:I

    .line 82
    aget-wide v9, v4, v10

    long-to-int v9, v9

    iput v9, v14, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->vmallocUsedKb:I

    .line 83
    aget-wide v9, v4, v11

    long-to-int v9, v9

    iput v9, v14, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->pageTablesKb:I

    .line 84
    const/16 v9, 0xe

    aget-wide v9, v4, v9

    long-to-int v9, v9

    iput v9, v14, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->kernelStackKb:I

    .line 85
    const/4 v9, 0x4

    aget-wide v9, v4, v9

    long-to-int v9, v9

    iput v9, v14, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->shmemKb:I

    .line 86
    iput v0, v14, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalIonKb:I

    .line 87
    iput v1, v14, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuTotalUsageKb:I

    .line 88
    iput v2, v14, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuPrivateAllocationsKb:I

    .line 89
    iput v3, v14, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->dmaBufTotalExportedKb:I

    .line 90
    const/4 v9, 0x0

    aget-wide v9, v4, v9

    sub-long/2addr v9, v7

    long-to-int v9, v9

    iput v9, v14, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unaccountedKb:I

    .line 91
    return-object v14
.end method
