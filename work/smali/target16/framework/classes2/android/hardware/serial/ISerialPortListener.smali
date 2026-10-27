.class public interface abstract Landroid/hardware/serial/ISerialPortListener;
.super Ljava/lang/Object;
.source "ISerialPortListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/serial/ISerialPortListener$Stub;,
        Landroid/hardware/serial/ISerialPortListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.serial.ISerialPortListener"


# virtual methods
.method public abstract blacklist onSerialPortConnected(Landroid/hardware/serial/SerialPortInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSerialPortDisconnected(Landroid/hardware/serial/SerialPortInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
