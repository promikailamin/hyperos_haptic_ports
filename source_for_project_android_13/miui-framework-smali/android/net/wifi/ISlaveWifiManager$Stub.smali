.class public abstract Landroid/net/wifi/ISlaveWifiManager$Stub;
.super Landroid/os/Binder;
.source "ISlaveWifiManager.java"

# interfaces
.implements Landroid/net/wifi/ISlaveWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ISlaveWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ISlaveWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_connectToPrimaryApWithBssid:I = 0x4

.field static final blacklist TRANSACTION_connectToSlaveAp:I = 0x2

.field static final blacklist TRANSACTION_connectToSlaveApWithBssid:I = 0x3

.field static final blacklist TRANSACTION_disconnectSlaveWifi:I = 0x5

.field static final blacklist TRANSACTION_getSlaveDhcpInfo:I = 0xa

.field static final blacklist TRANSACTION_getSlaveWifiCurrentNetwork:I = 0x7

.field static final blacklist TRANSACTION_getSlaveWifiState:I = 0x1

.field static final blacklist TRANSACTION_getWifiSlaveConnectionInfo:I = 0x8

.field static final blacklist TRANSACTION_isBusySlaveWifi:I = 0x10

.field static final blacklist TRANSACTION_isCombineBandHbsSupport:I = 0xe

.field static final blacklist TRANSACTION_isMloBothActive:I = 0xd

.field static final blacklist TRANSACTION_reconnectSlaveWifi:I = 0x6

.field static final blacklist TRANSACTION_setWifiSlaveEnabled:I = 0x9

.field static final blacklist TRANSACTION_supportDbsDualWifi:I = 0xf

.field static final blacklist TRANSACTION_supportDualWifi:I = 0xb

.field static final blacklist TRANSACTION_supportHbsDualWifi:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "android.net.wifi.ISlaveWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/ISlaveWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISlaveWifiManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    const-string v0, "android.net.wifi.ISlaveWifiManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/ISlaveWifiManager;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/ISlaveWifiManager;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/net/wifi/ISlaveWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/ISlaveWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const-string v0, "android.net.wifi.ISlaveWifiManager"

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
    packed-switch p1, :pswitch_data_108

    .line 118
    packed-switch p1, :pswitch_data_10e

    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 114
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 248
    :pswitch_1c
    invoke-virtual {p0}, Landroid/net/wifi/ISlaveWifiManager$Stub;->isBusySlaveWifi()Z

    move-result v2

    .line 249
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 251
    goto/16 :goto_106

    .line 241
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p0}, Landroid/net/wifi/ISlaveWifiManager$Stub;->supportDbsDualWifi()Z

    move-result v2

    .line 242
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 244
    goto/16 :goto_106

    .line 230
    .end local v2    # "_result":Z
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 233
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/ISlaveWifiManager$Stub;->isCombineBandHbsSupport(II)Z

    move-result v4

    .line 235
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 237
    goto/16 :goto_106

    .line 222
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_4b
    invoke-virtual {p0}, Landroid/net/wifi/ISlaveWifiManager$Stub;->isMloBothActive()Z

    move-result v2

    .line 223
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 225
    goto/16 :goto_106

    .line 215
    .end local v2    # "_result":Z
    :pswitch_57
    invoke-virtual {p0}, Landroid/net/wifi/ISlaveWifiManager$Stub;->supportHbsDualWifi()Z

    move-result v2

    .line 216
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 218
    goto/16 :goto_106

    .line 208
    .end local v2    # "_result":Z
    :pswitch_63
    invoke-virtual {p0}, Landroid/net/wifi/ISlaveWifiManager$Stub;->supportDualWifi()Z

    move-result v2

    .line 209
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 211
    goto/16 :goto_106

    .line 201
    .end local v2    # "_result":Z
    :pswitch_6f
    invoke-virtual {p0}, Landroid/net/wifi/ISlaveWifiManager$Stub;->getSlaveDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    .line 202
    .local v2, "_result":Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 204
    goto/16 :goto_106

    .line 192
    .end local v2    # "_result":Landroid/net/DhcpInfo;
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 193
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Landroid/net/wifi/ISlaveWifiManager$Stub;->setWifiSlaveEnabled(Z)Z

    move-result v3

    .line 195
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 197
    goto/16 :goto_106

    .line 184
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_8e
    invoke-virtual {p0}, Landroid/net/wifi/ISlaveWifiManager$Stub;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 185
    .local v2, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    goto :goto_106

    .line 177
    .end local v2    # "_result":Landroid/net/wifi/WifiInfo;
    :pswitch_99
    invoke-virtual {p0}, Landroid/net/wifi/ISlaveWifiManager$Stub;->getSlaveWifiCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    .line 178
    .local v2, "_result":Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 180
    goto :goto_106

    .line 170
    .end local v2    # "_result":Landroid/net/Network;
    :pswitch_a4
    invoke-virtual {p0}, Landroid/net/wifi/ISlaveWifiManager$Stub;->reconnectSlaveWifi()Z

    move-result v2

    .line 171
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 173
    goto :goto_106

    .line 163
    .end local v2    # "_result":Z
    :pswitch_af
    invoke-virtual {p0}, Landroid/net/wifi/ISlaveWifiManager$Stub;->disconnectSlaveWifi()Z

    move-result v2

    .line 164
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 166
    goto :goto_106

    .line 152
    .end local v2    # "_result":Z
    :pswitch_ba
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 154
    .local v2, "_arg0":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/ISlaveWifiManager$Stub;->connectToPrimaryApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V

    .line 159
    goto :goto_106

    .line 140
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_d1
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 142
    .restart local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/ISlaveWifiManager$Stub;->connectToSlaveApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V

    .line 147
    goto :goto_106

    .line 130
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_e8
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 132
    .restart local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/ISlaveWifiManager$Stub;->connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;I)V

    .line 135
    goto :goto_106

    .line 122
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "_arg1":I
    :pswitch_fb
    invoke-virtual {p0}, Landroid/net/wifi/ISlaveWifiManager$Stub;->getSlaveWifiState()I

    move-result v2

    .line 123
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    nop

    .line 258
    .end local v2    # "_result":I
    :goto_106
    return v1

    nop

    :pswitch_data_108
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_fb
        :pswitch_e8
        :pswitch_d1
        :pswitch_ba
        :pswitch_af
        :pswitch_a4
        :pswitch_99
        :pswitch_8e
        :pswitch_7b
        :pswitch_6f
        :pswitch_63
        :pswitch_57
        :pswitch_4b
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
