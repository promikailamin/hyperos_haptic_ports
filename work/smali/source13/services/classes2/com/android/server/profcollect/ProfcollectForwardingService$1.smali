.class Lcom/android/server/profcollect/ProfcollectForwardingService$1;
.super Lcom/android/server/profcollect/IProviderStatusCallback$Stub;
.source "ProfcollectForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/profcollect/ProfcollectForwardingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 63
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$1;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-direct {p0}, Lcom/android/server/profcollect/IProviderStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderReady()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$1;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$fgetmHandler(Lcom/android/server/profcollect/ProfcollectForwardingService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    return-void
.end method
