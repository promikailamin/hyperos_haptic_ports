.class public Lcom/android/server/hdmi/HdmiControlService$BinderService$2;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field public final synthetic val$portId:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 4

    .line 2428
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$portId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2431
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_c

    .line 2432
    const-string p0, "Callback cannot be null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2435
    :cond_c
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2437
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$portId:I

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    .line 2440
    :cond_1e
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2442
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$portId:I

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    .line 2446
    :cond_30
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 2447
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmSelectRequestBuffer(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/SelectRequestBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$portId:I

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-static {v1, v2, p0}, Lcom/android/server/hdmi/SelectRequestBuffer;->newPortSelect(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/SelectRequestBuffer;->set(Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;)V

    return-void

    .line 2451
    :cond_52
    const-string v0, "Local device not available"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minvokeCallback(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void
.end method
