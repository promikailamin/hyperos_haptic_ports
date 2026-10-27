.class public abstract Landroid/net/INetdUnsolicitedEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdUnsolicitedEventListener.java"

# interfaces
.implements Landroid/net/INetdUnsolicitedEventListener;


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onInterfaceAdded:I = 0x6

.field static final TRANSACTION_onInterfaceAddressRemoved:I = 0x5

.field static final TRANSACTION_onInterfaceAddressUpdated:I = 0x4

.field static final TRANSACTION_onInterfaceChanged:I = 0x8

.field static final TRANSACTION_onInterfaceClassActivityChanged:I = 0x1

.field static final TRANSACTION_onInterfaceDnsServerInfo:I = 0x3

.field static final TRANSACTION_onInterfaceLinkStateChanged:I = 0x9

.field static final TRANSACTION_onInterfaceRemoved:I = 0x7

.field static final TRANSACTION_onQuotaLimitReached:I = 0x2

.field static final TRANSACTION_onRouteChanged:I = 0xa

.field static final TRANSACTION_onStrictCleartextDetected:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_4
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 89
    instance-of v1, v0, Landroid/net/INetdUnsolicitedEventListener;

    if-eqz v1, :cond_13

    .line 90
    check-cast v0, Landroid/net/INetdUnsolicitedEventListener;

    return-object v0

    .line 92
    :cond_13
    new-instance v0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_16
    if-ne p1, v1, :cond_23

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-interface {p0}, Landroid/net/INetdUnsolicitedEventListener;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-interface {p0}, Landroid/net/INetdUnsolicitedEventListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_33
    packed-switch p1, :pswitch_data_e0

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 227
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 230
    invoke-interface {p0, p1, p2}, Landroid/net/INetdUnsolicitedEventListener;->onStrictCleartextDetected(ILjava/lang/String;)V

    goto/16 :goto_de

    .line 214
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 221
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener;->onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_de

    .line 205
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    .line 208
    invoke-interface {p0, p1, p2}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    goto/16 :goto_de

    .line 196
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    .line 199
    invoke-interface {p0, p1, p2}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceChanged(Ljava/lang/String;Z)V

    goto :goto_de

    .line 189
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-interface {p0, p1}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceRemoved(Ljava/lang/String;)V

    goto :goto_de

    .line 182
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-interface {p0, p1}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceAdded(Ljava/lang/String;)V

    goto :goto_de

    .line 169
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 176
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_de

    .line 156
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 163
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_de

    .line 145
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 150
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    goto :goto_de

    .line 136
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-interface {p0, p1, p2}, Landroid/net/INetdUnsolicitedEventListener;->onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_de

    .line 123
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v3, p0

    .line 130
    invoke-interface/range {v3 .. v8}, Landroid/net/INetdUnsolicitedEventListener;->onInterfaceClassActivityChanged(ZIJI)V

    :goto_de
    return v2

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_be
        :pswitch_ae
        :pswitch_9a
        :pswitch_86
        :pswitch_7e
        :pswitch_76
        :pswitch_6a
        :pswitch_5d
        :pswitch_48
        :pswitch_3b
    .end packed-switch
.end method
