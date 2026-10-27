.class public abstract Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;
.super Landroid/os/Binder;
.source "IVirtualHal.java"

# interfaces
.implements Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFaceHal:I = 0x17

.field static final blacklist TRANSACTION_resetConfigurations:I = 0x14

.field static final blacklist TRANSACTION_setAuthenticatorId:I = 0x4

.field static final blacklist TRANSACTION_setChallenge:I = 0x5

.field static final blacklist TRANSACTION_setEnrollmentHit:I = 0x2

.field static final blacklist TRANSACTION_setEnrollments:I = 0x1

.field static final blacklist TRANSACTION_setLockout:I = 0xe

.field static final blacklist TRANSACTION_setLockoutEnable:I = 0xf

.field static final blacklist TRANSACTION_setLockoutPermanentThreshold:I = 0x13

.field static final blacklist TRANSACTION_setLockoutTimedDuration:I = 0x12

.field static final blacklist TRANSACTION_setLockoutTimedEnable:I = 0x10

.field static final blacklist TRANSACTION_setLockoutTimedThreshold:I = 0x11

.field static final blacklist TRANSACTION_setNextEnrollment:I = 0x3

.field static final blacklist TRANSACTION_setOperationAuthenticateAcquired:I = 0xa

.field static final blacklist TRANSACTION_setOperationAuthenticateDuration:I = 0x8

.field static final blacklist TRANSACTION_setOperationAuthenticateError:I = 0x9

.field static final blacklist TRANSACTION_setOperationAuthenticateFails:I = 0x6

.field static final blacklist TRANSACTION_setOperationAuthenticateLatency:I = 0x7

.field static final blacklist TRANSACTION_setOperationDetectInteractionFails:I = 0xd

.field static final blacklist TRANSACTION_setOperationDetectInteractionLatency:I = 0xc

.field static final blacklist TRANSACTION_setOperationEnrollLatency:I = 0xb

.field static final blacklist TRANSACTION_setSensorStrength:I = 0x16

