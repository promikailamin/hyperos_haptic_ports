.class public Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;
.super Landroid/os/Handler;
.source "DevicePresenceProcessor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V
    .registers 2

    .line 1439
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1440
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 1465
    iget p1, p1, Landroid/os/Message;->what:I

    .line 1466
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmBtDisconnectedDevices(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 1467
    :try_start_9
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmBtDisconnectedDevicesBlePresence(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 1472
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmBtDisconnectedDevices(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    if-nez v1, :cond_5b

    .line 1474
    const-string v1, "CDM_DevicePresenceProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ) is likely BLE out of range, sending callback with event ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmNearbyBleDevices(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;

    move-result-object v2

    new-instance v4, Landroid/companion/DevicePresenceEvent;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v3, v5}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-static {v1, v2, p1, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$monDevicePresenceEvent(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    goto :goto_5b

    :catchall_59
    move-exception p0

    goto :goto_73

    .line 1480
    :cond_5b
    :goto_5b
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmBtDisconnectedDevices(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1481
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {p0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmBtDisconnectedDevicesBlePresence(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1482
    monitor-exit v0

    return-void

    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_9 .. :try_end_74} :catchall_59

    throw p0
.end method

.method public scheduleBleDeviceDisappeared(I)V
    .registers 4

    .line 1444
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1445
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1447
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleBleDeviceDisappeared for Device: ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x2710

    .line 1448
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public unScheduleDeviceDisappeared(I)V
    .registers 5

    .line 1452
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1453
    const-string v0, "CDM_DevicePresenceProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unScheduleDeviceDisappeared for Device( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmBtDisconnectedDevices(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 1455
    :try_start_29
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmBtDisconnectedDevices(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1456
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmBtDisconnectedDevicesBlePresence(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1457
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_44

    .line 1459
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :catchall_44
    move-exception p0

    .line 1457
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0

    :cond_47
    return-void
.end method
