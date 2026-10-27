.class public abstract Landroid/hardware/radio/ims/IRadioImsIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioImsIndication.java"

# interfaces
.implements Landroid/hardware/radio/ims/IRadioImsIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ims/IRadioImsIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ims/IRadioImsIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_notifyAnbr:I = 0x2

.field static final blacklist TRANSACTION_onConnectionSetupFailure:I = 0x1

.field static final blacklist TRANSACTION_triggerImsDeregistration:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->markVintfStability()V

    .line 89
    sget-object v0, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioImsIndication;
    .registers 3

    .line 97
    if-nez p0, :cond_4

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_4
    sget-object v0, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/ims/IRadioImsIndication;

    if-eqz v1, :cond_13

    .line 102
    check-cast v0, Landroid/hardware/radio/ims/IRadioImsIndication;

    return-object v0

    .line 104
    :cond_13
    new-instance v0, Landroid/hardware/radio/ims/IRadioImsIndication$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 108
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    sget-object v0, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 113
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v2

    .line 120
    :cond_16
    if-ne p1, v1, :cond_23

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return v2

    .line 125
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v2

    .line 130
    :cond_33
    packed-switch p1, :pswitch_data_7a

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 161
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->triggerImsDeregistration(II)V

    .line 166
    goto :goto_78

    .line 147
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->notifyAnbr(IIII)V

    .line 156
    goto :goto_78

    .line 135
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 139
    sget-object p4, Landroid/hardware/radio/ims/ConnectionFailureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/radio/ims/ConnectionFailureInfo;

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->onConnectionSetupFailure(IILandroid/hardware/radio/ims/ConnectionFailureInfo;)V

    .line 142
    nop

    .line 173
    :goto_78
    return v2

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_61
        :pswitch_4a
        :pswitch_3b
    .end packed-switch
.end method
