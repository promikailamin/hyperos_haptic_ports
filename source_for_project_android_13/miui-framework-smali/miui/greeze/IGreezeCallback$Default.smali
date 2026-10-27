.class public Lmiui/greeze/IGreezeCallback$Default;
.super Ljava/lang/Object;
.source "IGreezeCallback.java"

# interfaces
.implements Lmiui/greeze/IGreezeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/greeze/IGreezeCallback;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist reportBinderState(IIIIJ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "binderState"    # I
    .param p5, "now"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist reportBinderTrans(IIIIIZJJ)V
    .registers 11
    .param p1, "dstUid"    # I
    .param p2, "dstPid"    # I
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "callerTid"    # I
    .param p6, "isOneway"    # Z
    .param p7, "now"    # J
    .param p9, "buffer"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist reportNet(IJ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist reportSignal(IIJ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist serviceReady(Z)V
    .registers 2
    .param p1, "ready"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist thawedByOther(III)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "module"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
