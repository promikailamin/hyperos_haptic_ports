.class public final Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Looper;)V
    .registers 4

    .line 835
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 836
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 841
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmCallback(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_17

    .line 845
    :cond_9
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_47

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3d

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1c

    const/4 p0, 0x4

    if-eq v1, p0, :cond_18

    :goto_17
    return-void

    .line 863
    :cond_18
    invoke-interface {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batteryStatsReset()V

    return-void

    .line 854
    :cond_1c
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 855
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCharging:Z

    if-eqz p0, :cond_2a

    const-string p0, "android.os.action.CHARGING"

    goto :goto_2c

    :catchall_28
    move-exception p0

    goto :goto_3b

    .line 856
    :cond_2a
    const-string p0, "android.os.action.DISCHARGING"

    .line 857
    :goto_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_28

    .line 858
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x4000000

    .line 859
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 860
    invoke-interface {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 857
    :goto_3b
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_28

    throw p0

    .line 850
    :cond_3d
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-interface {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    return-void

    .line 847
    :cond_47
    invoke-interface {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    return-void
.end method
