.class public abstract Landroid/hardware/radio/data/IRadioData$Stub;
.super Landroid/os/Binder;
.source "IRadioData.java"

# interfaces
.implements Landroid/hardware/radio/data/IRadioData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/IRadioData$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_allocatePduSessionId:I = 0x1

.field static final blacklist TRANSACTION_cancelHandover:I = 0x2

.field static final blacklist TRANSACTION_deactivateDataCall:I = 0x3

.field static final blacklist TRANSACTION_getDataCallList:I = 0x4

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSlicingConfig:I = 0x5

.field static final blacklist TRANSACTION_notifyImsDataNetwork:I = 0x13

.field static final blacklist TRANSACTION_releasePduSessionId:I = 0x6

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0x7

.field static final blacklist TRANSACTION_setDataAllowed:I = 0x8

.field static final blacklist TRANSACTION_setDataProfile:I = 0x9

.field static final blacklist TRANSACTION_setDataThrottling:I = 0xa

.field static final blacklist TRANSACTION_setInitialAttachApn:I = 0xb

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0xc

.field static final blacklist TRANSACTION_setUserDataEnabled:I = 0x11

.field static final blacklist TRANSACTION_setUserDataRoamingEnabled:I = 0x12

.field static final blacklist TRANSACTION_setupDataCall:I = 0xd

.field static final blacklist TRANSACTION_startHandover:I = 0xe

.field static final blacklist TRANSACTION_startKeepalive:I = 0xf

.field static final blacklist TRANSACTION_stopKeepalive:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 377
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 378
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioData$Stub;->markVintfStability()V

    .line 379
    sget-object v0, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/data/IRadioData$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioData;
    .registers 3

    .line 387
    if-nez p0, :cond_4

    .line 388
    const/4 p0, 0x0

    return-object p0

    .line 390
    :cond_4
    sget-object v0, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/data/IRadioData;

    if-eqz v1, :cond_13

    .line 392
    check-cast v0, Landroid/hardware/radio/data/IRadioData;

    return-object v0

    .line 394
    :cond_13
    new-instance v0, Landroid/hardware/radio/data/IRadioData$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/data/IRadioData$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 398
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    move-object v3, p3

    sget-object v4, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 403
    const v5, 0xffffff

    const/4 v11, 0x1

    if-lt p1, v11, :cond_e

    if-gt p1, v5, :cond_e

    .line 404
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    :cond_e
    const v6, 0x5f4e5446

    if-ne p1, v6, :cond_17

    .line 407
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    return v11

    .line 410
    :cond_17
    if-ne p1, v5, :cond_24

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioData$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    return v11

    .line 415
    :cond_24
    const v4, 0xfffffe

    if-ne p1, v4, :cond_34

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioData$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    return v11

    .line 420
    :cond_34
    packed-switch p1, :pswitch_data_186

    .line 638
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 620
    :pswitch_3c
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Method notifyImsDataNetwork is unimplemented."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :pswitch_44
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Method setUserDataRoamingEnabled is unimplemented."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :pswitch_4c
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Method setUserDataEnabled is unimplemented."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/data/IRadioData$Stub;->stopKeepalive(II)V

    .line 589
    goto/16 :goto_185

    .line 574
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 576
    sget-object v3, Landroid/hardware/radio/data/KeepaliveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/KeepaliveRequest;

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/data/IRadioData$Stub;->startKeepalive(ILandroid/hardware/radio/data/KeepaliveRequest;)V

    .line 579
    goto/16 :goto_185

    .line 564
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/data/IRadioData$Stub;->startHandover(II)V

    .line 569
    goto/16 :goto_185

    .line 538
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 542
    sget-object v4, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/data/DataProfileInfo;

    .line 544
    move v5, v3

    move-object v3, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 546
    move v6, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 548
    sget-object v7, Landroid/hardware/radio/data/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/radio/data/LinkAddress;

    .line 550
    move v8, v6

    move-object v6, v7

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 552
    move v9, v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 554
    sget-object v10, Landroid/hardware/radio/data/SliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/radio/data/SliceInfo;

    .line 556
    move v2, v9

    move-object v9, v10

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/radio/data/IRadioData$Stub;->setupDataCall(IILandroid/hardware/radio/data/DataProfileInfo;ZI[Landroid/hardware/radio/data/LinkAddress;[Ljava/lang/String;ILandroid/hardware/radio/data/SliceInfo;Z)V

    .line 559
    goto/16 :goto_185

    .line 528
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataResponse;

    move-result-object v1

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataIndication;

    move-result-object v2

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->setResponseFunctions(Landroid/hardware/radio/data/IRadioDataResponse;Landroid/hardware/radio/data/IRadioDataIndication;)V

    .line 533
    goto/16 :goto_185

    .line 518
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 520
    sget-object v2, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/data/DataProfileInfo;

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->setInitialAttachApn(ILandroid/hardware/radio/data/DataProfileInfo;)V

    .line 523
    goto/16 :goto_185

    .line 506
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataThrottling(IBJ)V

    .line 513
    goto/16 :goto_185

    .line 496
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 498
    sget-object v2, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/data/DataProfileInfo;

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataProfile(I[Landroid/hardware/radio/data/DataProfileInfo;)V

    .line 501
    goto :goto_185

    .line 486
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataAllowed(IZ)V

    .line 491
    goto :goto_185

    .line 480
    :pswitch_12f
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioData$Stub;->responseAcknowledgement()V

    .line 481
    goto :goto_185

    .line 471
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->releasePduSessionId(II)V

    .line 476
    goto :goto_185

    .line 463
    :pswitch_142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->getSlicingConfig(I)V

    .line 466
    goto :goto_185

    .line 455
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->getDataCallList(I)V

    .line 458
    goto :goto_185

    .line 443
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/data/IRadioData$Stub;->deactivateDataCall(III)V

    .line 450
    goto :goto_185

    .line 433
    :pswitch_16b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->cancelHandover(II)V

    .line 438
    goto :goto_185

    .line 425
    :pswitch_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->allocatePduSessionId(I)V

    .line 428
    nop

    .line 641
    :goto_185
    return v11

    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_17a
        :pswitch_16b
        :pswitch_158
        :pswitch_14d
        :pswitch_142
        :pswitch_133
        :pswitch_12f
        :pswitch_120
        :pswitch_10d
        :pswitch_f9
        :pswitch_e5
        :pswitch_cd
        :pswitch_88
        :pswitch_78
        :pswitch_64
        :pswitch_54
        :pswitch_4c
        :pswitch_44
        :pswitch_3c
    .end packed-switch
.end method
