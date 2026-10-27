.class public Lcom/android/server/power/stats/PowerStatsScheduler;
.super Ljava/lang/Object;
.source "PowerStatsScheduler.java"


# static fields
.field public static final HOUR_IN_MILLIS:J

.field public static final MINUTE_IN_MILLIS:J


# instance fields
.field public final mAggregatedPowerStatsSpanDuration:J

.field public final mAlarmScheduler:Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;

.field public final mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mEarliestAvailableBatteryHistoryTimeMs:Ljava/util/function/Supplier;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSavedSpanEndMonotonicTime:J

.field public final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field public final mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

.field public final mPowerStatsAggregationPeriod:J

.field public final mPowerStatsCollector:Ljava/lang/Runnable;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method public static synthetic $r8$lambda$A6OydxDj4LKVteNt5ZYU4lToLmU(Lcom/android/server/power/stats/PowerStatsScheduler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->scheduleNextPowerStatsAggregation()V

    return-void
.end method

.method public static synthetic $r8$lambda$GEaV9AQjfxC9uJ1Tfs7f2eF4_H0(Lcom/android/server/power/stats/PowerStatsScheduler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->aggregateAndStorePowerStats()V

    return-void
.end method

.method public static synthetic $r8$lambda$bBYp7BRsiXHz0vRORJ0fnRsuTms(Lcom/android/server/power/stats/PowerStatsScheduler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->lambda$scheduleNextPowerStatsAggregation$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zdu2Z7OeqOXZT7qd3JiK1VMbnoE(Lcom/android/server/power/stats/PowerStatsScheduler;Landroid/util/IndentingPrintWriter;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsScheduler;->lambda$aggregateAndDumpPowerStats$1(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/power/stats/PowerStatsScheduler;->MINUTE_IN_MILLIS:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/PowerStatsScheduler;->HOUR_IN_MILLIS:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/internal/os/BatteryStatsHistory;Lcom/android/server/power/stats/PowerAttributor;JJLcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .registers 14

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 76
    iput-object p3, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    .line 77
    iput-wide p4, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    .line 78
    iput-wide p6, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsAggregationPeriod:J

    .line 79
    iput-object p8, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 80
    iput-object p9, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAlarmScheduler:Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;

    .line 81
    iput-object p10, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mClock:Lcom/android/internal/os/Clock;

    .line 82
    iput-object p11, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 83
    iput-object p13, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsCollector:Ljava/lang/Runnable;

    .line 85
    iput-object p12, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mEarliestAvailableBatteryHistoryTimeMs:Ljava/util/function/Supplier;

    return-void
.end method

.method public static alignToWallClock(JJJJ)J
    .registers 23

    sub-long v0, p0, p4

    add-long v0, p6, v0

    .line 173
    sget-wide v2, Lcom/android/server/power/stats/PowerStatsScheduler;->MINUTE_IN_MILLIS:J

    cmp-long v4, p2, v2

    const/16 v5, 0xe

    const/16 v6, 0xd

    const-wide/16 v7, 0x0

    const/16 v9, 0xc

    const-wide/16 v10, 0x1

    const/4 v12, 0x0

    if-ltz v4, :cond_48

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    rem-long v13, v13, p2

    cmp-long v4, v13, v7

    if-nez v4, :cond_48

    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    add-long v7, v0, v2

    sub-long/2addr v7, v10

    .line 178
    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 179
    invoke-virtual {v4, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 180
    invoke-virtual {v4, v5, v12}, Ljava/util/Calendar;->set(II)V

    .line 183
    div-long v2, p2, v2

    long-to-int v2, v2

    .line 185
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v2

    mul-int/2addr v3, v2

    .line 184
    invoke-virtual {v4, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 188
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    :goto_44
    sub-long/2addr v2, v0

    add-long v0, p0, v2

    return-wide v0

    .line 190
    :cond_48
    sget-wide v2, Lcom/android/server/power/stats/PowerStatsScheduler;->HOUR_IN_MILLIS:J

    cmp-long v4, p2, v2

    if-ltz v4, :cond_83

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    rem-long v13, v13, p2

    cmp-long v4, v13, v7

    if-nez v4, :cond_83

    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    add-long v7, v0, v2

    sub-long/2addr v7, v10

    .line 195
    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 196
    invoke-virtual {v4, v9, v12}, Ljava/util/Calendar;->set(II)V

    .line 197
    invoke-virtual {v4, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 198
    invoke-virtual {v4, v5, v12}, Ljava/util/Calendar;->set(II)V

    .line 201
    div-long v2, p2, v2

    long-to-int v2, v2

    const/16 v3, 0xb

    .line 203
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v2

    mul-int/2addr v5, v2

    .line 202
    invoke-virtual {v4, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 206
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_44

    :cond_83
    return-wide p0
.end method


# virtual methods
.method public aggregateAndDumpPowerStats(Ljava/io/PrintWriter;)V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_25

    .line 141
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->schedulePowerStatsAggregation()V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->awaitCompletion()V

    .line 146
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 147
    iget-object p1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->awaitCompletion()V

    return-void

    .line 138
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should not be executed on the bg handler thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final aggregateAndStorePowerStats()V
    .registers 19

    move-object/from16 v0, p0

    .line 116
    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v8

    .line 117
    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v1}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v6

    .line 118
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsScheduler;->getLastSavedSpanEndMonotonicTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_24

    .line 120
    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mEarliestAvailableBatteryHistoryTimeMs:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_24
    move-wide v10, v1

    .line 122
    iget-wide v4, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    add-long v2, v10, v4

    invoke-static/range {v2 .. v9}, Lcom/android/server/power/stats/PowerStatsScheduler;->alignToWallClock(JJJJ)J

    move-result-wide v1

    move-wide v14, v10

    :goto_2e
    move-wide/from16 v16, v1

    cmp-long v1, v16, v6

    if-gtz v1, :cond_45

    .line 125
    iget-object v12, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    iget-object v13, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-interface/range {v12 .. v17}, Lcom/android/server/power/stats/PowerAttributor;->storeEstimatedPowerConsumption(Lcom/android/internal/os/BatteryStatsHistory;JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    .line 128
    iget-wide v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    add-long v1, v16, v1

    move-wide/from16 v14, v16

    goto :goto_2e

    :cond_45
    return-void
.end method

.method public final awaitCompletion()V
    .registers 3

    .line 222
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 223
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;-><init>(Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public final getLastSavedSpanEndMonotonicTime()J
    .registers 5

    .line 214
    iget-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 215
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    .line 216
    invoke-interface {v0}, Lcom/android/server/power/stats/PowerAttributor;->getLastSavedEstimatesPowerConsumptionTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    .line 218
    :cond_10
    iget-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    return-wide v0
.end method

.method public final synthetic lambda$aggregateAndDumpPowerStats$1(Landroid/util/IndentingPrintWriter;)V
    .registers 10

    .line 148
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/PowerStatsStore;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->getLastSavedSpanEndMonotonicTime()J

    move-result-wide v4

    .line 151
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const-wide/16 v6, -0x1

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/server/power/stats/PowerAttributor;->dumpEstimatedPowerConsumption(Landroid/util/IndentingPrintWriter;Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    return-void
.end method

.method public final synthetic lambda$scheduleNextPowerStatsAggregation$0()V
    .registers 3

    .line 100
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->schedulePowerStatsAggregation()V

    .line 101
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleNextPowerStatsAggregation()V
    .registers 7

    .line 97
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAlarmScheduler:Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsAggregationPeriod:J

    add-long/2addr v1, v3

    new-instance v4, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;)V

    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    const-string v3, "PowerStats"

    invoke-interface/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;->scheduleAlarm(JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public schedulePowerStatsAggregation()V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsCollector:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 112
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .registers 1

    .line 92
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->schedulePowerStatsAggregation()V

    .line 93
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->scheduleNextPowerStatsAggregation()V

    return-void
.end method
