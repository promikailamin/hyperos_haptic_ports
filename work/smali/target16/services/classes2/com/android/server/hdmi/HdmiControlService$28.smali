.class public Lcom/android/server/hdmi/HdmiControlService$28;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$devices:Ljava/util/List;

.field public final synthetic val$standbyAction:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V
    .registers 4

    .line 3998
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$28;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$28;->val$devices:Ljava/util/List;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$28;->val$standbyAction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 4

    .line 4001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On standby-action cleared:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$28;->val$devices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4003
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$28;->val$devices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 4004
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$28;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$28;->val$standbyAction:I

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->onPendingActionsCleared(I)V

    :cond_2c
    return-void
.end method
