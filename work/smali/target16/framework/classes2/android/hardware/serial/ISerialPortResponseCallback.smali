.class public interface abstract Landroid/hardware/serial/ISerialPortResponseCallback;
.super Ljava/lang/Object;
.source "ISerialPortResponseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/serial/ISerialPortResponseCallback$ErrorCode;,
        Landroid/hardware/serial/ISerialPortResponseCallback$Stub;,
        Landroid/hardware/serial/ISerialPortResponseCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.serial.ISerialPortResponseCallback"


# virtual methods
.method public abstract blacklist onError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Landroid/hardware/serial/SerialPortInfo;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
