.class public Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;
.super Ljava/lang/Object;
.source "SetArcTransmissionStateAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    return-void

    .line 101
    :cond_4
    iget-object p1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-static {p1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->-$$Nest$mdisableArc(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    const/4 p1, 0x0

    .line 102
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed to send <Report Arc Initiated>."

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object p0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method
