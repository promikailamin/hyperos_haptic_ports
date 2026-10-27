.class public Lcom/android/server/job/controllers/DeviceIdleJobsController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleJobsController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_12c

    goto :goto_3d

    :sswitch_12
    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_3d

    :cond_1b
    const/4 v2, 0x3

    goto :goto_3d

    :sswitch_1d
    const-string p2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_3d

    :cond_26
    const/4 v2, 0x2

    goto :goto_3d

    :sswitch_28
    const-string p2, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_3d

    :cond_31
    move v2, v1

    goto :goto_3d

    :sswitch_33
    const-string p2, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v0

    :goto_3d
    packed-switch v2, :pswitch_data_13e

    return-void

    .line 95
    :pswitch_41
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object p2

    if-eqz p2, :cond_62

    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {p2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p2

    if-nez p2, :cond_61

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result p0

    if-eqz p0, :cond_62

    :cond_61
    move v0, v1

    .line 95
    :cond_62
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateIdleMode(Z)V

    return-void

    .line 99
    :pswitch_66
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 100
    :try_start_6b
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {p2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmLocalDeviceIdleController(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/DeviceIdleInternal;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Lcom/android/server/DeviceIdleInternal;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fputmDeviceIdleWhitelistAppIds(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)V

    .line 102
    invoke-static {}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_a1

    .line 103
    const-string p2, "JobScheduler.DeviceIdle"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got whitelist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmDeviceIdleWhitelistAppIds(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I

    move-result-object p0

    .line 104
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    :catchall_9f
    move-exception p0

    goto :goto_a3

    .line 106
    :cond_a1
    :goto_a1
    monitor-exit p1

    return-void

    :goto_a3
    monitor-exit p1
    :try_end_a4
    .catchall {:try_start_6b .. :try_end_a4} :catchall_9f

    throw p0

    .line 109
    :pswitch_a5
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 110
    :try_start_aa
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {p2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmLocalDeviceIdleController(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/DeviceIdleInternal;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Lcom/android/server/DeviceIdleInternal;->getPowerSaveTempWhitelistAppIds()[I

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fputmPowerSaveTempWhitelistAppIds(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)V

    .line 112
    invoke-static {}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_e0

    .line 113
    const-string p2, "JobScheduler.DeviceIdle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got temp whitelist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmPowerSaveTempWhitelistAppIds(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I

    move-result-object v2

    .line 114
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    :catchall_de
    move-exception p0

    goto :goto_12a

    .line 116
    :cond_e0
    :goto_e0
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 117
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 118
    :goto_eb
    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmAllowInIdleJobs(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_11b

    .line 119
    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmAllowInIdleJobs(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$mupdateTaskStateLocked(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v3

    if-eqz v3, :cond_118

    .line 120
    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmAllowInIdleJobs(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_118
    add-int/lit8 v0, v0, 0x1

    goto :goto_eb

    .line 123
    :cond_11b
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_128

    .line 124
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 126
    :cond_128
    monitor-exit p1

    return-void

    :goto_12a
    monitor-exit p1
    :try_end_12b
    .catchall {:try_start_aa .. :try_end_12b} :catchall_de

    throw p0

    :sswitch_data_12c
    .sparse-switch
        -0x2a729674 -> :sswitch_33
        -0x3e97d1f -> :sswitch_28
        0x1dbb32d0 -> :sswitch_1d
        0x33e5d967 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_66
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method
