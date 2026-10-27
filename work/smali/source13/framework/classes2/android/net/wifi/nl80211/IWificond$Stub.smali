.class public abstract Landroid/net/wifi/nl80211/IWificond$Stub;
.super Landroid/os/Binder;
.source "IWificond.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IWificond;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWificond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_GetApInterfaces:I = 0x9

.field static final blacklist TRANSACTION_GetClientInterfaces:I = 0x8

.field static final blacklist TRANSACTION_RegisterCallback:I = 0xf

.field static final blacklist TRANSACTION_UnregisterCallback:I = 0x10

.field static final blacklist TRANSACTION_createApInterface:I = 0x1

.field static final blacklist TRANSACTION_createClientInterface:I = 0x2

.field static final blacklist TRANSACTION_createP2pInterface:I = 0x3

.field static final blacklist TRANSACTION_getAvailable2gChannels:I = 0xa

.field static final blacklist TRANSACTION_getAvailable5gNonDFSChannels:I = 0xb

.field static final blacklist TRANSACTION_getAvailable60gChannels:I = 0xe

.field static final blacklist TRANSACTION_getAvailable6gChannels:I = 0xd

.field static final blacklist TRANSACTION_getAvailableDFSChannels:I = 0xc

.field static final blacklist TRANSACTION_getDeviceWiphyCapabilities:I = 0x13

.field static final blacklist TRANSACTION_notifyCountryCodeChanged:I = 0x14

.field static final blacklist TRANSACTION_registerWificondEventCallback:I = 0x11

.field static final blacklist TRANSACTION_tearDownApInterface:I = 0x4

.field static final blacklist TRANSACTION_tearDownClientInterface:I = 0x5

.field static final blacklist TRANSACTION_tearDownInterfaces:I = 0x7

.field static final blacklist TRANSACTION_tearDownP2pInterface:I = 0x6

