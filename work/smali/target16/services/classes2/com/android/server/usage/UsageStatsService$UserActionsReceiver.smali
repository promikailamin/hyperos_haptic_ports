.class public Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsageStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 652
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 655
    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 656
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 657
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    if-ltz p1, :cond_3e

    .line 659
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmHandler(Lcom/android/server/usage/UsageStatsService;)Landroid/os/Handler;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 661
    :cond_25
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    if-lez p1, :cond_3e

    .line 663
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmHandler(Lcom/android/server/usage/UsageStatsService;)Landroid/os/Handler;

    move-result-object p0

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3e
    return-void
.end method
