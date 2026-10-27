.class public abstract Lcom/miui/enterprise/IDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceManager.java"

# interfaces
.implements Lcom/miui/enterprise/IDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_captureScreen:I = 0x16

.field static final blacklist TRANSACTION_deviceReboot:I = 0x3

.field static final blacklist TRANSACTION_deviceShutDown:I = 0x2

.field static final blacklist TRANSACTION_enableUsbDebug:I = 0x1c

.field static final blacklist TRANSACTION_formatSdCard:I = 0x4

.field static final blacklist TRANSACTION_getDefaultHome:I = 0x1f

.field static final blacklist TRANSACTION_getIpBlackList:I = 0x1b

.field static final blacklist TRANSACTION_getIpWhiteList:I = 0x1a

.field static final blacklist TRANSACTION_getUrlBlackList:I = 0x8

.field static final blacklist TRANSACTION_getUrlWhiteList:I = 0x7

.field static final blacklist TRANSACTION_getWifiApBssidBlackList:I = 0x13

.field static final blacklist TRANSACTION_getWifiApBssidWhiteList:I = 0x11

.field static final blacklist TRANSACTION_getWifiApSsidBlackList:I = 0x12

.field static final blacklist TRANSACTION_getWifiApSsidWhiteList:I = 0x10

.field static final blacklist TRANSACTION_getWifiConnRestriction:I = 0xb

.field static final blacklist TRANSACTION_isDeviceRoot:I = 0x1

.field static final blacklist TRANSACTION_recoveryFactory:I = 0x9

.field static final blacklist TRANSACTION_setBootAnimation:I = 0x1d

.field static final blacklist TRANSACTION_setBrowserRestriction:I = 0x15

.field static final blacklist TRANSACTION_setDefaultHome:I = 0x1e

.field static final blacklist TRANSACTION_setIpBlackList:I = 0x19

.field static final blacklist TRANSACTION_setIpRestriction:I = 0x17

.field static final blacklist TRANSACTION_setIpWhiteList:I = 0x18

.field static final blacklist TRANSACTION_setLockWallPaper:I = 0x21

.field static final blacklist TRANSACTION_setRingerMode:I = 0x14

.field static final blacklist TRANSACTION_setUrlBlackList:I = 0x6

.field static final blacklist TRANSACTION_setUrlWhiteList:I = 0x5

.field static final blacklist TRANSACTION_setWallPaper:I = 0x20

.field static final blacklist TRANSACTION_setWifiApBssidBlackList:I = 0xf

.field static final blacklist TRANSACTION_setWifiApBssidWhiteList:I = 0xd

.field static final blacklist TRANSACTION_setWifiApSsidBlackList:I = 0xe

.field static final blacklist TRANSACTION_setWifiApSsidWhiteList:I = 0xc

