.class public abstract Landroid/hardware/radio/modem/IRadioModemResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioModemResponse.java"

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModemResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModemResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/modem/IRadioModemResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x1

.field static final blacklist TRANSACTION_enableModemResponse:I = 0x2

.field static final blacklist TRANSACTION_getBasebandVersionResponse:I = 0x3

.field static final blacklist TRANSACTION_getDeviceIdentityResponse:I = 0x4

.field static final blacklist TRANSACTION_getHardwareConfigResponse:I = 0x5

.field static final blacklist TRANSACTION_getImeiResponse:I = 0x11

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getModemActivityInfoResponse:I = 0x6

.field static final blacklist TRANSACTION_getModemStackStatusResponse:I = 0x7

.field static final blacklist TRANSACTION_getRadioCapabilityResponse:I = 0x8

.field static final blacklist TRANSACTION_nvReadItemResponse:I = 0x9

.field static final blacklist TRANSACTION_nvResetConfigResponse:I = 0xa

.field static final blacklist TRANSACTION_nvWriteCdmaPrlResponse:I = 0xb

.field static final blacklist TRANSACTION_nvWriteItemResponse:I = 0xc

.field static final blacklist TRANSACTION_requestShutdownResponse:I = 0xd

.field static final blacklist TRANSACTION_sendDeviceStateResponse:I = 0xe

.field static final blacklist TRANSACTION_setRadioCapabilityResponse:I = 0xf

.field static final blacklist TRANSACTION_setRadioPowerResponse:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 324
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 325
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->markVintfStability()V

    .line 326
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModemResponse;
    .registers 3

    .line 334
    if-nez p0, :cond_4

    .line 335
    const/4 p0, 0x0

    return-object p0

    .line 337
    :cond_4
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/modem/IRadioModemResponse;

    if-eqz v1, :cond_13

    .line 339
    check-cast v0, Landroid/hardware/radio/modem/IRadioModemResponse;

    return-object v0

    .line 341
    :cond_13
    new-instance v0, Landroid/hardware/radio/modem/IRadioModemResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 345
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 350
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 351
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 354
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    return v2

    .line 357
    :cond_16
    if-ne p1, v1, :cond_23

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    return v2

    .line 362
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    return v2

    .line 367
    :cond_33
    packed-switch p1, :pswitch_data_18c

    .line 531
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 522
    :pswitch_3c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 524
    sget-object p3, Landroid/hardware/radio/modem/ImeiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/modem/ImeiInfo;

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getImeiResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/ImeiInfo;)V

    .line 527
    goto/16 :goto_18b

    .line 514
    :pswitch_54
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 517
    goto/16 :goto_18b

    .line 504
    :pswitch_64
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 506
    sget-object p3, Landroid/hardware/radio/modem/RadioCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/modem/RadioCapability;

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V

    .line 509
    goto/16 :goto_18b

    .line 496
    :pswitch_7c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 499
    goto/16 :goto_18b

    .line 488
    :pswitch_8c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 491
    goto/16 :goto_18b

    .line 480
    :pswitch_9c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 483
    goto/16 :goto_18b

    .line 472
    :pswitch_ac
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 475
    goto/16 :goto_18b

    .line 464
    :pswitch_bc
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 467
    goto/16 :goto_18b

    .line 454
    :pswitch_cc
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 459
    goto/16 :goto_18b

    .line 444
    :pswitch_e0
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 446
    sget-object p3, Landroid/hardware/radio/modem/RadioCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/modem/RadioCapability;

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V

    .line 449
    goto/16 :goto_18b

    .line 434
    :pswitch_f8
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getModemStackStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 439
    goto/16 :goto_18b

    .line 424
    :pswitch_10c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 426
    sget-object p3, Landroid/hardware/radio/modem/ActivityStatsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/modem/ActivityStatsInfo;

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/ActivityStatsInfo;)V

    .line 429
    goto :goto_18b

    .line 414
    :pswitch_123
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 416
    sget-object p3, Landroid/hardware/radio/modem/HardwareConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/modem/HardwareConfig;

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/modem/HardwareConfig;)V

    .line 419
    goto :goto_18b

    .line 398
    :pswitch_13a
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/hardware/radio/RadioResponseInfo;

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    goto :goto_18b

    .line 388
    :pswitch_15b
    move-object v3, p0

    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 393
    goto :goto_18b

    .line 380
    :pswitch_16f
    move-object v3, p0

    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->enableModemResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 383
    goto :goto_18b

    .line 372
    :pswitch_17f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, p1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->acknowledgeRequest(I)V

    .line 375
    nop

    .line 534
    :goto_18b
    return v2

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_17f
        :pswitch_16f
        :pswitch_15b
        :pswitch_13a
        :pswitch_123
        :pswitch_10c
        :pswitch_f8
        :pswitch_e0
        :pswitch_cc
        :pswitch_bc
        :pswitch_ac
        :pswitch_9c
        :pswitch_8c
        :pswitch_7c
        :pswitch_64
        :pswitch_54
        :pswitch_3c
    .end packed-switch
.end method
