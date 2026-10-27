.class Landroid/os/TurboSchedMonitorImpl$4;
.super Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub;
.source "TurboSchedMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TurboSchedMonitorImpl;
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

    .line 980
    iput-object p1, p0, Landroid/os/TurboSchedMonitorImpl$4;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-direct {p0}, Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSceneChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "start"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$4;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-static {v0}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$mgetCurrentProcessName(Landroid/os/TurboSchedMonitorImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TurboSchedMonitor_FrameTurbo"

    if-nez v0, :cond_3f

    .line 984
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$4;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-static {v0}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$fgetDEBUG_DO_FRAMES(Landroid/os/TurboSchedMonitorImpl;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_3e
    return-void

    .line 989
    :cond_3f
    if-eqz p3, :cond_47

    .line 990
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$4;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-static {v0, p2}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$fputmCurrentTurboScene(Landroid/os/TurboSchedMonitorImpl;Ljava/lang/String;)V

    goto :goto_4e

    .line 992
    :cond_47
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$4;->this$0:Landroid/os/TurboSchedMonitorImpl;

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$fputmCurrentTurboScene(Landroid/os/TurboSchedMonitorImpl;Ljava/lang/String;)V

    .line 994
    :goto_4e
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$4;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-static {v0}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$fgetDEBUG_DO_FRAMES(Landroid/os/TurboSchedMonitorImpl;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneChanged: current turbo scene changed to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/os/TurboSchedMonitorImpl$4;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-static {v2}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$fgetmCurrentTurboScene(Landroid/os/TurboSchedMonitorImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_72
    return-void
.end method
