.class Lcom/android/server/bluetooth/BluetoothManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bluetooth/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 556
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 559
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "BluetoothManagerService"

    if-eqz v1, :cond_3e

    .line 561
    const-string v1, "android.bluetooth.adapter.extra.LOCAL_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "newName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bluetooth Adapter name changed to ***** by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v5

    .line 566
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 565
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    if-eqz v1, :cond_3c

    .line 569
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mstoreNameAndAddress(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .end local v1    # "newName":Ljava/lang/String;
    :cond_3c
    goto/16 :goto_347

    :cond_3e
    const-string v1, "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 572
    const-string v1, "android.bluetooth.adapter.extra.BLUETOOTH_ADDRESS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "newAddress":Ljava/lang/String;
    if-eqz v1, :cond_74

    .line 577
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bluetooth Adapter address changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothManagerServiceInjector(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;

    move-result-object v5

    .line 578
    invoke-virtual {v5, v1}, Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;->getMaskDeviceAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 577
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v2, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mstoreNameAndAddress(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 584
    :cond_74
    const-string v2, "No Bluetooth Adapter address parameter found"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .end local v1    # "newAddress":Ljava/lang/String;
    :goto_79
    goto/16 :goto_347

    :cond_7b
    const-string v1, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_f0

    .line 588
    const-string/jumbo v1, "setting_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "name":Ljava/lang/String;
    const-string v5, "bluetooth_on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 591
    nop

    .line 592
    const-string/jumbo v5, "previous_value"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, "prevValue":Ljava/lang/String;
    const-string/jumbo v6, "new_value"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, "newValue":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_SETTING_RESTORED with BLUETOOTH_ON, prevValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    if-eqz v6, :cond_ee

    if-eqz v5, :cond_ee

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ee

    .line 602
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v7, 0x1f4

    .line 603
    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_df

    move v2, v4

    goto :goto_e0

    .line 604
    :cond_df
    nop

    :goto_e0
    nop

    .line 602
    invoke-virtual {v3, v7, v2, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 605
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 608
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v5    # "prevValue":Ljava/lang/String;
    .end local v6    # "newValue":Ljava/lang/String;
    :cond_ee
    goto/16 :goto_347

    :cond_f0
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_319

    .line 609
    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_319

    .line 610
    const-string v1, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    goto/16 :goto_319

    .line 619
    :cond_10a
    const-string v1, "android.xiaomi.bluetooth.ACTION_CHECK_BLUETOOTH_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v5, 0xc

    const/16 v6, 0xa

    if-eqz v1, :cond_144

    .line 620
    const-string v1, "android.xiaomi.bluetooth.ACTION_CHECK_BLUETOOTH_STATEreceived"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misSupportBluetoothRestrict(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_347

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mgetBluetoothRestrictState(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_347

    .line 622
    const-string/jumbo v1, "switch restrict state to BT ON state"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3, v6, v5, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msendRestrictStateChanged(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;IIZ)V

    goto/16 :goto_347

    .line 626
    :cond_144
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "enable_autoswitch_bluetooth_state"

    if-nez v1, :cond_2c7

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_158

    goto/16 :goto_2c7

    .line 635
    :cond_158
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_200

    .line 636
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mgetBluetoothRestrictState(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)Z

    move-result v1

    .line 637
    .local v1, "restrictState":Z
    const-string v5, "android.xiaomi.bluetooth.BLUETOOTH_RESTRICT_STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 638
    .local v5, "isRestrictBroadcast":Z
    const/high16 v8, -0x80000000

    const-string v9, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 639
    .local v8, "state":I
    iget-object v9, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v9

    .line 640
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v2, :cond_189

    move v4, v2

    .line 641
    .local v4, "enableAutoSwitchBtState":Z
    :cond_189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restrictState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "isRestrictBroadcast = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "enableAutoSwitchBtState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    if-eqz v5, :cond_1c1

    if-eqz v1, :cond_1c1

    if-eqz v4, :cond_1c1

    .line 644
    iget-object v9, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mstartAlarmRepeatEveryDay(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    goto :goto_1e5

    .line 646
    :cond_1c1
    iget-object v9, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmAlarmManager(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/app/AlarmManager;

    move-result-object v9

    if-eqz v9, :cond_1e5

    iget-object v9, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmPendingIntent(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/app/PendingIntent;

    move-result-object v9

    if-eqz v9, :cond_1e5

    .line 647
    iget-object v9, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmAlarmManager(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/app/AlarmManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v10}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmPendingIntent(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 648
    const-string v9, "cancel alarm task"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_1e5
    :goto_1e5
    if-eqz v5, :cond_2c5

    if-nez v4, :cond_2c5

    if-ne v8, v6, :cond_2c5

    .line 652
    const-string/jumbo v6, "set enableAutoSwitchBtState true"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v7, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2c5

    .line 655
    .end local v1    # "restrictState":Z
    .end local v4    # "enableAutoSwitchBtState":Z
    .end local v5    # "isRestrictBroadcast":Z
    .end local v8    # "state":I
    :cond_200
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c5

    .line 656
    const-string v1, "Device is shutting down."

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmShutdownInProgress(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 661
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misSupportBluetoothRestrict(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24a

    .line 662
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misAirplaneModeOn(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v1

    if-eqz v1, :cond_24a

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_24a

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mgetBluetoothRestrictState(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24a

    .line 663
    const-string v1, "airplane store restrict status before shutting down."

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContentResolver(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "bluetooth_restrict_status_before_airplane_reboot"

    invoke-static {v1, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 668
    :cond_24a
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 670
    :try_start_257
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 671
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 672
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    if-eqz v1, :cond_281

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_281

    .line 673
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousOnBrEdrDown(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)V

    goto :goto_29e

    .line 674
    :cond_281
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    if-eqz v1, :cond_29e

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v1

    if-ne v1, v5, :cond_29e

    .line 675
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousDisable(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)Z
    :try_end_29e
    .catch Landroid/os/RemoteException; {:try_start_257 .. :try_end_29e} :catch_2a1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_257 .. :try_end_29e} :catch_2a1
    .catchall {:try_start_257 .. :try_end_29e} :catchall_29f

    .line 680
    :cond_29e
    :goto_29e
    goto :goto_2a8

    :catchall_29f
    move-exception v1

    goto :goto_2b7

    .line 677
    :catch_2a1
    move-exception v1

    .line 678
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2a2
    const-string v2, "Unable to shutdown Bluetooth"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a7
    .catchall {:try_start_2a2 .. :try_end_2a7} :catchall_29f

    .line 680
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2a8
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 681
    goto/16 :goto_347

    .line 680
    :goto_2b7
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 681
    throw v1

    .line 655
    :cond_2c5
    :goto_2c5
    goto/16 :goto_347

    .line 627
    :cond_2c7
    :goto_2c7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "received"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 629
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2ef

    goto :goto_2f0

    :cond_2ef
    move v2, v4

    :goto_2f0
    move v1, v2

    .line 630
    .local v1, "enableAutoSwitchBtState":Z
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misSupportBluetoothRestrict(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_318

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mgetBluetoothRestrictState(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_318

    if-eqz v1, :cond_318

    .line 631
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmAlarmManager(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/app/AlarmManager;

    move-result-object v2

    if-eqz v2, :cond_318

    .line 632
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mstartAlarmRepeatEveryDay(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 635
    .end local v1    # "enableAutoSwitchBtState":Z
    :cond_318
    goto :goto_347

    .line 611
    :cond_319
    :goto_319
    const/4 v1, 0x2

    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 613
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    const/16 v4, 0x258

    invoke-virtual {v2, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_346

    if-nez v1, :cond_346

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothModeChangeHelper(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->isMediaProfileConnected()Z

    move-result v2

    if-nez v2, :cond_346

    .line 616
    const-string v2, "Device disconnected, reactivating pending flag changes"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$2;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->onInitFlagsChanged()V

    .line 619
    .end local v1    # "state":I
    :cond_346
    nop

    .line 683
    :cond_347
    :goto_347
    return-void
.end method
