.class public Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0

    .line 403
    :try_start_7
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    .line 404
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
