.class Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;
.super Landroid/os/Handler;
.source "BleCompanionDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/presence/BleCompanionDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainThreadHandler"
.end annotation


# static fields
.field private static final NOTIFY_DEVICE_LOST:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;


# direct methods
.method constructor <init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    .line 360
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 361
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 365
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    .line 367
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 368
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-static {v1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$mnotifyDeviceLost(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Landroid/bluetooth/BluetoothDevice;)V

    .line 369
    return-void
.end method

.method hasNotifyDeviceLostMessages(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 377
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method removeNotifyDeviceLostMessages(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 382
    return-void
.end method

.method sendNotifyDeviceLostDelayedMessage(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 372
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 373
    .local v0, "message":Landroid/os/Message;
    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 374
    return-void
.end method
