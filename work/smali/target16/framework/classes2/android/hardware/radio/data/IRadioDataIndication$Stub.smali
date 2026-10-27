.class public abstract Landroid/hardware/radio/data/IRadioDataIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioDataIndication.java"

# interfaces
.implements Landroid/hardware/radio/data/IRadioDataIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioDataIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/IRadioDataIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dataCallListChanged:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_keepaliveStatus:I = 0x2

.field static final blacklist TRANSACTION_pcoData:I = 0x3

.field static final blacklist TRANSACTION_slicingConfigChanged:I = 0x5

.field static final blacklist TRANSACTION_unthrottleApn:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 113
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->markVintfStability()V

    .line 114
    sget-object v0, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataIndication;
    .registers 3

    .line 122
    if-nez p0, :cond_4

    .line 123
    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_4
    sget-object v0, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/data/IRadioDataIndication;

    if-eqz v1, :cond_13

    .line 127
    check-cast v0, Landroid/hardware/radio/data/IRadioDataIndication;

    return-object v0

    .line 129
    :cond_13
    new-instance v0, Landroid/hardware/radio/data/IRadioDataIndication$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/data/IRadioDataIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 133
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    sget-object v0, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 138
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v2

    .line 145
    :cond_16
    if-ne p1, v1, :cond_23

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return v2

    .line 150
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return v2

    .line 155
    :cond_33
    packed-switch p1, :pswitch_data_9c

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 200
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 202
    sget-object p3, Landroid/hardware/radio/data/SlicingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/data/SlicingConfig;

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->slicingConfigChanged(ILandroid/hardware/radio/data/SlicingConfig;)V

    .line 205
    goto :goto_9a

    .line 190
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 192
    sget-object p3, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/data/DataProfileInfo;

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->unthrottleApn(ILandroid/hardware/radio/data/DataProfileInfo;)V

    .line 195
    goto :goto_9a

    .line 180
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 182
    sget-object p3, Landroid/hardware/radio/data/PcoDataInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/data/PcoDataInfo;

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->pcoData(ILandroid/hardware/radio/data/PcoDataInfo;)V

    .line 185
    goto :goto_9a

    .line 170
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 172
    sget-object p3, Landroid/hardware/radio/data/KeepaliveStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/data/KeepaliveStatus;

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/data/KeepaliveStatus;)V

    .line 175
    goto :goto_9a

    .line 160
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 162
    sget-object p3, Landroid/hardware/radio/data/SetupDataCallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/data/SetupDataCallResult;

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->dataCallListChanged(I[Landroid/hardware/radio/data/SetupDataCallResult;)V

    .line 165
    nop

    .line 212
    :goto_9a
    return v2

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_87
        :pswitch_74
        :pswitch_61
        :pswitch_4e
        :pswitch_3b
    .end packed-switch
.end method
