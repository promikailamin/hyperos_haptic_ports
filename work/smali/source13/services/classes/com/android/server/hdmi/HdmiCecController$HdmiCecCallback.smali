.class final Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HdmiCecCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecController;

    .line 1203
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCecMessage$0$com-android-server-hdmi-HdmiCecController$HdmiCecCallback(II[B)V
    .registers 5
    .param p1, "initiator"    # I
    .param p2, "destination"    # I
    .param p3, "body"    # [B

    .line 1206
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->-$$Nest$mhandleIncomingCecCommand(Lcom/android/server/hdmi/HdmiCecController;II[B)V

    return-void
.end method

.method synthetic lambda$onHotplugEvent$1$com-android-server-hdmi-HdmiCecController$HdmiCecCallback(IZ)V
    .registers 4
    .param p1, "portId"    # I
    .param p2, "connected"    # Z

    .line 1210
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-static {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->-$$Nest$mhandleHotplug(Lcom/android/server/hdmi/HdmiCecController;IZ)V

    return-void
.end method

.method public onCecMessage(II[B)V
    .registers 6
    .param p1, "initiator"    # I
    .param p2, "destination"    # I
    .param p3, "body"    # [B

    .line 1205
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;II[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1207
    return-void
.end method

.method public onHotplugEvent(IZ)V
    .registers 5
    .param p1, "portId"    # I
    .param p2, "connected"    # Z

    .line 1210
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1211
    return-void
.end method
