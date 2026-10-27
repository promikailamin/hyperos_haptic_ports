.class public Lcom/android/server/am/ScoutMeminfo;
.super Ljava/lang/Object;
.source "ScoutMeminfo.java"


# instance fields
.field private cachedPss:J

.field private dmabufMapped:J

.field private gpuDmaBufUsage:J

.field private gpuPrivateUsage:J

.field private gpuUsage:J

.field private infos:[J

.field private ionHeap:J

.field private ionPool:J

.field private kernelUsed:J

.field private ksm:[J

.field private leakProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessMemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private meminfo:Lcom/android/internal/util/MemInfoReader;

.field private totalDmabufHeapPool:J

.field private totalExportedDmabuf:J

.field private totalExportedDmabufHeap:J

.field private totalMemtrack:J

.field private totalPss:J

.field private totalSwapPss:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->totalMemtrack:J

    .line 12
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->totalPss:J

    .line 13
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->totalSwapPss:J

    .line 14
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->cachedPss:J

    .line 15
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->kernelUsed:J

    .line 16
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->gpuUsage:J

    .line 17
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->ionHeap:J

    .line 18
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->ionPool:J

    .line 19
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->dmabufMapped:J

    .line 20
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->totalExportedDmabuf:J

    .line 21
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->totalExportedDmabufHeap:J

    .line 22
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->totalDmabufHeapPool:J

    .line 23
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->gpuPrivateUsage:J

    .line 24
    iput-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->gpuDmaBufUsage:J

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ScoutMeminfo;->leakProcessList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public addLeakProcess(Lcom/android/server/am/ProcessMemInfo;)V
    .registers 3
    .param p1, "mi"    # Lcom/android/server/am/ProcessMemInfo;

    .line 31
    iget-object v0, p0, Lcom/android/server/am/ScoutMeminfo;->leakProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public getCachedPss()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->cachedPss:J

    return-wide v0
.end method

.method public getDmabufMapped()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->dmabufMapped:J

    return-wide v0
.end method

.method public getGpuDmaBufUsage()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->gpuDmaBufUsage:J

    return-wide v0
.end method

.method public getGpuPrivateUsage()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->gpuPrivateUsage:J

    return-wide v0
.end method

.method public getGpuUsage()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->gpuUsage:J

    return-wide v0
.end method

.method public getInfos()[J
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/server/am/ScoutMeminfo;->infos:[J

    return-object v0
.end method

.method public getIonHeap()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->ionHeap:J

    return-wide v0
.end method

.method public getIonPool()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->ionPool:J

    return-wide v0
.end method

.method public getKernelUsed()J
    .registers 3

    .line 67
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->kernelUsed:J

    return-wide v0
.end method

.method public getKsm()[J
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/server/am/ScoutMeminfo;->ksm:[J

    return-object v0
.end method

.method public getLeakProcessList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessMemInfo;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/android/server/am/ScoutMeminfo;->leakProcessList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMeminfo()Lcom/android/internal/util/MemInfoReader;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/server/am/ScoutMeminfo;->meminfo:Lcom/android/internal/util/MemInfoReader;

    return-object v0
.end method

.method public getTotalDmabufHeapPool()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->totalDmabufHeapPool:J

    return-wide v0
.end method

.method public getTotalExportedDmabuf()J
    .registers 3

    .line 75
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->totalExportedDmabuf:J

    return-wide v0
.end method

.method public getTotalExportedDmabufHeap()J
    .registers 3

    .line 79
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->totalExportedDmabufHeap:J

    return-wide v0
.end method

.method public getTotalMemtrack()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->totalMemtrack:J

    return-wide v0
.end method

.method public getTotalPss()J
    .registers 3

    .line 87
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->totalPss:J

    return-wide v0
.end method

.method public getTotalSwapPss()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/android/server/am/ScoutMeminfo;->totalSwapPss:J

    return-wide v0
.end method

.method public setCachedPss(J)V
    .registers 3
    .param p1, "cachedPss"    # J

    .line 107
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->cachedPss:J

    .line 108
    return-void
.end method

.method public setDmabufMapped(J)V
    .registers 3
    .param p1, "dmabufMapped"    # J

    .line 111
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->dmabufMapped:J

    .line 112
    return-void
.end method

.method public setGpuDmaBufUsage(J)V
    .registers 3
    .param p1, "gpuDmaBufUsage"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->gpuDmaBufUsage:J

    .line 116
    return-void
.end method

.method public setGpuPrivateUsage(J)V
    .registers 3
    .param p1, "gpuPrivateUsage"    # J

    .line 119
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->gpuPrivateUsage:J

    .line 120
    return-void
.end method

.method public setGpuUsage(J)V
    .registers 3
    .param p1, "gpuUsage"    # J

    .line 123
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->gpuUsage:J

    .line 124
    return-void
.end method

.method public setInfos([J)V
    .registers 2
    .param p1, "infos"    # [J

    .line 127
    iput-object p1, p0, Lcom/android/server/am/ScoutMeminfo;->infos:[J

    .line 128
    return-void
.end method

.method public setIonHeap(J)V
    .registers 3
    .param p1, "ionHeap"    # J

    .line 131
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->ionHeap:J

    .line 132
    return-void
.end method

.method public setIonPool(J)V
    .registers 3
    .param p1, "ionPool"    # J

    .line 135
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->ionPool:J

    .line 136
    return-void
.end method

.method public setKernelUsed(J)V
    .registers 3
    .param p1, "kernelUsed"    # J

    .line 139
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->kernelUsed:J

    .line 140
    return-void
.end method

.method public setKsm([J)V
    .registers 2
    .param p1, "ksm"    # [J

    .line 143
    iput-object p1, p0, Lcom/android/server/am/ScoutMeminfo;->ksm:[J

    .line 144
    return-void
.end method

.method public setMeminfo(Lcom/android/internal/util/MemInfoReader;)V
    .registers 2
    .param p1, "meminfo"    # Lcom/android/internal/util/MemInfoReader;

    .line 147
    iput-object p1, p0, Lcom/android/server/am/ScoutMeminfo;->meminfo:Lcom/android/internal/util/MemInfoReader;

    .line 148
    return-void
.end method

.method public setTotalDmabufHeapPool(J)V
    .registers 3
    .param p1, "totalDmabufHeapPool"    # J

    .line 151
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->totalDmabufHeapPool:J

    .line 152
    return-void
.end method

.method public setTotalExportedDmabuf(J)V
    .registers 3
    .param p1, "totalExportedDmabuf"    # J

    .line 155
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->totalExportedDmabuf:J

    .line 156
    return-void
.end method

.method public setTotalExportedDmabufHeap(J)V
    .registers 3
    .param p1, "totalExportedDmabufHeap"    # J

    .line 159
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->totalExportedDmabufHeap:J

    .line 160
    return-void
.end method

.method public setTotalMemtrack(J)V
    .registers 3
    .param p1, "totalMemtrack"    # J

    .line 163
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->totalMemtrack:J

    .line 164
    return-void
.end method

.method public setTotalPss(J)V
    .registers 3
    .param p1, "totalPss"    # J

    .line 167
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->totalPss:J

    .line 168
    return-void
.end method

.method public setTotalSwapPss(J)V
    .registers 3
    .param p1, "totalSwapPss"    # J

    .line 171
    iput-wide p1, p0, Lcom/android/server/am/ScoutMeminfo;->totalSwapPss:J

    .line 172
    return-void
.end method
