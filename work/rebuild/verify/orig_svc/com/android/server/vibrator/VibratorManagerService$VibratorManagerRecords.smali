.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# instance fields
.field public final mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

.field public final mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;


# direct methods
.method public constructor <init>(III)V
    .registers 5

    .line 2488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2489
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-direct {v0, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 2492
    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;-><init>(II)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    monitor-enter p0

    .line 2506
    :try_start_1
    const-string v0, "Recent vibrations:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2508
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2509
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2511
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2512
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2513
    const-string v0, "Aggregated vibration history:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2514
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2515
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2516
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 2517
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public declared-synchronized dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3

    monitor-enter p0

    .line 2520
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2521
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized record(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V
    .registers 4

    monitor-enter p0

    .line 2497
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    new-instance v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    invoke-direct {v1, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;-><init>(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    .line 2498
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 2501
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->getLatest()Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    move-result-object p1

    check-cast p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_1c

    :catchall_1a
    move-exception p1

    goto :goto_1e

    .line 2503
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1a

    throw p1
.end method
