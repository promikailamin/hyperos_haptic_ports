.class public abstract Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IDeviceStateManagerCallback.java"

# interfaces
.implements Landroid/hardware/devicestate/IDeviceStateManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/IDeviceStateManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDeviceStateInfoChanged:I = 0x1

.field static final blacklist TRANSACTION_onRequestActive:I = 0x2

.field static final blacklist TRANSACTION_onRequestCanceled:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.hardware.devicestate.IDeviceStateManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManagerCallback;
    .registers 3

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_4
    const-string v0, "android.hardware.devicestate.IDeviceStateManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    if-eqz v1, :cond_13

    .line 75
    check-cast v0, Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    return-object v0

    .line 77
    :cond_13
    new-instance v0, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 86
    packed-switch p0, :pswitch_data_e

    .line 102
    const/4 p0, 0x0

    return-object p0

    .line 98
    :pswitch_5
    const-string p0, "onRequestCanceled"

    return-object p0

    .line 94
    :pswitch_8
    const-string p0, "onRequestActive"

    return-object p0

    .line 90
    :pswitch_b
    const-string p0, "onDeviceStateInfoChanged"

    return-object p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 237
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 109
    invoke-static {p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    nop

    .line 114
    const-string v0, "android.hardware.devicestate.IDeviceStateManagerCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 121
    :cond_17
    packed-switch p1, :pswitch_data_46

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 142
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->onRequestCanceled(Landroid/os/IBinder;)V

    .line 145
    goto :goto_44

    .line 134
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->onRequestActive(Landroid/os/IBinder;)V

    .line 137
    goto :goto_44

    .line 126
    :pswitch_35
    sget-object p1, Landroid/hardware/devicestate/DeviceStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateInfo;

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V

    .line 129
    nop

    .line 152
    :goto_44
    return v1

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
