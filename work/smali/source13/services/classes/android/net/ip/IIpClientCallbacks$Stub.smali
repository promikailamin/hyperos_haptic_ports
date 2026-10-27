.class public abstract Landroid/net/ip/IIpClientCallbacks$Stub;
.super Landroid/os/Binder;
.source "IIpClientCallbacks.java"

# interfaces
.implements Landroid/net/ip/IIpClientCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IIpClientCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_installPacketFilter:I = 0xa

.field static final TRANSACTION_onIpClientCreated:I = 0x1

.field static final TRANSACTION_onLinkPropertiesChange:I = 0x7

.field static final TRANSACTION_onNewDhcpResults:I = 0x4

.field static final TRANSACTION_onPostDhcpAction:I = 0x3

.field static final TRANSACTION_onPreDhcpAction:I = 0x2

.field static final TRANSACTION_onPreconnectionStart:I = 0xe

.field static final TRANSACTION_onProvisioningFailure:I = 0x6

.field static final TRANSACTION_onProvisioningSuccess:I = 0x5

.field static final TRANSACTION_onQuit:I = 0x9

.field static final TRANSACTION_onReachabilityFailure:I = 0xf

.field static final TRANSACTION_onReachabilityLost:I = 0x8

.field static final TRANSACTION_setFallbackMulticastFilter:I = 0xc

.field static final TRANSACTION_setNeighborDiscoveryOffload:I = 0xd

.field static final TRANSACTION_startReadPacketFilter:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/ip/IIpClientCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClientCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/ip/IIpClientCallbacks;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/net/ip/IIpClientCallbacks;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

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
    sparse-switch p1, :sswitch_data_b8

    .line 130
    packed-switch p1, :pswitch_data_c6

    .line 231
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
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return v1

    .line 125
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v1

    .line 225
    :pswitch_32
    sget-object v2, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    .line 226
    .local v2, "_arg0":Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClientCallbacks$Stub;->onReachabilityFailure(Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;)V

    .line 227
    goto/16 :goto_b6

    .line 218
    .end local v2    # "_arg0":Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
    :pswitch_3f
    sget-object v2, Landroid/net/Layer2PacketParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 219
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Layer2PacketParcelable;>;"
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClientCallbacks$Stub;->onPreconnectionStart(Ljava/util/List;)V

    .line 220
    goto/16 :goto_b6

    .line 211
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Layer2PacketParcelable;>;"
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 212
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClientCallbacks$Stub;->setNeighborDiscoveryOffload(Z)V

    .line 213
    goto :goto_b6

    .line 204
    .end local v2    # "_arg0":Z
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 205
    .restart local v2    # "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClientCallbacks$Stub;->setFallbackMulticastFilter(Z)V

    .line 206
    goto :goto_b6

    .line 198
    .end local v2    # "_arg0":Z
    :pswitch_5a
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->startReadPacketFilter()V

    .line 199
    goto :goto_b6

    .line 192
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 193
    .local v2, "_arg0":[B
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClientCallbacks$Stub;->installPacketFilter([B)V

    .line 194
    goto :goto_b6

    .line 186
    .end local v2    # "_arg0":[B
    :pswitch_66
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->onQuit()V

    .line 187
    goto :goto_b6

    .line 180
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClientCallbacks$Stub;->onReachabilityLost(Ljava/lang/String;)V

    .line 182
    goto :goto_b6

    .line 173
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_72
    sget-object v2, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 174
    .local v2, "_arg0":Landroid/net/LinkProperties;
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClientCallbacks$Stub;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    .line 175
    goto :goto_b6

    .line 166
    .end local v2    # "_arg0":Landroid/net/LinkProperties;
    :pswitch_7e
    sget-object v2, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 167
    .restart local v2    # "_arg0":Landroid/net/LinkProperties;
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClientCallbacks$Stub;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 168
    goto :goto_b6

    .line 159
    .end local v2    # "_arg0":Landroid/net/LinkProperties;
    :pswitch_8a
    sget-object v2, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 160
    .restart local v2    # "_arg0":Landroid/net/LinkProperties;
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClientCallbacks$Stub;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    .line 161
    goto :goto_b6

    .line 152
    .end local v2    # "_arg0":Landroid/net/LinkProperties;
    :pswitch_96
    sget-object v2, Landroid/net/DhcpResultsParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/DhcpResultsParcelable;

    .line 153
    .local v2, "_arg0":Landroid/net/DhcpResultsParcelable;
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClientCallbacks$Stub;->onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V

    .line 154
    goto :goto_b6

    .line 146
    .end local v2    # "_arg0":Landroid/net/DhcpResultsParcelable;
    :pswitch_a2
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->onPostDhcpAction()V

    .line 147
    goto :goto_b6

    .line 141
    :pswitch_a6
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->onPreDhcpAction()V

    .line 142
    goto :goto_b6

    .line 135
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ip/IIpClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClient;

    move-result-object v2

    .line 136
    .local v2, "_arg0":Landroid/net/ip/IIpClient;
    invoke-virtual {p0, v2}, Landroid/net/ip/IIpClientCallbacks$Stub;->onIpClientCreated(Landroid/net/ip/IIpClient;)V

    .line 137
    nop

    .line 234
    .end local v2    # "_arg0":Landroid/net/ip/IIpClient;
    :goto_b6
    return v1

    nop

    :sswitch_data_b8
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_96
        :pswitch_8a
        :pswitch_7e
        :pswitch_72
        :pswitch_6a
        :pswitch_66
        :pswitch_5e
        :pswitch_5a
        :pswitch_52
        :pswitch_4a
        :pswitch_3f
        :pswitch_32
    .end packed-switch
.end method
