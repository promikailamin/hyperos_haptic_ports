.class public interface abstract Landroid/os/TurboSchedMonitor;
.super Ljava/lang/Object;
.source "TurboSchedMonitor.java"


# static fields
.field public static final blacklist INSTANCE:Landroid/os/TurboSchedMonitor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const-class v0, Landroid/os/TurboSchedMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TurboSchedMonitor;

    sput-object v0, Landroid/os/TurboSchedMonitor;->INSTANCE:Landroid/os/TurboSchedMonitor;

    return-void
.end method

.method public static blacklist getInstance()Landroid/os/TurboSchedMonitor;
    .registers 1

    .line 19
    sget-object v0, Landroid/os/TurboSchedMonitor;->INSTANCE:Landroid/os/TurboSchedMonitor;

    return-object v0
.end method


# virtual methods
.method public blacklist addTid(I)V
    .registers 2
    .param p1, "tid"    # I

    .line 44
    return-void
.end method

.method public blacklist breakThermlimit(IJ)V
    .registers 4
    .param p1, "boost"    # I
    .param p2, "time"    # J

    .line 40
    return-void
.end method

.method public blacklist enableCoreAppOptimizer(I)V
    .registers 2
    .param p1, "enable"    # I

    .line 95
    return-void
.end method

.method public blacklist getAppToken()V
    .registers 1

    .line 24
    return-void
.end method

.method public blacklist getBoostDuration()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCoreAppFrameDealyThreshold()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCoreAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist isCoreApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCoreAppOptimizerEnabled()Z
    .registers 2

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isDebugMode()Z
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist monitorAnimationCallback(Ljava/lang/String;)V
    .registers 2
    .param p1, "className"    # Ljava/lang/String;

    .line 52
    return-void
.end method

.method public blacklist monitorFrameDelay(J)V
    .registers 3
    .param p1, "frameInterval"    # J

    .line 56
    return-void
.end method

.method public blacklist monitorInputEvent(Landroid/view/InputEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 104
    return-void
.end method

.method public blacklist notifyOnScroll(Z)V
    .registers 2
    .param p1, "start"    # Z

    .line 64
    return-void
.end method

.method public blacklist onCoreAppActivityStart(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 121
    return-void
.end method

.method public blacklist onCoreAppActivityStop(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 125
    return-void
.end method

.method public blacklist recordFrameStart(IJJ)V
    .registers 6
    .param p1, "frame"    # I
    .param p2, "vsync"    # J
    .param p4, "vsyncId"    # J

    .line 48
    return-void
.end method

.method public blacklist releaseAppToken()V
    .registers 1

    .line 28
    return-void
.end method

.method public blacklist setBoostDuration(IJ)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "time"    # J

    .line 77
    return-void
.end method

.method public blacklist setCoreAppFrameDealyThreshold(IF)V
    .registers 3
    .param p1, "appType"    # I
    .param p2, "frameDelayTH"    # F

    .line 68
    return-void
.end method

.method public blacklist setCoreAppList(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p2, "coreAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setDebugMode(I)V
    .registers 2
    .param p1, "debugMode"    # I

    .line 86
    return-void
.end method

.method public blacklist setDrawFrameFinished()V
    .registers 1

    .line 60
    return-void
.end method

.method public blacklist setForegroundActivity(Landroid/content/Context;)V
    .registers 2
    .param p1, "activity"    # Landroid/content/Context;

    .line 108
    return-void
.end method

.method public blacklist triggerBoostAction()V
    .registers 1

    .line 32
    return-void
.end method

.method public blacklist triggerBoostAction(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "boostMs"    # I

    .line 36
    return-void
.end method
