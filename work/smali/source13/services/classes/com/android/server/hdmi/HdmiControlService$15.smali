.class Lcom/android/server/hdmi/HdmiControlService$15;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->setControlEnabled(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 3600
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$15;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 3603
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$15;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mdisableHdmiControlService(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 3604
    return-void
.end method
