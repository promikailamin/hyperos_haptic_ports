.class Landroid/os/TurboSchedMonitorImpl$1;
.super Ljava/util/TimerTask;
.source "TurboSchedMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/TurboSchedMonitorImpl;->monitorFrameDelay(J)V
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

    .line 569
    iput-object p1, p0, Landroid/os/TurboSchedMonitorImpl$1;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 572
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$1;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-static {v0}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$fgetmFrameId(Landroid/os/TurboSchedMonitorImpl;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$mdoDrawFrameDelay(Landroid/os/TurboSchedMonitorImpl;I)V

    .line 573
    return-void
.end method
