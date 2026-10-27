.class Lcom/android/server/hdmi/SetArcTransmissionStateAction$2;
.super Ljava/lang/Object;
.source "SetArcTransmissionStateAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendReportArcInitiated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 93
    iput-object p1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$2;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 4
    .param p1, "error"    # I

    .line 96
    packed-switch p1, :pswitch_data_1a

    goto :goto_18

    .line 107
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$2;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-static {v0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->-$$Nest$mdisableArc(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    .line 108
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to send <Report Arc Initiated>."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$2;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    goto :goto_18

    .line 103
    :pswitch_17
    nop

    .line 112
    :goto_18
    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_4
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method
