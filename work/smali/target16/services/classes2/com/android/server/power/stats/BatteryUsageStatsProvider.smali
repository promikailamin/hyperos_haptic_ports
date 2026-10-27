.class public Lcom/android/server/power/stats/BatteryUsageStatsProvider;
.super Ljava/lang/Object;
.source "BatteryUsageStatsProvider.java"


# instance fields
.field public final mAccumulatedBatteryUsageStatsSpanSize:I

.field public final mClock:Lcom/android/internal/os/Clock;

.field public mLastAccumulationMonotonicHistorySize:J

.field public final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field public final mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method public static synthetic $r8$lambda$rlWqUVwnllBfJlxnTRJ-GZmZAb0(Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->lambda$accumulateBatteryUsageStatsAsync$0(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerAttributor;Lcom/android/server/power/stats/PowerStatsStore;ILcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;)V
    .registers 6

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    .line 68
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 69
    iput p3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mAccumulatedBatteryUsageStatsSpanSize:I

    .line 70
    iput-object p4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 71
    iput-object p5, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 73
    new-instance p0, Lcom/android/server/power/stats/BatteryUsageStatsSection$Reader;

    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryUsageStatsSection$Reader;-><init>()V

    invoke-virtual {p2, p0}, Lcom/android/server/power/stats/PowerStatsStore;->addSectionReader(Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;)V

    .line 74
    new-instance p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection$Reader;

    invoke-direct {p0}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection$Reader;-><init>()V

    invoke-virtual {p2, p0}, Lcom/android/server/power/stats/PowerStatsStore;->addSectionReader(Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;)V

    return-void
.end method

.method public static shouldUpdateStats(Ljava/util/List;JJ)Z
    .registers 11

    .line 131
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide v2, 0x7fffffffffffffffL

    :goto_b
    if-ltz v0, :cond_1e

    .line 132
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryUsageStatsQuery;

    .line 133
    invoke-virtual {v4}, Landroid/os/BatteryUsageStatsQuery;->getMaxStatsAge()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1e
    sub-long/2addr p1, p3

    cmp-long p0, p1, v2

    if-lez p0, :cond_24

    return v1

    :cond_24
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public accumulateBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V
    .registers 11

    .line 105
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->loadAccumulatedBatteryUsageStats()Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->updateAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    .line 108
    new-instance v1, Lcom/android/server/power/stats/PowerStatsSpan;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(J)V

    .line 109
    new-instance p1, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-direct {p1, v2}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerStatsSpan;->addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V

    .line 111
    iget-wide v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    iget-wide v4, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    iget-wide v6, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    sub-long/2addr v6, v2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/PowerStatsSpan;->addTimeFrame(JJJ)V

    .line 114
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {p1}, Lcom/android/internal/os/MonotonicClock;->write()V

    .line 115
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 116
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V

    .line 117
    iget-object p0, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->discard()V

    return-void

    .line 119
    :cond_3f
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iget-object p1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    .line 120
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    .line 119
    invoke-virtual {p0, v1, p2}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpanAsync(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V

    return-void
.end method

.method public accumulateBatteryUsageStatsAsync(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;Z)V
    .registers 10

    if-nez p3, :cond_26

    .line 83
    monitor-enter p0

    .line 84
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/os/BatteryStatsHistory;->getMonotonicHistorySize()J

    move-result-wide v0

    .line 85
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLastAccumulationMonotonicHistorySize:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-ltz p3, :cond_20

    .line 86
    iget p3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mAccumulatedBatteryUsageStatsSpanSize:I

    int-to-long v4, p3

    cmp-long p3, v2, v4

    if-gez p3, :cond_20

    .line 87
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    goto :goto_24

    .line 89
    :cond_20
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLastAccumulationMonotonicHistorySize:J

    .line 90
    monitor-exit p0

    goto :goto_26

    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_1e

    throw p1

    .line 93
    :cond_26
    :goto_26
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryStatsSession()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    move-result-object p1

    .line 97
    new-instance p3, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final buildUserBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;[I)V
    .registers 8

    const/4 p0, -0x1

    .line 388
    invoke-static {p2, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_45

    .line 393
    :cond_8
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object p0

    .line 395
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_45

    .line 396
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    .line 397
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_42

    .line 401
    :cond_21
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v2

    .line 402
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_2e

    goto :goto_42

    .line 406
    :cond_2e
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 407
    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_42

    .line 408
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->excludeFromBatteryUsageStats()Landroid/os/UidBatteryConsumer$Builder;

    .line 409
    invoke-virtual {p1, v2}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUserBatteryConsumerBuilder(I)Landroid/os/UserBatteryConsumer$Builder;

    move-result-object v2

    .line 410
    invoke-virtual {v2, v1}, Landroid/os/UserBatteryConsumer$Builder;->addUidBatteryConsumer(Landroid/os/UidBatteryConsumer$Builder;)V

    :cond_42
    :goto_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_45
    :goto_45
    return-void
.end method

.method public final computeBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;JJJ)Landroid/os/BatteryUsageStats$Builder;
    .registers 25

    move-object/from16 v0, p0

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_b
    move v4, v1

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    .line 259
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMinConsumedPowerThreshold()D

    move-result-wide v7

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v3

    .line 265
    new-instance v10, Landroid/os/BatteryUsageStats$Builder;

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isScreenStateDataNeeded()Z

    move-result v5

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isPowerStateDataNeeded()Z

    move-result v6

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    const-wide/16 v1, -0x1

    cmp-long v3, p3, v1

    if-nez v3, :cond_34

    .line 270
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v3

    move-wide v12, v3

    goto :goto_36

    :cond_34
    move-wide/from16 v12, p3

    .line 272
    :goto_36
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getStartClockTime()J

    move-result-wide v3

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v5

    sub-long v5, v12, v5

    add-long/2addr v3, v5

    .line 272
    invoke-virtual {v10, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    cmp-long v1, p5, v1

    if-eqz v1, :cond_57

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getStartClockTime()J

    move-result-wide v1

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v3

    sub-long v3, p5, v3

    add-long/2addr v1, v3

    .line 275
    invoke-virtual {v10, v1, v2}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    goto :goto_5c

    :cond_57
    move-wide/from16 v1, p7

    .line 278
    invoke-virtual {v10, v1, v2}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 281
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_73

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHistory;->copy()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v1

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getPreferredHistoryDurationMs()J

    move-result-wide v2

    .line 283
    invoke-virtual {v10, v1, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setBatteryHistory(Lcom/android/internal/os/BatteryStatsHistory;J)Landroid/os/BatteryUsageStats$Builder;

    .line 287
    :cond_73
    iget-object v9, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v11

    move-wide/from16 v14, p5

    invoke-interface/range {v9 .. v15}, Lcom/android/server/power/stats/PowerAttributor;->estimatePowerConsumption(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getUserIds()[I

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->buildUserBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;[I)V

    move-object/from16 v1, p1

    .line 293
    invoke-virtual {v0, v10, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->populateBatterySessionInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    return-object v10
.end method

.method public final getAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .registers 8

    .line 191
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->loadAccumulatedBatteryUsageStats()Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;

    move-result-object v0

    .line 192
    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 193
    invoke-virtual {v1}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    sub-long/2addr v1, v3

    .line 194
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getMaxStatsAge()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-lez p2, :cond_20

    .line 195
    :cond_1d
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->updateAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    .line 197
    :cond_20
    iget-object p0, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method public final getAggregatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .registers 22

    move-object/from16 v0, p0

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_b
    move v4, v1

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    .line 311
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMinConsumedPowerThreshold()D

    move-result-wide v7

    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v3

    .line 314
    new-instance v2, Landroid/os/BatteryUsageStats$Builder;

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isScreenStateDataNeeded()Z

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isPowerStateDataNeeded()Z

    move-result v6

    invoke-direct/range {v2 .. v8}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    .line 318
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    const-string v5, "BatteryUsageStatsProv"

    if-nez v1, :cond_34

    .line 319
    const-string v0, "PowerStatsStore is unavailable"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v2}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0

    .line 323
    :cond_34
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v1

    .line 324
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_122

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 325
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getSections()Ljava/util/List;

    move-result-object v7

    const-string v8, "battery-usage-stats"

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_55

    goto :goto_3c

    .line 340
    :cond_55
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getTimeFrames()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide v11, 0x7fffffffffffffffL

    const-wide/16 v13, 0x0

    :goto_64
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_88

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    const-wide/16 v16, 0x0

    .line 341
    iget-wide v9, v15, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startTime:J

    move-object/from16 p1, v6

    move-object/from16 v18, v7

    iget-wide v6, v15, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    add-long/2addr v9, v6

    .line 342
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 343
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    move-object/from16 v6, p1

    move-object/from16 v7, v18

    goto :goto_64

    :cond_88
    move-object/from16 p1, v6

    const-wide/16 v16, 0x0

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedFromTimestamp()J

    move-result-wide v6

    cmp-long v6, v6, v16

    if-eqz v6, :cond_9c

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedFromTimestamp()J

    move-result-wide v6

    cmp-long v6, v11, v6

    if-lez v6, :cond_3c

    .line 351
    :cond_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedToTimestamp()J

    move-result-wide v6

    cmp-long v6, v6, v16

    if-eqz v6, :cond_ac

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedToTimestamp()J

    move-result-wide v6

    cmp-long v6, v13, v6

    if-gtz v6, :cond_3c

    .line 357
    :cond_ac
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getId()J

    move-result-wide v9

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v7

    .line 357
    invoke-virtual {v6, v9, v10, v7}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v6

    if-nez v6, :cond_c3

    if-eqz v6, :cond_3c

    .line 381
    :cond_be
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V

    goto/16 :goto_3c

    .line 363
    :cond_c3
    :try_start_c3
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan;->getSections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_cb
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_be

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 364
    check-cast v8, Lcom/android/server/power/stats/BatteryUsageStatsSection;

    .line 365
    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryUsageStatsSection;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object v8

    .line 366
    invoke-virtual {v8}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_107

    .line 368
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring older BatteryUsageStats snapshot, which has different custom power components: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v8}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 368
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    :catchall_104
    move-exception v0

    move-object v1, v0

    goto :goto_119

    :cond_107
    if-eqz v4, :cond_115

    .line 374
    invoke-virtual {v8}, Landroid/os/BatteryUsageStats;->isProcessStateDataIncluded()Z

    move-result v9

    if-nez v9, :cond_115

    .line 375
    const-string v8, "Ignoring older BatteryUsageStats snapshot, which  does not include process state data"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    .line 379
    :cond_115
    invoke-virtual {v2, v8}, Landroid/os/BatteryUsageStats$Builder;->add(Landroid/os/BatteryUsageStats;)Landroid/os/BatteryUsageStats$Builder;
    :try_end_118
    .catchall {:try_start_c3 .. :try_end_118} :catchall_104

    goto :goto_cb

    .line 357
    :goto_119
    :try_start_119
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_11d

    goto :goto_121

    :catchall_11d
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_121
    throw v1

    .line 383
    :cond_122
    invoke-virtual {v2}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0
.end method

.method public final getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;
    .registers 15

    .line 169
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_d

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0

    .line 172
    :cond_d
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedToTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    .line 174
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getMonotonicStartTime()J

    move-result-wide v4

    .line 175
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getMonotonicEndTime()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v8, p3

    .line 173
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->computeBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;JJJ)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0

    :cond_2c
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 178
    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getAggregatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .registers 5

    .line 162
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryStatsSession()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 163
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 162
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/List;)Ljava/util/List;
    .registers 8

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    monitor-enter p1

    .line 146
    :try_start_a
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->prepareForDumpLocked()V

    .line 147
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_30

    .line 148
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryStatsSession()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    move-result-object p1

    .line 149
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 150
    :goto_19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 151
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryUsageStatsQuery;

    invoke-virtual {p0, p1, v4, v1, v2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2f
    return-object v0

    :catchall_30
    move-exception p0

    .line 147
    :try_start_31
    monitor-exit p1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final synthetic lambda$accumulateBatteryUsageStatsAsync$0(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->accumulateBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V

    return-void
.end method

.method public final loadAccumulatedBatteryUsageStats()Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;
    .registers 7

    .line 201
    new-instance v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider-IA;)V

    const-wide/16 v1, 0x0

    .line 202
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    const-wide/16 v1, -0x1

    .line 203
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    .line 204
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    .line 205
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    const-string v1, "accumulated-battery-usage-stats"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 209
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsSpan;->getSections()Ljava/util/List;

    move-result-object v2

    .line 210
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2d
    if-ltz v3, :cond_69

    .line 211
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 212
    invoke-virtual {v4}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 213
    check-cast v4, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;

    .line 214
    invoke-virtual {v4}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->getBatteryUsageStatsBuilder()Landroid/os/BatteryUsageStats$Builder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    .line 215
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsSpan;->getMetadata()Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getStartTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    .line 217
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsSpan;->getMetadata()Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getStartMonotonicTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    .line 218
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsSpan;->getMetadata()Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getEndMonotonicTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    return-object v0

    :cond_66
    add-int/lit8 v3, v3, -0x1

    goto :goto_2d

    :cond_69
    return-object v0
.end method

.method public final populateBatterySessionInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V
    .registers 7

    .line 299
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getEstimatedBatteryCapacity()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_e

    .line 301
    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 303
    :cond_e
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getBatteryTimeRemainingMs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 304
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getChargeTimeRemainingMs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    return-void
.end method

.method public final updateAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 228
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_10

    .line 230
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v2

    :cond_10
    move-wide v7, v2

    .line 232
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 233
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v4}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v9

    .line 235
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    if-nez v4, :cond_44

    .line 236
    new-instance v11, Landroid/os/BatteryUsageStats$Builder;

    .line 237
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x1

    const-wide/16 v16, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v11 .. v17}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    iput-object v11, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getStartClockTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    .line 239
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    .line 240
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    invoke-virtual {v4, v5, v6}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 243
    :cond_44
    iput-wide v9, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    .line 245
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {v4, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 246
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    sub-long v3, v9, v7

    invoke-virtual {v2, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setStatsDuration(J)Landroid/os/BatteryUsageStats$Builder;

    .line 248
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    iget-object v5, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v6

    invoke-interface/range {v4 .. v10}, Lcom/android/server/power/stats/PowerAttributor;->estimatePowerConsumption(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    .line 251
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->populateBatterySessionInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    return-void
.end method
