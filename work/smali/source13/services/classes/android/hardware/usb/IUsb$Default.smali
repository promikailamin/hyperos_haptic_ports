.class public Landroid/hardware/usb/IUsb$Default;
.super Ljava/lang/Object;
.source "IUsb.java"

# interfaces
.implements Landroid/hardware/usb/IUsb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V
    .registers 5
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public enableUsbData(Ljava/lang/String;ZJ)V
    .registers 5
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public enableUsbDataWhileDocked(Ljava/lang/String;J)V
    .registers 4
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 48
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public limitPowerTransfer(Ljava/lang/String;ZJ)V
    .registers 5
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "limit"    # Z
    .param p3, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public queryPortStatus(J)V
    .registers 3
    .param p1, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public resetUsbPort(Ljava/lang/String;J)V
    .registers 4
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public setCallback(Landroid/hardware/usb/IUsbCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/usb/IUsbCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    .registers 5
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "role"    # Landroid/hardware/usb/PortRole;
    .param p3, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method
