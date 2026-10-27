.class public final Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;
.super Ljava/lang/Object;
.source "LocationEventLog.java"


# instance fields
.field public mAddedRequestCount:I

.field public mAddedTimeLastUpdateRealtimeMs:J

.field public mAddedTimeTotalMs:J

.field public mFastestIntervalMs:J

.field public mHasDutyCycling:Z

.field public mHasFullTracking:Z

.field public mReceivedMeasurementEventCount:I

.field public mSlowestIntervalMs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 784
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mFastestIntervalMs:J

    const-wide/16 v0, 0x0

    .line 786
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mSlowestIntervalMs:J

    return-void
.end method

.method public static intervalToString(J)Ljava/lang/String;
    .registers 4

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 839
    const-string/jumbo p0, "passive"

    return-object p0

    .line 841
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized markGnssMeasurementDelivered()V
    .registers 2

    monitor-enter p0

    .line 816
    :try_start_1
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mReceivedMeasurementEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mReceivedMeasurementEventCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 817
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized markRequestAdded(JZ)V
    .registers 6

    monitor-enter p0

    .line 797
    :try_start_1
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    if-nez v0, :cond_12

    .line 798
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    goto :goto_12

    :catchall_10
    move-exception p1

    goto :goto_2c

    :cond_12
    :goto_12
    const/4 v0, 0x1

    if-eqz p3, :cond_18

    .line 801
    iput-boolean v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mHasFullTracking:Z

    goto :goto_1a

    .line 803
    :cond_18
    iput-boolean v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mHasDutyCycling:Z

    .line 805
    :goto_1a
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mFastestIntervalMs:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mFastestIntervalMs:J

    .line 806
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mSlowestIntervalMs:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mSlowestIntervalMs:J
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_10

    .line 807
    monitor-exit p0

    return-void

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_10

    throw p1
.end method

.method public declared-synchronized markRequestRemoved()V
    .registers 3

    monitor-enter p0

    .line 810
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->updateTotals()V

    .line 811
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    if-ltz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 812
    :goto_e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 813
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 829
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "min/max interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mFastestIntervalMs:J

    .line 830
    invoke-static {v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->intervalToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mSlowestIntervalMs:J

    .line 831
    invoke-static {v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->intervalToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", total duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeTotalMs:J

    .line 832
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tracking mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->trackingModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GNSS measurement events = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mReceivedMeasurementEventCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    .line 829
    monitor-exit p0

    return-object v0

    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public final trackingModeToString()Ljava/lang/String;
    .registers 2

    .line 847
    iget-boolean v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mHasFullTracking:Z

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mHasDutyCycling:Z

    if-eqz p0, :cond_c

    .line 848
    const-string/jumbo p0, "mixed tracking mode"

    return-object p0

    :cond_c
    if-eqz v0, :cond_11

    .line 850
    const-string p0, "always full-tracking"

    return-object p0

    .line 852
    :cond_11
    const-string p0, "always duty-cycling"

    return-object p0
.end method

.method public declared-synchronized updateTotals()V
    .registers 7

    monitor-enter p0

    .line 820
    :try_start_1
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    if-lez v0, :cond_17

    .line 821
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 822
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeTotalMs:J

    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeTotalMs:J

    .line 823
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeLastUpdateRealtimeMs:J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception v0

    goto :goto_19

    .line 825
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_15

    throw v0
.end method
