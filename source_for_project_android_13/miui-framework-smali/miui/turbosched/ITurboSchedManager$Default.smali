.class public Lmiui/turbosched/ITurboSchedManager$Default;
.super Ljava/lang/Object;
.source "ITurboSchedManager.java"

# interfaces
.implements Lmiui/turbosched/ITurboSchedManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/turbosched/ITurboSchedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist breakThermlimit(IJ)V
    .registers 4
    .param p1, "boost"    # I
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public whitelist checkBoostPermission()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist checkPackagePermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist frameTurboMarkScene(Ljava/lang/String;Z)I
    .registers 4
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "start"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist frameTurboRegisterSceneCallback(Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;)V
    .registers 2
    .param p1, "callback"    # Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public whitelist frameTurboTrigger(ZLjava/util/List;Ljava/util/List;)I
    .registers 5
    .param p1, "turbo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    .local p2, "uiThreads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "scenes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist frameTurboUnregisterSceneCallback(Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;)V
    .registers 2
    .param p1, "callback"    # Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public whitelist getCoreAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isCoreApp()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist notifyOnScroll(Z)V
    .registers 2
    .param p1, "isOnScroll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public whitelist onCoreAppFirstActivityStart(Ljava/lang/String;)V
    .registers 2
    .param p1, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public whitelist onCoreAppLastActivityStop(Ljava/lang/String;)V
    .registers 2
    .param p1, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public whitelist setTurboSchedAction([IJ)Z
    .registers 5
    .param p1, "tid"    # [I
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setTurboSchedActionToLittleCore([IJ)V
    .registers 4
    .param p1, "tids"    # [I
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public whitelist setTurboSchedActionWithBoostFrequency([IJ)V
    .registers 4
    .param p1, "tids"    # [I
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public whitelist setTurboSchedActionWithId([IJJI)V
    .registers 7
    .param p1, "tids"    # [I
    .param p2, "time"    # J
    .param p4, "id"    # J
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public whitelist setTurboSchedActionWithPriority([IJ)V
    .registers 4
    .param p1, "tids"    # [I
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public whitelist setTurboSchedActionWithoutBlock([IJ)V
    .registers 4
    .param p1, "tids"    # [I
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public whitelist triggerBoostAction(I)V
    .registers 2
    .param p1, "boostMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public whitelist triggerBoostTask(II)V
    .registers 3
    .param p1, "tid"    # I
    .param p2, "boostSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method
