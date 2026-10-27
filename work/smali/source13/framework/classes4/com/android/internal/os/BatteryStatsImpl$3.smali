.class Lcom/android/internal/os/BatteryStatsImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->registerUsbStateReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 6620
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 6623
    const-string v0, "connected"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 6624
    .local v0, "state":Z
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 6625
    :try_start_a
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 6626
    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 6625
    move v3, v0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mnoteUsbConnectionStateLocked(Lcom/android/internal/os/BatteryStatsImpl;ZJJ)V

    .line 6627
    monitor-exit v1

    .line 6628
    return-void

    .line 6627
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw v2
.end method
