.class public Lcom/android/server/power/stats/ScreenPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "ScreenPowerStatsCollector.java"


# instance fields
.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public mDisplayCount:I

.field public mFirstSample:Z

.field public final mInjector:Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

.field public mIsInitialized:Z

.field public mLastBrightnessLevelTime:[[J

.field public mLastCollectionTime:J

.field public mLastDozeTime:[J

.field public mLastScreenOnTime:[J

.field public final mLastTopActivityTime:Landroid/util/SparseLongArray;

.field public mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public mScreenUsageTimeRetriever:Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;


# direct methods
.method public static synthetic $r8$lambda$0HnneE1S37oMrEUeOB2Kv1WtWBY(Lcom/android/server/power/stats/ScreenPowerStatsCollector;IJ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->lambda$collectStats$0(IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;)V
    .registers 8

    .line 72
    invoke-interface {p1}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    .line 74
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-interface {p1, v0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 76
    invoke-interface {p1}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    move-object v0, p0

    .line 72
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    const/4 p0, 0x1

    .line 64
    iput-boolean p0, v0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    .line 68
    new-instance p0, Landroid/util/SparseLongArray;

    invoke-direct {p0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p0, v0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastTopActivityTime:Landroid/util/SparseLongArray;

    .line 77
    iput-object p1, v0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

    return-void
.end method

.method private ensureInitialized()Z
    .registers 13

    .line 81
    iget-boolean v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 85
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 89
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getDisplayCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    .line 90
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getScreenUsageTimeRetriever()Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    .line 92
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

    invoke-interface {v3}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 94
    new-instance v3, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

    .line 95
    invoke-interface {v4}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getDisplayCount()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;-><init>(II)V

    iput-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 97
    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11}, Landroid/os/PersistableBundle;-><init>()V

    .line 98
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v0, v11}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 99
    new-instance v5, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 100
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v7

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 101
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v10

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 104
    iget v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    new-array v3, v0, [J

    iput-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastScreenOnTime:[J

    const/4 v3, 0x2

    .line 105
    new-array v3, v3, [I

    const/4 v4, 0x5

    aput v4, v3, v1

    aput v0, v3, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastBrightnessLevelTime:[[J

    .line 106
    iget v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastDozeTime:[J

    .line 108
    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v5}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 110
    iput-boolean v1, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mIsInitialized:Z

    return v1
.end method


# virtual methods
.method public collectStats(JJ)Lcom/android/internal/os/PowerStats;
    .registers 15

    .line 132
    invoke-direct {p0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->ensureInitialized()Z

    move-result p3

    if-nez p3, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_8
    iget-object p3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p3, p3, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v0, 0x0

    invoke-static {p3, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 137
    iget-object p3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p3, p3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->clear()V

    .line 139
    iget-object p3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {p3, p4, v2}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    const/4 p3, 0x0

    move v4, p3

    .line 141
    :goto_23
    iget p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    if-ge v4, p4, :cond_98

    .line 142
    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    invoke-interface {p4, v4}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;->getScreenOnTimeMs(I)J

    move-result-wide v2

    .line 143
    iget-boolean p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    if-nez p4, :cond_44

    .line 144
    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v6, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastScreenOnTime:[J

    aget-wide v6, v6, v4

    sub-long v6, v2, v6

    .line 145
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 144
    invoke-virtual {p4, v5, v4, v6, v7}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->setScreenOnDuration([JIJ)V

    .line 147
    :cond_44
    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastScreenOnTime:[J

    aput-wide v2, p4, v4

    move v5, p3

    :goto_49
    const/4 p4, 0x5

    if-ge v5, p4, :cond_74

    .line 150
    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    .line 151
    invoke-interface {p4, v4, v5}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;->getBrightnessLevelTimeMs(II)J

    move-result-wide v8

    .line 152
    iget-boolean p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    if-nez p4, :cond_6b

    .line 153
    iget-object v2, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, p4, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastBrightnessLevelTime:[[J

    aget-object p4, p4, v4

    aget-wide v6, p4, v5

    sub-long v6, v8, v6

    .line 154
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 153
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->setBrightnessLevelDuration([JIIJ)V

    .line 157
    :cond_6b
    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastBrightnessLevelTime:[[J

    aget-object p4, p4, v4

    aput-wide v8, p4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 159
    :cond_74
    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    invoke-interface {p4, v4}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;->getScreenDozeTimeMs(I)J

    move-result-wide v2

    .line 160
    iget-boolean p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    if-nez p4, :cond_91

    .line 161
    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v6, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastDozeTime:[J

    aget-wide v6, v6, v4

    sub-long v6, v2, v6

    .line 162
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 161
    invoke-virtual {p4, v5, v4, v6, v7}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->setScreenDozeDuration([JIJ)V

    .line 164
    :cond_91
    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastDozeTime:[J

    aput-wide v2, p4, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 167
    :cond_98
    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    new-instance v0, Lcom/android/server/power/stats/ScreenPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/ScreenPowerStatsCollector;)V

    invoke-interface {p4, v0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;->retrieveTopActivityTimes(Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;)V

    .line 185
    iget-object p4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastCollectionTime:J

    sub-long v0, p1, v0

    iput-wide v0, p4, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 186
    iput-wide p1, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastCollectionTime:J

    .line 188
    iput-boolean p3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    return-object p4
.end method

.method public final synthetic lambda$collectStats$0(IJ)V
    .registers 10

    .line 168
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastTopActivityTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    return-void

    .line 172
    :cond_f
    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastTopActivityTime:Landroid/util/SparseLongArray;

    invoke-virtual {v4, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 174
    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result p1

    .line 175
    iget-object p2, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    if-nez p2, :cond_35

    .line 177
    iget-object p2, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {p2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result p2

    new-array p2, p2, [J

    .line 178
    iget-object p3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p3, p3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    :cond_35
    iget-object p0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getUidTopActivityDuration([J)J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 181
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->setUidTopActivityDuration([JJ)V

    return-void
.end method

.method public onScreenStateChange()V
    .registers 2

    .line 118
    invoke-direct {p0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    if-eqz v0, :cond_12

    .line 123
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->forceSchedule()Z

    return-void

    .line 127
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    return-void
.end method

.method public onUidRemoved(I)V
    .registers 2

    .line 195
    iget-object p0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastTopActivityTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method
