.class Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->setMonitorBatteryLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 2709
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;->this$1:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2712
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;->this$1:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->onReceiveInternal(Landroid/content/Intent;)V

    .line 2713
    return-void
.end method
