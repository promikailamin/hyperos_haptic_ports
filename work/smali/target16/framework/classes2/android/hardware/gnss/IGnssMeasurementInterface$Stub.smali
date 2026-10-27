.class public abstract Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;
.super Landroid/os/Binder;
.source "IGnssMeasurementInterface.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssMeasurementInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssMeasurementInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssMeasurementInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setCallbackWithOptions:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->markVintfStability()V

    .line 54
    sget-object v0, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssMeasurementInterface;
    .registers 3

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/gnss/IGnssMeasurementInterface;

    if-eqz v1, :cond_13

    .line 67
    check-cast v0, Landroid/hardware/gnss/IGnssMeasurementInterface;

    return-object v0

    .line 69
    :cond_13
    new-instance v0, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 78
    sparse-switch p0, :sswitch_data_14

    .line 102
    const/4 p0, 0x0

    return-object p0

    .line 94
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 98
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 90
    :sswitch_b
    const-string p0, "setCallbackWithOptions"

    return-object p0

    .line 86
    :sswitch_e
    const-string p0, "close"

    return-object p0

    .line 82
    :sswitch_11
    const-string p0, "setCallback"

    return-object p0

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_e
        0x3 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 286
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 109
    invoke-static {p1}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    sget-object v0, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 114
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v2

    .line 121
    :cond_16
    if-ne p1, v1, :cond_23

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v2

    .line 126
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v2

    .line 131
    :cond_33
    packed-switch p1, :pswitch_data_78

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 155
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/gnss/IGnssMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssMeasurementCallback;

    move-result-object p1

    .line 157
    sget-object p4, Landroid/hardware/gnss/IGnssMeasurementInterface$Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/gnss/IGnssMeasurementInterface$Options;

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, p1, p4}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->setCallbackWithOptions(Landroid/hardware/gnss/IGnssMeasurementCallback;Landroid/hardware/gnss/IGnssMeasurementInterface$Options;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_76

    .line 148
    :pswitch_55
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->close()V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_76

    .line 136
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/gnss/IGnssMeasurementCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssMeasurementCallback;

    move-result-object p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/gnss/IGnssMeasurementInterface$Stub;->setCallback(Landroid/hardware/gnss/IGnssMeasurementCallback;ZZ)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    nop

    .line 168
    :goto_76
    return v2

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_55
        :pswitch_3b
    .end packed-switch
.end method
