.class public Lcom/android/server/power/stats/WakelockPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "WakelockPowerStatsCollector.java"


# instance fields
.field public mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mFirstCollection:Z

.field public mIsInitialized:Z

.field public mLastCollectionTime:J

.field public final mLastUidWakelockDurations:Landroid/util/SparseLongArray;

.field public mLastWakelockDurationMs:J

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

.field public final mWakelockDurationRetriever:Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;


# direct methods
.method public static synthetic $r8$lambda$6beLFR_C40phG_UeVqzNOydosp8(Lcom/android/server/power/stats/WakelockPowerStatsCollector;IJ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->lambda$collectStats$0(IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/WakelockPowerStatsCollector$Injector;)V
    .registers 8

    .line 60
    invoke-interface {p1}, Lcom/android/server/power/stats/WakelockPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v0, 0xc

    .line 61
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-interface {p1, v0}, Lcom/android/server/power/stats/WakelockPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 63
    invoke-interface {p1}, Lcom/android/server/power/stats/WakelockPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/power/stats/WakelockPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    move-object v0, p0

    .line 60
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    const/4 p0, 0x1

    .line 54
    iput-boolean p0, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mFirstCollection:Z

    .line 57
    new-instance p0, Landroid/util/SparseLongArray;

    invoke-direct {p0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p0, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastUidWakelockDurations:Landroid/util/SparseLongArray;

    .line 64
    invoke-interface {p1}, Lcom/android/server/power/stats/WakelockPowerStatsCollector$Injector;->getWakelockDurationRetriever()Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mWakelockDurationRetriever:Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;

    return-void
.end method

.method private ensureInitialized()Z
    .registers 10

    .line 68
    iget-boolean v0, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 72
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 76
    :cond_e
    new-instance v0, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    .line 77
    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    invoke-virtual {v0, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 79
    new-instance v2, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    .line 80
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    .line 81
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v7

    const/16 v3, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v2, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 82
    new-instance v0, Lcom/android/internal/os/PowerStats;

    iget-object v2, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 83
    iput-boolean v1, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mIsInitialized:Z

    return v1
.end method

.method private synthetic lambda$collectStats$0(IJ)V
    .registers 8

    .line 109
    iget-boolean v0, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mFirstCollection:Z

    if-nez v0, :cond_34

    .line 110
    iget-object v0, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastUidWakelockDurations:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_34

    .line 112
    iget-object v2, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, v2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    if-nez v2, :cond_2f

    .line 114
    iget-object v2, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v2, [J

    .line 115
    iget-object v3, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    :cond_2f
    iget-object v3, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidUsageDuration([JJ)V

    .line 121
    :cond_34
    iget-object p0, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastUidWakelockDurations:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method


# virtual methods
.method public collectStats(JJ)Lcom/android/internal/os/PowerStats;
    .registers 11

    .line 90
    invoke-direct {p0}, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->ensureInitialized()Z

    move-result p3

    if-nez p3, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_8
    iget-object p3, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p3, p3, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v0, 0x0

    invoke-static {p3, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 95
    iget-object p3, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p3, p3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->clear()V

    .line 97
    iget-object p3, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v2, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastCollectionTime:J

    sub-long v2, p1, v2

    iput-wide v2, p3, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 99
    iget-object p3, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mWakelockDurationRetriever:Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;

    invoke-interface {p3}, Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;->getWakelockDurationMillis()J

    move-result-wide p3

    .line 101
    iget-boolean v2, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mFirstCollection:Z

    if-nez v2, :cond_3b

    .line 102
    iget-object v2, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-wide v4, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastWakelockDurationMs:J

    sub-long v4, p3, v4

    .line 103
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 102
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUsageDuration([JJ)V

    .line 106
    :cond_3b
    iput-wide p3, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastWakelockDurationMs:J

    .line 108
    iget-object p3, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mWakelockDurationRetriever:Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;

    new-instance p4, Lcom/android/server/power/stats/WakelockPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/server/power/stats/WakelockPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/WakelockPowerStatsCollector;)V

    invoke-interface {p3, p4}, Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;->retrieveUidWakelockDuration(Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever$Callback;)V

    .line 124
    iput-wide p1, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mLastCollectionTime:J

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mFirstCollection:Z

    .line 127
    iget-object p0, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object p0
.end method
