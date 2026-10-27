.class public Lcom/android/server/hdmi/HdmiCecLocalDevice$3;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiCecLocalDevice.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 2

    .line 1098
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 2

    if-nez p1, :cond_b

    .line 1102
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    :cond_b
    return-void
.end method