.field static final blacklist TRANSACTION_unregisterWificondEventCallback:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 147
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 148
    const-string v0, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IWificond$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificond;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 156
    if-nez p0, :cond_4

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_4
    const-string v0, "android.net.wifi.nl80211.IWificond"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 160
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/nl80211/IWificond;

    if-eqz v1, :cond_14

    .line 161
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IWificond;

    return-object v1

    .line 163
    :cond_14
    new-instance v1, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 172
    packed-switch p0, :pswitch_data_42

    .line 256
    const/4 v0, 0x0

    return-object v0

    .line 252
    :pswitch_5
    const-string v0, "notifyCountryCodeChanged"

    return-object v0

    .line 248
    :pswitch_8
    const-string v0, "getDeviceWiphyCapabilities"

    return-object v0

    .line 244
    :pswitch_b
    const-string v0, "unregisterWificondEventCallback"

    return-object v0

    .line 240
    :pswitch_e
    const-string v0, "registerWificondEventCallback"

    return-object v0

    .line 236
    :pswitch_11
    const-string v0, "UnregisterCallback"

    return-object v0

    .line 232
    :pswitch_14
    const-string v0, "RegisterCallback"

    return-object v0

    .line 228
    :pswitch_17
    const-string v0, "getAvailable60gChannels"

    return-object v0

    .line 224
    :pswitch_1a
    const-string v0, "getAvailable6gChannels"

    return-object v0

    .line 220
    :pswitch_1d
    const-string v0, "getAvailableDFSChannels"

    return-object v0

    .line 216
    :pswitch_20
    const-string v0, "getAvailable5gNonDFSChannels"

    return-object v0

    .line 212
    :pswitch_23
    const-string v0, "getAvailable2gChannels"

    return-object v0

    .line 208
    :pswitch_26
    const-string v0, "GetApInterfaces"

    return-object v0

    .line 204
    :pswitch_29
    const-string v0, "GetClientInterfaces"

    return-object v0

    .line 200
    :pswitch_2c
    const-string v0, "tearDownInterfaces"

    return-object v0

    .line 196
    :pswitch_2f
    const-string v0, "tearDownP2pInterface"

    return-object v0

    .line 192
    :pswitch_32
    const-string v0, "tearDownClientInterface"

    return-object v0

    .line 188
    :pswitch_35
    const-string v0, "tearDownApInterface"

    return-object v0

    .line 184
    :pswitch_38
    const-string v0, "createP2pInterface"

    return-object v0

    .line 180
    :pswitch_3b
    const-string v0, "createClientInterface"

    return-object v0

    .line 176
    :pswitch_3e
    const-string v0, "createApInterface"

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
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

    .line 167
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 855
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 263
    invoke-static {p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 267
    const-string v0, "android.net.wifi.nl80211.IWificond"

    .line 268
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 269
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    :cond_d
    packed-switch p1, :pswitch_data_13c

    .line 279
    packed-switch p1, :pswitch_data_142

    .line 445
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 275
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    return v1

    .line 440
    :pswitch_1c
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->notifyCountryCodeChanged()V

    .line 441
    goto/16 :goto_13b

    .line 431
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v3

    .line 434
    .local v3, "_result":Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 436
    goto/16 :goto_13b

    .line 423
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificondEventCallback;

    move-result-object v2

    .line 424
    .local v2, "_arg0":Landroid/net/wifi/nl80211/IWificondEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->unregisterWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V

    .line 426
    goto/16 :goto_13b

    .line 415
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IWificondEventCallback;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificondEventCallback;

    move-result-object v2

    .line 416
    .restart local v2    # "_arg0":Landroid/net/wifi/nl80211/IWificondEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->registerWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V

    .line 418
    goto/16 :goto_13b

    .line 407
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IWificondEventCallback;
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    move-result-object v2

    .line 408
    .local v2, "_arg0":Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->UnregisterCallback(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)V

    .line 410
    goto/16 :goto_13b

    .line 399
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    move-result-object v2

    .line 400
    .restart local v2    # "_arg0":Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->RegisterCallback(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)V

    .line 402
    goto/16 :goto_13b

    .line 391
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    :pswitch_74
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable60gChannels()[I

    move-result-object v2

    .line 392
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 394
    goto/16 :goto_13b

    .line 384
    .end local v2    # "_result":[I
    :pswitch_80
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable6gChannels()[I

    move-result-object v2

    .line 385
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 387
    goto/16 :goto_13b

    .line 377
    .end local v2    # "_result":[I
    :pswitch_8c
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailableDFSChannels()[I

    move-result-object v2

    .line 378
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 380
    goto/16 :goto_13b

    .line 370
    .end local v2    # "_result":[I
    :pswitch_98
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable5gNonDFSChannels()[I

    move-result-object v2

    .line 371
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 373
    goto/16 :goto_13b

    .line 363
    .end local v2    # "_result":[I
    :pswitch_a4
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable2gChannels()[I

    move-result-object v2

    .line 364
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 366
    goto/16 :goto_13b

    .line 356
    .end local v2    # "_result":[I
    :pswitch_b0
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->GetApInterfaces()Ljava/util/List;

    move-result-object v2

    .line 357
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 359
    goto/16 :goto_13b

    .line 349
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_bc
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->GetClientInterfaces()Ljava/util/List;

    move-result-object v2

    .line 350
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 352
    goto/16 :goto_13b

    .line 343
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_c8
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownInterfaces()V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto :goto_13b

    .line 334
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownP2pInterface(Ljava/lang/String;)Z

    move-result v3

    .line 337
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 339
    goto :goto_13b

    .line 324
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 325
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result v3

    .line 327
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 329
    goto :goto_13b

    .line 314
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownApInterface(Ljava/lang/String;)Z

    move-result v3

    .line 317
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 319
    goto :goto_13b

    .line 304
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->createP2pInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IP2pInterface;

    move-result-object v3

    .line 307
    .local v3, "_result":Landroid/net/wifi/nl80211/IP2pInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 309
    goto :goto_13b

    .line 294
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/nl80211/IP2pInterface;
    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->createClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v3

    .line 297
    .local v3, "_result":Landroid/net/wifi/nl80211/IClientInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 299
    goto :goto_13b

    .line 284
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/nl80211/IClientInterface;
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->createApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v3

    .line 287
    .local v3, "_result":Landroid/net/wifi/nl80211/IApInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 289
    nop

    .line 448
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/nl80211/IApInterface;
    :goto_13b
    return v1

    :pswitch_data_13c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_129
        :pswitch_117
        :pswitch_105
        :pswitch_f3
        :pswitch_e1
        :pswitch_cf
        :pswitch_c8
        :pswitch_bc
        :pswitch_b0
        :pswitch_a4
        :pswitch_98
        :pswitch_8c
        :pswitch_80
        :pswitch_74
        :pswitch_64
        :pswitch_54
        :pswitch_44
        :pswitch_34
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method
