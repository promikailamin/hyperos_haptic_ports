.class Landroid/os/TurboSchedMonitorImpl$2;
.super Ljava/util/TimerTask;
.source "TurboSchedMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/TurboSchedMonitorImpl;->notifyOnScroll(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/TurboSchedMonitorImpl;


# direct methods
.method constructor blacklist <init>(Landroid/os/TurboSchedMonitorImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/TurboSchedMonitorImpl;

    .line 644
    iput-object p1, p0, Landroid/os/TurboSchedMonitorImpl$2;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 647
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$2;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-static {v0}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$fgetmLastScrollTime(Landroid/os/TurboSchedMonitorImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    .line 648
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$2;->this$0:Landroid/os/TurboSchedMonitorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$fputmIsOnScroll(Landroid/os/TurboSchedMonitorImpl;Z)V

    .line 649
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$2;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-static {v0, v1}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$mnotifyOnScrollToTurboSchedService(Landroid/os/TurboSchedMonitorImpl;Z)V

    .line 650
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$2;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-static {v0}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$fgetmScrollDelayTask(Landroid/os/TurboSchedMonitorImpl;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 651
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$2;->this$0:Landroid/os/TurboSchedMonitorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$fputmScrollDelayTask(Landroid/os/TurboSchedMonitorImpl;Ljava/util/TimerTask;)V

    .line 653
    :cond_2b
    return-void
.end method
