.class public abstract Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioNetworkIndication.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetworkIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetworkIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/IRadioNetworkIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_barringInfoChanged:I = 0x1

.field static final blacklist TRANSACTION_cdmaPrlChanged:I = 0x2

.field static final blacklist TRANSACTION_cellInfoList:I = 0x3

.field static final blacklist TRANSACTION_cellularIdentifierDisclosed:I = 0x10

.field static final blacklist TRANSACTION_currentLinkCapacityEstimate:I = 0x4

.field static final blacklist TRANSACTION_currentPhysicalChannelConfigs:I = 0x5

.field static final blacklist TRANSACTION_currentSignalStrength:I = 0x6

.field static final blacklist TRANSACTION_displayNetworkTypeChanged:I = 0x12

.field static final blacklist TRANSACTION_emergencyNetworkScanResult:I = 0xf

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_imsNetworkStateChanged:I = 0x7

.field static final blacklist TRANSACTION_networkScanResult:I = 0x8

.field static final blacklist TRANSACTION_networkStateChanged:I = 0x9

.field static final blacklist TRANSACTION_nitzTimeReceived:I = 0xa

.field static final blacklist TRANSACTION_registrationFailed:I = 0xb

.field static final blacklist TRANSACTION_restrictedStateChanged:I = 0xc

.field static final blacklist TRANSACTION_securityAlgorithmsUpdated:I = 0x11

.field static final blacklist TRANSACTION_suppSvcNotify:I = 0xd

.field static final blacklist TRANSACTION_voiceRadioTechChanged:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 397
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 398
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->markVintfStability()V

    .line 399
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetworkIndication;
    .registers 3

    .line 407
    if-nez p0, :cond_4

    .line 408
    const/4 p0, 0x0

    return-object p0

    .line 410
    :cond_4
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/network/IRadioNetworkIndication;

    if-eqz v1, :cond_13

    .line 412
    check-cast v0, Landroid/hardware/radio/network/IRadioNetworkIndication;

    return-object v0

    .line 414
    :cond_13
    new-instance v0, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 418
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    sget-object v4, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 423
    const v5, 0xffffff

    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    if-gt p1, v5, :cond_d

    .line 424
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    :cond_d
    const v6, 0x5f4e5446

    if-ne p1, v6, :cond_16

    .line 427
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    return v7

    .line 430
    :cond_16
    if-ne p1, v5, :cond_23

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    return v7

    .line 435
    :cond_23
    const v4, 0xfffffe

    if-ne p1, v4, :cond_33

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    return v7

    .line 440
    :cond_33
    packed-switch p1, :pswitch_data_196

    .line 637
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 625
    :pswitch_3b
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Method displayNetworkTypeChanged is unimplemented."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 617
    sget-object v3, Landroid/hardware/radio/network/SecurityAlgorithmUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/SecurityAlgorithmUpdate;

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->securityAlgorithmsUpdated(ILandroid/hardware/radio/network/SecurityAlgorithmUpdate;)V

    .line 620
    goto/16 :goto_194

    .line 605
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 607
    sget-object v3, Landroid/hardware/radio/network/CellularIdentifierDisclosure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/CellularIdentifierDisclosure;

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->cellularIdentifierDisclosed(ILandroid/hardware/radio/network/CellularIdentifierDisclosure;)V

    .line 610
    goto/16 :goto_194

    .line 595
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 597
    sget-object v3, Landroid/hardware/radio/network/EmergencyRegResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/EmergencyRegResult;

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->emergencyNetworkScanResult(ILandroid/hardware/radio/network/EmergencyRegResult;)V

    .line 600
    goto/16 :goto_194

    .line 585
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->voiceRadioTechChanged(II)V

    .line 590
    goto/16 :goto_194

    .line 575
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 577
    sget-object v3, Landroid/hardware/radio/network/SuppSvcNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/SuppSvcNotification;

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/network/SuppSvcNotification;)V

    .line 580
    goto/16 :goto_194

    .line 565
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->restrictedStateChanged(II)V

    .line 570
    goto/16 :goto_194

    .line 547
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 549
    sget-object v3, Landroid/hardware/radio/network/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/CellIdentity;

    .line 551
    move-object v2, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->registrationFailed(ILandroid/hardware/radio/network/CellIdentity;Ljava/lang/String;III)V

    .line 560
    goto/16 :goto_194

    .line 533
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->nitzTimeReceived(ILjava/lang/String;JJ)V

    .line 542
    goto/16 :goto_194

    .line 525
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->networkStateChanged(I)V

    .line 528
    goto/16 :goto_194

    .line 515
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 517
    sget-object v2, Landroid/hardware/radio/network/NetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/NetworkScanResult;

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->networkScanResult(ILandroid/hardware/radio/network/NetworkScanResult;)V

    .line 520
    goto/16 :goto_194

    .line 507
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->imsNetworkStateChanged(I)V

    .line 510
    goto/16 :goto_194

    .line 497
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 499
    sget-object v2, Landroid/hardware/radio/network/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/SignalStrength;

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/network/SignalStrength;)V

    .line 502
    goto :goto_194

    .line 487
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 489
    sget-object v2, Landroid/hardware/radio/network/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/network/PhysicalChannelConfig;

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->currentPhysicalChannelConfigs(I[Landroid/hardware/radio/network/PhysicalChannelConfig;)V

    .line 492
    goto :goto_194

    .line 477
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 479
    sget-object v2, Landroid/hardware/radio/network/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/LinkCapacityEstimate;

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/network/LinkCapacityEstimate;)V

    .line 482
    goto :goto_194

    .line 467
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 469
    sget-object v2, Landroid/hardware/radio/network/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/network/CellInfo;

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->cellInfoList(I[Landroid/hardware/radio/network/CellInfo;)V

    .line 472
    goto :goto_194

    .line 457
    :pswitch_16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->cdmaPrlChanged(II)V

    .line 462
    goto :goto_194

    .line 445
    :pswitch_179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 447
    sget-object v2, Landroid/hardware/radio/network/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/network/CellIdentity;

    .line 449
    sget-object v3, Landroid/hardware/radio/network/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/network/BarringInfo;

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->barringInfoChanged(ILandroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V

    .line 452
    nop

    .line 640
    :goto_194
    return v7

    nop

    :pswitch_data_196
    .packed-switch 0x1
        :pswitch_179
        :pswitch_16a
        :pswitch_157
        :pswitch_144
        :pswitch_131
        :pswitch_11e
        :pswitch_112
        :pswitch_fe
        :pswitch_f2
        :pswitch_d9
        :pswitch_b3
        :pswitch_a3
        :pswitch_8f
        :pswitch_7f
        :pswitch_6b
        :pswitch_57
        :pswitch_43
        :pswitch_3b
    .end packed-switch
.end method
