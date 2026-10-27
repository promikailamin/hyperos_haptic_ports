.class public abstract Landroid/hardware/radio/data/IRadioDataResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioDataResponse.java"

# interfaces
.implements Landroid/hardware/radio/data/IRadioDataResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x1

.field static final blacklist TRANSACTION_allocatePduSessionIdResponse:I = 0x2

.field static final blacklist TRANSACTION_cancelHandoverResponse:I = 0x3

.field static final blacklist TRANSACTION_deactivateDataCallResponse:I = 0x4

.field static final blacklist TRANSACTION_getDataCallListResponse:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSlicingConfigResponse:I = 0x6

.field static final blacklist TRANSACTION_notifyImsDataNetworkResponse:I = 0x12

.field static final blacklist TRANSACTION_releasePduSessionIdResponse:I = 0x7

.field static final blacklist TRANSACTION_setDataAllowedResponse:I = 0x8

.field static final blacklist TRANSACTION_setDataProfileResponse:I = 0x9

.field static final blacklist TRANSACTION_setDataThrottlingResponse:I = 0xa

.field static final blacklist TRANSACTION_setInitialAttachApnResponse:I = 0xb

.field static final blacklist TRANSACTION_setUserDataEnabledResponse:I = 0x10

.field static final blacklist TRANSACTION_setUserDataRoamingEnabledResponse:I = 0x11

.field static final blacklist TRANSACTION_setupDataCallResponse:I = 0xc

.field static final blacklist TRANSACTION_startHandoverResponse:I = 0xd

.field static final blacklist TRANSACTION_startKeepaliveResponse:I = 0xe

.field static final blacklist TRANSACTION_stopKeepaliveResponse:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 320
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 321
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->markVintfStability()V

    .line 322
    sget-object v0, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataResponse;
    .registers 3

    .line 330
    if-nez p0, :cond_4

    .line 331
    const/4 p0, 0x0

    return-object p0

    .line 333
    :cond_4
    sget-object v0, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/data/IRadioDataResponse;

    if-eqz v1, :cond_13

    .line 335
    check-cast v0, Landroid/hardware/radio/data/IRadioDataResponse;

    return-object v0

    .line 337
    :cond_13
    new-instance v0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 341
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    sget-object v0, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 346
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 347
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 350
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    return v2

    .line 353
    :cond_16
    if-ne p1, v1, :cond_23

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    return v2

    .line 358
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    return v2

    .line 363
    :cond_33
    packed-switch p1, :pswitch_data_15e

    .line 530
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 520
    :pswitch_3b
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method notifyImsDataNetworkResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 509
    :pswitch_43
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setUserDataRoamingEnabledResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 498
    :pswitch_4b
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setUserDataEnabledResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 490
    :pswitch_53
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 493
    goto/16 :goto_15c

    .line 480
    :pswitch_63
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 482
    sget-object p3, Landroid/hardware/radio/data/KeepaliveStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/data/KeepaliveStatus;

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/KeepaliveStatus;)V

    .line 485
    goto/16 :goto_15c

    .line 472
    :pswitch_7b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->startHandoverResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 475
    goto/16 :goto_15c

    .line 462
    :pswitch_8b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 464
    sget-object p3, Landroid/hardware/radio/data/SetupDataCallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/data/SetupDataCallResult;

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/SetupDataCallResult;)V

    .line 467
    goto/16 :goto_15c

    .line 454
    :pswitch_a3
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 457
    goto/16 :goto_15c

    .line 446
    :pswitch_b3
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setDataThrottlingResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 449
    goto/16 :goto_15c

    .line 438
    :pswitch_c3
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 441
    goto/16 :goto_15c

    .line 430
    :pswitch_d3
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 433
    goto/16 :goto_15c

    .line 422
    :pswitch_e3
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->releasePduSessionIdResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 425
    goto :goto_15c

    .line 412
    :pswitch_f2
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 414
    sget-object p3, Landroid/hardware/radio/data/SlicingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/data/SlicingConfig;

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->getSlicingConfigResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/SlicingConfig;)V

    .line 417
    goto :goto_15c

    .line 402
    :pswitch_109
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 404
    sget-object p3, Landroid/hardware/radio/data/SetupDataCallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/data/SetupDataCallResult;

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/data/SetupDataCallResult;)V

    .line 407
    goto :goto_15c

    .line 394
    :pswitch_120
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 397
    goto :goto_15c

    .line 386
    :pswitch_12f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->cancelHandoverResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 389
    goto :goto_15c

    .line 376
    :pswitch_13e
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->allocatePduSessionIdResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 381
    goto :goto_15c

    .line 368
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->acknowledgeRequest(I)V

    .line 371
    nop

    .line 533
    :goto_15c
    return v2

    nop

    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_151
        :pswitch_13e
        :pswitch_12f
        :pswitch_120
        :pswitch_109
        :pswitch_f2
        :pswitch_e3
        :pswitch_d3
        :pswitch_c3
        :pswitch_b3
        :pswitch_a3
        :pswitch_8b
        :pswitch_7b
        :pswitch_63
        :pswitch_53
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
    .end packed-switch
.end method
