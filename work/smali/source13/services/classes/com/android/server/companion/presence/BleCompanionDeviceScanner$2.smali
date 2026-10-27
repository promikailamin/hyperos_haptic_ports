.class Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "BleCompanionDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/presence/BleCompanionDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;


# direct methods
.method constructor <init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    .line 310
    iput-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 351
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$fputmScanning(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Z)V

    .line 352
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 6
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 314
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 326
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    packed-switch p1, :pswitch_data_4c

    .line 341
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 342
    invoke-static {p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$smnameForBleScanCallbackType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    const-string v2, "CompanionDevice_PresenceMonitor_BLE"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 337
    :pswitch_24
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-static {v1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$fgetmMainThreadHandler(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->sendNotifyDeviceLostDelayedMessage(Landroid/bluetooth/BluetoothDevice;)V

    .line 338
    goto :goto_4a

    .line 328
    :pswitch_2e
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-static {v1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$fgetmMainThreadHandler(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->hasNotifyDeviceLostMessages(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 329
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-static {v1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$fgetmMainThreadHandler(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->removeNotifyDeviceLostMessages(Landroid/bluetooth/BluetoothDevice;)V

    .line 330
    return-void

    .line 333
    :cond_44
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-static {v1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$mnotifyDeviceFound(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Landroid/bluetooth/BluetoothDevice;)V

    .line 334
    nop

    .line 345
    :goto_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_7
        :pswitch_24
    .end packed-switch
.end method
