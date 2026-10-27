.class public Lmiui/mqsas/IMQSNative$Default;
.super Ljava/lang/Object;
.source "IMQSNative.java"

# interfaces
.implements Lmiui/mqsas/IMQSNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSNative;
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
.method public blacklist FactoryResetWipeRescuePartition()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public blacklist addPSITriggerCommand(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "callbackKey"    # I
    .param p2, "node"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist attachSockFilter(Ljava/lang/String;Ljava/lang/String;IIIII[BILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "srcMac"    # Ljava/lang/String;
    .param p2, "dstMac"    # Ljava/lang/String;
    .param p3, "srcIp"    # I
    .param p4, "dstIp"    # I
    .param p5, "proto"    # I
    .param p6, "srcPort"    # I
    .param p7, "dstPort"    # I
    .param p8, "identifyData"    # [B
    .param p9, "retDataLen"    # I
    .param p10, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist captureLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZIZLjava/lang/String;Ljava/util/List;Z)V
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "headline"    # Ljava/lang/String;
    .param p5, "offline"    # Z
    .param p6, "id"    # I
    .param p7, "upload"    # Z
    .param p8, "where"    # Ljava/lang/String;
    .param p10, "isRecordInLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    .local p3, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "parmas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "includeFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist captureLogByRunCommand(Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .registers 5
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist connectPSIMonitor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createFileInPersist(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist defragDataPartition()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist flashDebugPolicy(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist getFilesFromPersist()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFreeFragStats()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPSISockFd()Landroid/os/ParcelFileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStationInfo(Ljava/lang/String;Ljava/lang/String;)Lmiui/mqsas/StationInfo;
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "macAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerCnssStatisticListener(Lmiui/mqsas/ICnssStatisticListener;)V
    .registers 2
    .param p1, "ob"    # Lmiui/mqsas/ICnssStatisticListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist registerTcpStatusListener(ILmiui/mqsas/ITcpStatusListener;)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "ob"    # Lmiui/mqsas/ITcpStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist runCommand(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCoreFilter(IZ)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "isFull"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist stopDefrag()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist unregisterCnssStatisticListener(Lmiui/mqsas/ICnssStatisticListener;)V
    .registers 2
    .param p1, "ob"    # Lmiui/mqsas/ICnssStatisticListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public blacklist unregisterTcpStatusListener(ILmiui/mqsas/ITcpStatusListener;)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "ob"    # Lmiui/mqsas/ITcpStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist writeToPersistFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "buff"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method
