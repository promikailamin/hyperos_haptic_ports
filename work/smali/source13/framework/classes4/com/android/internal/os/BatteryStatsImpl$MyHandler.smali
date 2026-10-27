.class final Lcom/android/internal/os/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 439
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 440
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 441
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 445
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmCallback(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    move-result-object v0

    .line 446
    .local v0, "cb":Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_7a

    goto/16 :goto_78

    .line 483
    :sswitch_d
    invoke-static {}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance()Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->noteStopGpsLocked(I)V

    .line 484
    goto :goto_78

    .line 480
    :sswitch_17
    invoke-static {}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance()Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->noteStartGpsLocked(I)V

    .line 481
    goto :goto_78

    .line 477
    :sswitch_21
    invoke-static {}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance()Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsManagerStub;->noteResetAudioLocked()V

    .line 478
    goto :goto_78

    .line 474
    :sswitch_29
    invoke-static {}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance()Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->noteAudioOffLocked(I)V

    .line 475
    goto :goto_78

    .line 471
    :sswitch_33
    invoke-static {}, Lcom/android/internal/os/BatteryStatsManagerStub;->getInstance()Lcom/android/internal/os/BatteryStatsManagerStub;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsManagerStub;->noteAudioOnLocked(I)V

    .line 472
    goto :goto_78

    .line 487
    :sswitch_3d
    if-eqz v0, :cond_78

    .line 488
    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryStatsReset()V

    goto :goto_78

    .line 458
    :sswitch_43
    if-eqz v0, :cond_78

    .line 460
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 461
    :try_start_48
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz v2, :cond_51

    const-string v2, "android.os.action.CHARGING"

    goto :goto_53

    .line 462
    :cond_51
    const-string v2, "android.os.action.DISCHARGING"

    :goto_53
    nop

    .line 463
    .local v2, "action":Ljava/lang/String;
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_63

    .line 464
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 466
    invoke-interface {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    .line 467
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "action":Ljava/lang/String;
    goto :goto_78

    .line 463
    :catchall_63
    move-exception v2

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v2

    .line 453
    :sswitch_66
    if-eqz v0, :cond_78

    .line 454
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6e

    const/4 v1, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v1, 0x0

    :goto_6f
    invoke-interface {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    goto :goto_78

    .line 448
    :sswitch_73
    if-eqz v0, :cond_78

    .line 449
    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    .line 491
    :cond_78
    :goto_78
    return-void

    nop

    :sswitch_data_7a
    .sparse-switch
        0x1 -> :sswitch_73
        0x2 -> :sswitch_66
        0x3 -> :sswitch_43
        0x4 -> :sswitch_3d
        0x3e8 -> :sswitch_33
        0x3e9 -> :sswitch_29
        0x3ea -> :sswitch_21
        0x3eb -> :sswitch_17
        0x3ec -> :sswitch_d
    .end sparse-switch
.end method
