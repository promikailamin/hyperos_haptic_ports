.class public abstract Landroid/net/ip/IIpClient$Stub;
.super Landroid/os/Binder;
.source "IIpClient.java"

# interfaces
.implements Landroid/net/ip/IIpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IIpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IIpClient$Stub$Proxy;
    }
.end annotation


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

.field static final TRANSACTION_updateLayer2Information:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    sget-object v0, Landroid/net/ip/IIpClient$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/ip/IIpClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    sget-object v0, Landroid/net/ip/IIpClient$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/ip/IIpClient;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/net/ip/IIpClient;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/net/ip/IIpClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ip/IIpClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    sget-object v0, Landroid/net/ip/IIpClient$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    sparse-switch p1, :sswitch_data_be

    .line 130
    packed-switch p1, :pswitch_data_cc

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 114
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 119
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return v1

    .line 125
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v1

    .line 231
    :pswitch_32
    sget-object v2, Landroid/net/Layer2InformationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Layer2InformationParcelable;

    .line 232
    .local v2, "_arg0":Landroid/net/Layer2InformationParcelable;
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClient$Stub;->updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V

    .line 233
    goto/16 :goto_bc

    .line 224
    .end local v2    # "_arg0":Landroid/net/Layer2InformationParcelable;
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 225
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClient$Stub;->notifyPreconnectionComplete(Z)V

    .line 226
    goto/16 :goto_bc

    .line 215
    .end local v2    # "_arg0":Z
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 217
    .local v2, "_arg0":I
    sget-object v3, Landroid/net/NattKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NattKeepalivePacketDataParcelable;

    .line 218
    .local v3, "_arg1":Landroid/net/NattKeepalivePacketDataParcelable;
    invoke-virtual {p0, v2, v3}, Landroid/net/ip/IIpClient$Stub;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V

    .line 219
    goto :goto_bc

    .line 206
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/NattKeepalivePacketDataParcelable;
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/ip/IIpClient$Stub;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    goto :goto_bc

    .line 199
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClient$Stub;->removeKeepalivePacketFilter(I)V

    .line 201
    goto :goto_bc

    .line 190
    .end local v2    # "_arg0":I
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/TcpKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/TcpKeepalivePacketDataParcelable;

    .line 193
    .local v3, "_arg1":Landroid/net/TcpKeepalivePacketDataParcelable;
    invoke-virtual {p0, v2, v3}, Landroid/net/ip/IIpClient$Stub;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V

    .line 194
    goto :goto_bc

    .line 183
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/TcpKeepalivePacketDataParcelable;
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 184
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClient$Stub;->setMulticastFilter(Z)V

    .line 185
    goto :goto_bc

    .line 176
    .end local v2    # "_arg0":Z
    :pswitch_84
    sget-object v2, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ProxyInfo;

    .line 177
    .local v2, "_arg0":Landroid/net/ProxyInfo;
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClient$Stub;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 178
    goto :goto_bc

    .line 169
    .end local v2    # "_arg0":Landroid/net/ProxyInfo;
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClient$Stub;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 171
    goto :goto_bc

    .line 163
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_98
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->stop()V

    .line 164
    goto :goto_bc

    .line 157
    :pswitch_9c
    sget-object v2, Landroid/net/ProvisioningConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ProvisioningConfigurationParcelable;

    .line 158
    .local v2, "_arg0":Landroid/net/ProvisioningConfigurationParcelable;
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClient$Stub;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V

    .line 159
    goto :goto_bc

    .line 151
    .end local v2    # "_arg0":Landroid/net/ProvisioningConfigurationParcelable;
    :pswitch_a8
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->shutdown()V

    .line 152
    goto :goto_bc

    .line 145
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 146
    .local v2, "_arg0":[B
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClient$Stub;->readPacketFilterComplete([B)V

    .line 147
    goto :goto_bc

    .line 139
    .end local v2    # "_arg0":[B
    :pswitch_b4
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->confirmConfiguration()V

    .line 140
    goto :goto_bc

    .line 134
    :pswitch_b8
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->completedPreDhcpAction()V

    .line 135
    nop

    .line 240
    :goto_bc
    return v1

    nop

    :sswitch_data_be
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_b4
        :pswitch_ac
        :pswitch_a8
        :pswitch_9c
        :pswitch_98
        :pswitch_90
        :pswitch_84
        :pswitch_7c
        :pswitch_6c
        :pswitch_64
        :pswitch_58
        :pswitch_48
        :pswitch_3f
        :pswitch_32
    .end packed-switch
.end method
