.class Lcom/android/server/hdmi/HdmiControlService$BinderService$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field final synthetic val$deviceId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 1840
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1843
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_c

    .line 1844
    const-string v0, "Callback cannot be null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    return-void

    .line 1847
    :cond_c
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 1848
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v2

    .line 1849
    .local v2, "playback":Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    if-nez v0, :cond_5d

    if-nez v2, :cond_5d

    .line 1850
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 1851
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmSelectRequestBuffer(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/SelectRequestBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-static {v3, v4, v5}, Lcom/android/server/hdmi/SelectRequestBuffer;->newDeviceSelect(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/SelectRequestBuffer;->set(Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;)V

    .line 1853
    return-void

    .line 1855
    :cond_42
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1856
    const-string v3, "Local tv device not available"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return-void

    .line 1859
    :cond_52
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minvokeCallback(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1860
    return-void

    .line 1862
    :cond_5d
    if-eqz v0, :cond_9a

    .line 1863
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmMhlController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v1

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDeviceById(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v1

    .line 1864
    .local v1, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v1, :cond_92

    .line 1865
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getPortId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v4

    if-ne v3, v4, :cond_84

    .line 1866
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minvokeCallback(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1867
    return-void

    .line 1872
    :cond_84
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->turnOn(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1873
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getPortId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1874
    return-void

    .line 1876
    :cond_92
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1877
    return-void

    .line 1879
    .end local v1    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    :cond_9a
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1880
    return-void
.end method
