.class public abstract Landroid/hardware/radio/modem/IRadioModemIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioModemIndication.java"

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModemIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModemIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/modem/IRadioModemIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_hardwareConfigChanged:I = 0x1

.field static final blacklist TRANSACTION_modemReset:I = 0x2

.field static final blacklist TRANSACTION_onImeiMappingChanged:I = 0x6

.field static final blacklist TRANSACTION_radioCapabilityIndication:I = 0x3

.field static final blacklist TRANSACTION_radioStateChanged:I = 0x4

.field static final blacklist TRANSACTION_rilConnected:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 120
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 121
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->markVintfStability()V

    .line 122
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModemIndication;
    .registers 3

    .line 130
    if-nez p0, :cond_4

    .line 131
    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_4
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/modem/IRadioModemIndication;

    if-eqz v1, :cond_13

    .line 135
    check-cast v0, Landroid/hardware/radio/modem/IRadioModemIndication;

    return-object v0

    .line 137
    :cond_13
    new-instance v0, Landroid/hardware/radio/modem/IRadioModemIndication$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 141
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 146
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 150
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v2

    .line 153
    :cond_16
    if-ne p1, v1, :cond_23

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return v2

    .line 158
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v2

    .line 163
    :cond_33
    packed-switch p1, :pswitch_data_9e

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 216
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 218
    sget-object p3, Landroid/hardware/radio/modem/ImeiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/modem/ImeiInfo;

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->onImeiMappingChanged(ILandroid/hardware/radio/modem/ImeiInfo;)V

    .line 221
    goto :goto_9d

    .line 208
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->rilConnected(I)V

    .line 211
    goto :goto_9d

    .line 198
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->radioStateChanged(II)V

    .line 203
    goto :goto_9d

    .line 188
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 190
    sget-object p3, Landroid/hardware/radio/modem/RadioCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/modem/RadioCapability;

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/modem/RadioCapability;)V

    .line 193
    goto :goto_9d

    .line 178
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 183
    goto :goto_9d

    .line 168
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 170
    sget-object p3, Landroid/hardware/radio/modem/HardwareConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/modem/HardwareConfig;

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->hardwareConfigChanged(I[Landroid/hardware/radio/modem/HardwareConfig;)V

    .line 173
    nop

    .line 228
    :goto_9d
    return v2

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_7b
        :pswitch_68
        :pswitch_59
        :pswitch_4e
        :pswitch_3b
    .end packed-switch
.end method
