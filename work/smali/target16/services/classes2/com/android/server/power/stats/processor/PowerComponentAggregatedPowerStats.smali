.class public Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
.super Ljava/lang/Object;
.source "PowerComponentAggregatedPowerStats.java"


# instance fields
.field public final mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

.field public final mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

.field public final mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

.field public final mDeviceStates:[I

.field public mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

.field public mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPowerStatsTimestamp:J

.field public mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

.field public final mStateStats:Landroid/util/SparseArray;

.field public mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field public mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field public final mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

.field public final mUidStats:Landroid/util/SparseArray;

.field public mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field public final powerComponentId:I


# direct methods
.method public static synthetic $r8$lambda$7vmA-6OlmvfK7cBqd4VhMaSVnDY(Lcom/android/server/power/stats/processor/MultiStateStats;[J[ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;[Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;[I)V
    .registers 12

    .line 594
    invoke-virtual {p0, p1, p8}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStats([J[I)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const/4 p0, 0x0

    .line 598
    aget-boolean v0, p2, p0

    if-eqz v0, :cond_12

    .line 599
    invoke-virtual {p3, p4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 602
    :cond_12
    aput-boolean p0, p2, p0

    .line 603
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    const-string p4, "("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p4, 0x1

    move v0, p0

    .line 606
    :goto_20
    array-length v1, p8

    const-string v2, " "

    if-ge v0, v1, :cond_43

    .line 607
    aget-object v1, p5, v0

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v1

    if-eqz v1, :cond_40

    if-nez p4, :cond_32

    .line 609
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :cond_32
    aget-object p4, p5, v0

    invoke-virtual {p4}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getLabels()[Ljava/lang/String;

    move-result-object p4

    aget v1, p8, v0

    aget-object p4, p4, v1

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p4, p0

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_43
    if-eqz p6, :cond_4b

    .line 616
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_4b
    const-string p0, ") "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 86
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 87
    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 88
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getPowerComponentId()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    .line 89
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 90
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 91
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    const-wide/16 p1, -0x1

    .line 92
    iput-wide p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    return-void
.end method


# virtual methods
.method public addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    .registers 5

    .line 214
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V

    return-void
.end method

.method public addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V
    .registers 9

    .line 221
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 223
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_b

    .line 224
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 227
    :cond_b
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_37

    .line 228
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 229
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v3, :cond_29

    .line 231
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createStateStats(IJ)Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v3

    .line 233
    :cond_29
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    invoke-virtual {v3, v2, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->increment([JJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 235
    :cond_37
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v0, v2, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->increment([JJ)V

    .line 237
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_45
    if-ltz v0, :cond_6c

    .line 238
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 239
    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object v2

    .line 240
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v3, :cond_58

    .line 241
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 243
    :cond_58
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v4, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->increment([JJ)V

    .line 244
    iput-boolean v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    .line 245
    iput-boolean v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_45

    .line 251
    :cond_6c
    iget-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_73
    if-ltz p1, :cond_8f

    .line 252
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 253
    iget-boolean v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    if-nez v1, :cond_89

    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v1, :cond_89

    const/4 v2, 0x0

    .line 255
    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->increment([JJ)V

    :cond_89
    const/4 v1, 0x0

    .line 257
    iput-boolean v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_73

    .line 260
    :cond_8f
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    return-void
.end method

.method public copyStatesFrom(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .registers 10

    .line 440
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v1, v0

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v3, v2

    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_20

    .line 441
    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v0, :cond_44

    .line 443
    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 444
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v0, :cond_44

    .line 445
    iget-object v1, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats;->copyStatesFrom(Lcom/android/server/power/stats/processor/MultiStateStats;)V

    goto :goto_44

    .line 449
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State configurations have different lengths: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AggregatePowerStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_44
    :goto_44
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4c
    if-ltz v0, :cond_88

    .line 453
    iget-object v1, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 454
    iget-object v2, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 455
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    if-nez v3, :cond_61

    goto :goto_85

    .line 458
    :cond_61
    new-instance v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;-><init>(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats-IA;)V

    .line 459
    iget-object v6, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    .line 460
    iget-object v6, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v6, :cond_80

    .line 461
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 462
    iget-object v6, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v6, :cond_80

    .line 463
    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v6, v2}, Lcom/android/server/power/stats/processor/MultiStateStats;->copyStatesFrom(Lcom/android/server/power/stats/processor/MultiStateStats;)V

    .line 466
    :cond_80
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_85
    add-int/lit8 v0, v0, -0x1

    goto :goto_4c

    :cond_88
    return-void
.end method

.method public final createDeviceStats(J)V
    .registers 8

    .line 376
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    if-nez v0, :cond_14

    .line 377
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_9

    goto :goto_53

    .line 380
    :cond_9
    new-instance v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-direct {v1, v0, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 384
    :cond_14
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->create()Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 385
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_25

    move-wide p1, v0

    :cond_25
    cmp-long v0, p1, v2

    if-eqz v0, :cond_53

    const/4 v0, 0x0

    .line 389
    :goto_2a
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ge v0, v1, :cond_53

    .line 390
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aget v1, v1, v0

    .line 391
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    .line 392
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_40
    if-ltz v2, :cond_50

    .line 393
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 394
    invoke-virtual {v3, v0, v1, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_40

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_53
    :goto_53
    return-void
.end method

.method public final createStateStats(IJ)Lcom/android/server/power/stats/processor/MultiStateStats;
    .registers 5

    .line 401
    iget-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    if-nez p2, :cond_15

    .line 402
    iget-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez p2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 405
    :cond_a
    new-instance p3, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget p2, p2, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-direct {p3, p2, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iput-object p3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 409
    :cond_15
    iget-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->create()Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object p2

    .line 410
    iget-object p3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_27

    .line 412
    invoke-virtual {p2, p0}, Lcom/android/server/power/stats/processor/MultiStateStats;->copyStatesFrom(Lcom/android/server/power/stats/processor/MultiStateStats;)V

    :cond_27
    return-object p2
.end method

.method public final createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V
    .registers 9

    .line 419
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    if-nez v0, :cond_14

    .line 420
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_9

    goto :goto_3b

    .line 423
    :cond_9
    new-instance v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-direct {v1, v0, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 427
    :cond_14
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->create()Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 429
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_25

    move-wide p2, v0

    :cond_25
    cmp-long v0, p2, v2

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    .line 433
    :goto_2a
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 434
    iget-object v1, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v2, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    aget v2, v2, v0

    invoke-virtual {v1, v0, v2, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3b
    :goto_3b
    return-void
.end method

.method public dumpDevice(Landroid/util/IndentingPrintWriter;)V
    .registers 14

    .line 559
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v2, :cond_13

    .line 560
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v3, v0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    const/4 v4, 0x0

    .line 561
    invoke-virtual {v0}, Lcom/android/internal/os/PowerStats$Descriptor;->getDeviceStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 560
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    goto :goto_15

    :cond_13
    move-object v0, p0

    move-object v1, p1

    .line 564
    :goto_15
    iget-object p0, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-eqz p0, :cond_64

    .line 565
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 566
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " states"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 567
    iget-object p0, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v11

    const/4 p0, 0x0

    .line 569
    :goto_3c
    iget-object p1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge p0, p1, :cond_61

    .line 570
    iget-object p1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    .line 571
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateLabel(I)Ljava/lang/String;

    move-result-object v10

    .line 572
    iget-object p1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/android/server/power/stats/processor/MultiStateStats;

    move-object v6, v0

    move-object v7, v1

    .line 573
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_3c

    .line 575
    :cond_61
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_64
    return-void
.end method

.method public final dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V
    .registers 16

    const/4 p0, 0x1

    .line 590
    new-array v3, p0, [Z

    const/4 v9, 0x0

    aput-boolean p0, v3, v9

    .line 591
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->getDimensionCount()I

    move-result p0

    new-array v2, p0, [J

    .line 592
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStates()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v6

    .line 593
    new-instance v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;

    move-object v4, p1

    move-object v1, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats;[J[ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;[Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    invoke-static {v6, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 621
    aget-boolean p0, v3, v9

    if-nez p0, :cond_24

    .line 622
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_24
    return-void
.end method

.method public dumpUid(Landroid/util/IndentingPrintWriter;I)V
    .registers 9

    .line 580
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    if-eqz p2, :cond_1c

    .line 581
    iget-object v2, p2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v2, :cond_1c

    .line 582
    iget-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v3, p2, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    const/4 v4, 0x0

    .line 583
    invoke-virtual {p2}, Lcom/android/internal/os/PowerStats$Descriptor;->getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 582
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    :cond_1c
    return-void
.end method

.method public finish(J)V
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    return-void
.end method

.method public forEachStateStatsKey(Ljava/util/function/IntConsumer;)V
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_16

    .line 353
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_16
    return-void
.end method

.method public getActiveUids()Landroid/util/IntArray;
    .registers 4

    .line 306
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 307
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_2d

    .line 308
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 309
    iget-boolean v2, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    if-eqz v2, :cond_2a

    .line 310
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_2d
    return-object v0
.end method

.method public getAggregatedPowerStats()Lcom/android/server/power/stats/processor/AggregatedPowerStats;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    return-object p0
.end method

.method public getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    return-object p0
.end method

.method public getDeviceStats([J[I)Z
    .registers 5

    .line 322
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ne v0, v1, :cond_11

    .line 327
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_f

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStats([J[I)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0

    .line 323
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number of tracked states: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " expected: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    return-object p0
.end method

.method public getStateStats([JI[I)Z
    .registers 6

    .line 339
    array-length v0, p3

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ne v0, v1, :cond_17

    .line 344
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_15

    .line 346
    invoke-virtual {p0, p1, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStats([J[I)Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0

    .line 340
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid number of tracked states: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " expected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    .registers 7

    .line 275
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    if-nez v0, :cond_50

    .line 277
    new-instance v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;-><init>(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats-IA;)V

    .line 278
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    const/4 v1, 0x0

    .line 279
    :goto_18
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v3, v2

    if-ge v1, v3, :cond_4b

    .line 280
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 281
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v3, v1

    .line 282
    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-static {v2, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_48

    .line 283
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v3, v2

    .line 284
    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 285
    iget-object v3, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aget v2, v4, v2

    aput v2, v3, v1

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 289
    :cond_4b
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_50
    return-object v0
.end method

.method public getUidStats([JI[I)Z
    .registers 6

    .line 363
    array-length v0, p3

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ne v0, v1, :cond_1b

    .line 368
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    if-eqz p0, :cond_19

    .line 369
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_19

    .line 370
    invoke-virtual {p0, p1, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStats([J[I)Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0

    .line 364
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid number of tracked states: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " expected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUids()Landroid/util/IntArray;
    .registers 4

    .line 295
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 296
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_2d

    .line 297
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 298
    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v2, :cond_2a

    .line 299
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_2d
    return-object v0
.end method

.method public isCompatible(Lcom/android/internal/os/PowerStats;)Z
    .registers 2

    .line 209
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz p0, :cond_f

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public noteBatteryLevel(IIJ)V
    .registers 5

    .line 130
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->noteBatteryLevel(IIJ)V

    return-void
.end method

.method public noteStateChange(Landroid/os/BatteryStats$HistoryItem;)V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V

    return-void
.end method

.method public readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z
    .registers 10

    .line 510
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    :goto_8
    const/4 v2, 0x1

    if-eq v1, v2, :cond_b6

    const/4 v3, 0x3

    if-ne v1, v3, :cond_18

    .line 513
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b6

    :cond_18
    const/4 v4, 0x2

    if-ne v1, v4, :cond_b0

    .line 515
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v5, :sswitch_data_b8

    :goto_2b
    move v3, v7

    goto :goto_58

    :sswitch_2d
    const-string/jumbo v4, "uid-stats"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    goto :goto_2b

    :sswitch_37
    const-string/jumbo v3, "state-stats"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_2b

    :cond_41
    move v3, v4

    goto :goto_58

    :sswitch_43
    const-string v3, "descriptor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_2b

    :cond_4c
    move v3, v2

    goto :goto_58

    :sswitch_4e
    const-string v3, "device-stats"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_2b

    :cond_57
    move v3, v6

    :cond_58
    :goto_58
    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    packed-switch v3, :pswitch_data_ca

    goto :goto_b0

    .line 541
    :pswitch_5f
    const-string/jumbo v3, "uid"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 542
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object v1

    .line 543
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v3, :cond_71

    .line 544
    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 546
    :cond_71
    iput-boolean v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    .line 547
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_b0

    return v6

    .line 531
    :pswitch_7c
    const-string v2, "key"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 532
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v2, :cond_90

    .line 534
    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createStateStats(IJ)Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v2

    .line 536
    :cond_90
    invoke-virtual {v2, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_b0

    return v6

    .line 517
    :pswitch_97
    invoke-static {p1}, Lcom/android/internal/os/PowerStats$Descriptor;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v1, :cond_b0

    return v6

    .line 523
    :pswitch_a0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v1, :cond_a7

    .line 524
    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 526
    :cond_a7
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_b0

    return v6

    .line 553
    :cond_b0
    :goto_b0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    goto/16 :goto_8

    :cond_b6
    return v2

    nop

    :sswitch_data_b8
    .sparse-switch
        -0x7836a198 -> :sswitch_4e
        -0x2c9b2c91 -> :sswitch_43
        0x6242c63 -> :sswitch_37
        0x5be620e2 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_97
        :pswitch_7c
        :pswitch_5f
    .end packed-switch
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 265
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 266
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 267
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 268
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_2e

    .line 269
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    iput-object v0, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 270
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_2e
    return-void
.end method

.method public setDeviceStats([I[J)V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 196
    :cond_9
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->setStats([I[J)V

    return-void
.end method

.method public setPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    return-void
.end method

.method public setProcessedUidState(IIIJ)V
    .registers 7

    .line 176
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_21

    .line 180
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object p1

    .line 181
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_16

    .line 182
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 185
    :cond_16
    iget-object p0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    aput p3, p0, p2

    .line 187
    iget-object p0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_21

    .line 188
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    :cond_21
    :goto_21
    return-void
.end method

.method public setState(IIJ)V
    .registers 8

    .line 135
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_7

    .line 136
    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 139
    :cond_7
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aput p2, v0, p1

    .line 141
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 142
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v0, :cond_1c

    .line 143
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    .line 145
    :cond_1c
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_24
    if-ltz v0, :cond_34

    .line 146
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 147
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 151
    :cond_34
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object p1, v1, p1

    .line 152
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_76

    .line 153
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v0, v0, p1

    .line 154
    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 155
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_57
    if-ltz v0, :cond_76

    .line 156
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 157
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v2, :cond_68

    .line 158
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 161
    :cond_68
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    aput p2, v2, p1

    .line 162
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v1, :cond_73

    .line 163
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    :cond_73
    add-int/lit8 v0, v0, -0x1

    goto :goto_57

    :cond_76
    return-void
.end method

.method public setUidState(IIIJ)V
    .registers 13

    .line 171
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->setUidState(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;IIIJ)V

    return-void
.end method

.method public setUidStats(I[I[J)V
    .registers 6

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object p1

    .line 201
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_d

    .line 202
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    :cond_d
    const/4 p0, 0x1

    .line 204
    iput-boolean p0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    .line 205
    iget-object p0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->setStats([I[J)V

    return-void
.end method

.method public start(J)V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    if-nez v0, :cond_c

    .line 116
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->createProcessor()Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    .line 118
    :cond_c
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 628
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 629
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 630
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 631
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpDevice(Landroid/util/IndentingPrintWriter;)V

    .line 632
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 634
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v3, v2, [I

    add-int/lit8 v4, v2, -0x1

    :goto_1d
    if-ltz v4, :cond_2a

    .line 636
    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 638
    :cond_2a
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    const/4 v4, 0x0

    :goto_2e
    if-ge v4, v2, :cond_45

    .line 639
    aget v5, v3, v4

    .line 640
    invoke-static {v5}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 642
    invoke-virtual {p0, v1, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpUid(Landroid/util/IndentingPrintWriter;I)V

    .line 643
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 646
    :cond_45
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 648
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 9

    .line 472
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 476
    const-string/jumbo v1, "power_component"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    const-string v2, "id"

    iget v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 478
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/PowerStats$Descriptor;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 480
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v2, :cond_29

    .line 481
    const-string v2, "device-stats"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 483
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_29
    const/4 v2, 0x0

    .line 486
    :goto_2a
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 487
    const-string/jumbo v3, "state-stats"

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 488
    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const-string v5, "key"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v4, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 490
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 493
    :cond_54
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_5c
    if-ltz v2, :cond_87

    .line 494
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 495
    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 496
    iget-object v5, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v5, :cond_84

    .line 497
    const-string/jumbo v5, "uid-stats"

    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    const-string/jumbo v6, "uid"

    invoke-interface {p1, v0, v6, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    iget-object v3, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 500
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_84
    add-int/lit8 v2, v2, -0x1

    goto :goto_5c

    .line 504
    :cond_87
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 505
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    return-void
.end method
