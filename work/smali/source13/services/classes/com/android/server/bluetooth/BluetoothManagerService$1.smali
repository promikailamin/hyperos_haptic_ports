.class Lcom/android/server/bluetooth/BluetoothManagerService$1;
.super Landroid/bluetooth/IBluetoothCallback$Stub;
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

    .line 357
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$1;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(II)V
    .registers 5
    .param p1, "prevState"    # I
    .param p2, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$1;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    .line 361
    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 362
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$1;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    return-void
.end method
