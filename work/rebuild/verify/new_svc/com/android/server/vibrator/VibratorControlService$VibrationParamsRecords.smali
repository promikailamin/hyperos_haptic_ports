.class public final Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;
.super Lcom/android/server/vibrator/GroupedAggregatedLogRecords;
.source "VibratorControlService.java"


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 518
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;-><init>(II)V

    return-void
.end method


# virtual methods
.method public declared-synchronized dumpGroupHeader(Landroid/util/IndentingPrintWriter;I)V
    .registers 3

    monitor-enter p0

    if-nez p2, :cond_b

    .line 524
    :try_start_3
    const-string p2, "SCALE:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10

    :catchall_9
    move-exception p1

    goto :goto_12

    .line 526
    :cond_b
    const-string p2, "UNKNOWN:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_9

    .line 528
    :goto_10
    monitor-exit p0

    return-void

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_9

    throw p1
.end method

.method public declared-synchronized findGroupKeyProtoFieldId(I)J
    .registers 2

    monitor-enter p0

    .line 532
    monitor-exit p0

    const-wide p0, 0x20b0000001cL

    return-wide p0
.end method
