.class Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bluetooth/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/bluetooth/BluetoothManagerService;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1222
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    iput-object p2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    .line 1224
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 8

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder is dead - unregister "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBleApps(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1232
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 1233
    .local v3, "token":Landroid/os/IBinder;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;

    .line 1234
    .local v4, "deathRec":Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1235
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v3, v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mupdateBleAppCount(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/os/IBinder;ZLjava/lang/String;)I

    .line 1236
    goto :goto_50

    .line 1238
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;>;"
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "deathRec":Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;
    :cond_4f
    goto :goto_28

    .line 1240
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBleApps(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 1242
    .local v0, "appCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Binder is dead,registered Ble Apps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    if-nez v0, :cond_7f

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 1246
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mdisableBleScanMode(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 1249
    :cond_7f
    if-nez v0, :cond_da

    .line 1250
    const/16 v2, 0xa

    .line 1252
    .local v2, "st":I
    :try_start_83
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1253
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_9f

    .line 1254
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->getState()I

    move-result v3

    move v2, v3

    .line 1256
    :cond_9f
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const/16 v3, 0xf

    if-ne v2, v3, :cond_bd

    .line 1258
    :cond_ab
    const-string v3, "Move to BT state OFF"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msendBrEdrDownCallback(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)V
    :try_end_bd
    .catchall {:try_start_83 .. :try_end_bd} :catchall_cb

    .line 1263
    :cond_bd
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1264
    goto :goto_da

    .line 1263
    :catchall_cb
    move-exception v1

    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1264
    throw v1

    .line 1266
    .end local v2    # "st":I
    :cond_da
    :goto_da
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1269
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
