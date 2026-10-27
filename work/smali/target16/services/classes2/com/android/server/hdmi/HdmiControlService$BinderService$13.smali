.class public Lcom/android/server/hdmi/HdmiControlService$BinderService$13;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$mute:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Z)V
    .registers 3

    .line 2758
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$mute:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2761
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2763
    const-string p0, "HdmiControlService"

    const-string v0, "Local tv device not available"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2766
    :cond_12
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$mute:Z

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeMute(Z)V

    return-void
.end method
