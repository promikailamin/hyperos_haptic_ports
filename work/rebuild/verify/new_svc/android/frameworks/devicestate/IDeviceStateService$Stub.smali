.class public abstract Landroid/frameworks/devicestate/IDeviceStateService$Stub;
.super Landroid/os/Binder;
.source "IDeviceStateService.java"

# interfaces
.implements Landroid/frameworks/devicestate/IDeviceStateService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 50
    sget-object v0, Landroid/frameworks/devicestate/IDeviceStateService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    packed-switch p0, :pswitch_data_1a

    const/4 p0, 0x0

    return-object p0

    .line 86
    :pswitch_b
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 90
    :pswitch_e
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 82
    :cond_11
    const-string/jumbo p0, "unregisterListener"

    return-object p0

    .line 78
    :cond_15
    const-string/jumbo p0, "registerListener"

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0xfffffe
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 1

    .line 0
    const p0, 0xfffffe

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 101
    invoke-static {p1}, Landroid/frameworks/devicestate/IDeviceStateService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    .line 105
    sget-object v0, Landroid/frameworks/devicestate/IDeviceStateService;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_16
    if-ne p1, v1, :cond_23

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-interface {p0}, Landroid/frameworks/devicestate/IDeviceStateService;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-interface {p0}, Landroid/frameworks/devicestate/IDeviceStateService;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_33
    if-eq p1, v2, :cond_4f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3d

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 137
    :cond_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/frameworks/devicestate/IDeviceStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/devicestate/IDeviceStateListener;

    move-result-object p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-interface {p0, p1}, Landroid/frameworks/devicestate/IDeviceStateService;->unregisterListener(Landroid/frameworks/devicestate/IDeviceStateListener;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_60

    .line 128
    :cond_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/frameworks/devicestate/IDeviceStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/devicestate/IDeviceStateListener;

    move-result-object p1

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-interface {p0, p1}, Landroid/frameworks/devicestate/IDeviceStateService;->registerListener(Landroid/frameworks/devicestate/IDeviceStateListener;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_60
    return v2
.end method
