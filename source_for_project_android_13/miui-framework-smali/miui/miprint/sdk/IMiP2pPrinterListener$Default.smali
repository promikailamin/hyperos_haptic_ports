.class public Lmiui/miprint/sdk/IMiP2pPrinterListener$Default;
.super Ljava/lang/Object;
.source "IMiP2pPrinterListener.java"

# interfaces
.implements Lmiui/miprint/sdk/IMiP2pPrinterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/miprint/sdk/IMiP2pPrinterListener;
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

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onP2pPrinterChange(Lmiui/miprint/sdk/P2pPrinterInfo;I)V
    .registers 3
    .param p1, "printer"    # Lmiui/miprint/sdk/P2pPrinterInfo;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist onPrinterConnectionComplete(Lmiui/miprint/sdk/P2pPrinterInfo;I)V
    .registers 3
    .param p1, "printer"    # Lmiui/miprint/sdk/P2pPrinterInfo;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onPrinterConnectionDelay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "delayed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
