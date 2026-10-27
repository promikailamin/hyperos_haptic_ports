.class public Lmiui/greeze/IGreezeManager$Default;
.super Ljava/lang/Object;
.source "IGreezeManager.java"

# interfaces
.implements Lmiui/greeze/IGreezeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/greeze/IGreezeManager;
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

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist closeSocketForAurogon([I)V
    .registers 2
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public blacklist freezePids([IJILjava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "pids"    # [I
    .param p2, "timeout"    # J
    .param p4, "fromWho"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist freezeUids([IJILjava/lang/String;Z)Ljava/util/List;
    .registers 8
    .param p1, "uids"    # [I
    .param p2, "timeout"    # J
    .param p4, "fromWho"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "checkAudioGps"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFrozenPids(I)[I
    .registers 3
    .param p1, "module"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFrozenUids(I)[I
    .registers 3
    .param p1, "module"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLastThawedTime(II)J
    .registers 5
    .param p1, "uid"    # I
    .param p2, "module"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist isNeedCachedAlarmForAurogon(I)Z
    .registers 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUidActive(I)Z
    .registers 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUidFrozen(I)Z
    .registers 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerCallback(Lmiui/greeze/IGreezeCallback;I)Z
    .registers 4
    .param p1, "callback"    # Lmiui/greeze/IGreezeCallback;
    .param p2, "module"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerMonitor(Lmiui/greeze/IMonitorToken;I)Z
    .registers 4
    .param p1, "token"    # Lmiui/greeze/IMonitorToken;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return v0
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

.method public blacklist reportBinderTrans(IIIIIZJI)V
    .registers 10
    .param p1, "dstUid"    # I
    .param p2, "dstPid"    # I
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "callerTid"    # I
    .param p6, "isOneway"    # Z
    .param p7, "now"    # J
    .param p9, "buffer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist reportLoopOnce()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
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

.method public blacklist thawAll(IILjava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "module"    # I
    .param p2, "fromWho"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist thawPids([IILjava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "pids"    # [I
    .param p2, "fromWho"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist thawUids([IILjava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "uids"    # [I
    .param p2, "fromWho"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist updateAurogonUidRule(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method
