.class public Lcom/android/server/hdmi/HdmiControlService$23;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field public final synthetic val$command:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final synthetic val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 5

    .line 1753
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$command:Lcom/android/server/hdmi/HdmiCecMessage;

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 4

    if-eqz p1, :cond_11

    .line 1757
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    new-instance v0, Lcom/android/server/hdmi/ResendCecCommandAction;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$command:Lcom/android/server/hdmi/HdmiCecMessage;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/hdmi/ResendCecCommandAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void

    .line 1759
    :cond_11
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    if-eqz p0, :cond_18

    .line 1760
    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    :cond_18
    return-void
.end method
