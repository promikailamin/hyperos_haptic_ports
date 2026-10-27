.class public interface abstract Lmiui/miprint/sdk/IMiP2pPrinterManager;
.super Ljava/lang/Object;
.source "IMiP2pPrinterManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/miprint/sdk/IMiP2pPrinterManager$Stub;,
        Lmiui/miprint/sdk/IMiP2pPrinterManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.miprint.sdk.IMiP2pPrinterManager"


# virtual methods
.method public abstract blacklist connectP2pPrinter(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getP2pPrinters()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerP2pPrinterListener(Lmiui/miprint/sdk/IMiP2pPrinterListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterP2pPrinterListener(Lmiui/miprint/sdk/IMiP2pPrinterListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
