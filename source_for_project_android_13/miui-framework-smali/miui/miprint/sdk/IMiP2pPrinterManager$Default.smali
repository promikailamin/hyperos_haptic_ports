.class public Lmiui/miprint/sdk/IMiP2pPrinterManager$Default;
.super Ljava/lang/Object;
.source "IMiP2pPrinterManager.java"

# interfaces
.implements Lmiui/miprint/sdk/IMiP2pPrinterManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/miprint/sdk/IMiP2pPrinterManager;
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

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist connectP2pPrinter(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist getP2pPrinters()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist registerP2pPrinterListener(Lmiui/miprint/sdk/IMiP2pPrinterListener;)V
    .registers 2
    .param p1, "listener"    # Lmiui/miprint/sdk/IMiP2pPrinterListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist unregisterP2pPrinterListener(Lmiui/miprint/sdk/IMiP2pPrinterListener;)V
    .registers 2
    .param p1, "listener"    # Lmiui/miprint/sdk/IMiP2pPrinterListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
