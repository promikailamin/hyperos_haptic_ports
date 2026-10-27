.class Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
.super Landroid/os/Handler;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrokerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 2

    .line 1387
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 1391
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_4f2

    .line 1640
    :pswitch_8
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4bd

    .line 1588
    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 1589
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleBluetoothA2dpActiveDeviceChangeExt  state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1594
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prof="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supprNoisy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioDeviceBroker"

    .line 1596
    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 1589
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1597
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1598
    :try_start_89
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    iget v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    iget-boolean v8, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    iget v9, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/audio/AudioDeviceInventory;->handleBluetoothA2dpActiveDeviceChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 1601
    monitor-exit v1

    .line 1602
    .end local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    goto/16 :goto_4bd

    .line 1601
    .restart local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    :catchall_9f
    move-exception v2

    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_89 .. :try_end_a1} :catchall_9f

    throw v2

    .line 1634
    .end local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    :pswitch_a2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1635
    :try_start_a9
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeHearingAidDeviceUnavailableNow(Ljava/lang/String;)V

    .line 1636
    monitor-exit v0

    .line 1638
    goto/16 :goto_4bd

    .line 1636
    :catchall_b9
    move-exception v1

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_a9 .. :try_end_bb} :catchall_b9

    throw v1

    .line 1628
    :pswitch_bc
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1629
    :try_start_c3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeLeAudioUnavailableNow(Ljava/lang/String;I)V

    .line 1630
    monitor-exit v0

    .line 1631
    goto/16 :goto_4bd

    .line 1630
    :catchall_d5
    move-exception v1

    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_c3 .. :try_end_d7} :catchall_d5

    throw v1

    .line 1458
    :pswitch_d8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 1459
    .local v0, "btDeviceInfo":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_e2

    goto/16 :goto_4bd

    .line 1460
    :cond_e2
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1461
    :try_start_e9
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 1462
    .local v2, "a2dpCodec":I
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    iget-object v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    invoke-direct {v5, v6, v7, v2}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {v4, v5, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothA2dpDeviceConfigChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 1465
    .end local v2    # "a2dpCodec":I
    monitor-exit v1

    .line 1466
    goto/16 :goto_4bd

    .line 1465
    :catchall_10a
    move-exception v2

    monitor-exit v1
    :try_end_10c
    .catchall {:try_start_e9 .. :try_end_10c} :catchall_10a

    throw v2

    .line 1476
    .end local v0    # "btDeviceInfo":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    :pswitch_10d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;

    .line 1477
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1478
    :try_start_118
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mIndex:I

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mMaxIndex:I

    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mStreamType:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/audio/BtHelper;->setLeAudioVolume(III)V

    .line 1479
    monitor-exit v1

    .line 1480
    .end local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;
    goto/16 :goto_4bd

    .line 1479
    .restart local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;
    :catchall_12a
    move-exception v2

    monitor-exit v1
    :try_end_12c
    .catchall {:try_start_118 .. :try_end_12c} :catchall_12a

    throw v2

    .line 1571
    .end local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;
    :pswitch_12d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 1572
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_137

    goto/16 :goto_4bd

    .line 1573
    :cond_137
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg: onBluetoothActiveDeviceChange  state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1578
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prof="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supprNoisy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mEventSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioDeviceBroker"

    .line 1582
    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 1573
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1583
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1584
    :try_start_198
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)I

    .line 1585
    monitor-exit v1

    .line 1586
    .end local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    goto/16 :goto_4bd

    .line 1585
    .restart local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    :catchall_1a4
    move-exception v2

    monitor-exit v1
    :try_end_1a6
    .catchall {:try_start_198 .. :try_end_1a6} :catchall_1a4

    throw v2

    .line 1532
    .end local v0    # "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    :pswitch_1a7
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1533
    :try_start_1ac
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1b3
    .catchall {:try_start_1ac .. :try_end_1b3} :catchall_1c5

    .line 1534
    :try_start_1b3
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Lcom/android/server/audio/BtHelper;->onScoAudioStateChanged(I)V

    .line 1535
    monitor-exit v1
    :try_end_1bf
    .catchall {:try_start_1b3 .. :try_end_1bf} :catchall_1c2

    .line 1536
    :try_start_1bf
    monitor-exit v0
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1c5

    .line 1537
    goto/16 :goto_4bd

    .line 1535
    :catchall_1c2
    move-exception v2

    :try_start_1c3
    monitor-exit v1
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_1c2

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_1c4
    throw v2

    .line 1536
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_1c5
    move-exception v1

    monitor-exit v0
    :try_end_1c7
    .catchall {:try_start_1c4 .. :try_end_1c7} :catchall_1c5

    throw v1

    .line 1508
    :pswitch_1c8
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1509
    :try_start_1cd
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1d4
    .catchall {:try_start_1cd .. :try_end_1d4} :catchall_1e4

    .line 1510
    :try_start_1d4
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    .line 1511
    monitor-exit v1
    :try_end_1de
    .catchall {:try_start_1d4 .. :try_end_1de} :catchall_1e1

    .line 1512
    :try_start_1de
    monitor-exit v0
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_1e4

    .line 1513
    goto/16 :goto_4bd

    .line 1511
    :catchall_1e1
    move-exception v2

    :try_start_1e2
    monitor-exit v1
    :try_end_1e3
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_1e1

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_1e3
    throw v2

    .line 1512
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_1e4
    move-exception v1

    monitor-exit v0
    :try_end_1e6
    .catchall {:try_start_1e3 .. :try_end_1e6} :catchall_1e4

    throw v1

    .line 1498
    :pswitch_1e7
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1499
    :try_start_1ec
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1f3
    .catchall {:try_start_1ec .. :try_end_1f3} :catchall_20f

    .line 1500
    :try_start_1f3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    .line 1501
    .local v2, "info":Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mCb:Landroid/os/IBinder;

    iget v6, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mUid:I

    iget v7, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mPid:I

    iget-object v8, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    iget v9, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mScoAudioMode:I

    iget-object v10, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mEventSource:Ljava/lang/String;

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;IILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 1503
    .end local v2    # "info":Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;
    monitor-exit v1
    :try_end_209
    .catchall {:try_start_1f3 .. :try_end_209} :catchall_20c

    .line 1504
    :try_start_209
    monitor-exit v0
    :try_end_20a
    .catchall {:try_start_209 .. :try_end_20a} :catchall_20f

    .line 1505
    goto/16 :goto_4bd

    .line 1503
    :catchall_20c
    move-exception v2

    :try_start_20d
    monitor-exit v1
    :try_end_20e
    .catchall {:try_start_20d .. :try_end_20e} :catchall_20c

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_20e
    throw v2

    .line 1504
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_20f
    move-exception v1

    monitor-exit v0
    :try_end_211
    .catchall {:try_start_20e .. :try_end_211} :catchall_20f

    throw v1

    .line 1516
    :pswitch_212
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1517
    :try_start_217
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_21e
    .catchall {:try_start_217 .. :try_end_21e} :catchall_22e

    .line 1518
    :try_start_21e
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRoute(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    .line 1519
    monitor-exit v1
    :try_end_228
    .catchall {:try_start_21e .. :try_end_228} :catchall_22b

    .line 1520
    :try_start_228
    monitor-exit v0
    :try_end_229
    .catchall {:try_start_228 .. :try_end_229} :catchall_22e

    .line 1521
    goto/16 :goto_4bd

    .line 1519
    :catchall_22b
    move-exception v2

    :try_start_22c
    monitor-exit v1
    :try_end_22d
    .catchall {:try_start_22c .. :try_end_22d} :catchall_22b

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_22d
    throw v2

    .line 1520
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_22e
    move-exception v1

    monitor-exit v0
    :try_end_230
    .catchall {:try_start_22d .. :try_end_230} :catchall_22e

    throw v1

    .line 1624
    :pswitch_231
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1625
    .local v0, "capturePreset":I
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->onSaveClearPreferredDevicesForCapturePreset(I)V

    .line 1626
    .end local v0    # "capturePreset":I
    goto/16 :goto_4bd

    .line 1617
    :pswitch_23e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1618
    .restart local v0    # "capturePreset":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1620
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->onSaveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V

    .line 1622
    .end local v0    # "capturePreset":I
    .end local v1    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    goto/16 :goto_4bd

    .line 1614
    :pswitch_24f
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$mcheckMessagesMuteMusic(Lcom/android/server/audio/AudioDeviceBroker;I)V

    .line 1615
    goto/16 :goto_4bd

    .line 1524
    :pswitch_256
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1525
    :try_start_25b
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_262
    .catchall {:try_start_25b .. :try_end_262} :catchall_272

    .line 1526
    :try_start_262
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V

    .line 1527
    monitor-exit v1
    :try_end_26c
    .catchall {:try_start_262 .. :try_end_26c} :catchall_26f

    .line 1528
    :try_start_26c
    monitor-exit v0
    :try_end_26d
    .catchall {:try_start_26c .. :try_end_26d} :catchall_272

    .line 1529
    goto/16 :goto_4bd

    .line 1527
    :catchall_26f
    move-exception v2

    :try_start_270
    monitor-exit v1
    :try_end_271
    .catchall {:try_start_270 .. :try_end_271} :catchall_26f

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_271
    throw v2

    .line 1528
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_272
    move-exception v1

    monitor-exit v0
    :try_end_274
    .catchall {:try_start_271 .. :try_end_274} :catchall_272

    throw v1

    .line 1610
    :pswitch_275
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1611
    .local v0, "strategy":I
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->onSaveRemovePreferredDevices(I)V

    .line 1612
    .end local v0    # "strategy":I
    goto/16 :goto_4bd

    .line 1604
    :pswitch_282
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1605
    .restart local v0    # "strategy":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1607
    .restart local v1    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->onSaveSetPreferredDevices(ILjava/util/List;)V

    .line 1608
    .end local v0    # "strategy":I
    .end local v1    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    goto/16 :goto_4bd

    .line 1558
    :pswitch_293
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_2b3

    .line 1559
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1560
    :try_start_29e
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/BtHelper;->onBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1561
    monitor-exit v0

    goto/16 :goto_4bd

    :catchall_2b0
    move-exception v1

    monitor-exit v0
    :try_end_2b2
    .catchall {:try_start_29e .. :try_end_2b2} :catchall_2b0

    throw v1

    .line 1563
    :cond_2b3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1564
    :try_start_2b8
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2bf
    .catchall {:try_start_2b8 .. :try_end_2bf} :catchall_2d3

    .line 1565
    :try_start_2bf
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v4}, Lcom/android/server/audio/BtHelper;->onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V

    .line 1566
    monitor-exit v1
    :try_end_2cd
    .catchall {:try_start_2bf .. :try_end_2cd} :catchall_2d0

    .line 1567
    :try_start_2cd
    monitor-exit v0
    :try_end_2ce
    .catchall {:try_start_2cd .. :try_end_2ce} :catchall_2d3

    .line 1569
    goto/16 :goto_4bd

    .line 1566
    :catchall_2d0
    move-exception v2

    :try_start_2d1
    monitor-exit v1
    :try_end_2d2
    .catchall {:try_start_2d1 .. :try_end_2d2} :catchall_2d0

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_2d2
    throw v2

    .line 1567
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_2d3
    move-exception v1

    monitor-exit v0
    :try_end_2d5
    .catchall {:try_start_2d2 .. :try_end_2d5} :catchall_2d3

    throw v1

    .line 1545
    :pswitch_2d6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_2f2

    .line 1546
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1547
    :try_start_2e1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onBtProfileDisconnected(I)V

    .line 1548
    monitor-exit v0

    goto/16 :goto_4bd

    :catchall_2ef
    move-exception v1

    monitor-exit v0
    :try_end_2f1
    .catchall {:try_start_2e1 .. :try_end_2f1} :catchall_2ef

    throw v1

    .line 1550
    :cond_2f2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1551
    :try_start_2f7
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2fe
    .catchall {:try_start_2f7 .. :try_end_2fe} :catchall_30e

    .line 1552
    :try_start_2fe
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->disconnectHeadset()V

    .line 1553
    monitor-exit v1
    :try_end_308
    .catchall {:try_start_2fe .. :try_end_308} :catchall_30b

    .line 1554
    :try_start_308
    monitor-exit v0
    :try_end_309
    .catchall {:try_start_308 .. :try_end_309} :catchall_30e

    .line 1556
    goto/16 :goto_4bd

    .line 1553
    :catchall_30b
    move-exception v2

    :try_start_30c
    monitor-exit v1
    :try_end_30d
    .catchall {:try_start_30c .. :try_end_30d} :catchall_30b

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_30d
    throw v2

    .line 1554
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_30e
    move-exception v1

    monitor-exit v0
    :try_end_310
    .catchall {:try_start_30d .. :try_end_310} :catchall_30e

    throw v1

    .line 1487
    :pswitch_311
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1488
    :try_start_316
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_31d
    .catchall {:try_start_316 .. :try_end_31d} :catchall_337

    .line 1489
    :try_start_31d
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fputmModeOwnerPid(Lcom/android/server/audio/AudioDeviceBroker;I)V

    .line 1490
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eq v4, v2, :cond_330

    .line 1491
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v4, "setNewModeOwner"

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    .line 1493
    :cond_330
    monitor-exit v1
    :try_end_331
    .catchall {:try_start_31d .. :try_end_331} :catchall_334

    .line 1494
    :try_start_331
    monitor-exit v0
    :try_end_332
    .catchall {:try_start_331 .. :try_end_332} :catchall_337

    .line 1495
    goto/16 :goto_4bd

    .line 1493
    :catchall_334
    move-exception v2

    :try_start_335
    monitor-exit v1
    :try_end_336
    .catchall {:try_start_335 .. :try_end_336} :catchall_334

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_336
    throw v2

    .line 1494
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_337
    move-exception v1

    monitor-exit v0
    :try_end_339
    .catchall {:try_start_336 .. :try_end_339} :catchall_337

    throw v1

    .line 1482
    :pswitch_33a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1483
    :try_start_341
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(I)V

    .line 1484
    monitor-exit v0

    .line 1485
    goto/16 :goto_4bd

    .line 1484
    :catchall_34f
    move-exception v1

    monitor-exit v0
    :try_end_351
    .catchall {:try_start_341 .. :try_end_351} :catchall_34f

    throw v1

    .line 1471
    :pswitch_352
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1472
    :try_start_359
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/BtHelper;->setHearingAidVolume(II)V

    .line 1473
    monitor-exit v0

    .line 1474
    goto/16 :goto_4bd

    .line 1473
    :catchall_369
    move-exception v1

    monitor-exit v0
    :try_end_36b
    .catchall {:try_start_359 .. :try_end_36b} :catchall_369

    throw v1

    .line 1421
    :pswitch_36c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1422
    :try_start_373
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onReportNewRoutes()V

    .line 1423
    monitor-exit v0

    .line 1424
    goto/16 :goto_4bd

    .line 1423
    :catchall_37f
    move-exception v1

    monitor-exit v0
    :try_end_381
    .catchall {:try_start_373 .. :try_end_381} :catchall_37f

    throw v1

    .line 1468
    :pswitch_382
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monSendBecomingNoisyIntent(Lcom/android/server/audio/AudioDeviceBroker;)V

    .line 1469
    goto/16 :goto_4bd

    .line 1449
    :pswitch_389
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1450
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1451
    :try_start_394
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 1452
    .local v4, "a2dpCodec":I
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v6, v0, v1, v4}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {v5, v6, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothA2dpDeviceConfigChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 1455
    .end local v4    # "a2dpCodec":I
    monitor-exit v2

    .line 1456
    goto/16 :goto_4bd

    .line 1455
    :catchall_3af
    move-exception v1

    monitor-exit v2
    :try_end_3b1
    .catchall {:try_start_394 .. :try_end_3b1} :catchall_3af

    throw v1

    .line 1444
    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :pswitch_3b2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1445
    :try_start_3b9
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 1446
    monitor-exit v0

    .line 1447
    goto/16 :goto_4bd

    .line 1446
    :catchall_3cb
    move-exception v1

    monitor-exit v0
    :try_end_3cd
    .catchall {:try_start_3b9 .. :try_end_3cd} :catchall_3cb

    throw v1

    .line 1436
    :pswitch_3ce
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1437
    :try_start_3d3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3da
    .catchall {:try_start_3d3 .. :try_end_3da} :catchall_3ea

    .line 1438
    :try_start_3da
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 1439
    monitor-exit v1
    :try_end_3e4
    .catchall {:try_start_3da .. :try_end_3e4} :catchall_3e7

    .line 1440
    :try_start_3e4
    monitor-exit v0
    :try_end_3e5
    .catchall {:try_start_3e4 .. :try_end_3e5} :catchall_3ea

    .line 1441
    goto/16 :goto_4bd

    .line 1439
    :catchall_3e7
    move-exception v2

    :try_start_3e8
    monitor-exit v1
    :try_end_3e9
    .catchall {:try_start_3e8 .. :try_end_3e9} :catchall_3e7

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_3e9
    throw v2

    .line 1440
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_3ea
    move-exception v1

    monitor-exit v0
    :try_end_3ec
    .catchall {:try_start_3e9 .. :try_end_3ec} :catchall_3ea

    throw v1

    .line 1426
    :pswitch_3ed
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1427
    :try_start_3f4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 1428
    .local v2, "btInfo":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v4

    .line 1429
    iget v5, v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    const/16 v6, 0x16

    if-ne v5, v6, :cond_40a

    iget-boolean v5, v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    if-eqz v5, :cond_409

    goto :goto_40a

    .line 1431
    :cond_409
    goto :goto_414

    .line 1430
    :cond_40a
    :goto_40a
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getBluetoothContextualVolumeStream()I

    move-result v1

    .line 1428
    :goto_414
    invoke-virtual {v4, v2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->onSetBtActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V

    .line 1432
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmContext(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Lcom/android/server/audio/AudioServiceStub;->notifyBtStateToDolbyEffectController(Landroid/content/Context;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)V

    .line 1433
    .end local v2    # "btInfo":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    monitor-exit v0

    .line 1434
    goto/16 :goto_4bd

    .line 1433
    :catchall_427
    move-exception v1

    monitor-exit v0
    :try_end_429
    .catchall {:try_start_3f4 .. :try_end_429} :catchall_427

    throw v1

    .line 1540
    :pswitch_42a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1541
    :try_start_431
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onToggleHdmi()V

    .line 1542
    monitor-exit v0

    .line 1543
    goto/16 :goto_4bd

    .line 1542
    :catchall_43d
    move-exception v1

    monitor-exit v0
    :try_end_43f
    .catchall {:try_start_431 .. :try_end_43f} :catchall_43d

    throw v1

    .line 1416
    :pswitch_440
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_44c

    goto :goto_44d

    :cond_44c
    move v2, v3

    :goto_44d
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v1, v4, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monSetForceUse(Lcom/android/server/audio/AudioDeviceBroker;IIZLjava/lang/String;)V

    .line 1418
    goto :goto_4bd

    .line 1410
    :pswitch_455
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1411
    :try_start_45c
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onBroadcastScoConnectionState(I)V

    .line 1412
    monitor-exit v0

    .line 1413
    goto :goto_4bd

    .line 1412
    :catchall_469
    move-exception v1

    monitor-exit v0
    :try_end_46b
    .catchall {:try_start_45c .. :try_end_46b} :catchall_469

    throw v1

    .line 1404
    :pswitch_46c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1405
    :try_start_473
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    .line 1407
    monitor-exit v0

    .line 1408
    goto :goto_4bd

    .line 1407
    :catchall_482
    move-exception v1

    monitor-exit v0
    :try_end_484
    .catchall {:try_start_473 .. :try_end_484} :catchall_482

    throw v1

    .line 1393
    :pswitch_485
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1394
    :try_start_48a
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_491
    .catchall {:try_start_48a .. :try_end_491} :catchall_4ba

    .line 1395
    :try_start_491
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$minitRoutingStrategyIds(Lcom/android/server/audio/AudioDeviceBroker;)V

    .line 1396
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 1397
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory;->onRestoreDevices()V

    .line 1398
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->onAudioServerDiedRestoreA2dp()V

    .line 1399
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v4, "MSG_RESTORE_DEVICES"

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRoute(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    .line 1400
    monitor-exit v1
    :try_end_4b5
    .catchall {:try_start_491 .. :try_end_4b5} :catchall_4b7

    .line 1401
    :try_start_4b5
    monitor-exit v0
    :try_end_4b6
    .catchall {:try_start_4b5 .. :try_end_4b6} :catchall_4ba

    .line 1402
    goto :goto_4bd

    .line 1400
    :catchall_4b7
    move-exception v2

    :try_start_4b8
    monitor-exit v1
    :try_end_4b9
    .catchall {:try_start_4b8 .. :try_end_4b9} :catchall_4b7

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_4b9
    throw v2

    .line 1401
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_4ba
    move-exception v1

    monitor-exit v0
    :try_end_4bc
    .catchall {:try_start_4b9 .. :try_end_4bc} :catchall_4ba

    throw v1

    .line 1645
    :goto_4bd
    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$sfgetMESSAGES_MUTE_MUSIC()Ljava/util/Set;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d6

    .line 1646
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v1, 0x23

    const/16 v2, 0x64

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$msendMsg(Lcom/android/server/audio/AudioDeviceBroker;III)V

    .line 1649
    :cond_4d6
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$smisMessageHandledUnderWakelock(I)Z

    move-result v0

    if-eqz v0, :cond_4f0

    .line 1651
    :try_start_4de
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBrokerEventWakeLock(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4e7
    .catch Ljava/lang/Exception; {:try_start_4de .. :try_end_4e7} :catch_4e8

    .line 1654
    goto :goto_4f0

    .line 1652
    :catch_4e8
    move-exception v0

    .line 1653
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "Exception releasing wakelock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1656
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4f0
    :goto_4f0
    return-void

    nop

    :pswitch_data_4f2
    .packed-switch 0x1
        :pswitch_485
        :pswitch_46c
        :pswitch_455
        :pswitch_440
        :pswitch_440
        :pswitch_42a
        :pswitch_3ed
        :pswitch_8
        :pswitch_3ce
        :pswitch_3b2
        :pswitch_389
        :pswitch_382
        :pswitch_36c
        :pswitch_352
        :pswitch_33a
        :pswitch_311
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_2d6
        :pswitch_293
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_282
        :pswitch_275
        :pswitch_256
        :pswitch_24f
        :pswitch_36c
        :pswitch_23e
        :pswitch_231
        :pswitch_212
        :pswitch_8
        :pswitch_8
        :pswitch_1e7
        :pswitch_1c8
        :pswitch_1a7
        :pswitch_12d
        :pswitch_10d
        :pswitch_d8
        :pswitch_bc
        :pswitch_a2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_24
    .end packed-switch
.end method
