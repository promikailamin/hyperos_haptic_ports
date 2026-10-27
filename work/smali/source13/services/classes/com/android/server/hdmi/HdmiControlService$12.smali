.class Lcom/android/server/hdmi/HdmiControlService$12;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(Ljava/util/Collection;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$isEnabled:I

.field final synthetic val$listeners:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 3115
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$12;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$12;->val$listeners:Ljava/util/Collection;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$12;->val$isEnabled:I

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 6
    .param p1, "status"    # I

    .line 3117
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    goto :goto_11

    .line 3122
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$12;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmIsCecAvailable(Lcom/android/server/hdmi/HdmiControlService;Z)V

    goto :goto_17

    .line 3120
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$12;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmIsCecAvailable(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 3124
    :goto_17
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$12;->val$listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 3125
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$12;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$12;->val$listeners:Ljava/util/Collection;

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$12;->val$isEnabled:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmIsCecAvailable(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minvokeHdmiControlStatusChangeListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;IZ)V

    .line 3128
    :cond_2c
    return-void
.end method
