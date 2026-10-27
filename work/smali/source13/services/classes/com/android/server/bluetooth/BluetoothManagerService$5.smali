.class Lcom/android/server/bluetooth/BluetoothManagerService$5;
.super Landroid/database/ContentObserver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bluetooth/BluetoothManagerService;->registerForProvisioningStateChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/bluetooth/BluetoothManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1298
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$5;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 1301
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$5;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misDeviceProvisioned(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v0

    const-string v1, "BluetoothManagerService"

    if-nez v0, :cond_10

    .line 1303
    const-string v0, "DEVICE_PROVISIONED setting changed, but device is not provisioned"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return-void

    .line 1308
    :cond_10
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$5;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v2, 0x258

    invoke-virtual {v0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1309
    const-string v0, "Device provisioned, reactivating pending flag changes"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$5;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->onInitFlagsChanged()V

    .line 1312
    :cond_28
    return-void
.end method
