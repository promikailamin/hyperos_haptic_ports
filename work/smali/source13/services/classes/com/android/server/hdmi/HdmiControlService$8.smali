.class Lcom/android/server/hdmi/HdmiControlService$8;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$allocatedDevices:Ljava/util/ArrayList;

.field final synthetic val$allocatingDevices:Ljava/util/ArrayList;

.field final synthetic val$finished:[I

.field final synthetic val$initiatedBy:I

.field final synthetic val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 1033
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$allocatedDevices:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$allocatingDevices:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$finished:[I

    iput p6, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$initiatedBy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllocated(II)V
    .registers 8
    .param p1, "deviceType"    # I
    .param p2, "logicalAddress"    # I

    .line 1036
    const/4 v0, 0x0

    const/16 v1, 0xf

    if-ne p2, v1, :cond_24

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to allocate address:[device_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiControlService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 1043
    :cond_24
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 1045
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v2

    .line 1043
    invoke-static {v1, p2, p1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mcreateDeviceInfo(Lcom/android/server/hdmi/HdmiControlService;IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 1046
    .local v1, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1047
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 1048
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/hdmi/HdmiCecController;->addLogicalAddress(I)I

    .line 1049
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$allocatedDevices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    .end local v1    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_4e
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$allocatingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$finished:[I

    aget v3, v2, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v2, v0

    if-ne v1, v3, :cond_ac

    .line 1054
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, v4}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 1055
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$initiatedBy:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6d

    .line 1059
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$monInitializeCecComplete(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 1061
    :cond_6d
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$allocatedDevices:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$8;->val$initiatedBy:I

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mnotifyAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V

    .line 1064
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8d

    .line 1065
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1066
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmDisplayStatusCallback(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1068
    :cond_8d
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 1069
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1070
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmOtpCallbackPendingAddressAllocation(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1072
    :cond_a3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$8;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecMessageBuffer(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/CecMessageBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/CecMessageBuffer;->processMessages()V

    .line 1074
    :cond_ac
    return-void
.end method
