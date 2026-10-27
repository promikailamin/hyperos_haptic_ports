.class public interface abstract Landroid/hardware/serial/ISerialManager;
.super Ljava/lang/Object;
.source "ISerialManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/serial/ISerialManager$Stub;,
        Landroid/hardware/serial/ISerialManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.serial.ISerialManager"


# virtual methods
.method public abstract blacklist getSerialPorts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/serial/SerialPortInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerSerialPortListener(Landroid/hardware/serial/ISerialPortListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestOpen(Ljava/lang/String;IZLjava/lang/String;Landroid/hardware/serial/ISerialPortResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterSerialPortListener(Landroid/hardware/serial/ISerialPortListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
