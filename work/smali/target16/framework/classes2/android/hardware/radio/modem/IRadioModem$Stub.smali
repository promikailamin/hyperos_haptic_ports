.class public abstract Landroid/hardware/radio/modem/IRadioModem$Stub;
.super Landroid/os/Binder;
.source "IRadioModem.java"

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enableModem:I = 0x1

.field static final blacklist TRANSACTION_getBasebandVersion:I = 0x2

.field static final blacklist TRANSACTION_getDeviceIdentity:I = 0x3

.field static final blacklist TRANSACTION_getHardwareConfig:I = 0x4

.field static final blacklist TRANSACTION_getImei:I = 0x12

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getModemActivityInfo:I = 0x5

.field static final blacklist TRANSACTION_getModemStackStatus:I = 0x6

.field static final blacklist TRANSACTION_getRadioCapability:I = 0x7

.field static final blacklist TRANSACTION_nvReadItem:I = 0x8

.field static final blacklist TRANSACTION_nvResetConfig:I = 0x9

.field static final blacklist TRANSACTION_nvWriteCdmaPrl:I = 0xa

.field static final blacklist TRANSACTION_nvWriteItem:I = 0xb

.field static final blacklist TRANSACTION_requestShutdown:I = 0xc

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0xd

.field static final blacklist TRANSACTION_sendDeviceState:I = 0xe

.field static final blacklist TRANSACTION_setRadioCapability:I = 0xf

.field static final blacklist TRANSACTION_setRadioPower:I = 0x10

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x11


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 315
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 316
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->markVintfStability()V

    .line 317
    sget-object v0, Landroid/hardware/radio/modem/IRadioModem$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModem;
    .registers 3

    .line 325
    if-nez p0, :cond_4

    .line 326
    const/4 p0, 0x0

    return-object p0

    .line 328
    :cond_4
    sget-object v0, Landroid/hardware/radio/modem/IRadioModem$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/modem/IRadioModem;

    if-eqz v1, :cond_13

    .line 330
    check-cast v0, Landroid/hardware/radio/modem/IRadioModem;

    return-object v0

    .line 332
    :cond_13
    new-instance v0, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/modem/IRadioModem$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 336
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    sget-object v0, Landroid/hardware/radio/modem/IRadioModem$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 341
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 342
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 345
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    return v2

    .line 348
    :cond_16
    if-ne p1, v1, :cond_23

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    return v2

    .line 353
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    return v2

    .line 358
    :cond_33
    packed-switch p1, :pswitch_data_144

    .line 527
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 520
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getImei(I)V

    .line 523
    goto/16 :goto_143

    .line 510
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModemResponse;

    move-result-object p1

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModemIndication;

    move-result-object p3

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->setResponseFunctions(Landroid/hardware/radio/modem/IRadioModemResponse;Landroid/hardware/radio/modem/IRadioModemIndication;)V

    .line 515
    goto/16 :goto_143

    .line 496
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->setRadioPower(IZZZ)V

    .line 505
    goto/16 :goto_143

    .line 486
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 488
    sget-object p3, Landroid/hardware/radio/modem/RadioCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/modem/RadioCapability;

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->setRadioCapability(ILandroid/hardware/radio/modem/RadioCapability;)V

    .line 491
    goto/16 :goto_143

    .line 474
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/modem/IRadioModem$Stub;->sendDeviceState(IIZ)V

    .line 481
    goto/16 :goto_143

    .line 468
    :pswitch_9f
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->responseAcknowledgement()V

    .line 469
    goto/16 :goto_143

    .line 461
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->requestShutdown(I)V

    .line 464
    goto/16 :goto_143

    .line 451
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 453
    sget-object p3, Landroid/hardware/radio/modem/NvWriteItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/modem/NvWriteItem;

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->nvWriteItem(ILandroid/hardware/radio/modem/NvWriteItem;)V

    .line 456
    goto/16 :goto_143

    .line 441
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->nvWriteCdmaPrl(I[B)V

    .line 446
    goto/16 :goto_143

    .line 431
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->nvResetConfig(II)V

    .line 436
    goto :goto_143

    .line 421
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->nvReadItem(II)V

    .line 426
    goto :goto_143

    .line 413
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getRadioCapability(I)V

    .line 416
    goto :goto_143

    .line 405
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getModemStackStatus(I)V

    .line 408
    goto :goto_143

    .line 397
    :pswitch_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getModemActivityInfo(I)V

    .line 400
    goto :goto_143

    .line 389
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getHardwareConfig(I)V

    .line 392
    goto :goto_143

    .line 381
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getDeviceIdentity(I)V

    .line 384
    goto :goto_143

    .line 373
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModem$Stub;->getBasebandVersion(I)V

    .line 376
    goto :goto_143

    .line 363
    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->enableModem(IZ)V

    .line 368
    nop

    .line 530
    :goto_143
    return v2

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_134
        :pswitch_129
        :pswitch_11e
        :pswitch_113
        :pswitch_108
        :pswitch_fd
        :pswitch_f2
        :pswitch_e3
        :pswitch_d4
        :pswitch_c4
        :pswitch_b0
        :pswitch_a4
        :pswitch_9f
        :pswitch_8b
        :pswitch_77
        :pswitch_5f
        :pswitch_47
        :pswitch_3b
    .end packed-switch
.end method
