.class Lcom/android/server/tare/InternalResourceService$2;
.super Ljava/lang/Object;
.source "InternalResourceService.java"

# interfaces
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/InternalResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/tare/InternalResourceService;

    .line 211
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 217
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$2;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmHandler(Lcom/android/server/tare/InternalResourceService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 219
    return-void
.end method
