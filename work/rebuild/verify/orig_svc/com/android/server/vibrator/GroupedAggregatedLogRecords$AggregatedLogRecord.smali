.class public final Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;
.super Ljava/lang/Object;
.source "GroupedAggregatedLogRecords.java"


# instance fields
.field public mCount:I

.field public final mFirst:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

.field public mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)V
    .registers 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mFirst:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    iput-object p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    const/4 p1, 0x1

    .line 116
    iput p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I

    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    monitor-enter p0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mFirst:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 135
    iget v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2d

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 136
    monitor-exit p0

    return-void

    :cond_d
    const/4 v1, 0x2

    if-le v0, v1, :cond_2f

    .line 139
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> Skipping "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " aggregated entries, latest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    :catchall_2d
    move-exception p1

    goto :goto_36

    .line 141
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_2d

    .line 142
    monitor-exit p0

    return-void

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_2d

    throw p1
.end method

.method public declared-synchronized dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6

    monitor-enter p0

    .line 145
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mFirst:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 146
    iget v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    .line 147
    iget-object v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->dump(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p1

    goto :goto_15

    .line 149
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_11

    throw p1
.end method

.method public getLatest()Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    return-object p0
.end method

.method public declared-synchronized mayAggregate(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;J)Z
    .registers 8

    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->getCreateUptimeMs()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->getCreateUptimeMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 125
    iget-object v2, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v2, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->mayAggregate(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_21

    if-eqz p1, :cond_1e

    cmp-long p1, v0, p2

    if-gez p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    monitor-exit p0

    return p1

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public declared-synchronized record(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)V
    .registers 2

    monitor-enter p0

    .line 129
    :try_start_1
    iput-object p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    .line 130
    iget p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 131
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method
