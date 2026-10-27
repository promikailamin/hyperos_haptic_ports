.class Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bluetooth/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 2

    .line 2478
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2480
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2482
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothServiceConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2485
    .local v1, "msg":Landroid/os/Message;
    const-string v3, "com.android.bluetooth.btservice.AdapterService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 2486
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2487
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_4a

    .line 2488
    :cond_3f
    const-string v3, "com.android.bluetooth.gatt.GattService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2489
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2494
    :goto_4a
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2495
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2496
    return-void

    .line 2491
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown service connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 2500
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2502
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothServiceConnection, disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2505
    .local v1, "msg":Landroid/os/Message;
    const-string v3, "com.android.bluetooth.btservice.AdapterService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2506
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_3f

    .line 2507
    :cond_34
    const-string v3, "com.android.bluetooth.gatt.GattService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2508
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2513
    :goto_3f
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2514
    return-void

    .line 2510
    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown service disconnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    return-void
.end method
