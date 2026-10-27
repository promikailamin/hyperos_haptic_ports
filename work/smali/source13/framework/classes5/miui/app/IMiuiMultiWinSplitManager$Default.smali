.class public Lmiui/app/IMiuiMultiWinSplitManager$Default;
.super Ljava/lang/Object;
.source "IMiuiMultiWinSplitManager.java"

# interfaces
.implements Lmiui/app/IMiuiMultiWinSplitManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/IMiuiMultiWinSplitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist adjustToSplitWindingMode(Landroid/os/IBinder;)I
    .registers 3
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSplitRootTasksPos(I)Landroid/os/Bundle;
    .registers 3
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTouchOffsetInTask(Landroid/os/IBinder;Landroid/graphics/Point;)Z
    .registers 4
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "point"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handleMultiWindowSwitch(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist isSupportDragForMultiWin(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method
