.class public abstract Landroid/hardware/cas/IDescrambler$Stub;
.super Landroid/os/Binder;
.source "IDescrambler.java"

# interfaces
.implements Landroid/hardware/cas/IDescrambler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/IDescrambler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/cas/IDescrambler$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_descramble:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_release:I = 0x2

.field static final blacklist TRANSACTION_requiresSecureDecoderComponent:I = 0x3

.field static final blacklist TRANSACTION_setMediaCasSession:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/hardware/cas/IDescrambler$Stub;->markVintfStability()V

    .line 59
    sget-object v0, Landroid/hardware/cas/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/cas/IDescrambler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/cas/IDescrambler;
    .registers 3

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_4
    sget-object v0, Landroid/hardware/cas/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/cas/IDescrambler;

    if-eqz v1, :cond_13

    .line 72
    check-cast v0, Landroid/hardware/cas/IDescrambler;

    return-object v0

    .line 74
    :cond_13
    new-instance v0, Landroid/hardware/cas/IDescrambler$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/cas/IDescrambler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    sget-object v3, Landroid/hardware/cas/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 83
    const v4, 0xffffff

    const/4 v9, 0x1

    if-lt p1, v9, :cond_d

    if-gt p1, v4, :cond_d

    .line 84
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_d
    const v5, 0x5f4e5446

    if-ne p1, v5, :cond_16

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v9

    .line 90
    :cond_16
    if-ne p1, v4, :cond_23

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p0}, Landroid/hardware/cas/IDescrambler$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v9

    .line 95
    :cond_23
    const v3, 0xfffffe

    if-ne p1, v3, :cond_33

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p0}, Landroid/hardware/cas/IDescrambler$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v9

    .line 100
    :cond_33
    packed-switch p1, :pswitch_data_9a

    .line 149
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 141
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v1}, Landroid/hardware/cas/IDescrambler$Stub;->setMediaCasSession([B)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    goto :goto_99

    .line 131
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v1}, Landroid/hardware/cas/IDescrambler$Stub;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 136
    goto :goto_99

    .line 124
    :pswitch_5b
    invoke-virtual {p0}, Landroid/hardware/cas/IDescrambler$Stub;->release()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_99

    .line 105
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    sget-object v3, Landroid/hardware/cas/SubSample;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/cas/SubSample;

    .line 109
    sget-object v4, Landroid/hardware/cas/SharedBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/cas/SharedBuffer;

    .line 111
    move-object v6, v3

    move-object v3, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 113
    sget-object v7, Landroid/hardware/cas/DestinationBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/cas/DestinationBuffer;

    .line 115
    move-object v2, v6

    move-object v6, v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/cas/IDescrambler$Stub;->descramble(I[Landroid/hardware/cas/SubSample;Landroid/hardware/cas/SharedBuffer;JLandroid/hardware/cas/DestinationBuffer;J)I

    move-result v0

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    nop

    .line 152
    :goto_99
    return v9

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_62
        :pswitch_5b
        :pswitch_49
        :pswitch_3b
    .end packed-switch
.end method
