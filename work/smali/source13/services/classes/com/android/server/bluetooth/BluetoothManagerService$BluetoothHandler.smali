.class Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bluetooth/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHandler"
.end annotation


# instance fields
.field mGetNameAddressOnly:Z

.field private mWaitForDisableRetry:I

.field private mWaitForEnableRetry:I

.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2524
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 2525
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2520
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    .line 2526
    return-void
.end method

.method private restartForReason(I)V
    .registers 10
    .param p1, "reason"    # I

    .line 3401
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3402
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 3403
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothCallback(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 3404
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 3403
    invoke-static {v0, v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousUnregisterCallback(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_2c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_28} :catch_2c
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    .line 3409
    :cond_28
    goto :goto_35

    :catchall_29
    move-exception v0

    goto/16 :goto_18c

    .line 3406
    :catch_2c
    move-exception v0

    .line 3407
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2d
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to unregister"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_29

    .line 3409
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3410
    nop

    .line 3412
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0xa

    if-ne v0, v1, :cond_5d

    .line 3414
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v3

    invoke-static {v0, v3, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mbluetoothStateChangeHandler(Lcom/android/server/bluetooth/BluetoothManagerService;II)V

    .line 3415
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmState(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 3417
    :cond_5d
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v2, :cond_75

    .line 3418
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    invoke-static {v0, v4, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mbluetoothStateChangeHandler(Lcom/android/server/bluetooth/BluetoothManagerService;II)V

    .line 3419
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmState(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 3423
    :cond_75
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3424
    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3423
    invoke-static {v5, v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mwaitForState(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/util/Set;)Z

    .line 3426
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v3, :cond_9b

    .line 3427
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v3

    invoke-static {v0, v3, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mbluetoothStateChangeHandler(Lcom/android/server/bluetooth/BluetoothManagerService;II)V

    .line 3430
    :cond_9b
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$munbindAllBluetoothProfileServices(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 3432
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v0, p1, v3, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$maddActiveLog(Lcom/android/server/bluetooth/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 3434
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mclearBleApps(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 3436
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mhandleDisable(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 3438
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0, v6, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mbluetoothStateChangeHandler(Lcom/android/server/bluetooth/BluetoothManagerService;II)V

    .line 3445
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 3446
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3447
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3446
    invoke-static {v3, v5}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mwaitForState(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/util/Set;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 3449
    .local v0, "didDisableTimeout":Z
    if-nez v0, :cond_f0

    .line 3450
    iget-object v5, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->getState()I

    move-result v5

    .line 3452
    .local v5, "state":I
    if-ne v5, v4, :cond_e0

    .line 3453
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6, v1, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mbluetoothStateChangeHandler(Lcom/android/server/bluetooth/BluetoothManagerService;II)V

    .line 3457
    :cond_e0
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 3458
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mwaitForState(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/util/Set;)Z

    move-result v4

    xor-int/2addr v4, v3

    move v0, v4

    .line 3460
    .end local v5    # "state":I
    :cond_f0
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mbluetoothStateChangeHandler(Lcom/android/server/bluetooth/BluetoothManagerService;II)V

    .line 3462
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msendBluetoothServiceDownCallback(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 3464
    if-nez v0, :cond_148

    .line 3466
    :try_start_fc
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3467
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_126

    .line 3468
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)V

    .line 3470
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmConnection(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3472
    :cond_126
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmBluetoothGatt(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)V
    :try_end_12b
    .catchall {:try_start_fc .. :try_end_12b} :catchall_139

    .line 3474
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3475
    goto :goto_148

    .line 3474
    :catchall_139
    move-exception v1

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3475
    throw v1

    .line 3483
    :cond_148
    :goto_148
    if-eqz v0, :cond_15b

    .line 3484
    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 3485
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_160

    .line 3487
    :cond_15b
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 3490
    :goto_160
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v4, 0x3c

    invoke-virtual {v1, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 3491
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmState(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 3493
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$maddActiveLog(Lcom/android/server/bluetooth/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 3495
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3496
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmQuietEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mhandleEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3497
    return-void

    .line 3409
    .end local v0    # "didDisableTimeout":Z
    :goto_18c
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3410
    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 24
    .param p1, "msg"    # Landroid/os/Message;

    .line 2530
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v3, v2, Landroid/os/Message;->what:I

    const-string v4, "Re-Queue previous MESSAGE_DISABLE"

    const/16 v6, 0x2bf

    const/4 v8, 0x6

    const/16 v15, 0xb

    const/16 v10, 0xf

    .line 3033
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 2530
    const/16 v12, 0xc

    .line 3034
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2530
    const/16 v9, 0xa

    .line 3090
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 2530
    const/4 v14, 0x0

    const/4 v5, 0x1

    const-string v7, "BluetoothManagerService"

    sparse-switch v3, :sswitch_data_fb2

    goto/16 :goto_fb1

    .line 3386
    :sswitch_28
    const-string v3, "MESSAGE_DELAY_ENABLE_BT"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->handleOnBootPhase()V

    goto/16 :goto_fb1

    .line 3379
    :sswitch_34
    const-string v3, "MESSAGE_ENABLE_BT_FROM_HALFON"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v9, v12, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msendRestrictStateChanged(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;IIZ)V

    .line 3382
    goto/16 :goto_fb1

    .line 3372
    :sswitch_44
    const-string v3, "MESSAGE_HALFCLOSE_ENABLE_TIMEOUT"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    invoke-static {v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$sfputmRestrictFlag(Z)V

    .line 3375
    goto/16 :goto_fb1

    .line 3347
    :sswitch_4e
    const-string v3, "MESSAGE_HANDLE_HALFCLOSE_RECEIVER"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-nez v3, :cond_fb1

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misBluetoothPersistedStateOn(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-nez v3, :cond_fb1

    .line 3350
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBinding(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-nez v3, :cond_ae

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmUnbinding(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-nez v3, :cond_ae

    .line 3351
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3352
    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$sfputmRestrictFlag(Z)V

    .line 3353
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 3354
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3355
    .local v3, "getMsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    const-wide/16 v5, 0x1f40

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3356
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmQuietEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v5

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v6

    .line 3358
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3356
    invoke-static {v4, v5, v8, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msendEnableMsg(Lcom/android/server/bluetooth/BluetoothManagerService;ZILjava/lang/String;)V

    .line 3359
    .end local v3    # "getMsg":Landroid/os/Message;
    goto/16 :goto_fb1

    .line 3360
    :cond_ae
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHalfCloseDelayCount(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmHalfCloseDelayCount(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 3361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delay handle halfclose receiver count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHalfCloseDelayCount(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHalfCloseDelayCount(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v3

    if-gt v3, v8, :cond_fb1

    .line 3363
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v4, 0x2be

    invoke-virtual {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3364
    .local v3, "msgDelay":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3365
    .end local v3    # "msgDelay":Landroid/os/Message;
    goto/16 :goto_fb1

    .line 3334
    :sswitch_f5
    const-string v3, "MESSAGE_DISABLE_HALFCLOSE"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_fb1

    .line 3337
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mgetBluetoothRestrictState(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_fb1

    .line 3338
    const-string v3, "delay disable restrict"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v9, v12, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msendRestrictStateChanged(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;IIZ)V

    goto/16 :goto_fb1

    .line 3320
    :sswitch_11e
    const-string v3, "MESSAGE_ENABLE_HALFCLOSE"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v4, 0x2bc

    invoke-virtual {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 3323
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_fb1

    .line 3324
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mgetBluetoothRestrictState(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_fb1

    .line 3325
    const-string v3, "delay enable restrict"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v12, v9, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msendRestrictStateChanged(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;IIZ)V

    goto/16 :goto_fb1

    .line 3289
    :sswitch_152
    const-string v3, "MESSAGE_INIT_FLAGS_CHANGED"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v4, 0x258

    invoke-virtual {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 3292
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothModeChangeHelper(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->isMediaProfileConnected()Z

    move-result v3

    const-wide/32 v5, 0x15180

    if-eqz v3, :cond_181

    .line 3293
    const-string v3, "Delaying MESSAGE_INIT_FLAGS_CHANGED by 86400 ms due to existing connections"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3299
    goto/16 :goto_fb1

    .line 3301
    :cond_181
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misDeviceProvisioned(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-nez v3, :cond_199

    .line 3302
    const-string v3, "Delaying MESSAGE_INIT_FLAGS_CHANGED by 86400ms because device is not provisioned"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3308
    goto/16 :goto_fb1

    .line 3310
    :cond_199
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_fb1

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_fb1

    .line 3311
    const-string v3, "Restarting Bluetooth due to init flag change"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    invoke-direct {v1, v15}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->restartForReason(I)V

    goto/16 :goto_fb1

    .line 2892
    :sswitch_1b3
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_238

    .line 2894
    const-string v3, "Restore Bluetooth state to disabled"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mpersistBluetoothSetting(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 2897
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2898
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mclearBleApps(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 2900
    :try_start_1cb
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2901
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2902
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_20f

    .line 2903
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->getState()I

    move-result v3

    if-ne v3, v10, :cond_200

    .line 2904
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2905
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousOnBrEdrDown(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)V

    goto :goto_20f

    .line 2907
    :cond_200
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    const/16 v4, 0x9

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v5

    .line 2909
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2907
    invoke-static {v3, v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msendDisableMsg(Lcom/android/server/bluetooth/BluetoothManagerService;ILjava/lang/String;)V
    :try_end_20f
    .catch Landroid/os/RemoteException; {:try_start_1cb .. :try_end_20f} :catch_213
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1cb .. :try_end_20f} :catch_213
    .catchall {:try_start_1cb .. :try_end_20f} :catchall_210

    .line 2915
    :cond_20f
    :goto_20f
    goto :goto_21b

    :catchall_210
    move-exception v0

    move-object v3, v0

    goto :goto_22a

    .line 2912
    :catch_213
    move-exception v0

    move-object v3, v0

    .line 2913
    .local v3, "e":Ljava/lang/Exception;
    :try_start_215
    const-string v4, "Unable to initiate disable"

    invoke-static {v7, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21a
    .catchall {:try_start_215 .. :try_end_21a} :catchall_210

    .line 2915
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_21b
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2916
    goto/16 :goto_fb1

    .line 2915
    :goto_22a
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2916
    throw v3

    .line 2917
    :cond_238
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_fb1

    .line 2919
    const-string v3, "Restore Bluetooth state to enabled"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmQuietEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2922
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2924
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    const/16 v4, 0x9

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v5

    .line 2926
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2924
    invoke-static {v3, v14, v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msendEnableMsg(Lcom/android/server/bluetooth/BluetoothManagerService;ZILjava/lang/String;)V

    goto/16 :goto_fb1

    .line 2957
    :sswitch_25c
    const-string v3, "MESSAGE_BIND_PROFILE_SERVICE"

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;

    .line 2959
    .local v3, "psc":Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    const/16 v4, 0x191

    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v4, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2960
    if-nez v3, :cond_276

    .line 2961
    const-string/jumbo v4, "psc is null, breaking"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    goto/16 :goto_fb1

    .line 2964
    :cond_276
    iget v4, v2, Landroid/os/Message;->arg1:I

    if-lez v4, :cond_fb1

    .line 2966
    :try_start_27a
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2967
    const-string v4, "Calling psc.bindService from MESSAGE_BIND_PROFILE_SERVICE"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_288
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27a .. :try_end_288} :catch_289

    .line 2970
    goto :goto_2a3

    .line 2968
    :catch_289
    move-exception v0

    move-object v4, v0

    .line 2969
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to unbind service with intent: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2971
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2a3
    iget v4, v2, Landroid/os/Message;->arg1:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->-$$Nest$mbindService(Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;I)Z

    goto/16 :goto_fb1

    .line 2947
    .end local v3    # "psc":Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    :sswitch_2ab
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmProfileServices(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;

    .line 2948
    .restart local v3    # "psc":Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    if-nez v3, :cond_2c1

    .line 2949
    goto/16 :goto_fb1

    .line 2951
    :cond_2c1
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 2953
    .local v4, "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->-$$Nest$maddProxy(Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 2954
    goto/16 :goto_fb1

    .line 3272
    .end local v3    # "psc":Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    .end local v4    # "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    :sswitch_2ca
    const-string v3, "MESSAGE_USER_UNLOCKED"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 3276
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_fb1

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBinding(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-nez v3, :cond_fb1

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-nez v3, :cond_fb1

    .line 3281
    const-string v3, "Enabled but not bound; retrying after unlock"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmQuietEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mhandleEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    goto/16 :goto_fb1

    .line 3230
    :sswitch_302
    const-string v3, "MESSAGE_USER_SWITCHED"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 3235
    :try_start_312
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3236
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->getState()I

    move-result v3

    .line 3238
    .local v3, "state":I
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    if-eqz v4, :cond_36d

    if-eq v3, v12, :cond_339

    if-ne v3, v10, :cond_36d

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 3239
    invoke-virtual {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBleAppPresent()Z

    move-result v4

    if-eqz v4, :cond_36d

    .line 3241
    :cond_339
    if-ne v3, v12, :cond_341

    .line 3242
    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->restartForReason(I)V

    goto :goto_3b1

    .line 3246
    :cond_341
    const-string v4, "Turn off from BLE state"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mclearBleApps(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 3249
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    const/16 v5, 0x8

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v6

    .line 3250
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3249
    invoke-static {v4, v5, v6, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$maddActiveLog(Lcom/android/server/bluetooth/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 3251
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3252
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousOnBrEdrDown(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)V

    goto :goto_3b1

    .line 3254
    :cond_36d
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBinding(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v4

    if-nez v4, :cond_37d

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    if-eqz v4, :cond_3b1

    .line 3255
    :cond_37d
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    const/16 v6, 0x12c

    invoke-virtual {v4, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3256
    .local v4, "userMsg":Landroid/os/Message;
    iget v6, v2, Landroid/os/Message;->arg2:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 3258
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v4, v8, v9}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry MESSAGE_USER_SWITCHED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b1
    .catch Landroid/os/RemoteException; {:try_start_312 .. :try_end_3b1} :catch_3b5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_312 .. :try_end_3b1} :catch_3b5
    .catchall {:try_start_312 .. :try_end_3b1} :catchall_3b2

    .line 3266
    .end local v3    # "state":I
    .end local v4    # "userMsg":Landroid/os/Message;
    :cond_3b1
    :goto_3b1
    goto :goto_3bd

    :catchall_3b2
    move-exception v0

    move-object v3, v0

    goto :goto_3cd

    .line 3263
    :catch_3b5
    move-exception v0

    move-object v3, v0

    .line 3264
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b7
    const-string v4, "MESSAGE_USER_SWITCHED: Remote exception"

    invoke-static {v7, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3bc
    .catchall {:try_start_3b7 .. :try_end_3bc} :catchall_3b2

    .line 3266
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3bd
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3267
    nop

    .line 3268
    goto/16 :goto_fb1

    .line 3266
    :goto_3cd
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3267
    throw v3

    .line 2533
    :sswitch_3db
    const-string v3, "MESSAGE_GET_NAME_AND_ADDRESS"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    :try_start_3e0
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2537
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-nez v3, :cond_46d

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBinding(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-nez v3, :cond_46d

    .line 2539
    const-string v3, "Binding to service to get name and address"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    iput-boolean v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    .line 2542
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2543
    .local v3, "timeoutMsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    const-wide/16 v8, 0xbb8

    invoke-virtual {v4, v3, v8, v9}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2544
    new-instance v4, Landroid/content/Intent;

    const-class v6, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2545
    .local v4, "i":Landroid/content/Intent;
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmConnection(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v8

    const/16 v9, 0x41

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v8, v9, v10}, Lcom/android/server/bluetooth/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_442

    .line 2548
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_4b0

    .line 2550
    :cond_442
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmBinding(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2551
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmBindingUserID(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 2552
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding BT service. Current user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBindingUserID(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b0

    .line 2554
    .end local v3    # "timeoutMsg":Landroid/os/Message;
    .end local v4    # "i":Landroid/content/Intent;
    :cond_46d
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3
    :try_end_473
    .catchall {:try_start_3e0 .. :try_end_473} :catchall_4c1

    if-eqz v3, :cond_4b0

    .line 2556
    :try_start_475
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    .line 2557
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousGetName(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v6

    .line 2558
    invoke-virtual {v6}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousGetAddress(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v5

    .line 2556
    invoke-static {v3, v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mstoreNameAndAddress(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_494
    .catch Landroid/os/RemoteException; {:try_start_475 .. :try_end_494} :catch_495
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_475 .. :try_end_494} :catch_495
    .catchall {:try_start_475 .. :try_end_494} :catchall_4c1

    .line 2561
    goto :goto_49c

    .line 2559
    :catch_495
    move-exception v0

    move-object v3, v0

    .line 2560
    .local v3, "e":Ljava/lang/Exception;
    :try_start_497
    const-string v4, "Unable to grab names"

    invoke-static {v7, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2562
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_49c
    iget-boolean v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    if-eqz v3, :cond_4ad

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-nez v3, :cond_4ad

    .line 2563
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->unbindAndFinish()V

    .line 2565
    :cond_4ad
    iput-boolean v14, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z
    :try_end_4af
    .catchall {:try_start_497 .. :try_end_4af} :catchall_4c1

    goto :goto_4b1

    .line 2554
    :cond_4b0
    :goto_4b0
    nop

    .line 2568
    :goto_4b1
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2569
    nop

    .line 2570
    goto/16 :goto_fb1

    .line 2568
    :catchall_4c1
    move-exception v0

    move-object v3, v0

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2569
    throw v3

    .line 3221
    :sswitch_4d1
    const-string v3, "MESSAGE_TIMEOUT_UNBIND"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3223
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmUnbinding(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3224
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3225
    goto/16 :goto_fb1

    .line 3195
    :sswitch_4f7
    const-string v3, "MESSAGE_TIMEOUT_BIND"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3197
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmBinding(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3198
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3200
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmTryBindOnBindTimeout(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-nez v3, :cond_55a

    .line 3201
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 3203
    .local v3, "userID":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current user: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBindingUserID(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    if-ne v4, v3, :cond_558

    .line 3205
    const-string v4, " Trying to Bind again"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmTryBindOnBindTimeout(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3207
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmQuietEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mhandleEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3209
    .end local v3    # "userID":I
    :cond_558
    goto/16 :goto_fb1

    .line 3210
    :cond_55a
    const-string v3, "Bind trails excedded"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmTryBindOnBindTimeout(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3214
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 3215
    invoke-static {v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$sfputmRestrictFlag(Z)V

    .line 3218
    goto/16 :goto_fb1

    .line 3056
    :sswitch_572
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 3057
    .local v3, "prevState":I
    iget v4, v2, Landroid/os/Message;->arg2:I

    .line 3059
    .local v4, "newState":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MESSAGE_BLUETOOTH_STATE_CHANGE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3060
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " > "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3061
    invoke-static {v4}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3059
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmState(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 3065
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6, v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mbluetoothStateChangeHandler(Lcom/android/server/bluetooth/BluetoothManagerService;II)V

    .line 3068
    const/16 v6, 0xe

    if-ne v3, v6, :cond_5c3

    if-ne v4, v9, :cond_5c3

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    if-eqz v6, :cond_5c3

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_5c3

    .line 3070
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mrecoverBluetoothServiceFromError(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3072
    :cond_5c3
    if-ne v3, v15, :cond_5dc

    if-ne v4, v9, :cond_5dc

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    if-eqz v6, :cond_5dc

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_5dc

    .line 3075
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mpersistBluetoothSetting(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 3077
    :cond_5dc
    if-ne v3, v15, :cond_5f5

    if-ne v4, v10, :cond_5f5

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    if-eqz v6, :cond_5f5

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_5f5

    .line 3080
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mrecoverBluetoothServiceFromError(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3085
    :cond_5f5
    const/16 v5, 0x10

    if-ne v3, v5, :cond_636

    if-ne v4, v9, :cond_636

    .line 3087
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v5

    if-eqz v5, :cond_636

    .line 3088
    const-string v5, "Entering STATE_OFF but mEnabled is true; restarting."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    const/16 v6, 0x2a

    invoke-virtual {v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 3090
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static/range {v21 .. v21}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mwaitForState(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/util/Set;)Z

    .line 3091
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    .line 3092
    invoke-virtual {v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 3093
    .local v5, "restartMsg":Landroid/os/Message;
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v8}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mgetServiceRestartMs(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v5, v8, v9}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3096
    .end local v5    # "restartMsg":Landroid/os/Message;
    :cond_636
    if-eq v4, v12, :cond_63a

    if-ne v4, v10, :cond_fb1

    .line 3099
    :cond_63a
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmErrorRecoveryRetryCounter(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v5

    if-eqz v5, :cond_fb1

    .line 3100
    const-string v5, "bluetooth is recovered from error"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmErrorRecoveryRetryCounter(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    goto/16 :goto_fb1

    .line 3176
    .end local v3    # "prevState":I
    .end local v4    # "newState":I
    :sswitch_64e
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmErrorRecoveryRetryCounter(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmErrorRecoveryRetryCounter(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 3177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_RESTART_BLUETOOTH_SERVICE: retry count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmErrorRecoveryRetryCounter(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmErrorRecoveryRetryCounter(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v3

    if-ge v3, v8, :cond_69a

    .line 3183
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3184
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    .line 3185
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3184
    const/4 v6, 0x4

    invoke-static {v3, v6, v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$maddActiveLog(Lcom/android/server/bluetooth/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 3186
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmQuietEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mhandleEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    goto/16 :goto_fb1

    .line 3189
    :cond_69a
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)V

    .line 3190
    const-string v3, "Reach maximum retry to restart Bluetooth!"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    goto/16 :goto_fb1

    .line 3107
    :sswitch_6a7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    :try_start_6c5
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3110
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_7d9

    .line 3112
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3
    :try_end_6dc
    .catchall {:try_start_6c5 .. :try_end_6dc} :catchall_807

    if-nez v3, :cond_6ed

    .line 3124
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3113
    goto/16 :goto_fb1

    .line 3115
    :cond_6ed
    :try_start_6ed
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)V
    :try_end_6f3
    .catchall {:try_start_6ed .. :try_end_6f3} :catchall_807

    .line 3124
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3125
    nop

    .line 3128
    const/4 v3, 0x0

    .line 3130
    .local v3, "pids":[I
    :try_start_702
    const-string v4, "android.os.Process"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v6, "getPidsForCommands"

    new-array v8, v5, [Ljava/lang/Class;

    const-class v10, [Ljava/lang/String;

    aput-object v10, v8, v14

    .line 3131
    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "com.android.bluetooth"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    .line 3132
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I
    :try_end_726
    .catch Ljava/lang/Exception; {:try_start_702 .. :try_end_726} :catch_728

    move-object v3, v4

    .line 3136
    goto :goto_732

    .line 3133
    :catch_728
    move-exception v0

    move-object v4, v0

    .line 3134
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Error to call getPidsForCommands"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 3137
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_732
    if-eqz v3, :cond_759

    array-length v4, v3

    if-lez v4, :cond_759

    .line 3138
    array-length v4, v3

    move v5, v14

    :goto_739
    if-ge v5, v4, :cond_759

    aget v6, v3, v5

    .line 3139
    .local v6, "pid":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Killing BT process with PID = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 3138
    .end local v6    # "pid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_739

    .line 3145
    :cond_759
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$maddCrashLog(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 3146
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    const/4 v5, 0x7

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v6

    .line 3147
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3146
    invoke-static {v4, v5, v6, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$maddActiveLog(Lcom/android/server/bluetooth/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 3148
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v4

    if-eqz v4, :cond_795

    .line 3149
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 3151
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    .line 3152
    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3153
    .local v4, "restartMsg":Landroid/os/Message;
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mgetServiceRestartMs(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3156
    .end local v4    # "restartMsg":Landroid/os/Message;
    :cond_795
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msendBluetoothServiceDownCallback(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 3160
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    if-eq v4, v15, :cond_7ae

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    if-ne v4, v12, :cond_7ab

    goto :goto_7ae

    :cond_7ab
    const/16 v5, 0xd

    goto :goto_7ba

    .line 3162
    :cond_7ae
    :goto_7ae
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    const/16 v5, 0xd

    invoke-static {v4, v12, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mbluetoothStateChangeHandler(Lcom/android/server/bluetooth/BluetoothManagerService;II)V

    .line 3164
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmState(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 3166
    :goto_7ba
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    if-ne v4, v5, :cond_7c7

    .line 3167
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v5, v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mbluetoothStateChangeHandler(Lcom/android/server/bluetooth/BluetoothManagerService;II)V

    .line 3171
    :cond_7c7
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 3172
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmState(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 3173
    goto/16 :goto_fb1

    .line 3116
    .end local v3    # "pids":[I
    :cond_7d9
    :try_start_7d9
    iget v3, v2, Landroid/os/Message;->arg1:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7f3

    .line 3117
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmBluetoothGatt(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)V
    :try_end_7e4
    .catchall {:try_start_7d9 .. :try_end_7e4} :catchall_807

    .line 3124
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3118
    goto/16 :goto_fb1

    .line 3120
    :cond_7f3
    :try_start_7f3
    const-string v3, "Unknown argument for service disconnect!"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f8
    .catchall {:try_start_7f3 .. :try_end_7f8} :catchall_807

    .line 3124
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3121
    goto/16 :goto_fb1

    .line 3124
    :catchall_807
    move-exception v0

    move-object v3, v0

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3125
    throw v3

    .line 2977
    :sswitch_817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    .line 2982
    .local v3, "service":Landroid/os/IBinder;
    :try_start_833
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2983
    iget v4, v2, Landroid/os/Message;->arg1:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_862

    .line 2984
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmBluetoothGatt(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)V

    .line 2985
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mcontinueFromBleOnState(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    :try_end_853
    .catchall {:try_start_833 .. :try_end_853} :catchall_986

    .line 3026
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2986
    goto/16 :goto_fb1

    .line 2989
    :cond_862
    :try_start_862
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmBinding(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2990
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmTryBindOnBindTimeout(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2991
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmBluetoothBinder(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/os/IBinder;)V

    .line 2992
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)V

    .line 2994
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 2995
    .local v4, "foregroundUserId":I
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mpropagateForegroundUserId(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 2997
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misNameAndAddressSet(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v5

    if-nez v5, :cond_8b2

    .line 2998
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2999
    .local v5, "getMsg":Landroid/os/Message;
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3000
    iget-boolean v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z
    :try_end_8a2
    .catchall {:try_start_862 .. :try_end_8a2} :catchall_986

    if-eqz v6, :cond_8b2

    .line 3026
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3001
    return-void

    .line 3007
    .end local v5    # "getMsg":Landroid/os/Message;
    :cond_8b2
    :try_start_8b2
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothCallback(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v8}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v8

    .line 3008
    invoke-virtual {v8}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v8

    .line 3007
    invoke-static {v5, v6, v8}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousRegisterCallback(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;)V
    :try_end_8c5
    .catch Landroid/os/RemoteException; {:try_start_8b2 .. :try_end_8c5} :catch_8c6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8b2 .. :try_end_8c5} :catch_8c6
    .catchall {:try_start_8b2 .. :try_end_8c5} :catchall_986

    .line 3011
    goto :goto_8cd

    .line 3009
    :catch_8c6
    move-exception v0

    move-object v5, v0

    .line 3010
    .local v5, "e":Ljava/lang/Exception;
    :try_start_8c8
    const-string v6, "Unable to register BluetoothCallback"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3013
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_8cd
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    const/16 v6, 0x16

    .line 3014
    invoke-virtual {v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 3015
    .local v5, "informMsg":Landroid/os/Message;
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8e2
    .catchall {:try_start_8c8 .. :try_end_8e2} :catchall_986

    .line 3019
    :try_start_8e2
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmQuietEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v8

    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousEnable(Lcom/android/server/bluetooth/BluetoothManagerService;ZLandroid/content/AttributionSource;)Z

    move-result v6

    if-nez v6, :cond_8fd

    .line 3020
    const-string v6, "IBluetooth.enable() returned false"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8fd
    .catch Landroid/os/RemoteException; {:try_start_8e2 .. :try_end_8fd} :catch_8fe
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8e2 .. :try_end_8fd} :catch_8fe
    .catchall {:try_start_8e2 .. :try_end_8fd} :catchall_986

    .line 3024
    :cond_8fd
    goto :goto_905

    .line 3022
    :catch_8fe
    move-exception v0

    move-object v6, v0

    .line 3023
    .local v6, "e":Ljava/lang/Exception;
    :try_start_900
    const-string v8, "Unable to call enable()"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_905
    .catchall {:try_start_900 .. :try_end_905} :catchall_986

    .line 3026
    .end local v4    # "foregroundUserId":I
    .end local v5    # "informMsg":Landroid/os/Message;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_905
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3027
    nop

    .line 3029
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v4

    if-nez v4, :cond_fb1

    .line 3033
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 3034
    nop

    .line 3033
    invoke-static {v11, v13}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mwaitForState(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/util/Set;)Z

    .line 3036
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->getState()I

    move-result v4

    .line 3037
    .local v4, "st":I
    if-eq v4, v15, :cond_951

    if-ne v4, v10, :cond_940

    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v5

    if-nez v5, :cond_951

    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 3039
    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misBluetoothPersistedStateOnBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v5

    if-eqz v5, :cond_940

    goto :goto_951

    .line 3041
    :cond_940
    if-ne v4, v10, :cond_95a

    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBleAppPresent()Z

    move-result v5

    if-eqz v5, :cond_95a

    .line 3042
    const-string v5, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: ble app present"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    goto/16 :goto_fb1

    .line 3040
    :cond_951
    :goto_951
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v13}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mwaitForState(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/util/Set;)Z

    .line 3045
    :cond_95a
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mhandleDisable(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 3046
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 3047
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 3048
    const/16 v6, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 3049
    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 3050
    const/16 v6, 0x10

    .line 3051
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3046
    move-object/from16 v16, v21

    move-object/from16 v20, v11

    move-object/from16 v21, v6

    invoke-static/range {v16 .. v21}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mwaitForState(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/util/Set;)Z

    .line 3052
    .end local v4    # "st":I
    goto/16 :goto_fb1

    .line 3026
    :catchall_986
    move-exception v0

    move-object v4, v0

    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3027
    throw v4

    .line 2941
    .end local v3    # "service":Landroid/os/IBinder;
    :sswitch_996
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 2943
    .local v3, "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmStateChangeCallbacks(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2944
    goto/16 :goto_fb1

    .line 2935
    .end local v3    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_9a5
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 2937
    .restart local v3    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmStateChangeCallbacks(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2938
    goto/16 :goto_fb1

    .line 2930
    .end local v3    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_9b4
    const-string v3, "MESSAGE_INFORM_ADAPTER_SERVICE_UP"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msendBluetoothServiceUpCallback(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 2932
    goto/16 :goto_fb1

    .line 2831
    :sswitch_9c0
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_9c6

    move v3, v5

    goto :goto_9c7

    :cond_9c6
    move v3, v14

    .line 2832
    .local v3, "disabling":Z
    :goto_9c7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_HANDLE_DISABLE_DELAYED: disabling:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    if-nez v3, :cond_a6c

    .line 2837
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    if-ne v4, v10, :cond_a0d

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v4

    if-nez v4, :cond_a0d

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 2839
    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misBluetoothPersistedStateOnBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v4

    if-nez v4, :cond_a0d

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 2840
    invoke-virtual {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBleAppPresent()Z

    move-result v4

    if-eqz v4, :cond_a0d

    .line 2841
    const-string v4, "Enable from BLE APP, stay in BLE ON"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    iput v14, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForDisableRetry:I

    .line 2843
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2844
    goto/16 :goto_fb1

    .line 2845
    :cond_a0d
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    if-eq v4, v12, :cond_a3e

    .line 2846
    iget v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForDisableRetry:I

    if-ge v4, v9, :cond_a39

    .line 2847
    add-int/2addr v4, v5

    iput v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForDisableRetry:I

    .line 2848
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v14, v14}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 2850
    .local v4, "disableDelayedMsg":Landroid/os/Message;
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v4, v8, v9}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2852
    const-string v5, "Re-Queue MESSAGE_HANDLE_DISABLE_DELAYED(0)"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    goto/16 :goto_fb1

    .line 2855
    .end local v4    # "disableDelayedMsg":Landroid/os/Message;
    :cond_a39
    const-string v4, "Wait for STATE_ON timeout"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :cond_a3e
    iput v14, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForDisableRetry:I

    .line 2861
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2862
    const-string v4, "MESSAGE_HANDLE_DISABLE_DELAYED: handleDisable"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mhandleDisable(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 2865
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    .line 2866
    const/4 v6, 0x4

    invoke-virtual {v4, v6, v5, v14}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 2867
    .restart local v4    # "disableDelayedMsg":Landroid/os/Message;
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v4, v8, v9}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2868
    const-string v5, "Re-Queue MESSAGE_HANDLE_DISABLE_DELAYED(1)"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    .end local v4    # "disableDelayedMsg":Landroid/os/Message;
    goto/16 :goto_fb1

    .line 2871
    :cond_a6c
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    if-ne v4, v12, :cond_a9d

    .line 2872
    iget v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForDisableRetry:I

    if-ge v4, v9, :cond_a98

    .line 2873
    add-int/2addr v4, v5

    iput v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForDisableRetry:I

    .line 2874
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v5, v14}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 2876
    .restart local v4    # "disableDelayedMsg":Landroid/os/Message;
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v4, v8, v9}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2878
    const-string v5, "Re-Queue MESSAGE_HANDLE_DISABLE_DELAYED(1)"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    goto/16 :goto_fb1

    .line 2881
    .end local v4    # "disableDelayedMsg":Landroid/os/Message;
    :cond_a98
    const-string v4, "Wait for exiting STATE_ON timeout"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :cond_a9d
    const-string v4, "Handle disable is finished"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    goto/16 :goto_fb1

    .line 2781
    .end local v3    # "disabling":Z
    :sswitch_aa4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_HANDLE_ENABLE_DELAYED, mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    .line 2782
    invoke-static {v4}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mEnableExternal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getServiceRestartMs()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 2784
    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mgetServiceRestartMs(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2781
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v3

    if-ne v3, v10, :cond_b9f

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBleAppPresent()Z

    move-result v3

    if-nez v3, :cond_af8

    iget v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForEnableRetry:I

    if-lez v3, :cond_b9f

    .line 2787
    :cond_af8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isBleAppPresent(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBleAppPresent()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWaitForEnableRetry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForEnableRetry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    iput v14, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForEnableRetry:I

    .line 2790
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-nez v3, :cond_b3b

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misBluetoothPersistedStateOnBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_b34

    goto :goto_b3b

    .line 2804
    :cond_b34
    const-string v3, "BLE app running stay in BLE ON state"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    goto/16 :goto_fb1

    .line 2792
    :cond_b3b
    :goto_b3b
    :try_start_b3b
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2793
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_b76

    .line 2794
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmQuietEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v4

    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v5

    .line 2795
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    .line 2794
    invoke-interface {v3, v4, v5}, Landroid/bluetooth/IBluetooth;->updateQuietModeStatus(ZLandroid/content/AttributionSource;)V

    .line 2796
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousOnLeServiceUp(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)V
    :try_end_b76
    .catch Landroid/os/RemoteException; {:try_start_b3b .. :try_end_b76} :catch_b7a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b3b .. :try_end_b76} :catch_b7a
    .catchall {:try_start_b3b .. :try_end_b76} :catchall_b77

    .line 2801
    :cond_b76
    goto :goto_b82

    :catchall_b77
    move-exception v0

    move-object v3, v0

    goto :goto_b91

    .line 2798
    :catch_b7a
    move-exception v0

    move-object v3, v0

    .line 2799
    .local v3, "e":Ljava/lang/Exception;
    :try_start_b7c
    const-string v4, ""

    invoke-static {v7, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b81
    .catchall {:try_start_b7c .. :try_end_b81} :catchall_b77

    .line 2801
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_b82
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2802
    goto/16 :goto_fb1

    .line 2801
    :goto_b91
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2802
    throw v3

    .line 2807
    :cond_b9f
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v3

    if-eq v3, v9, :cond_bd0

    .line 2808
    iget v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForEnableRetry:I

    if-ge v3, v9, :cond_bcb

    .line 2809
    add-int/2addr v3, v5

    iput v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForEnableRetry:I

    .line 2810
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    .line 2811
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2812
    .local v3, "enableDelayedMsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2813
    const-string v4, "Re-Queue MESSAGE_HANDLE_ENABLE_DELAYED"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    goto/16 :goto_fb1

    .line 2816
    .end local v3    # "enableDelayedMsg":Landroid/os/Message;
    :cond_bcb
    const-string v3, "Wait for STATE_OFF timeout"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    :cond_bd0
    iput v14, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForEnableRetry:I

    .line 2822
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    .line 2823
    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2824
    .local v3, "restartMsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mgetServiceRestartMs(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2825
    const-string v4, "Queue MESSAGE_RESTART_BLUETOOTH_SERVICE"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    const-string v4, "Handle enable is finished"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    goto/16 :goto_fb1

    .line 2719
    .end local v3    # "restartMsg":Landroid/os/Message;
    :sswitch_bfa
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_cdb

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBinding(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-nez v3, :cond_cdb

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    .line 2720
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_c1e

    goto/16 :goto_cdb

    .line 2749
    :cond_c1e
    iget v3, v2, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_c54

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_c54

    .line 2750
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2751
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v6

    invoke-virtual {v6, v4, v14, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x258

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2753
    const-string v3, "MESSAGE_ENABLE exist. Queue new MESSAGE_DISABLE"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    goto/16 :goto_fb1

    .line 2758
    :cond_c54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_DISABLE: mBluetooth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBinding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBinding(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2764
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_cca

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_cca

    .line 2765
    iput v14, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForDisableRetry:I

    .line 2766
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    .line 2767
    const/4 v4, 0x4

    invoke-virtual {v3, v4, v14, v14}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2768
    .local v3, "disableDelayedMsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2769
    const-string v4, "Re-Queue MESSAGE_HANDLE_DISABLE_DELAYED(0)"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    .end local v3    # "disableDelayedMsg":Landroid/os/Message;
    goto/16 :goto_fb1

    .line 2771
    :cond_cca
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3, v14}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2772
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mhandleDisable(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 2773
    const-string v3, "MESSAGE_DISABLE: handleDisable"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    goto/16 :goto_fb1

    .line 2721
    :cond_cdb
    :goto_cdb
    iget v3, v2, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_d14

    .line 2722
    const/16 v3, 0x12c

    .line 2724
    .local v3, "delay":I
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_cef

    .line 2725
    const/16 v3, 0x258

    .line 2729
    :cond_cef
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2731
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v8}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v8

    invoke-virtual {v8, v6, v14, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    int-to-long v8, v3

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2733
    const-string v4, "Queue new MESSAGE_DISABLE"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    .end local v3    # "delay":I
    goto/16 :goto_fb1

    .line 2735
    :cond_d14
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v6

    const/4 v8, 0x2

    invoke-virtual {v6, v8, v14, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v6, v8, v9}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2737
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_fb1

    .line 2741
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2742
    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    .line 2743
    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmQuietEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v6

    .line 2744
    iget-object v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v8}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v8

    xor-int/2addr v8, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2742
    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x258

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2745
    const-string v3, "Re-Queue previous MESSAGE_ENABLE"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fb1

    .line 2573
    :sswitch_d6f
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 2574
    .local v3, "quietEnable":I
    iget v6, v2, Landroid/os/Message;->arg2:I

    .line 2576
    .local v6, "isBle":I
    const/4 v8, 0x0

    .line 2577
    .local v8, "packageNameEnable":Ljava/lang/String;
    iget-object v9, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_d7e

    .line 2578
    iget-object v9, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2580
    :cond_d7e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_ENABLE: isBle: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " msg.obj : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmShutdownInProgress(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v9

    if-eqz v9, :cond_daf

    .line 2582
    const-string v4, "Skip Bluetooth Enable in device shutdown process"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    goto/16 :goto_fb1

    .line 2586
    :cond_daf
    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v9

    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_f31

    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v9

    .line 2587
    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_dcb

    goto/16 :goto_f31

    .line 2623
    :cond_dcb
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_e01

    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_e01

    .line 2624
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2628
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v9

    invoke-virtual {v9, v5, v3, v6, v8}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v9, 0x258

    invoke-virtual {v4, v5, v9, v10}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2631
    const-string v4, "MESSAGE_DISABLE exist. Queue new MESSAGE_ENABLE"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    goto/16 :goto_fb1

    .line 2636
    :cond_e01
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MESSAGE_ENABLE("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "): mBluetooth = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    const/16 v9, 0x2a

    invoke-virtual {v4, v9}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2640
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2642
    if-nez v6, :cond_e3e

    .line 2643
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mpersistBluetoothSetting(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 2646
    :cond_e3e
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    if-ne v3, v5, :cond_e44

    move v9, v5

    goto :goto_e45

    :cond_e44
    move v9, v14

    :goto_e45
    invoke-static {v4, v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fputmQuietEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    .line 2650
    :try_start_e48
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2651
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    if-eqz v4, :cond_ed2

    .line 2652
    const/4 v4, 0x1

    .line 2653
    .local v4, "isHandled":Z
    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousGetState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v9

    .line 2654
    .local v9, "state":I
    packed-switch v9, :pswitch_data_101c

    .line 2679
    :pswitch_e67
    const/4 v4, 0x0

    goto :goto_ec1

    .line 2656
    :pswitch_e69
    iget-object v11, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v11}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$misBluetoothPersistedStateOnBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v11

    if-nez v11, :cond_e83

    iget-object v11, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v11}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v11

    if-eqz v11, :cond_e7a

    goto :goto_e83

    .line 2668
    :cond_e7a
    if-ne v6, v5, :cond_e82

    .line 2669
    const-string v5, "BLE_ON State:Queued enable from ble app, stay in ble on"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec1

    .line 2668
    :cond_e82
    :goto_e82
    goto :goto_ec1

    .line 2658
    :cond_e83
    :goto_e83
    const-string v11, "BLE_ON State:Enable from Settings orBT on persisted, going to ON"

    invoke-static {v7, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    iget-object v11, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v11}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v12}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmQuietEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v12

    iget-object v13, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v13}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v13

    .line 2661
    invoke-virtual {v13}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    .line 2660
    invoke-interface {v11, v12, v13}, Landroid/bluetooth/IBluetooth;->updateQuietModeStatus(ZLandroid/content/AttributionSource;)V

    .line 2662
    iget-object v11, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v11}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousOnLeServiceUp(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)V

    .line 2663
    iget-object v11, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v11, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mpersistBluetoothSetting(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 2666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 2667
    .local v11, "callingIdentity":J
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v11    # "callingIdentity":J
    goto :goto_e82

    .line 2676
    :pswitch_ebb
    const-string v5, "MESSAGE_ENABLE: already enabled"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec0
    .catch Landroid/os/RemoteException; {:try_start_e48 .. :try_end_ec0} :catch_ed6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e48 .. :try_end_ec0} :catch_ed6
    .catchall {:try_start_e48 .. :try_end_ec0} :catchall_ed3

    .line 2677
    nop

    .line 2682
    :goto_ec1
    if-eqz v4, :cond_ed2

    .line 2687
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2682
    goto/16 :goto_fb1

    .line 2687
    .end local v4    # "isHandled":Z
    .end local v9    # "state":I
    :cond_ed2
    goto :goto_ede

    :catchall_ed3
    move-exception v0

    move-object v4, v0

    goto :goto_f23

    .line 2684
    :catch_ed6
    move-exception v0

    move-object v4, v0

    .line 2685
    .local v4, "e":Ljava/lang/Exception;
    :try_start_ed8
    const-string v5, ""

    invoke-static {v7, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_edd
    .catchall {:try_start_ed8 .. :try_end_edd} :catchall_ed3

    .line 2687
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_ede
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2688
    nop

    .line 2690
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    if-nez v4, :cond_f04

    .line 2691
    const-string v4, "MESSAGE_ENABLE: handleEnable"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmQuietEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mhandleEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    goto/16 :goto_fb1

    .line 2710
    :cond_f04
    iput v14, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->mWaitForEnableRetry:I

    .line 2711
    const-string v4, "Re-Queue MESSAGE_HANDLE_ENABLE_DELAYED"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    iget-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    .line 2713
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2714
    .local v4, "enableDelayedMsg":Landroid/os/Message;
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    const-wide/16 v9, 0x12c

    invoke-virtual {v5, v4, v9, v10}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2716
    .end local v4    # "enableDelayedMsg":Landroid/os/Message;
    goto/16 :goto_fb1

    .line 2687
    :goto_f23
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2688
    throw v4

    .line 2588
    :cond_f31
    :goto_f31
    iget-object v9, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v9, :cond_f69

    .line 2589
    const/16 v4, 0x12c

    .line 2591
    .local v4, "delay":I
    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_f46

    .line 2592
    const/16 v4, 0x258

    .line 2596
    :cond_f46
    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2601
    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v10}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v10

    invoke-virtual {v10, v5, v3, v6, v8}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    int-to-long v10, v4

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2604
    const-string v5, "Queue new MESSAGE_ENABLE"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    .end local v4    # "delay":I
    goto :goto_fb1

    .line 2609
    :cond_f69
    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v10}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v10

    invoke-virtual {v10, v5, v3, v6, v8}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x12c

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2612
    const-string v9, "Re-Queue previous MESSAGE_ENABLE"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_fb1

    .line 2616
    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2617
    iget-object v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v11}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v11

    invoke-virtual {v11, v10, v14, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v10, 0x258

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2619
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    .end local v3    # "quietEnable":I
    .end local v6    # "isBle":I
    .end local v8    # "packageNameEnable":Ljava/lang/String;
    :cond_fb1
    :goto_fb1
    return-void

    :sswitch_data_fb2
    .sparse-switch
        0x1 -> :sswitch_d6f
        0x2 -> :sswitch_bfa
        0x3 -> :sswitch_aa4
        0x4 -> :sswitch_9c0
        0x16 -> :sswitch_9b4
        0x1e -> :sswitch_9a5
        0x1f -> :sswitch_996
        0x28 -> :sswitch_817
        0x29 -> :sswitch_6a7
        0x2a -> :sswitch_64e
        0x3c -> :sswitch_572
        0x64 -> :sswitch_4f7
        0x65 -> :sswitch_4d1
        0xc8 -> :sswitch_3db
        0x12c -> :sswitch_302
        0x12d -> :sswitch_2ca
        0x190 -> :sswitch_2ab
        0x191 -> :sswitch_25c
        0x1f4 -> :sswitch_1b3
        0x258 -> :sswitch_152
        0x2bc -> :sswitch_11e
        0x2bd -> :sswitch_f5
        0x2be -> :sswitch_4e
        0x2bf -> :sswitch_44
        0x320 -> :sswitch_34
        0x321 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_101c
    .packed-switch 0xb
        :pswitch_ebb
        :pswitch_ebb
        :pswitch_e67
        :pswitch_ebb
        :pswitch_e69
    .end packed-switch
.end method