.field static final blacklist TRANSACTION_setWifiConnRestriction:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 133
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 134
    const-string v0, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IDeviceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 142
    if-nez p0, :cond_4

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_4
    const-string v0, "com.miui.enterprise.IDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 146
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/enterprise/IDeviceManager;

    if-eqz v1, :cond_14

    .line 147
    move-object v1, v0

    check-cast v1, Lcom/miui/enterprise/IDeviceManager;

    return-object v1

    .line 149
    :cond_14
    new-instance v1, Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 153
    return-object p0
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

    .line 157
    const-string v0, "com.miui.enterprise.IDeviceManager"

    .line 158
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 159
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    :cond_d
    packed-switch p1, :pswitch_data_23a

    .line 169
    packed-switch p1, :pswitch_data_240

    .line 487
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    return v1

    .line 479
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->setLockWallPaper(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    goto/16 :goto_238

    .line 470
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 471
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWallPaper(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    goto/16 :goto_238

    .line 462
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getDefaultHome()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    goto/16 :goto_238

    .line 454
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->setDefaultHome(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    goto/16 :goto_238

    .line 444
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->setBootAnimation(Ljava/lang/String;)Z

    move-result v3

    .line 447
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 449
    goto/16 :goto_238

    .line 435
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 436
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->enableUsbDebug(Z)V

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    goto/16 :goto_238

    .line 425
    .end local v2    # "_arg0":Z
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 426
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->getIpBlackList(I)Ljava/util/List;

    move-result-object v3

    .line 428
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 430
    goto/16 :goto_238

    .line 415
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 416
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->getIpWhiteList(I)Ljava/util/List;

    move-result-object v3

    .line 418
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 420
    goto/16 :goto_238

    .line 404
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 406
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 407
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setIpBlackList(Ljava/util/List;I)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    goto/16 :goto_238

    .line 393
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 395
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 396
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setIpWhiteList(Ljava/util/List;I)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    goto/16 :goto_238

    .line 382
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 384
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 385
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setIpRestriction(II)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto/16 :goto_238

    .line 374
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_d6
    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->captureScreen()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 375
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 377
    goto/16 :goto_238

    .line 364
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 366
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 367
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setBrowserRestriction(II)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_238

    .line 355
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 356
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->setRingerMode(I)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    goto/16 :goto_238

    .line 345
    .end local v2    # "_arg0":I
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 346
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApBssidBlackList(I)Ljava/util/List;

    move-result-object v3

    .line 348
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 350
    goto/16 :goto_238

    .line 335
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApSsidBlackList(I)Ljava/util/List;

    move-result-object v3

    .line 338
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 340
    goto/16 :goto_238

    .line 325
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 326
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApBssidWhiteList(I)Ljava/util/List;

    move-result-object v3

    .line 328
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 330
    goto/16 :goto_238

    .line 315
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_13d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApSsidWhiteList(I)Ljava/util/List;

    move-result-object v3

    .line 318
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 320
    goto/16 :goto_238

    .line 304
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 306
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 307
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApBssidBlackList(Ljava/util/List;I)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    goto/16 :goto_238

    .line 293
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_163
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 295
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 296
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApSsidBlackList(Ljava/util/List;I)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    goto/16 :goto_238

    .line 282
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_176
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 285
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApBssidWhiteList(Ljava/util/List;I)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_238

    .line 271
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_189
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 273
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 274
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApSsidWhiteList(Ljava/util/List;I)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_238

    .line 261
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_19c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 262
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiConnRestriction(I)I

    move-result v3

    .line 264
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    goto/16 :goto_238

    .line 250
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 253
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiConnRestriction(II)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto/16 :goto_238

    .line 241
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 242
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->recoveryFactory(Z)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto :goto_238

    .line 231
    .end local v2    # "_arg0":Z
    :pswitch_1d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->getUrlBlackList(I)Ljava/util/List;

    move-result-object v3

    .line 234
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 236
    goto :goto_238

    .line 221
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IDeviceManager$Stub;->getUrlWhiteList(I)Ljava/util/List;

    move-result-object v3

    .line 224
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 226
    goto :goto_238

    .line 210
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1f4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 212
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setUrlBlackList(Ljava/util/List;I)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_238

    .line 199
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_206
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 201
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->setUrlWhiteList(Ljava/util/List;I)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto :goto_238

    .line 192
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_218
    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->formatSdCard()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_238

    .line 186
    :pswitch_21f
    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->deviceReboot()V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto :goto_238

    .line 180
    :pswitch_226
    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->deviceShutDown()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    goto :goto_238

    .line 173
    :pswitch_22d
    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->isDeviceRoot()Z

    move-result v2

    .line 174
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 176
    nop

    .line 490
    .end local v2    # "_result":Z
    :goto_238
    return v1

    nop

    :pswitch_data_23a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_22d
        :pswitch_226
        :pswitch_21f
        :pswitch_218
        :pswitch_206
        :pswitch_1f4
        :pswitch_1e2
        :pswitch_1d0
        :pswitch_1c2
        :pswitch_1af
        :pswitch_19c
        :pswitch_189
        :pswitch_176
        :pswitch_163
        :pswitch_150
        :pswitch_13d
        :pswitch_12a
        :pswitch_117
        :pswitch_104
        :pswitch_f5
        :pswitch_e2
        :pswitch_d6
        :pswitch_c3
        :pswitch_b0
        :pswitch_9d
        :pswitch_8a
        :pswitch_77
        :pswitch_68
        :pswitch_55
        :pswitch_46
        :pswitch_3a
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
