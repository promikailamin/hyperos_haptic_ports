.class public Lcom/android/server/am/MemUsageBuilder;
.super Ljava/lang/Object;
.source "MemUsageBuilder.java"


# static fields
.field static final DUMP_MEM_BUCKETS:[J


# instance fields
.field cachedPss:J

.field fullJava:Ljava/lang/String;

.field fullNative:Ljava/lang/String;

.field private final mAppProfiler:Lcom/android/server/am/AppProfiler;

.field private final memInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessMemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private scoutInfo:Lcom/android/server/am/ScoutMeminfo;

.field shortNative:Ljava/lang/String;

.field stack:Ljava/lang/String;

.field subject:Ljava/lang/String;

.field summary:Ljava/lang/String;

.field final title:Ljava/lang/String;

.field totalMemtrack:J

.field totalMemtrackGl:J

.field totalMemtrackGraphics:J

.field totalPss:J

.field totalSwapPss:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const/16 v0, 0x17

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/am/MemUsageBuilder;->DUMP_MEM_BUCKETS:[J

    return-void

    :array_a
    .array-data 8
        0x1400
        0x1c00
        0x2800
        0x3c00
        0x5000
        0x7800
        0xa000
        0x14000
        0x1e000
        0x28000
        0x32000
        0x3e800
        0x4b000
        0x57800
        0x64000
        0x7d000
        0x96000
        0xc8000
        0x100000
        0x200000
        0x500000
        0xa00000
        0x1400000
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/am/AppProfiler;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .param p1, "appProfiler"    # Lcom/android/server/am/AppProfiler;
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/AppProfiler;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessMemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    .local p2, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGraphics:J

    .line 49
    iput-wide v0, p0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGl:J

    .line 50
    iput-wide v0, p0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    .line 51
    iput-wide v0, p0, Lcom/android/server/am/MemUsageBuilder;->totalSwapPss:J

    .line 52
    iput-wide v0, p0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrack:J

    .line 53
    iput-wide v0, p0, Lcom/android/server/am/MemUsageBuilder;->cachedPss:J

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/MemUsageBuilder;->subject:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/server/am/MemUsageBuilder;->stack:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/server/am/MemUsageBuilder;->fullNative:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/server/am/MemUsageBuilder;->shortNative:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/server/am/MemUsageBuilder;->fullJava:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/android/server/am/MemUsageBuilder;->summary:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    .line 65
    iput-object p1, p0, Lcom/android/server/am/MemUsageBuilder;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 66
    iput-object p3, p0, Lcom/android/server/am/MemUsageBuilder;->title:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/android/server/am/MemUsageBuilder;->prepare()V

    .line 68
    return-void
.end method

.method static appendBasicMemEntry(Ljava/lang/StringBuilder;IIJJLjava/lang/String;)V
    .registers 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "oomAdj"    # I
    .param p2, "procState"    # I
    .param p3, "pss"    # J
    .param p5, "memtrack"    # J
    .param p7, "name"    # Ljava/lang/String;

    .line 439
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    invoke-static {p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    invoke-static {p0, p3, p4}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 445
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_3e

    .line 448
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-static {p5, p6}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v0, " memtrack)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_3e
    return-void
.end method

.method static final appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V
    .registers 15
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "memKB"    # J
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "stackLike"    # Z

    .line 470
    const/16 v0, 0x2e

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 471
    .local v0, "start":I
    if-ltz v0, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 472
    :cond_b
    const/4 v0, 0x0

    .line 473
    :goto_c
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 474
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    sget-object v3, Lcom/android/server/am/MemUsageBuilder;->DUMP_MEM_BUCKETS:[J

    array-length v4, v3

    const-string v5, "MB."

    const-string v6, "MB "

    const-wide/16 v7, 0x400

    if-ge v2, v4, :cond_34

    .line 475
    aget-wide v3, v3, v2

    cmp-long v9, v3, p1

    if-ltz v9, :cond_31

    .line 476
    div-long/2addr v3, v7

    .line 477
    .local v3, "bucket":J
    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 478
    if-eqz p4, :cond_29

    goto :goto_2a

    :cond_29
    move-object v5, v6

    :goto_2a
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p0, p3, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 480
    return-void

    .line 474
    .end local v3    # "bucket":J
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 483
    .end local v2    # "i":I
    :cond_34
    div-long v2, p1, v7

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 484
    if-eqz p4, :cond_3c

    goto :goto_3d

    :cond_3c
    move-object v5, v6

    :goto_3d
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p0, p3, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 486
    return-void
.end method

.method static appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V
    .registers 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "mi"    # Lcom/android/server/am/ProcessMemInfo;

    .line 455
    iget v1, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget v2, p1, Lcom/android/server/am/ProcessMemInfo;->procState:I

    iget-wide v3, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide v5, p1, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    iget-object v7, p1, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/MemUsageBuilder;->appendBasicMemEntry(Ljava/lang/StringBuilder;IIJJLjava/lang/String;)V

    .line 456
    const-string v0, " (pid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget v0, p1, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    const-string v0, ") "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-object v0, p1, Lcom/android/server/am/ProcessMemInfo;->adjType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    iget-object v1, p1, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 462
    const-string v1, "                      "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v1, p1, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    :cond_38
    return-void
.end method

.method private calculateCachedPss()V
    .registers 8

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_21

    .line 141
    iget-object v2, p0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessMemInfo;

    .line 142
    .local v2, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v3, v2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v4, 0x384

    if-lt v3, v4, :cond_1e

    .line 143
    iget-wide v3, p0, Lcom/android/server/am/MemUsageBuilder;->cachedPss:J

    iget-wide v5, v2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/MemUsageBuilder;->cachedPss:J

    .line 140
    .end local v2    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 146
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_21
    return-void
.end method

.method static synthetic lambda$buildSummary$1([JLcom/android/server/am/ScoutMeminfo;)V
    .registers 2
    .param p0, "infos"    # [J
    .param p1, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 322
    invoke-virtual {p1, p0}, Lcom/android/server/am/ScoutMeminfo;->setInfos([J)V

    return-void
.end method

.method static synthetic lambda$buildSummary$10(JLcom/android/server/am/ScoutMeminfo;)V
    .registers 3
    .param p0, "gpuUsage"    # J
    .param p2, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 414
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ScoutMeminfo;->setGpuUsage(J)V

    return-void
.end method

.method static synthetic lambda$buildSummary$11(JLcom/android/server/am/ScoutMeminfo;)V
    .registers 3
    .param p0, "gpuPrivateUsage"    # J
    .param p2, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 415
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ScoutMeminfo;->setGpuPrivateUsage(J)V

    return-void
.end method

.method static synthetic lambda$buildSummary$12(JLcom/android/server/am/ScoutMeminfo;)V
    .registers 3
    .param p0, "finalKernelUsed"    # J
    .param p2, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 432
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ScoutMeminfo;->setKernelUsed(J)V

    return-void
.end method

.method static synthetic lambda$buildSummary$13(Lcom/android/internal/util/MemInfoReader;Lcom/android/server/am/ScoutMeminfo;)V
    .registers 2
    .param p0, "memInfo"    # Lcom/android/internal/util/MemInfoReader;
    .param p1, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 433
    invoke-virtual {p1, p0}, Lcom/android/server/am/ScoutMeminfo;->setMeminfo(Lcom/android/internal/util/MemInfoReader;)V

    return-void
.end method

.method static synthetic lambda$buildSummary$2([JLcom/android/server/am/ScoutMeminfo;)V
    .registers 2
    .param p0, "ksm"    # [J
    .param p1, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 323
    invoke-virtual {p1, p0}, Lcom/android/server/am/ScoutMeminfo;->setKsm([J)V

    return-void
.end method

.method static synthetic lambda$buildSummary$3(JLcom/android/server/am/ScoutMeminfo;)V
    .registers 3
    .param p0, "ionHeap"    # J
    .param p2, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 334
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ScoutMeminfo;->setIonHeap(J)V

    return-void
.end method

.method static synthetic lambda$buildSummary$4(JLcom/android/server/am/ScoutMeminfo;)V
    .registers 3
    .param p0, "ionPool"    # J
    .param p2, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 335
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ScoutMeminfo;->setIonPool(J)V

    return-void
.end method

.method static synthetic lambda$buildSummary$5(JLcom/android/server/am/ScoutMeminfo;)V
    .registers 3
    .param p0, "dmabufMapped"    # J
    .param p2, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 336
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ScoutMeminfo;->setDmabufMapped(J)V

    return-void
.end method

.method static synthetic lambda$buildSummary$6(JLcom/android/server/am/ScoutMeminfo;)V
    .registers 3
    .param p0, "totalExportedDmabuf"    # J
    .param p2, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 362
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ScoutMeminfo;->setTotalExportedDmabuf(J)V

    return-void
.end method

.method static synthetic lambda$buildSummary$7(JLcom/android/server/am/ScoutMeminfo;)V
    .registers 3
    .param p0, "totalExportedDmabufHeap"    # J
    .param p2, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 374
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ScoutMeminfo;->setTotalExportedDmabufHeap(J)V

    return-void
.end method

.method static synthetic lambda$buildSummary$8(JLcom/android/server/am/ScoutMeminfo;)V
    .registers 3
    .param p0, "totalDmabufHeapPool"    # J
    .param p2, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 384
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ScoutMeminfo;->setTotalDmabufHeapPool(J)V

    return-void
.end method

.method static synthetic lambda$buildSummary$9(JLcom/android/server/am/ScoutMeminfo;)V
    .registers 3
    .param p0, "gpuDmaBufUsage"    # J
    .param p2, "scout"    # Lcom/android/server/am/ScoutMeminfo;

    .line 406
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ScoutMeminfo;->setGpuDmaBufUsage(J)V

    return-void
.end method

.method static synthetic lambda$prepare$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 5
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 93
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private prepare()V
    .registers 23

    .line 84
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/SparseArray;

    iget-object v2, v0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 85
    .local v1, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, v0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_14
    if-ge v2, v3, :cond_26

    .line 86
    iget-object v4, v0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    .line 87
    .local v4, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    .end local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 89
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_26
    iget-object v2, v0, Lcom/android/server/am/MemUsageBuilder;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 90
    const/4 v2, 0x4

    new-array v2, v2, [J

    .line 91
    .local v2, "memtrackTmp":[J
    const/4 v3, 0x2

    new-array v4, v3, [J

    .line 93
    .local v4, "swaptrackTmp":[J
    iget-object v5, v0, Lcom/android/server/am/MemUsageBuilder;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    new-instance v6, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda13;

    invoke-direct {v6}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/server/am/AppProfiler;->getCpuStats(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v5

    .line 94
    .local v5, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 95
    .local v6, "statsCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_41
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    if-ge v7, v6, :cond_a4

    .line 96
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 97
    .local v12, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget v13, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v13, v4, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v13

    .line 98
    .local v13, "pss":J
    cmp-long v9, v13, v9

    if-lez v9, :cond_9b

    .line 99
    iget v9, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_97

    .line 100
    new-instance v9, Lcom/android/server/am/ProcessMemInfo;

    iget-object v10, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v15, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v18, -0x3e8

    const/16 v19, -0x1

    const/16 v21, 0x0

    const-string/jumbo v20, "native"

    move/from16 v17, v15

    move-object v15, v9

    move-object/from16 v16, v10

    invoke-direct/range {v15 .. v21}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v9, "mi":Lcom/android/server/am/ProcessMemInfo;
    iput-wide v13, v9, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 103
    move-object v15, v5

    move/from16 v16, v6

    .end local v5    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v6    # "statsCount":I
    .local v15, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .local v16, "statsCount":I
    aget-wide v5, v4, v11

    iput-wide v5, v9, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 104
    aget-wide v5, v2, v8

    iput-wide v5, v9, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 105
    iget-wide v5, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGraphics:J

    aget-wide v10, v2, v11

    add-long/2addr v5, v10

    iput-wide v5, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGraphics:J

    .line 106
    iget-wide v5, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGl:J

    aget-wide v10, v2, v3

    add-long/2addr v5, v10

    iput-wide v5, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGl:J

    .line 107
    iget-object v5, v0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 99
    .end local v9    # "mi":Lcom/android/server/am/ProcessMemInfo;
    .end local v15    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v16    # "statsCount":I
    .restart local v5    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v6    # "statsCount":I
    :cond_97
    move-object v15, v5

    move/from16 v16, v6

    .end local v5    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v6    # "statsCount":I
    .restart local v15    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v16    # "statsCount":I
    goto :goto_9e

    .line 98
    .end local v15    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v16    # "statsCount":I
    .restart local v5    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v6    # "statsCount":I
    :cond_9b
    move-object v15, v5

    move/from16 v16, v6

    .line 95
    .end local v5    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v6    # "statsCount":I
    .end local v12    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v13    # "pss":J
    .restart local v15    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v16    # "statsCount":I
    :goto_9e
    add-int/lit8 v7, v7, 0x1

    move-object v5, v15

    move/from16 v6, v16

    goto :goto_41

    .end local v15    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v16    # "statsCount":I
    .restart local v5    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v6    # "statsCount":I
    :cond_a4
    move-object v15, v5

    move/from16 v16, v6

    .line 112
    .end local v5    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v6    # "statsCount":I
    .end local v7    # "i":I
    .restart local v15    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v16    # "statsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    iget-object v6, v0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "size":I
    :goto_ae
    if-ge v5, v6, :cond_fb

    .line 113
    iget-object v7, v0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessMemInfo;

    .line 114
    .local v7, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget-wide v12, v7, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long v12, v12, v9

    if-nez v12, :cond_de

    .line 115
    iget v12, v7, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-static {v12, v4, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v12

    iput-wide v12, v7, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 116
    aget-wide v12, v4, v11

    iput-wide v12, v7, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 117
    aget-wide v12, v2, v8

    iput-wide v12, v7, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 118
    iget-wide v12, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGraphics:J

    aget-wide v17, v2, v11

    add-long v12, v12, v17

    iput-wide v12, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGraphics:J

    .line 119
    iget-wide v12, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGl:J

    aget-wide v17, v2, v3

    add-long v12, v12, v17

    iput-wide v12, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGl:J

    .line 121
    :cond_de
    iget-wide v12, v0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    move-object/from16 v17, v4

    .end local v4    # "swaptrackTmp":[J
    .local v17, "swaptrackTmp":[J
    iget-wide v3, v7, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long/2addr v12, v3

    iput-wide v12, v0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    .line 122
    iget-wide v3, v0, Lcom/android/server/am/MemUsageBuilder;->totalSwapPss:J

    iget-wide v12, v7, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    add-long/2addr v3, v12

    iput-wide v3, v0, Lcom/android/server/am/MemUsageBuilder;->totalSwapPss:J

    .line 123
    iget-wide v3, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrack:J

    iget-wide v12, v7, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long/2addr v3, v12

    iput-wide v3, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrack:J

    .line 112
    .end local v7    # "mi":Lcom/android/server/am/ProcessMemInfo;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v17

    const/4 v3, 0x2

    goto :goto_ae

    .end local v17    # "swaptrackTmp":[J
    .restart local v4    # "swaptrackTmp":[J
    :cond_fb
    move-object/from16 v17, v4

    .line 125
    .end local v4    # "swaptrackTmp":[J
    .end local v5    # "i":I
    .end local v6    # "size":I
    .restart local v17    # "swaptrackTmp":[J
    iget-object v3, v0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/am/MemUsageBuilder$1;

    invoke-direct {v4, v0}, Lcom/android/server/am/MemUsageBuilder$1;-><init>(Lcom/android/server/am/MemUsageBuilder;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MemUsageBuilder;->calculateCachedPss()V

    .line 137
    return-void
.end method


# virtual methods
.method buildAll()V
    .registers 2

    .line 75
    invoke-virtual {p0}, Lcom/android/server/am/MemUsageBuilder;->buildSubject()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MemUsageBuilder;->subject:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/android/server/am/MemUsageBuilder;->buildStack()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MemUsageBuilder;->stack:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/android/server/am/MemUsageBuilder;->buildFullNative()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MemUsageBuilder;->fullNative:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/android/server/am/MemUsageBuilder;->buildShortNative()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MemUsageBuilder;->shortNative:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/android/server/am/MemUsageBuilder;->buildFullJava()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MemUsageBuilder;->fullJava:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/android/server/am/MemUsageBuilder;->buildSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MemUsageBuilder;->summary:Ljava/lang/String;

    .line 81
    return-void
.end method

.method buildFullJava()Ljava/lang/String;
    .registers 7

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    .local v0, "fullJavaBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_e
    if-ge v1, v2, :cond_24

    .line 151
    iget-object v3, p0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessMemInfo;

    .line 152
    .local v3, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v5, -0x3e8

    if-eq v4, v5, :cond_21

    .line 153
    invoke-static {v0, v3}, Lcom/android/server/am/MemUsageBuilder;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    .line 150
    .end local v3    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 156
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_24
    const-string v1, "           "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-wide v1, p0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 158
    const-string v1, ": TOTAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-wide v1, p0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrack:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4e

    .line 160
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-wide v1, p0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrack:J

    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, " memtrack)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_4e
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method buildFullNative()Ljava/lang/String;
    .registers 5

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    .local v0, "fullNativeBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_e
    if-ge v1, v2, :cond_1e

    .line 200
    iget-object v3, p0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessMemInfo;

    invoke-static {v0, v3}, Lcom/android/server/am/MemUsageBuilder;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 202
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method buildShortNative()Ljava/lang/String;
    .registers 19

    .line 169
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    .local v1, "shortNativeBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x0

    .line 171
    .local v2, "extraNativeRam":J
    const-wide/16 v4, 0x0

    .line 172
    .local v4, "extraNativeMemtrack":J
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-wide v12, v2

    move-wide v14, v4

    move v2, v6

    .end local v4    # "extraNativeMemtrack":J
    .end local v6    # "i":I
    .local v2, "i":I
    .local v11, "size":I
    .local v12, "extraNativeRam":J
    .local v14, "extraNativeMemtrack":J
    :goto_17
    if-ge v2, v11, :cond_5e

    .line 173
    iget-object v3, v0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/server/am/ProcessMemInfo;

    .line 175
    .local v10, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v3, v10, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v4, -0x3e8

    if-ne v3, v4, :cond_3b

    .line 177
    iget-wide v3, v10, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v5, 0x200

    cmp-long v3, v3, v5

    if-ltz v3, :cond_34

    .line 178
    invoke-static {v1, v10}, Lcom/android/server/am/MemUsageBuilder;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    goto :goto_5b

    .line 180
    :cond_34
    iget-wide v3, v10, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long/2addr v12, v3

    .line 181
    iget-wide v3, v10, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long/2addr v14, v3

    goto :goto_5b

    .line 186
    :cond_3b
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-lez v3, :cond_59

    .line 187
    const/16 v4, -0x3e8

    const/4 v5, -0x1

    const-string v16, "(Other native)"

    move-object v3, v1

    move-wide v6, v12

    move-wide v8, v14

    move-object/from16 v17, v10

    .end local v10    # "mi":Lcom/android/server/am/ProcessMemInfo;
    .local v17, "mi":Lcom/android/server/am/ProcessMemInfo;
    move-object/from16 v10, v16

    invoke-static/range {v3 .. v10}, Lcom/android/server/am/MemUsageBuilder;->appendBasicMemEntry(Ljava/lang/StringBuilder;IIJJLjava/lang/String;)V

    .line 189
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    const-wide/16 v3, 0x0

    move-wide v12, v3

    .end local v12    # "extraNativeRam":J
    .local v3, "extraNativeRam":J
    goto :goto_5b

    .line 186
    .end local v3    # "extraNativeRam":J
    .end local v17    # "mi":Lcom/android/server/am/ProcessMemInfo;
    .restart local v10    # "mi":Lcom/android/server/am/ProcessMemInfo;
    .restart local v12    # "extraNativeRam":J
    :cond_59
    move-object/from16 v17, v10

    .line 172
    .end local v10    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 194
    .end local v2    # "i":I
    .end local v11    # "size":I
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method buildStack()Ljava/lang/String;
    .registers 12

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 207
    .local v0, "stack":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    const-string/jumbo v3, "total"

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/MemUsageBuilder;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 208
    const/high16 v1, -0x80000000

    .line 209
    .local v1, "lastOomAdj":I
    const/4 v2, 0x1

    .line 210
    .local v2, "firstLine":Z
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1a
    if-ge v3, v5, :cond_aa

    .line 211
    iget-object v6, p0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessMemInfo;

    .line 212
    .local v6, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v7, v6, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v8, -0x3e8

    if-eq v7, v8, :cond_a6

    iget v7, v6, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v8, 0x1f4

    if-lt v7, v8, :cond_3c

    iget v7, v6, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v8, 0x258

    if-eq v7, v8, :cond_3c

    iget v7, v6, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v8, 0x2bc

    if-ne v7, v8, :cond_a6

    .line 216
    :cond_3c
    iget v7, v6, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const-string v8, ":"

    const-string v9, "$"

    if-eq v1, v7, :cond_5a

    .line 217
    iget v1, v6, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 218
    iget v7, v6, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v7, :cond_56

    .line 219
    if-eqz v2, :cond_50

    .line 220
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const/4 v2, 0x0

    .line 223
    :cond_50
    const-string v7, "\n\t at "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 225
    :cond_56
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 228
    :cond_5a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :goto_5d
    iget-wide v9, v6, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v7, v6, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    invoke-static {v0, v9, v10, v7, v4}, Lcom/android/server/am/MemUsageBuilder;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 231
    iget v7, v6, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v7, :cond_a6

    add-int/lit8 v7, v3, 0x1

    if-ge v7, v5, :cond_7a

    iget-object v7, p0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    add-int/lit8 v9, v3, 0x1

    .line 232
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessMemInfo;

    iget v7, v7, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-eq v7, v1, :cond_a6

    .line 233
    :cond_7a
    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_80
    sget-object v9, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v9, v9

    if-ge v7, v9, :cond_a1

    .line 235
    sget-object v9, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v9, v9, v7

    iget v10, v6, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ne v9, v10, :cond_9e

    .line 236
    sget-object v9, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    sget-object v9, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v9, v9, v7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    :cond_9e
    add-int/lit8 v7, v7, 0x1

    goto :goto_80

    .line 241
    .end local v7    # "k":I
    :cond_a1
    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .end local v6    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :cond_a6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1a

    .line 245
    .end local v3    # "i":I
    .end local v5    # "size":I
    :cond_aa
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method buildSubject()Ljava/lang/String;
    .registers 10

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 250
    .local v0, "tag":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/MemUsageBuilder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-wide v1, p0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    const-string/jumbo v3, "total"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/MemUsageBuilder;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 253
    const/high16 v1, -0x80000000

    .line 254
    .local v1, "lastOomAdj":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_24
    if-ge v2, v3, :cond_69

    .line 255
    iget-object v5, p0, Lcom/android/server/am/MemUsageBuilder;->memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessMemInfo;

    .line 257
    .local v5, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v6, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v7, -0x3e8

    if-eq v6, v7, :cond_66

    iget v6, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v7, 0x1f4

    if-lt v6, v7, :cond_46

    iget v6, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v7, 0x258

    if-eq v6, v7, :cond_46

    iget v6, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v7, 0x2bc

    if-ne v6, v7, :cond_66

    .line 261
    :cond_46
    iget v6, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-eq v1, v6, :cond_56

    .line 262
    iget v1, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 263
    iget v6, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v6, :cond_5b

    .line 264
    const-string v6, " / "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    .line 267
    :cond_56
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_5b
    :goto_5b
    iget v6, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v6, :cond_66

    .line 270
    iget-wide v6, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v8, v5, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    invoke-static {v0, v6, v7, v8, v4}, Lcom/android/server/am/MemUsageBuilder;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 254
    .end local v5    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 274
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method buildSummary()Ljava/lang/String;
    .registers 27

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MemUsageBuilder;->scoutInfo:Lcom/android/server/am/ScoutMeminfo;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 279
    .local v1, "scoutInfo":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/am/ScoutMeminfo;>;"
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 280
    .local v2, "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 281
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v3

    .line 283
    .local v3, "infos":[J
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 284
    .local v4, "memInfoBuilder":Ljava/lang/StringBuilder;
    invoke-static {v3}, Landroid/os/Debug;->getMemInfo([J)V

    .line 285
    const-string v5, "  MemInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const/4 v5, 0x5

    aget-wide v5, v3, v5

    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slab, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const/4 v5, 0x4

    aget-wide v5, v3, v5

    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shmem, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const/16 v5, 0xc

    aget-wide v5, v3, v5

    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 289
    const-string v6, " vm alloc, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const/16 v5, 0xd

    aget-wide v5, v3, v5

    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 291
    const-string v6, " page tables "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const/16 v5, 0xe

    aget-wide v5, v3, v5

    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 293
    const-string v6, " kernel stack\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v5, "           "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const/4 v5, 0x2

    aget-wide v6, v3, v5

    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " buffers, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const/4 v6, 0x3

    aget-wide v7, v3, v6

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cached, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const/16 v7, 0xb

    aget-wide v7, v3, v7

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mapped, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const/4 v7, 0x1

    aget-wide v8, v3, v7

    invoke-static {v8, v9}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " free\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const/16 v8, 0xa

    aget-wide v9, v3, v8

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_f9

    .line 300
    const-string v9, "  ZRAM: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    aget-wide v8, v3, v8

    invoke-static {v8, v9}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v8, " RAM, "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/16 v8, 0x8

    aget-wide v8, v3, v8

    invoke-static {v8, v9}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v8, " swap total, "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const/16 v8, 0x9

    aget-wide v8, v3, v8

    invoke-static {v8, v9}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v8, " swap free\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_f9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getKsmInfo()[J

    move-result-object v8

    .line 309
    .local v8, "ksm":[J
    aget-wide v9, v8, v7

    cmp-long v9, v9, v11

    const/4 v10, 0x0

    if-nez v9, :cond_116

    aget-wide v13, v8, v10

    cmp-long v9, v13, v11

    if-nez v9, :cond_116

    aget-wide v13, v8, v5

    cmp-long v9, v13, v11

    if-nez v9, :cond_116

    aget-wide v13, v8, v6

    cmp-long v9, v13, v11

    if-eqz v9, :cond_153

    .line 311
    :cond_116
    const-string v9, "  KSM: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    aget-wide v13, v8, v7

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v7, " saved from shared "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    aget-wide v9, v8, v10

    invoke-static {v9, v10}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v7, "\n       "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    aget-wide v9, v8, v5

    invoke-static {v9, v10}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v5, " unshared; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    aget-wide v5, v8, v6

    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v5, " volatile\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_153
    new-instance v5, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda0;-><init>([J)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 323
    new-instance v5, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v5, v8}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda4;-><init>([J)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 325
    const-string v5, "  Free RAM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-wide v5, v0, Lcom/android/server/am/MemUsageBuilder;->cachedPss:J

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v9

    add-long/2addr v5, v9

    .line 327
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v9

    add-long/2addr v5, v9

    .line 326
    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v6

    .line 330
    .local v6, "kernelUsed":J
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v9

    .line 331
    .local v9, "ionHeap":J
    invoke-static {}, Landroid/os/Debug;->getIonPoolsSizeKb()J

    move-result-wide v13

    .line 332
    .local v13, "ionPool":J
    invoke-static {}, Landroid/os/Debug;->getDmabufMappedSizeKb()J

    move-result-wide v11

    .line 334
    .local v11, "dmabufMapped":J
    new-instance v15, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda5;

    invoke-direct {v15, v9, v10}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda5;-><init>(J)V

    invoke-virtual {v1, v15}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 335
    new-instance v15, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda6;

    invoke-direct {v15, v13, v14}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda6;-><init>(J)V

    invoke-virtual {v1, v15}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 336
    new-instance v15, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda7;

    invoke-direct {v15, v11, v12}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda7;-><init>(J)V

    invoke-virtual {v1, v15}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 338
    const-wide/16 v15, 0x0

    cmp-long v17, v9, v15

    if-ltz v17, :cond_1db

    cmp-long v17, v13, v15

    if-ltz v17, :cond_1db

    .line 339
    sub-long v17, v9, v11

    .line 340
    .local v17, "ionUnmapped":J
    const-string v15, "       ION: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    add-long v15, v9, v13

    invoke-static/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    add-long v6, v6, v17

    .line 347
    move-wide v15, v6

    .end local v6    # "kernelUsed":J
    .local v15, "kernelUsed":J
    iget-wide v6, v0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    move-object/from16 v21, v8

    move-wide/from16 v22, v9

    .end local v8    # "ksm":[J
    .end local v9    # "ionHeap":J
    .local v21, "ksm":[J
    .local v22, "ionHeap":J
    iget-wide v8, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGraphics:J

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    .line 348
    add-long/2addr v6, v11

    iput-wide v6, v0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    .line 349
    .end local v17    # "ionUnmapped":J
    move-wide/from16 v24, v13

    move-wide v6, v15

    goto/16 :goto_25d

    .line 338
    .end local v15    # "kernelUsed":J
    .end local v21    # "ksm":[J
    .end local v22    # "ionHeap":J
    .restart local v6    # "kernelUsed":J
    .restart local v8    # "ksm":[J
    .restart local v9    # "ionHeap":J
    :cond_1db
    move-object/from16 v21, v8

    move-wide/from16 v22, v9

    .line 350
    .end local v8    # "ksm":[J
    .end local v9    # "ionHeap":J
    .restart local v21    # "ksm":[J
    .restart local v22    # "ionHeap":J
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    move-result-wide v8

    .line 351
    .local v8, "totalExportedDmabuf":J
    const-wide/16 v15, 0x0

    cmp-long v10, v8, v15

    if-ltz v10, :cond_215

    .line 352
    sub-long v17, v8, v11

    .line 353
    .local v17, "dmabufUnmapped":J
    const-string v10, "DMA-BUF: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-static {v8, v9}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    add-long v6, v6, v17

    .line 359
    move-wide/from16 v19, v6

    .end local v6    # "kernelUsed":J
    .local v19, "kernelUsed":J
    iget-wide v6, v0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    move-wide/from16 v24, v13

    .end local v13    # "ionPool":J
    .local v24, "ionPool":J
    iget-wide v13, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGraphics:J

    sub-long/2addr v6, v13

    iput-wide v6, v0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    .line 360
    add-long/2addr v6, v11

    iput-wide v6, v0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    .line 362
    new-instance v6, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda8;

    invoke-direct {v6, v8, v9}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda8;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    move-wide/from16 v6, v19

    goto :goto_217

    .line 351
    .end local v17    # "dmabufUnmapped":J
    .end local v19    # "kernelUsed":J
    .end local v24    # "ionPool":J
    .restart local v6    # "kernelUsed":J
    .restart local v13    # "ionPool":J
    :cond_215
    move-wide/from16 v24, v13

    .line 367
    .end local v13    # "ionPool":J
    .restart local v24    # "ionPool":J
    :goto_217
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    move-result-wide v13

    .line 368
    .local v13, "totalExportedDmabufHeap":J
    const-wide/16 v15, 0x0

    cmp-long v10, v13, v15

    if-ltz v10, :cond_238

    .line 369
    const-string v10, "DMA-BUF Heap: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    new-instance v10, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda9;

    invoke-direct {v10, v13, v14}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda9;-><init>(J)V

    invoke-virtual {v1, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 378
    :cond_238
    move-wide/from16 v17, v6

    .end local v6    # "kernelUsed":J
    .local v17, "kernelUsed":J
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapPoolsSizeKb()J

    move-result-wide v6

    .line 379
    .local v6, "totalDmabufHeapPool":J
    const-wide/16 v15, 0x0

    cmp-long v10, v6, v15

    if-ltz v10, :cond_25b

    .line 380
    const-string v10, "DMA-BUF Heaps pool: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    new-instance v10, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda10;

    invoke-direct {v10, v6, v7}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda10;-><init>(J)V

    invoke-virtual {v1, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 389
    .end local v6    # "totalDmabufHeapPool":J
    .end local v8    # "totalExportedDmabuf":J
    .end local v13    # "totalExportedDmabufHeap":J
    :cond_25b
    move-wide/from16 v6, v17

    .end local v17    # "kernelUsed":J
    .local v6, "kernelUsed":J
    :goto_25d
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    move-result-wide v8

    .line 390
    .local v8, "gpuUsage":J
    const-wide/16 v13, 0x0

    cmp-long v10, v8, v13

    if-ltz v10, :cond_2d8

    .line 391
    move-wide v15, v11

    .end local v11    # "dmabufMapped":J
    .local v15, "dmabufMapped":J
    invoke-static {}, Landroid/os/Debug;->getGpuPrivateMemoryKb()J

    move-result-wide v10

    .line 392
    .local v10, "gpuPrivateUsage":J
    cmp-long v12, v10, v13

    if-ltz v12, :cond_2b2

    .line 393
    sub-long v12, v8, v10

    .line 394
    .local v12, "gpuDmaBufUsage":J
    const-string v14, "      GPU: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-static {v8, v9}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v14, " ("

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v14, " dmabuf + "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v14, " private)\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    move-wide/from16 v17, v15

    .end local v15    # "dmabufMapped":J
    .local v17, "dmabufMapped":J
    iget-wide v14, v0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    move-object/from16 v16, v2

    move-object/from16 v19, v3

    .end local v2    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .end local v3    # "infos":[J
    .local v16, "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v19, "infos":[J
    iget-wide v2, v0, Lcom/android/server/am/MemUsageBuilder;->totalMemtrackGl:J

    sub-long/2addr v14, v2

    iput-wide v14, v0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    .line 404
    add-long/2addr v6, v10

    .line 406
    new-instance v2, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda11;

    invoke-direct {v2, v12, v13}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda11;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 408
    .end local v12    # "gpuDmaBufUsage":J
    goto :goto_2c7

    .line 409
    .end local v16    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .end local v17    # "dmabufMapped":J
    .end local v19    # "infos":[J
    .restart local v2    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v3    # "infos":[J
    .restart local v15    # "dmabufMapped":J
    :cond_2b2
    move-object/from16 v19, v3

    move-wide/from16 v17, v15

    move-object/from16 v16, v2

    .end local v2    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .end local v3    # "infos":[J
    .end local v15    # "dmabufMapped":J
    .restart local v16    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v17    # "dmabufMapped":J
    .restart local v19    # "infos":[J
    const-string v2, "       GPU: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-static {v8, v9}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :goto_2c7
    new-instance v2, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda12;

    invoke-direct {v2, v8, v9}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda12;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 415
    new-instance v2, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v2, v10, v11}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2de

    .line 390
    .end local v10    # "gpuPrivateUsage":J
    .end local v16    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .end local v17    # "dmabufMapped":J
    .end local v19    # "infos":[J
    .restart local v2    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v3    # "infos":[J
    .restart local v11    # "dmabufMapped":J
    :cond_2d8
    move-object/from16 v16, v2

    move-object/from16 v19, v3

    move-wide/from16 v17, v11

    .line 418
    .end local v2    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .end local v3    # "infos":[J
    .end local v11    # "dmabufMapped":J
    .restart local v16    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v17    # "dmabufMapped":J
    .restart local v19    # "infos":[J
    :goto_2de
    const-string v2, "  Used RAM: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget-wide v2, v0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    iget-wide v10, v0, Lcom/android/server/am/MemUsageBuilder;->cachedPss:J

    sub-long/2addr v2, v10

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v2, "  Lost RAM: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v2

    iget-wide v10, v0, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    iget-wide v12, v0, Lcom/android/server/am/MemUsageBuilder;->totalSwapPss:J

    sub-long/2addr v10, v12

    sub-long/2addr v2, v10

    .line 427
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v10

    sub-long/2addr v2, v10

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v10

    sub-long/2addr v2, v10

    sub-long/2addr v2, v6

    .line 428
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v10

    sub-long/2addr v2, v10

    .line 426
    invoke-static {v2, v3}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    move-wide v2, v6

    .line 432
    .local v2, "finalKernelUsed":J
    new-instance v5, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2, v3}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 433
    new-instance v5, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda3;

    move-object/from16 v10, v16

    .end local v16    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v10, "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-direct {v5, v10}, Lcom/android/server/am/MemUsageBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/util/MemInfoReader;)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 434
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method setScoutInfo(Lcom/android/server/am/ScoutMeminfo;)V
    .registers 2
    .param p1, "scoutInfo"    # Lcom/android/server/am/ScoutMeminfo;

    .line 71
    iput-object p1, p0, Lcom/android/server/am/MemUsageBuilder;->scoutInfo:Lcom/android/server/am/ScoutMeminfo;

    .line 72
    return-void
.end method
