.class final Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UsageEventTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 2547
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 2553
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2554
    return-void
.end method
