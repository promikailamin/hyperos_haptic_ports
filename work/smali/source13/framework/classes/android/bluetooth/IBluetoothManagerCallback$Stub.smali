.class public abstract Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothManagerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothManagerCallback"

.field static final greylist-max-o TRANSACTION_onBluetoothServiceDown:I = 0x2

.field static final greylist-max-o TRANSACTION_onBluetoothServiceUp:I = 0x1

.field static final greylist-max-o TRANSACTION_onBrEdrDown:I = 0x3


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.bluetooth.IBluetoothManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothManagerCallback;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothManagerCallback;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 59
    packed-switch p0, :pswitch_data_12

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 71
    :pswitch_5
    const-string/jumbo v0, "onBrEdrDown"

    return-object v0

    .line 67
    :pswitch_9
    const-string/jumbo v0, "onBluetoothServiceDown"

    return-object v0

    .line 63
    :pswitch_d
    const-string/jumbo v0, "onBluetoothServiceUp"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 182
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 82
    invoke-static {p1}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const-string v0, "android.bluetooth.IBluetoothManagerCallback"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_d
    packed-switch p1, :pswitch_data_34

    .line 98
    packed-switch p1, :pswitch_data_3a

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 115
    :pswitch_1c
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->onBrEdrDown()V

    .line 116
    goto :goto_33

    .line 110
    :pswitch_20
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->onBluetoothServiceDown()V

    .line 111
    goto :goto_33

    .line 103
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    .line 104
    .local v2, "_arg0":Landroid/bluetooth/IBluetooth;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V

    .line 106
    nop

    .line 123
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetooth;
    :goto_33
    return v1

    :pswitch_data_34
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
