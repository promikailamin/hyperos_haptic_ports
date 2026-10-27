.class public Lcom/android/server/power/stats/BatteryStatsImpl$2;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .registers 2

    .line 379
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrightnessLevelTimeMs(II)J
    .registers 8

    .line 391
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 392
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 393
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 392
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide p0

    div-long/2addr p0, v3

    monitor-exit v0

    return-wide p0

    :catchall_15
    move-exception p0

    .line 394
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getScreenDozeTimeMs(I)J
    .registers 7

    .line 399
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 400
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 401
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 400
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayScreenDozeTime(IJ)J

    move-result-wide p0

    div-long/2addr p0, v3

    monitor-exit v0

    return-wide p0

    :catchall_15
    move-exception p0

    .line 402
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getScreenOnTimeMs(I)J
    .registers 7

    .line 383
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 384
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 385
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 384
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayScreenOnTime(IJ)J

    move-result-wide p0

    div-long/2addr p0, v3

    monitor-exit v0

    return-wide p0

    :catchall_15
    move-exception p0

    .line 386
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public retrieveTopActivityTimes(Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;)V
    .registers 14

    .line 407
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 408
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 409
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1a
    if-ltz v5, :cond_4d

    .line 410
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    const/4 v7, 0x0

    .line 411
    invoke-virtual {v6, v7, v1, v2, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStateTime(IJI)J

    move-result-wide v8

    div-long/2addr v8, v3

    .line 413
    invoke-virtual {v6}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getForegroundActivityTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object v10

    if-nez v10, :cond_3c

    .line 415
    iget v6, v6, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    invoke-interface {p1, v6, v8, v9}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;->onUidTopActivityTime(IJ)V

    goto :goto_4a

    :catchall_3a
    move-exception p0

    goto :goto_4f

    .line 417
    :cond_3c
    invoke-virtual {v10, v1, v2, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    div-long/2addr v10, v3

    .line 419
    iget v6, v6, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-interface {p1, v6, v7, v8}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;->onUidTopActivityTime(IJ)V

    :goto_4a
    add-int/lit8 v5, v5, -0x1

    goto :goto_1a

    .line 423
    :cond_4d
    monitor-exit v0

    return-void

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_3a

    throw p0
.end method
