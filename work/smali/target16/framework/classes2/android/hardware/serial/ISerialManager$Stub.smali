.class public abstract Landroid/hardware/serial/ISerialManager$Stub;
.super Landroid/os/Binder;
.source "ISerialManager.java"

# interfaces
.implements Landroid/hardware/serial/ISerialManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/serial/ISerialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/serial/ISerialManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getSerialPorts:I = 0x1

.field static final blacklist TRANSACTION_registerSerialPortListener:I = 0x2

.field static final blacklist TRANSACTION_requestOpen:I = 0x4

.field static final blacklist TRANSACTION_unregisterSerialPortListener:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.hardware.serial.ISerialManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/serial/ISerialManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/serial/ISerialManager;
    .registers 3

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_4
    const-string v0, "android.hardware.serial.ISerialManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/serial/ISerialManager;

    if-eqz v1, :cond_13

    .line 67
    check-cast v0, Landroid/hardware/serial/ISerialManager;

    return-object v0

    .line 69
    :cond_13
    new-instance v0, Landroid/hardware/serial/ISerialManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/serial/ISerialManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 78
    packed-switch p0, :pswitch_data_12

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_5
    const-string p0, "requestOpen"

    return-object p0

    .line 90
    :pswitch_8
    const-string p0, "unregisterSerialPortListener"

    return-object p0

    .line 86
    :pswitch_b
    const-string p0, "registerSerialPortListener"

    return-object p0

    .line 82
    :pswitch_e
    const-string p0, "getSerialPorts"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 270
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {p1}, Landroid/hardware/serial/ISerialManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    nop

    .line 110
    const-string v0, "android.hardware.serial.ISerialManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_17
    packed-switch p1, :pswitch_data_76

    .line 163
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 147
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/serial/ISerialPortResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/serial/ISerialPortResponseCallback;

    move-result-object v8

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/serial/ISerialManager$Stub;->requestOpen(Ljava/lang/String;IZLjava/lang/String;Landroid/hardware/serial/ISerialPortResponseCallback;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_75

    .line 138
    :pswitch_43
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/serial/ISerialPortListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/serial/ISerialPortListener;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, p1}, Landroid/hardware/serial/ISerialManager$Stub;->unregisterSerialPortListener(Landroid/hardware/serial/ISerialPortListener;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    goto :goto_75

    .line 129
    :pswitch_56
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/serial/ISerialPortListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/serial/ISerialPortListener;

    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1}, Landroid/hardware/serial/ISerialManager$Stub;->registerSerialPortListener(Landroid/hardware/serial/ISerialPortListener;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_75

    .line 121
    :pswitch_69
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/serial/ISerialManager$Stub;->getSerialPorts()Ljava/util/List;

    move-result-object p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 124
    nop

    .line 166
    :goto_75
    return v1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_69
        :pswitch_56
        :pswitch_43
        :pswitch_20
    .end packed-switch
.end method
