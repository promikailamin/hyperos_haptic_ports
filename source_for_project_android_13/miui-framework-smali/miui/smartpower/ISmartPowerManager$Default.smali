.class public Lmiui/smartpower/ISmartPowerManager$Default;
.super Ljava/lang/Object;
.source "ISmartPowerManager.java"

# interfaces
.implements Lmiui/smartpower/ISmartPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/smartpower/ISmartPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onMultiTaskActionEnd(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V
    .registers 2
    .param p1, "actionInfo"    # Lmiui/smartpower/MultiTaskActionManager$ActionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onMultiTaskActionStart(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V
    .registers 2
    .param p1, "actionInfo"    # Lmiui/smartpower/MultiTaskActionManager$ActionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist registThermalScenarioCallback(Lmiui/smartpower/IScenarioCallback;)V
    .registers 2
    .param p1, "callback"    # Lmiui/smartpower/IScenarioCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
