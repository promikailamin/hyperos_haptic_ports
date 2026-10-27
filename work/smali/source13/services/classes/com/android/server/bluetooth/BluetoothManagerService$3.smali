.class Lcom/android/server/bluetooth/BluetoothManagerService$3;
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

    .line 688
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 691
    const/4 v0, 0x0

    .line 693
    .local v0, "isExcludeDevice":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    const-string/jumbo v3, "miui.util.FeatureParser"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 694
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getString"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 695
    .local v4, "method":Ljava/lang/reflect/Method;
    const-string/jumbo v5, "ro.product.device"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 696
    .local v5, "devicetmp":Ljava/lang/String;
    const/4 v6, 0x0

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "disable_bt_self_turnon"

    aput-object v8, v7, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 697
    .local v6, "supportControl":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_31} :catch_33

    move v0, v7

    .line 700
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "devicetmp":Ljava/lang/String;
    .end local v6    # "supportControl":Ljava/lang/String;
    goto :goto_37

    .line 698
    :catch_33
    move-exception v3

    .line 699
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 701
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current device is bt half off exclude device : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misSupportBluetoothRestrict(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_136

    if-eqz v0, :cond_5b

    goto/16 :goto_136

    .line 705
    :cond_5b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    .line 706
    .local v3, "isSafeMode":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 707
    .local v5, "action":Ljava/lang/String;
    const-string v6, "android.provision.action.PROVISION_COMPLETE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v7, 0x3e8

    const-string v9, "bluetooth_first_ota_done"

    const/16 v10, 0x2be

    if-eqz v6, :cond_bb

    .line 708
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v1

    if-nez v1, :cond_b0

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misBluetoothPersistedStateOn(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v1

    if-nez v1, :cond_b0

    if-nez v3, :cond_b0

    .line 709
    const-string v1, "Provision done, auto-enabling halfclose"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    if-eqz v1, :cond_b0

    .line 711
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 712
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 713
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v1, v7, v8}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 716
    .end local v1    # "msg":Landroid/os/Message;
    :cond_b0
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContentResolver(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_135

    .line 717
    :cond_bb
    const-string v6, "com.android.updater.action.UPDATE_SUCCESSED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_135

    .line 718
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContentResolver(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v9, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_d0

    move v1, v2

    .line 720
    .local v1, "isFirstOtaUndo":Z
    :cond_d0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isFirstOtaUndo is "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v6

    if-nez v6, :cond_12c

    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misBluetoothPersistedStateOn(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v6

    if-nez v6, :cond_12c

    if-nez v3, :cond_12c

    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misAirplaneModeOn(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v6

    if-nez v6, :cond_12c

    if-eqz v1, :cond_12c

    .line 723
    const-string v6, "first ota, Auto-enabling Bluetooth."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    if-eqz v4, :cond_12c

    .line 725
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 726
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 727
    .local v4, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v6

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 730
    .end local v4    # "msg":Landroid/os/Message;
    :cond_12c
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService$3;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContentResolver(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v9, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 732
    .end local v1    # "isFirstOtaUndo":Z
    :cond_135
    :goto_135
    return-void

    .line 703
    .end local v3    # "isSafeMode":Z
    .end local v5    # "action":Ljava/lang/String;
    :cond_136
    :goto_136
    return-void
.end method
