.class public Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "EnergyConsumerPowerStatsCollector.java"


# instance fields
.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public final mEnergyConsumerId:I

.field public final mEnergyConsumerType:I

.field public final mInjector:Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;

.field public mIsInitialized:Z

.field public mLastUpdateTimestamp:J

.field public final mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

.field public final mPowerComponentId:I

.field public final mPowerComponentName:Ljava/lang/String;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;ILjava/lang/String;IILcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;)V
    .registers 13

    .line 64
    invoke-interface {p1}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 65
    invoke-interface {p1, p3}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 66
    invoke-interface {p1}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    move-object v0, p0

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 67
    iput-object p1, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;

    .line 68
    iput p2, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentId:I

    .line 69
    iput-object p3, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentName:Ljava/lang/String;

    .line 70
    iput p5, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerId:I

    .line 71
    iput p4, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerType:I

    .line 72
    iput-object p6, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;ILjava/lang/String;ILcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;)V
    .registers 13

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;-><init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;ILjava/lang/String;IILcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;)V

    return-void
.end method

.method private ensureInitialized()Z
    .registers 13

    .line 81
    iget-boolean v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 85
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_e
    iget v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_23

    .line 90
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;

    invoke-interface {v2}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerId:I

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;IZ)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    goto :goto_32

    .line 93
    :cond_23
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;

    invoke-interface {v2}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerType:I

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 97
    :goto_32
    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11}, Landroid/os/PersistableBundle;-><init>()V

    .line 98
    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    invoke-virtual {v0, v11}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 99
    new-instance v4, Lcom/android/internal/os/PowerStats$Descriptor;

    iget v5, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentId:I

    iget-object v6, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    .line 100
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v7

    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    .line 101
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 103
    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v4}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 105
    iput-boolean v1, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mIsInitialized:Z

    return v1
.end method


# virtual methods
.method public collectStats(JJ)Lcom/android/internal/os/PowerStats;
    .registers 7

    .line 111
    invoke-direct {p0}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->ensureInitialized()Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_8

    return-object p4

    .line 115
    :cond_8
    iget-object p3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p3, p3, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v0, 0x0

    invoke-static {p3, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 116
    iget-object p3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p3, p3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->clear()V

    .line 118
    iget-object p3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    invoke-virtual {p3, v0, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    move-result p3

    if-nez p3, :cond_25

    return-object p4

    .line 122
    :cond_25
    iget-object p3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastUpdateTimestamp:J

    sub-long v0, p1, v0

    iput-wide v0, p3, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 123
    iput-wide p1, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastUpdateTimestamp:J

    return-object p3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COLLECTOR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
