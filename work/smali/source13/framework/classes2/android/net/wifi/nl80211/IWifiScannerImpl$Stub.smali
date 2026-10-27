.class public abstract Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;
.super Landroid/os/Binder;
.source "IWifiScannerImpl.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IWifiScannerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortScan:I = 0xb

.field static final blacklist TRANSACTION_getMaxSsidsPerScan:I = 0x3

.field static final blacklist TRANSACTION_getPnoScanResults:I = 0x2

.field static final blacklist TRANSACTION_getScanResults:I = 0x1

.field static final blacklist TRANSACTION_scan:I = 0x4

.field static final blacklist TRANSACTION_startPnoScan:I = 0x9

.field static final blacklist TRANSACTION_stopPnoScan:I = 0xa

.field static final blacklist TRANSACTION_subscribePnoScanEvents:I = 0x7

.field static final blacklist TRANSACTION_subscribeScanEvents:I = 0x5

.field static final blacklist TRANSACTION_unsubscribePnoScanEvents:I = 0x8

.field static final blacklist TRANSACTION_unsubscribeScanEvents:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 79
    const-string v0, "android.net.wifi.nl80211.IWifiScannerImpl"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWifiScannerImpl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 87
    if-nez p0, :cond_4

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_4
    const-string v0, "android.net.wifi.nl80211.IWifiScannerImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 91
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    if-eqz v1, :cond_14

    .line 92
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    return-object v1

    .line 94
    :cond_14
    new-instance v1, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 103
    packed-switch p0, :pswitch_data_26

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 147
    :pswitch_5
    const-string v0, "abortScan"

    return-object v0

    .line 143
    :pswitch_8
    const-string v0, "stopPnoScan"

    return-object v0

    .line 139
    :pswitch_b
    const-string v0, "startPnoScan"

    return-object v0

    .line 135
    :pswitch_e
    const-string v0, "unsubscribePnoScanEvents"

    return-object v0

    .line 131
    :pswitch_11
    const-string v0, "subscribePnoScanEvents"

    return-object v0

    .line 127
    :pswitch_14
    const-string v0, "unsubscribeScanEvents"

    return-object v0

    .line 123
    :pswitch_17
    const-string v0, "subscribeScanEvents"

    return-object v0

    .line 119
    :pswitch_1a
    const-string v0, "scan"

    return-object v0

    .line 115
    :pswitch_1d
    const-string v0, "getMaxSsidsPerScan"

    return-object v0

    .line 111
    :pswitch_20
    const-string v0, "getPnoScanResults"

    return-object v0

    .line 107
    :pswitch_23
    const-string v0, "getScanResults"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 98
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 475
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 158
    invoke-static {p1}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 162
    const-string v0, "android.net.wifi.nl80211.IWifiScannerImpl"

    .line 163
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 164
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    :cond_d
    packed-switch p1, :pswitch_data_a4

    .line 174
    packed-switch p1, :pswitch_data_aa

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 170
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return v1

    .line 252
    :pswitch_1c
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->abortScan()V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto/16 :goto_a3

    .line 245
    :pswitch_24
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->stopPnoScan()Z

    move-result v2

    .line 246
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 248
    goto/16 :goto_a3

    .line 236
    .end local v2    # "_result":Z
    :pswitch_30
    sget-object v2, Landroid/net/wifi/nl80211/PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/nl80211/PnoSettings;

    .line 237
    .local v2, "_arg0":Landroid/net/wifi/nl80211/PnoSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->startPnoScan(Landroid/net/wifi/nl80211/PnoSettings;)Z

    move-result v3

    .line 239
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 241
    goto :goto_a3

    .line 230
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/PnoSettings;
    .end local v3    # "_result":Z
    :pswitch_46
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->unsubscribePnoScanEvents()V

    .line 231
    goto :goto_a3

    .line 223
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IPnoScanEvent;

    move-result-object v2

    .line 224
    .local v2, "_arg0":Landroid/net/wifi/nl80211/IPnoScanEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->subscribePnoScanEvents(Landroid/net/wifi/nl80211/IPnoScanEvent;)V

    .line 226
    goto :goto_a3

    .line 217
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IPnoScanEvent;
    :pswitch_59
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->unsubscribeScanEvents()V

    .line 218
    goto :goto_a3

    .line 210
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IScanEvent;

    move-result-object v2

    .line 211
    .local v2, "_arg0":Landroid/net/wifi/nl80211/IScanEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->subscribeScanEvents(Landroid/net/wifi/nl80211/IScanEvent;)V

    .line 213
    goto :goto_a3

    .line 200
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IScanEvent;
    :pswitch_6c
    sget-object v2, Landroid/net/wifi/nl80211/SingleScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/nl80211/SingleScanSettings;

    .line 201
    .local v2, "_arg0":Landroid/net/wifi/nl80211/SingleScanSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->scan(Landroid/net/wifi/nl80211/SingleScanSettings;)Z

    move-result v3

    .line 203
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 205
    goto :goto_a3

    .line 192
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/SingleScanSettings;
    .end local v3    # "_result":Z
    :pswitch_82
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getMaxSsidsPerScan()I

    move-result v2

    .line 193
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    goto :goto_a3

    .line 185
    .end local v2    # "_result":I
    :pswitch_8d
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getPnoScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object v2

    .line 186
    .local v2, "_result":[Landroid/net/wifi/nl80211/NativeScanResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 188
    goto :goto_a3

    .line 178
    .end local v2    # "_result":[Landroid/net/wifi/nl80211/NativeScanResult;
    :pswitch_98
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object v2

    .line 179
    .restart local v2    # "_result":[Landroid/net/wifi/nl80211/NativeScanResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 181
    nop

    .line 261
    .end local v2    # "_result":[Landroid/net/wifi/nl80211/NativeScanResult;
    :goto_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_98
        :pswitch_8d
        :pswitch_82
        :pswitch_6c
        :pswitch_5d
        :pswitch_59
        :pswitch_4a
        :pswitch_46
        :pswitch_30
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method
