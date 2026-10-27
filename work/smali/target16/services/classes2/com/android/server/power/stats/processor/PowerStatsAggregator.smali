.class public Lcom/android/server/power/stats/processor/PowerStatsAggregator;
.super Ljava/lang/Object;
.source "PowerStatsAggregator.java"


# instance fields
.field public final mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

.field public mCurrentBatteryState:I

.field public mCurrentScreenState:I

.field public final mEnabledComponents:Landroid/util/SparseBooleanArray;

.field public mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-direct {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I

    .line 52
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    return-void
.end method


# virtual methods
.method public aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V
    .registers 8

    .line 87
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_a

    .line 88
    :try_start_1
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->aggregatePowerStatsLocked(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V

    .line 89
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    move-object p2, v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_6

    :try_start_9
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_a} :catch_a

    :catch_a
    move-exception v0

    move-object p0, v0

    .line 91
    const-string p2, "PowerStatsAggregator"

    const-string p3, "Cannot perform power stats aggregation because battery stats history may be corrupted"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHistory;->reset()V

    return-void
.end method

.method public final aggregatePowerStatsLocked(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 99
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    if-nez v2, :cond_13

    .line 100
    new-instance v2, Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v3, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    iget-object v4, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V

    iput-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    :cond_13
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_1c

    move-wide/from16 v7, p2

    goto :goto_1e

    :cond_1c
    const-wide/16 v7, -0x1

    .line 109
    :goto_1e
    invoke-virtual/range {p1 .. p5}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v9

    const/4 v10, -0x1

    move v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 110
    :goto_26
    :try_start_26
    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_165

    .line 111
    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v15

    const-wide/16 v16, -0x1

    const/4 v5, 0x7

    if-nez v13, :cond_62

    .line 114
    iget-object v6, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    if-lez v4, :cond_3e

    move/from16 v18, v12

    move-wide/from16 v11, p2

    goto :goto_42

    :cond_3e
    move/from16 v18, v12

    iget-wide v11, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    :goto_42
    invoke-virtual {v6, v11, v12}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->start(J)V

    .line 115
    iget-object v6, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v11, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v19, v2

    iget-wide v2, v15, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v6, v11, v12, v2, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v2

    if-nez v2, :cond_55

    goto/16 :goto_169

    :cond_55
    cmp-long v2, v7, v16

    if-nez v2, :cond_60

    .line 119
    iget-wide v7, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_60

    :catchall_5c
    move-exception v0

    move-object v1, v0

    goto/16 :goto_191

    :cond_60
    :goto_60
    const/4 v13, 0x1

    goto :goto_7b

    :cond_62
    move-wide/from16 v19, v2

    move/from16 v18, v12

    .line 122
    iget-byte v2, v15, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6d

    if-ne v2, v5, :cond_7b

    .line 124
    :cond_6d
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v11, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v5, v15, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v11, v12, v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v2

    if-nez v2, :cond_7b

    goto/16 :goto_169

    .line 129
    :cond_7b
    :goto_7b
    iget-wide v5, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 131
    iget-byte v2, v15, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v2, v14, :cond_8c

    if-eqz v2, :cond_8c

    .line 132
    iget-object v11, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget v12, v15, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    invoke-virtual {v11, v2, v12, v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->noteBatteryLevel(IIJ)V

    .line 134
    iget-byte v14, v15, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 138
    :cond_8c
    iget v2, v15, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v11, 0x80000

    and-int/2addr v2, v11

    if-eqz v2, :cond_95

    const/4 v2, 0x1

    goto :goto_96

    :cond_95
    const/4 v2, 0x0

    .line 141
    :goto_96
    iget v11, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I

    if-eq v2, v11, :cond_a8

    .line 142
    iget-object v11, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move v12, v4

    iget-wide v3, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v19, v7

    const/4 v7, 0x0

    invoke-virtual {v11, v7, v2, v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDeviceState(IIJ)V

    .line 144
    iput v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I

    goto :goto_ac

    :cond_a8
    move v12, v4

    move-wide/from16 v19, v7

    const/4 v7, 0x0

    .line 148
    :goto_ac
    iget v2, v15, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_b5

    move v2, v7

    goto :goto_b6

    :cond_b5
    const/4 v2, 0x1

    .line 151
    :goto_b6
    iget v3, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I

    if-eq v2, v3, :cond_c4

    .line 152
    iget-object v3, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v7, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2, v7, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDeviceState(IIJ)V

    .line 154
    iput v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I

    .line 157
    :cond_c4
    iget v2, v15, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x60c00000

    and-int/2addr v2, v3

    const v4, 0x48200180    # 163846.0f

    if-ne v2, v10, :cond_e0

    iget v2, v15, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/2addr v2, v4

    move/from16 v7, v18

    if-ne v2, v7, :cond_e2

    iget v2, v15, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v8, -0xc001

    and-int/2addr v2, v8

    const/16 v8, 0x15

    if-ne v2, v8, :cond_f4

    goto :goto_e2

    :cond_e0
    move/from16 v7, v18

    :cond_e2
    :goto_e2
    iget-byte v2, v15, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x7

    if-eq v2, v8, :cond_f4

    .line 166
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v2, v15}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->noteStateChange(Landroid/os/BatteryStats$HistoryItem;)V

    .line 167
    iget v2, v15, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v2, v3

    .line 169
    iget v3, v15, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/2addr v3, v4

    move v10, v2

    goto :goto_f5

    :cond_f4
    move v3, v7

    .line 173
    :goto_f5
    iget-object v2, v15, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v2, :cond_111

    .line 174
    iget-object v4, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget v7, v2, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    iget v2, v2, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    move/from16 v24, v2

    move/from16 p1, v3

    iget-wide v2, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/16 v23, 0x2

    move-wide/from16 v25, v2

    move-object/from16 v21, v4

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setUidState(IIIJ)V

    goto :goto_113

    :cond_111
    move/from16 p1, v3

    .line 179
    :goto_113
    iget-object v2, v15, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v2, :cond_15d

    .line 180
    iget-object v3, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->isCompatible(Lcom/android/internal/os/PowerStats;)Z

    move-result v2

    if-nez v2, :cond_14d

    cmp-long v2, v5, v19

    if-lez v2, :cond_134

    .line 182
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    sub-long v3, v5, v19

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDuration(J)V

    .line 183
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v2, v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->finish(J)V

    .line 184
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 186
    :cond_134
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->reset()V

    .line 187
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v3, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v7, v15, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v2

    if-nez v2, :cond_149

    move-wide v2, v5

    move-wide/from16 v7, v19

    goto :goto_16b

    .line 190
    :cond_149
    iget-wide v7, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide v5, v7

    goto :goto_14f

    :cond_14d
    move-wide/from16 v7, v19

    .line 192
    :goto_14f
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v3, v15, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    move-wide/from16 v18, v5

    iget-wide v4, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    :try_end_15a
    .catchall {:try_start_26 .. :try_end_15a} :catchall_5c

    move-wide/from16 v2, v18

    goto :goto_160

    :cond_15d
    move-wide v2, v5

    move-wide/from16 v7, v19

    :goto_160
    move v4, v12

    move/from16 v12, p1

    goto/16 :goto_26

    :cond_165
    move-wide/from16 v19, v2

    const-wide/16 v16, -0x1

    :goto_169
    move-wide/from16 v2, v19

    .line 195
    :goto_16b
    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    if-eqz v13, :cond_18b

    cmp-long v4, p4, v16

    if-eqz v4, :cond_176

    move-wide/from16 v2, p4

    :cond_176
    cmp-long v4, v2, v7

    if-lez v4, :cond_18b

    .line 201
    iget-object v4, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    sub-long v5, v2, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDuration(J)V

    .line 202
    iget-object v4, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->finish(J)V

    .line 203
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 207
    :cond_18b
    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->reset()V

    return-void

    :goto_191
    if-eqz v9, :cond_19b

    .line 109
    :try_start_193
    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_196
    .catchall {:try_start_193 .. :try_end_196} :catchall_197

    goto :goto_19b

    :catchall_197
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19b
    :goto_19b
    throw v1
.end method

.method public getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    return-object p0
.end method

.method public reset()V
    .registers 2

    .line 214
    monitor-enter p0

    const/4 v0, 0x0

    .line 215
    :try_start_2
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 216
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public setPowerComponentEnabled(IZ)V
    .registers 4

    .line 64
    monitor-enter p0

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_12

    .line 68
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 69
    monitor-exit p0

    return-void

    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_9

    throw p1
.end method
