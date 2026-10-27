.class public Lcom/android/server/hdmi/HdmiControlService$32$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$32;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$32;)V
    .registers 2

    .line 4354
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 4357
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$32;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableCec(Z)V

    .line 4358
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$32;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    .line 4359
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$32;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmMhlController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 4360
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$32;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearCecLocalDevices()V

    return-void
.end method
