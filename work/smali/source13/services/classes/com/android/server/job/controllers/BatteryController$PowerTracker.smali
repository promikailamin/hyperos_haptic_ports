.class final Lcom/android/server/job/controllers/BatteryController$PowerTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerTracker"
.end annotation


# instance fields
.field private mPowerConnected:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/BatteryController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/BatteryController;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 220
    return-void
.end method


# virtual methods
.method isPowerConnected()Z
    .registers 2

    .line 236
    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->mPowerConnected:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 241
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v0, v0, Lcom/android/server/job/controllers/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 245
    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 246
    const-string v2, "JobScheduler.Battery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power connected @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_35
    iget-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->mPowerConnected:Z

    if-eqz v2, :cond_3b

    .line 249
    monitor-exit v0

    return-void

    .line 251
    :cond_3b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->mPowerConnected:Z

    goto :goto_74

    .line 252
    :cond_3f
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 253
    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 254
    const-string v2, "JobScheduler.Battery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power disconnected @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_6b
    iget-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->mPowerConnected:Z

    if-nez v2, :cond_71

    .line 257
    monitor-exit v0

    return-void

    .line 259
    :cond_71
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->mPowerConnected:Z

    .line 262
    :cond_74
    :goto_74
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v2}, Lcom/android/server/job/controllers/BatteryController;->-$$Nest$mmaybeReportNewChargingStateLocked(Lcom/android/server/job/controllers/BatteryController;)V

    .line 263
    .end local v1    # "action":Ljava/lang/String;
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method startTracking()V
    .registers 4

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v1, v1, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    const-class v1, Landroid/os/BatteryManagerInternal;

    .line 231
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    .line 232
    .local v1, "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->mPowerConnected:Z

    .line 233
    return-void
.end method
