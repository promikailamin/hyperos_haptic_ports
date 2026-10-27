.class public abstract Landroid/hardware/gnss/IGnssConfiguration$Stub;
.super Landroid/os/Binder;
.source "IGnssConfiguration.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_setBlocklist:I = 0x7

.field static final blacklist TRANSACTION_setEmergencySuplPdn:I = 0x5

.field static final blacklist TRANSACTION_setEsExtensionSec:I = 0x6

.field static final blacklist TRANSACTION_setGlonassPositioningProtocol:I = 0x4

.field static final blacklist TRANSACTION_setLppProfile:I = 0x3

.field static final blacklist TRANSACTION_setSuplMode:I = 0x2

.field static final blacklist TRANSACTION_setSuplVersion:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->markVintfStability()V

    .line 66
    sget-object v0, Landroid/hardware/gnss/IGnssConfiguration$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssConfiguration;
    .registers 3

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssConfiguration$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/gnss/IGnssConfiguration;

    if-eqz v1, :cond_13

    .line 79
    check-cast v0, Landroid/hardware/gnss/IGnssConfiguration;

    return-object v0

    .line 81
    :cond_13
    new-instance v0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 90
    sparse-switch p0, :sswitch_data_20

    .line 130
    const/4 p0, 0x0

    return-object p0

    .line 122
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 126
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 118
    :sswitch_b
    const-string p0, "setBlocklist"

    return-object p0

    .line 114
    :sswitch_e
    const-string p0, "setEsExtensionSec"

    return-object p0

    .line 110
    :sswitch_11
    const-string p0, "setEmergencySuplPdn"

    return-object p0

    .line 106
    :sswitch_14
    const-string p0, "setGlonassPositioningProtocol"

    return-object p0

    .line 102
    :sswitch_17
    const-string p0, "setLppProfile"

    return-object p0

    .line 98
    :sswitch_1a
    const-string p0, "setSuplMode"

    return-object p0

    .line 94
    :sswitch_1d
    const-string p0, "setSuplVersion"

    return-object p0

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_17
        0x4 -> :sswitch_14
        0x5 -> :sswitch_11
        0x6 -> :sswitch_e
        0x7 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 421
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 137
    invoke-static {p1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 141
    sget-object v0, Landroid/hardware/gnss/IGnssConfiguration$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 142
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 143
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 146
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v2

    .line 149
    :cond_16
    if-ne p1, v1, :cond_23

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return v2

    .line 154
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v2

    .line 159
    :cond_33
    packed-switch p1, :pswitch_data_a2

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 218
    :pswitch_3b
    sget-object p1, Landroid/hardware/gnss/BlocklistedSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/gnss/BlocklistedSource;

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setBlocklist([Landroid/hardware/gnss/BlocklistedSource;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto :goto_a1

    .line 209
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setEsExtensionSec(I)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    goto :goto_a1

    .line 200
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setEmergencySuplPdn(Z)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_a1

    .line 191
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setGlonassPositioningProtocol(I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_a1

    .line 182
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setLppProfile(I)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_a1

    .line 173
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setSuplMode(I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_a1

    .line 164
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setSuplVersion(I)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    nop

    .line 229
    :goto_a1
    return v2

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_93
        :pswitch_85
        :pswitch_77
        :pswitch_69
        :pswitch_5b
        :pswitch_4d
        :pswitch_3b
    .end packed-switch
.end method
