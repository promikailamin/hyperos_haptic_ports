.class public abstract Landroid/net/ip/IIpClient$Stub;
.super Landroid/os/Binder;
.source "IIpClient.java"

# interfaces
.implements Landroid/net/ip/IIpClient;


# static fields
.field static final TRANSACTION_addKeepalivePacketFilter:I = 0xa

.field static final TRANSACTION_addNattKeepalivePacketFilter:I = 0xd

.field static final TRANSACTION_completedPreDhcpAction:I = 0x1

.field static final TRANSACTION_confirmConfiguration:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_notifyPreconnectionComplete:I = 0xe

.field static final TRANSACTION_readPacketFilterComplete:I = 0x3

.field static final TRANSACTION_removeKeepalivePacketFilter:I = 0xb

.field static final TRANSACTION_setHttpProxy:I = 0x8

.field static final TRANSACTION_setL2KeyAndGroupHint:I = 0xc

.field static final TRANSACTION_setMulticastFilter:I = 0x9

.field static final TRANSACTION_setTcpBufferSizes:I = 0x7

.field static final TRANSACTION_shutdown:I = 0x4

.field static final TRANSACTION_startProvisioning:I = 0x5

.field static final TRANSACTION_stop:I = 0x6

.field static final TRANSACTION_updateApfCapabilities:I = 0x10

.field static final TRANSACTION_updateLayer2Information:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    sget-object v0, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClient;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_4
    sget-object v0, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 104
    instance-of v1, v0, Landroid/net/ip/IIpClient;

    if-eqz v1, :cond_13

    .line 105
    check-cast v0, Landroid/net/ip/IIpClient;

    return-object v0

    .line 107
    :cond_13
    new-instance v0, Landroid/net/ip/IIpClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/ip/IIpClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    sget-object v0, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 117
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_16
    if-ne p1, v1, :cond_23

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_33
    packed-switch p1, :pswitch_data_d2

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 241
    :pswitch_3b
    sget-object p1, Landroid/net/apf/ApfCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/apf/ApfCapabilities;

    .line 242
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->updateApfCapabilities(Landroid/net/apf/ApfCapabilities;)V

    goto/16 :goto_d1

    .line 234
    :pswitch_48
    sget-object p1, Landroid/net/Layer2InformationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Layer2InformationParcelable;

    .line 235
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V

    goto/16 :goto_d1

    .line 227
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 228
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->notifyPreconnectionComplete(Z)V

    goto/16 :goto_d1

    .line 218
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 220
    sget-object p3, Landroid/net/NattKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/NattKeepalivePacketDataParcelable;

    .line 221
    invoke-interface {p0, p1, p2}, Landroid/net/ip/IIpClient;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V

    goto :goto_d1

    .line 209
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 212
    invoke-interface {p0, p1, p2}, Landroid/net/ip/IIpClient;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    .line 202
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 203
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->removeKeepalivePacketFilter(I)V

    goto :goto_d1

    .line 193
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 195
    sget-object p3, Landroid/net/TcpKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/TcpKeepalivePacketDataParcelable;

    .line 196
    invoke-interface {p0, p1, p2}, Landroid/net/ip/IIpClient;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V

    goto :goto_d1

    .line 186
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 187
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->setMulticastFilter(Z)V

    goto :goto_d1

    .line 179
    :pswitch_9a
    sget-object p1, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ProxyInfo;

    .line 180
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto :goto_d1

    .line 172
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->setTcpBufferSizes(Ljava/lang/String;)V

    goto :goto_d1

    .line 166
    :pswitch_ae
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->stop()V

    goto :goto_d1

    .line 160
    :pswitch_b2
    sget-object p1, Landroid/net/ProvisioningConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ProvisioningConfigurationParcelable;

    .line 161
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V

    goto :goto_d1

    .line 154
    :pswitch_be
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->shutdown()V

    goto :goto_d1

    .line 148
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 149
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->readPacketFilterComplete([B)V

    goto :goto_d1

    .line 142
    :pswitch_ca
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->confirmConfiguration()V

    goto :goto_d1

    .line 137
    :pswitch_ce
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->completedPreDhcpAction()V

    :goto_d1
    return v2

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_ce
        :pswitch_ca
        :pswitch_c2
        :pswitch_be
        :pswitch_b2
        :pswitch_ae
        :pswitch_a6
        :pswitch_9a
        :pswitch_92
        :pswitch_82
        :pswitch_7a
        :pswitch_6e
        :pswitch_5e
        :pswitch_55
        :pswitch_48
        :pswitch_3b
    .end packed-switch
.end method
