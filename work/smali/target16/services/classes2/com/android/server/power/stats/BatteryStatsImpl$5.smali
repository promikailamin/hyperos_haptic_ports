.class public Lcom/android/server/power/stats/BatteryStatsImpl$5;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .registers 2

    .line 810
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$5;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 813
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$5;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 814
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$5;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v2, :cond_d

    .line 817
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_2f

    :cond_d
    const/4 v2, 0x1

    .line 819
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 821
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$5;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v1

    .line 822
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$5;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    .line 823
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$5;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmHistory(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object p0

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 825
    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_b

    throw p0
.end method
