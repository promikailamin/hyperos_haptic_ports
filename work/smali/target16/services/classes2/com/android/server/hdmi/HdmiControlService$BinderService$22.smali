.class public Lcom/android/server/hdmi/HdmiControlService$BinderService$22;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$isStandbyModeOn:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Z)V
    .registers 3

    .line 2950
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$22;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$22;->val$isStandbyModeOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2953
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$22;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$22;->val$isStandbyModeOn:Z

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->setStandbyMode(Z)V

    return-void
.end method