.field static final blacklist TRANSACTION_setType:I = 0x15


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 310
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 311
    const-string v0, "android.hardware.biometrics.face.virtualhal.IVirtualHal"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;
    .registers 3

    .line 319
    if-nez p0, :cond_4

    .line 320
    const/4 p0, 0x0

    return-object p0

    .line 322
    :cond_4
    const-string v0, "android.hardware.biometrics.face.virtualhal.IVirtualHal"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;

    if-eqz v1, :cond_13

    .line 324
    check-cast v0, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;

    return-object v0

    .line 326
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 335
    packed-switch p0, :pswitch_data_60

    .line 431
    const/4 p0, 0x0

    return-object p0

    .line 427
    :pswitch_5
    const-string p0, "getFaceHal"

    return-object p0

    .line 423
    :pswitch_8
    const-string/jumbo p0, "setSensorStrength"

    return-object p0

    .line 419
    :pswitch_c
    const-string/jumbo p0, "setType"

    return-object p0

    .line 415
    :pswitch_10
    const-string/jumbo p0, "resetConfigurations"

    return-object p0

    .line 411
    :pswitch_14
    const-string/jumbo p0, "setLockoutPermanentThreshold"

    return-object p0

    .line 407
    :pswitch_18
    const-string/jumbo p0, "setLockoutTimedDuration"

    return-object p0

    .line 403
    :pswitch_1c
    const-string/jumbo p0, "setLockoutTimedThreshold"

    return-object p0

    .line 399
    :pswitch_20
    const-string/jumbo p0, "setLockoutTimedEnable"

    return-object p0

    .line 395
    :pswitch_24
    const-string/jumbo p0, "setLockoutEnable"

    return-object p0

    .line 391
    :pswitch_28
    const-string/jumbo p0, "setLockout"

    return-object p0

    .line 387
    :pswitch_2c
    const-string/jumbo p0, "setOperationDetectInteractionFails"

    return-object p0

    .line 383
    :pswitch_30
    const-string/jumbo p0, "setOperationDetectInteractionLatency"

    return-object p0

    .line 379
    :pswitch_34
    const-string/jumbo p0, "setOperationEnrollLatency"

    return-object p0

    .line 375
    :pswitch_38
    const-string/jumbo p0, "setOperationAuthenticateAcquired"

    return-object p0

    .line 371
    :pswitch_3c
    const-string/jumbo p0, "setOperationAuthenticateError"

    return-object p0

    .line 367
    :pswitch_40
    const-string/jumbo p0, "setOperationAuthenticateDuration"

    return-object p0

    .line 363
    :pswitch_44
    const-string/jumbo p0, "setOperationAuthenticateLatency"

    return-object p0

    .line 359
    :pswitch_48
    const-string/jumbo p0, "setOperationAuthenticateFails"

    return-object p0

    .line 355
    :pswitch_4c
    const-string/jumbo p0, "setChallenge"

    return-object p0

    .line 351
    :pswitch_50
    const-string/jumbo p0, "setAuthenticatorId"

    return-object p0

    .line 347
    :pswitch_54
    const-string/jumbo p0, "setNextEnrollment"

    return-object p0

    .line 343
    :pswitch_58
    const-string/jumbo p0, "setEnrollmentHit"

    return-object p0

    .line 339
    :pswitch_5c
    const-string/jumbo p0, "setEnrollments"

    return-object p0

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 330
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1262
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 438
    invoke-static {p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    nop

    .line 443
    const-string v0, "android.hardware.biometrics.face.virtualhal.IVirtualHal"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 444
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 447
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    return v1

    .line 450
    :cond_17
    packed-switch p1, :pswitch_data_170

    .line 656
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 649
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->getFaceHal()Landroid/hardware/biometrics/face/IFace;

    move-result-object p1

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 652
    goto/16 :goto_16e

    .line 641
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setSensorStrength(B)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_16e

    .line 632
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setType(B)V

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_16e

    .line 625
    :pswitch_49
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->resetConfigurations()V

    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    goto/16 :goto_16e

    .line 617
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setLockoutPermanentThreshold(I)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    goto/16 :goto_16e

    .line 608
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setLockoutTimedDuration(I)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    goto/16 :goto_16e

    .line 599
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setLockoutTimedThreshold(I)V

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    goto/16 :goto_16e

    .line 590
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setLockoutTimedEnable(Z)V

    .line 593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    goto/16 :goto_16e

    .line 581
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setLockoutEnable(Z)V

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    goto/16 :goto_16e

    .line 572
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setLockout(Z)V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto/16 :goto_16e

    .line 563
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionFails(Z)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    goto/16 :goto_16e

    .line 554
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionLatency([I)V

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_16e

    .line 545
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationEnrollLatency([I)V

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    goto/16 :goto_16e

    .line 536
    :pswitch_d8
    sget-object p1, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateAcquired([Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto/16 :goto_16e

    .line 527
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateError(I)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    goto/16 :goto_16e

    .line 518
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateDuration(I)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto :goto_16e

    .line 509
    :pswitch_108
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateLatency([I)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    goto :goto_16e

    .line 500
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateFails(Z)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto :goto_16e

    .line 491
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setChallenge(J)V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    goto :goto_16e

    .line 482
    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setAuthenticatorId(J)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    goto :goto_16e

    .line 473
    :pswitch_140
    sget-object p1, Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setNextEnrollment(Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    goto :goto_16e

    .line 464
    :pswitch_152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setEnrollmentHit(I)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    goto :goto_16e

    .line 455
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->setEnrollments([I)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    nop

    .line 659
    :goto_16e
    return v1

    nop

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_160
        :pswitch_152
        :pswitch_140
        :pswitch_132
        :pswitch_124
        :pswitch_116
        :pswitch_108
        :pswitch_fa
        :pswitch_eb
        :pswitch_d8
        :pswitch_c9
        :pswitch_ba
        :pswitch_ab
        :pswitch_9c
        :pswitch_8d
        :pswitch_7e
        :pswitch_6f
        :pswitch_60
        :pswitch_51
        :pswitch_49
        :pswitch_3a
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
