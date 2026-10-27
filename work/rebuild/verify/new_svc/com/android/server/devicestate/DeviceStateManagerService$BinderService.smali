.class public final Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;
.super Landroid/hardware/devicestate/IDeviceStateManager$Stub;
.source "DeviceStateManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 2

    .line 1459
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method


# virtual methods
.method public cancelBaseStateOverride()V
    .registers 5

    .line 1547
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1548
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.CONTROL_DEVICE_STATE"

    const-string v3, "Permission required to control base state of device."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1553
    :try_start_15
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mcancelBaseStateOverrideInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1e

    .line 1555
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1556
    throw p0
.end method

.method public cancelStateRequest()V
    .registers 4

    .line 1511
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1512
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1516
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v2, v0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$menforceCancelDeviceStatePermitted(Lcom/android/server/devicestate/DeviceStateManagerService;II)V

    .line 1518
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1520
    :try_start_11
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mcancelStateRequestInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 1522
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1523
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1582
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "DeviceStateManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 1584
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1586
    :try_start_13
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/devicestate/DeviceStateManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 1588
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1589
    throw p0
.end method

.method public getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 2

    .line 1463
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1464
    :try_start_7
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mgetDeviceStateInfoLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 1465
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1576
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1577
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onStateRequestOverlayDismissed(Z)V
    .registers 4

    .line 1563
    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->onStateRequestOverlayDismissed_enforcePermission()V

    .line 1565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1567
    :try_start_7
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$monStateRequestOverlayDismissedInternal(Lcom/android/server/devicestate/DeviceStateManagerService;Z)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 1569
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1570
    throw p0
.end method

.method public registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 5

    if-eqz p1, :cond_19

    .line 1475
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1476
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1478
    :try_start_a
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    .line 1480
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_14
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1481
    throw p0

    .line 1472
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Device state callback must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestBaseStateOverride(Landroid/os/IBinder;II)V
    .registers 12

    .line 1528
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1530
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_STATE"

    const-string v2, "Permission required to control base state of device."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2d

    .line 1537
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1539
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    move-object v5, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mrequestBaseStateOverrideInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIIILandroid/os/IBinder;)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_27

    .line 1541
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1542
    throw p0

    .line 1534
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Request token must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestState(Landroid/os/IBinder;II)V
    .registers 13

    .line 1486
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1491
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0, v3, v4, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$menforceRequestDeviceStatePermitted(Lcom/android/server/devicestate/DeviceStateManagerService;III)V

    if-eqz p1, :cond_38

    .line 1497
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1e
    move v6, v0

    goto :goto_22

    :cond_20
    const/4 v0, 0x0

    goto :goto_1e

    .line 1500
    :goto_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1502
    :try_start_26
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    move-object v5, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mrequestStateInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIIILandroid/os/IBinder;Z)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_32

    .line 1505
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_32
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1506
    throw p0

    .line 1494
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Request token must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
