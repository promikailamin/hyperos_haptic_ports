.class public Landroid/hardware/usb/IUsbCallback$Default;
.super Ljava/lang/Object;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/IUsbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbCallback;
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

.method public notifyContaminantEnabledStatus(Ljava/lang/String;ZIJ)V
    .registers 6
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "retval"    # I
    .param p4, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public notifyEnableUsbDataStatus(Ljava/lang/String;ZIJ)V
    .registers 6
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "retval"    # I
    .param p4, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public notifyEnableUsbDataWhileDockedStatus(Ljava/lang/String;IJ)V
    .registers 5
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "retval"    # I
    .param p3, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public notifyLimitPowerTransferStatus(Ljava/lang/String;ZIJ)V
    .registers 6
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "limit"    # Z
    .param p3, "retval"    # I
    .param p4, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public notifyPortStatusChange([Landroid/hardware/usb/PortStatus;I)V
    .registers 3
    .param p1, "currentPortStatus"    # [Landroid/hardware/usb/PortStatus;
    .param p2, "retval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public notifyQueryPortStatus(Ljava/lang/String;IJ)V
    .registers 5
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "retval"    # I
    .param p3, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public notifyResetUsbPortStatus(Ljava/lang/String;IJ)V
    .registers 5
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "retval"    # I
    .param p3, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/PortRole;IJ)V
    .registers 6
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "newRole"    # Landroid/hardware/usb/PortRole;
    .param p3, "retval"    # I
    .param p4, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
