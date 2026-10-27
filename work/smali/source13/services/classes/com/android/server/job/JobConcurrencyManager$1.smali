.class Lcom/android/server/job/JobConcurrencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobConcurrencyManager;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobConcurrencyManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobConcurrencyManager;

    .line 441
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 444
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_9c

    :cond_d
    goto :goto_36

    :sswitch_e
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_37

    :sswitch_18
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_37

    :sswitch_22
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_37

    :sswitch_2c
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_37

    :goto_36
    const/4 v0, -0x1

    :goto_37
    packed-switch v0, :pswitch_data_ae

    goto :goto_9a

    .line 460
    :pswitch_3b
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {v0}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {v0}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 461
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {v0}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmLock(Lcom/android/server/job/JobConcurrencyManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 462
    :try_start_56
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    const-string v2, "battery saver"

    invoke-static {v1, v2}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopLongRunningJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V

    .line 463
    monitor-exit v0

    goto :goto_9a

    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_56 .. :try_end_61} :catchall_5f

    throw v1

    .line 452
    :pswitch_62
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {v0}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {v0}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 453
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {v0}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmLock(Lcom/android/server/job/JobConcurrencyManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 454
    :try_start_7d
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {v1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopUnexemptedJobsForDoze(Lcom/android/server/job/JobConcurrencyManager;)V

    .line 455
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    const-string v2, "deep doze"

    invoke-static {v1, v2}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopLongRunningJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V

    .line 456
    monitor-exit v0

    goto :goto_9a

    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_8b

    throw v1

    .line 449
    :pswitch_8e
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {v0, v2}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$monInteractiveStateChanged(Lcom/android/server/job/JobConcurrencyManager;Z)V

    .line 450
    goto :goto_9a

    .line 446
    :pswitch_94
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {v0, v3}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$monInteractiveStateChanged(Lcom/android/server/job/JobConcurrencyManager;Z)V

    .line 447
    nop

    .line 467
    :cond_9a
    :goto_9a
    return-void

    nop

    :sswitch_data_9c
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_2c
        -0x56ac2893 -> :sswitch_22
        0x33e5d967 -> :sswitch_18
        0x6a0dd473 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_94
        :pswitch_8e
        :pswitch_62
        :pswitch_3b
    .end packed-switch
.end method
