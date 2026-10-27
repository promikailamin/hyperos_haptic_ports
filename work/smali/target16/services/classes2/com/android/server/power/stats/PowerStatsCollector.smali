.class public abstract Lcom/android/server/power/stats/PowerStatsCollector;
.super Ljava/lang/Object;
.source "PowerStatsCollector.java"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mCollectStatsToken:Ljava/lang/Object;

.field public volatile mConsumerList:Ljava/util/List;

.field public mEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mLastScheduledUpdateMs:J

.field public final mThrottlePeriodMs:J

.field public final mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;


# direct methods
.method public static synthetic $r8$lambda$4_JgDepJYWiaNG8XN_XCEDx6VxM(Ljava/util/ArrayList;Lcom/android/internal/os/PowerStats;JJ)V
    .registers 6

    .line 247
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$G7G_yFY7rV7oxQbQHnZ5FHX8eBk(Lcom/android/server/power/stats/PowerStatsCollector;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/PowerStatsCollector;->lambda$schedule$0(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$S8t6eDCBuELjdSNvyveTMprEzE0(Lcom/android/server/power/stats/PowerStatsCollector;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/PowerStatsCollector;->lambda$forceSchedule$1(JJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/stats/PowerStatsCollector;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V
    .registers 8

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 68
    iput-wide v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mLastScheduledUpdateMs:J

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectStatsToken:Ljava/lang/Object;

    .line 82
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    .line 87
    iput-wide p2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mThrottlePeriodMs:J

    .line 88
    iput-object p4, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 89
    new-instance p1, Lcom/android/server/power/stats/PowerStatsCollector$1;

    invoke-direct {p1, p0}, Lcom/android/server/power/stats/PowerStatsCollector$1;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;)V

    invoke-virtual {p4, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->addListener(Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;)V

    .line 103
    iput-object p5, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    return-void
.end method

.method public static uJtoUc(JI)J
    .registers 5

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 276
    div-int/lit8 v0, p2, 0x2

    int-to-long v0, v0

    add-long/2addr p0, v0

    int-to-long v0, p2

    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public addConsumer(Lcom/android/server/power/stats/PowerStatsCollector$PowerStatsConsumer;)V
    .registers 4

    .line 111
    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 113
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    goto :goto_1f

    .line 116
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 119
    monitor-exit p0

    return-void

    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_b

    throw p1
.end method

.method public final awaitCompletion()V
    .registers 3

    .line 264
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 265
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;-><init>(Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public collectAndDeliverStats(JJ)V
    .registers 11

    .line 196
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/PowerStatsCollector;->collectStats(JJ)Lcom/android/internal/os/PowerStats;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;->deliverStats(Lcom/android/internal/os/PowerStats;JJ)V

    return-void
.end method

.method public collectAndDump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 234
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_60

    .line 239
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2c

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 242
    const-string p0, ": disabled"

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 246
    :cond_2c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    new-instance v1, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/PowerStatsCollector;->addConsumer(Lcom/android/server/power/stats/PowerStatsCollector$PowerStatsConsumer;)V

    .line 251
    :try_start_39
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->forceSchedule()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 252
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->awaitCompletion()V
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_43

    goto :goto_45

    :catchall_43
    move-exception p1

    goto :goto_5c

    .line 255
    :cond_45
    :goto_45
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/PowerStatsCollector;->removeConsumer(Lcom/android/server/power/stats/PowerStatsCollector$PowerStatsConsumer;)V

    .line 258
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_4d
    if-ge v1, p0, :cond_5b

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/os/PowerStats;

    .line 259
    invoke-virtual {v2, v0}, Lcom/android/internal/os/PowerStats;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_4d

    :cond_5b
    return-void

    .line 255
    :goto_5c
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/PowerStatsCollector;->removeConsumer(Lcom/android/server/power/stats/PowerStatsCollector$PowerStatsConsumer;)V

    .line 256
    throw p1

    .line 235
    :cond_60
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Calling this method from the handler thread would cause a deadlock"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector;->collectStats(JJ)Lcom/android/internal/os/PowerStats;

    move-result-object p0

    return-object p0
.end method

.method public collectStats(JJ)Lcom/android/internal/os/PowerStats;
    .registers 5

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public deliverStats(Lcom/android/internal/os/PowerStats;JJ)V
    .registers 14

    if-nez p1, :cond_3

    goto :goto_1d

    .line 224
    :cond_3
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 225
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_1d

    .line 226
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/power/stats/PowerStatsCollector$PowerStatsConsumer;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/power/stats/PowerStatsCollector$PowerStatsConsumer;->notePowerStats(Lcom/android/internal/os/PowerStats;JJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1d
    :goto_1d
    return-void
.end method

.method public forceSchedule()Z
    .registers 9

    .line 176
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 180
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectStatsToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 182
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 183
    :try_start_10
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 184
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 185
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;JJ)V

    iget-object p0, v3, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectStatsToken:Ljava/lang/Object;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 187
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_2e
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2e

    throw p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 146
    iget-boolean p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    return p0
.end method

.method public final synthetic lambda$forceSchedule$1(JJ)V
    .registers 5

    .line 185
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDeliverStats(JJ)V

    return-void
.end method

.method public final synthetic lambda$schedule$0(JJ)V
    .registers 5

    .line 166
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDeliverStats(JJ)V

    return-void
.end method

.method public onUidRemoved(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public removeConsumer(Lcom/android/server/power/stats/PowerStatsCollector$PowerStatsConsumer;)V
    .registers 4

    .line 127
    monitor-enter p0

    .line 128
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 131
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public schedule()Z
    .registers 12

    .line 154
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 158
    :cond_6
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v2

    .line 159
    :try_start_9
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 160
    iget-wide v3, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mLastScheduledUpdateMs:J

    sub-long v5, v7, v3

    iget-wide v9, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mThrottlePeriodMs:J

    cmp-long v0, v5, v9

    const-wide/16 v9, 0x0

    if-gez v0, :cond_24

    cmp-long v0, v3, v9

    if-ltz v0, :cond_24

    .line 162
    monitor-exit v2

    return v1

    :catchall_21
    move-exception v0

    move-object p0, v0

    goto :goto_3c

    .line 164
    :cond_24
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 165
    iput-wide v7, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mLastScheduledUpdateMs:J

    .line 166
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;JJ)V

    iget-object p0, v4, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectStatsToken:Ljava/lang/Object;

    invoke-virtual {v0, v3, p0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 168
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :goto_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_21

    throw p0
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    return-void
.end method
