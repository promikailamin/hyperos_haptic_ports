.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field final blacklist mInfos:[J


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x17

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    .line 29
    return-void
.end method


# virtual methods
.method public greylist-max-r getCachedSize()J
    .registers 5

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getCachedSizeKb()J
    .registers 8

    .line 95
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xf

    aget-wide v1, v0, v1

    .line 100
    .local v1, "kReclaimable":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_f

    .line 101
    const/4 v3, 0x6

    aget-wide v1, v0, v3

    .line 103
    :cond_f
    const/4 v3, 0x2

    aget-wide v3, v0, v3

    add-long/2addr v3, v1

    const/4 v5, 0x3

    aget-wide v5, v0, v5

    add-long/2addr v3, v5

    const/16 v5, 0xb

    aget-wide v5, v0, v5

    sub-long/2addr v3, v5

    return-wide v3
.end method

.method public greylist-max-r getFreeSize()J
    .registers 5

    .line 57
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getFreeSizeKb()J
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getKernelUsedSize()J
    .registers 5

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getKernelUsedSizeKb()J
    .registers 6

    .line 128
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    const/4 v3, 0x7

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/16 v3, 0xc

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/16 v3, 0xd

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    .line 130
    .local v1, "size":J
    invoke-static {}, Landroid/os/Debug;->isVmapStack()Z

    move-result v0

    if-nez v0, :cond_20

    .line 131
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0xe

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    .line 133
    :cond_20
    return-wide v1
.end method

.method public blacklist getMoreCachedSizeKb()J
    .registers 8

    .line 113
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xf

    aget-wide v1, v0, v1

    .line 118
    .local v1, "kReclaimable":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_f

    .line 119
    const/4 v3, 0x6

    aget-wide v1, v0, v3

    .line 121
    :cond_f
    const/4 v3, 0x2

    aget-wide v3, v0, v3

    add-long/2addr v3, v1

    const/4 v5, 0x3

    aget-wide v5, v0, v5

    add-long/2addr v3, v5

    return-wide v3
.end method

.method public greylist getRawInfo()[J
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    return-object v0
.end method

.method public blacklist getSwapFreeSizeKb()J
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x9

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getSwapTotalSizeKb()J
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x8

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public greylist getTotalSize()J
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getTotalSizeKb()J
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getZramTotalSizeKb()J
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xa

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public greylist readMemInfo()V
    .registers 3

    .line 36
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 38
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 40
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 41
    nop

    .line 42
    return-void

    .line 40
    :catchall_e
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 41
    throw v1
.end method
