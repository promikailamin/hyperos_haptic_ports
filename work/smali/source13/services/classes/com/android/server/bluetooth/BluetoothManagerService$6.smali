.class Lcom/android/server/bluetooth/BluetoothManagerService$6;
.super Landroid/database/ContentObserver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bluetooth/BluetoothManagerService;->registerForBleScanModeChange()V
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

    .line 1322
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$6;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 1325
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$6;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBleScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1327
    return-void

    .line 1330
    :cond_9
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$6;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mdisableBleScanMode(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 1331
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$6;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mclearBleApps(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 1333
    :try_start_13
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$6;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1334
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$6;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 1335
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$6;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 1336
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1335
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$maddActiveLog(Lcom/android/server/bluetooth/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 1337
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$6;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousOnBrEdrDown(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_44} :catch_47
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_13 .. :try_end_44} :catch_47
    .catchall {:try_start_13 .. :try_end_44} :catchall_45

    .line 1342
    :cond_44
    goto :goto_50

    :catchall_45
    move-exception v0

    goto :goto_5f

    .line 1339
    :catch_47
    move-exception v0

    .line 1340
    .local v0, "e":Ljava/lang/Exception;
    :try_start_48
    const-string v1, "BluetoothManagerService"

    const-string v2, "error when disabling bluetooth"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_45

    .line 1342
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_50
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$6;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1343
    nop

    .line 1344
    return-void

    .line 1342
    :goto_5f
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$6;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1343
    throw v0
.end method
