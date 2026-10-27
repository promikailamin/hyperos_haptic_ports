.class public Lcom/android/server/hdmi/HdmiControlService$22;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$allocatedDevices:Ljava/util/ArrayList;

.field public final synthetic val$allocatingDevices:Ljava/util/ArrayList;

.field public final synthetic val$finished:[I

.field public final synthetic val$initiatedBy:I

.field public final synthetic val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V
    .registers 7

    .line 1472
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$allocatedDevices:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$allocatingDevices:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$finished:[I

    iput p6, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$initiatedBy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllocated(II)V
    .registers 6

    const/16 v0, 0xf

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2a

    .line 1476
    const-string p2, "HdmiControlService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to allocate address:[device_type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeLocalDeviceWithType(I)V

    goto :goto_63

    .line 1483
    :cond_2a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 1485
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v2

    .line 1483
    invoke-static {v0, p2, p1, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mcreateDeviceInfo(Lcom/android/server/hdmi/HdmiControlService;IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1486
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1489
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 1490
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1491
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->addLogicalAddress(I)I

    .line 1492
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$allocatedDevices:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    :goto_63
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$allocatingDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$finished:[I

    aget v0, p2, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aput v0, p2, v1

    if-ne p1, v0, :cond_ef

    .line 1497
    iget p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$initiatedBy:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_81

    const/4 v0, 0x5

    if-eq p1, v0, :cond_81

    .line 1502
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$monInitializeCecComplete(Lcom/android/server/hdmi/HdmiControlService;I)V

    goto :goto_a0

    :cond_81
    if-ne p1, p2, :cond_a0

    .line 1503
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p1

    if-nez p1, :cond_a0

    .line 1506
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1507
    :try_start_92
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiControlEnabled(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mannounceHdmiControlStatusChange(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 1508
    monitor-exit p1

    goto :goto_a0

    :catchall_9d
    move-exception p0

    monitor-exit p1
    :try_end_9f
    .catchall {:try_start_92 .. :try_end_9f} :catchall_9d

    throw p0

    .line 1513
    :cond_a0
    :goto_a0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$allocatedDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeUnusedLocalDevices(Ljava/util/ArrayList;)V

    .line 1514
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 1515
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$allocatedDevices:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$initiatedBy:I

    invoke-virtual {p1, p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->notifyAddressAllocated(Ljava/util/ArrayList;I)V

    .line 1518
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_d0

    .line 1519
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1520
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1522
    :cond_d0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p1

    if-eqz p1, :cond_e6

    .line 1523
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1524
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1526
    :cond_e6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecMessageBuffer(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/CecMessageBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/CecMessageBuffer;->processMessages()V

    :cond_ef
    return-void
.end method
