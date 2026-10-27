.class public abstract Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;
.super Landroid/os/Binder;
.source "IVirtualHal.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFingerprintHal:I = 0x20

.field static final blacklist TRANSACTION_resetConfigurations:I = 0x16

.field static final blacklist TRANSACTION_setAuthenticatorId:I = 0x4

.field static final blacklist TRANSACTION_setChallenge:I = 0x5

.field static final blacklist TRANSACTION_setControlIllumination:I = 0x1f

.field static final blacklist TRANSACTION_setDetectInteraction:I = 0x1d

.field static final blacklist TRANSACTION_setDisplayTouch:I = 0x1e

.field static final blacklist TRANSACTION_setEnrollmentHit:I = 0x2

.field static final blacklist TRANSACTION_setEnrollments:I = 0x1

.field static final blacklist TRANSACTION_setLockout:I = 0x11

.field static final blacklist TRANSACTION_setLockoutEnable:I = 0x12

.field static final blacklist TRANSACTION_setLockoutPermanentThreshold:I = 0x15

.field static final blacklist TRANSACTION_setLockoutTimedDuration:I = 0x14

.field static final blacklist TRANSACTION_setLockoutTimedThreshold:I = 0x13

.field static final blacklist TRANSACTION_setMaxEnrollmentPerUser:I = 0x1a

.field static final blacklist TRANSACTION_setNavigationGesture:I = 0x1c

.field static final blacklist TRANSACTION_setNextEnrollment:I = 0x3

.field static final blacklist TRANSACTION_setOperationAuthenticateAcquired:I = 0xa

.field static final blacklist TRANSACTION_setOperationAuthenticateDuration:I = 0x8

.field static final blacklist TRANSACTION_setOperationAuthenticateError:I = 0x9

.field static final blacklist TRANSACTION_setOperationAuthenticateFails:I = 0x6

.field static final blacklist TRANSACTION_setOperationAuthenticateLatency:I = 0x7

.field static final blacklist TRANSACTION_setOperationDetectInteractionAcquired:I = 0x10

.field static final blacklist TRANSACTION_setOperationDetectInteractionDuration:I = 0xf

.field static final blacklist TRANSACTION_setOperationDetectInteractionError:I = 0xe

.field static final blacklist TRANSACTION_setOperationDetectInteractionLatency:I = 0xd

.field static final blacklist TRANSACTION_setOperationEnrollError:I = 0xb

.field static final blacklist TRANSACTION_setOperationEnrollLatency:I = 0xc

.field static final blacklist TRANSACTION_setSensorId:I = 0x18

.field static final blacklist TRANSACTION_setSensorLocation:I = 0x1b

.field static final blacklist TRANSACTION_setSensorStrength:I = 0x19

.field static final blacklist TRANSACTION_setType:I = 0x17


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 350
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 351
    const-string v0, "android.hardware.biometrics.fingerprint.virtualhal.IVirtualHal"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;
    .registers 3

    .line 359
    if-nez p0, :cond_4

    .line 360
    const/4 p0, 0x0

    return-object p0

    .line 362
    :cond_4
    const-string v0, "android.hardware.biometrics.fingerprint.virtualhal.IVirtualHal"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;

    if-eqz v1, :cond_13

    .line 364
    check-cast v0, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;

    return-object v0

    .line 366
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 375
    packed-switch p0, :pswitch_data_84

    .line 507
    const/4 p0, 0x0

    return-object p0

    .line 503
    :pswitch_5
    const-string p0, "getFingerprintHal"

    return-object p0

    .line 499
    :pswitch_8
    const-string/jumbo p0, "setControlIllumination"

    return-object p0

    .line 495
    :pswitch_c
    const-string/jumbo p0, "setDisplayTouch"

    return-object p0

    .line 491
    :pswitch_10
    const-string/jumbo p0, "setDetectInteraction"

    return-object p0

    .line 487
    :pswitch_14
    const-string/jumbo p0, "setNavigationGesture"

    return-object p0

    .line 483
    :pswitch_18
    const-string/jumbo p0, "setSensorLocation"

    return-object p0

    .line 479
    :pswitch_1c
    const-string/jumbo p0, "setMaxEnrollmentPerUser"

    return-object p0

    .line 475
    :pswitch_20
    const-string/jumbo p0, "setSensorStrength"

    return-object p0

    .line 471
    :pswitch_24
    const-string/jumbo p0, "setSensorId"

    return-object p0

    .line 467
    :pswitch_28
    const-string/jumbo p0, "setType"

    return-object p0

    .line 463
    :pswitch_2c
    const-string/jumbo p0, "resetConfigurations"

    return-object p0

    .line 459
    :pswitch_30
    const-string/jumbo p0, "setLockoutPermanentThreshold"

    return-object p0

    .line 455
    :pswitch_34
    const-string/jumbo p0, "setLockoutTimedDuration"

    return-object p0

    .line 451
    :pswitch_38
    const-string/jumbo p0, "setLockoutTimedThreshold"

    return-object p0

    .line 447
    :pswitch_3c
    const-string/jumbo p0, "setLockoutEnable"

    return-object p0

    .line 443
    :pswitch_40
    const-string/jumbo p0, "setLockout"

    return-object p0

    .line 439
    :pswitch_44
    const-string/jumbo p0, "setOperationDetectInteractionAcquired"

    return-object p0

    .line 435
    :pswitch_48
    const-string/jumbo p0, "setOperationDetectInteractionDuration"

    return-object p0

    .line 431
    :pswitch_4c
    const-string/jumbo p0, "setOperationDetectInteractionError"

    return-object p0

    .line 427
    :pswitch_50
    const-string/jumbo p0, "setOperationDetectInteractionLatency"

    return-object p0

    .line 423
    :pswitch_54
    const-string/jumbo p0, "setOperationEnrollLatency"

    return-object p0

    .line 419
    :pswitch_58
    const-string/jumbo p0, "setOperationEnrollError"

    return-object p0

    .line 415
    :pswitch_5c
    const-string/jumbo p0, "setOperationAuthenticateAcquired"

    return-object p0

    .line 411
    :pswitch_60
    const-string/jumbo p0, "setOperationAuthenticateError"

    return-object p0

    .line 407
    :pswitch_64
    const-string/jumbo p0, "setOperationAuthenticateDuration"

    return-object p0

    .line 403
    :pswitch_68
    const-string/jumbo p0, "setOperationAuthenticateLatency"

    return-object p0

    .line 399
    :pswitch_6c
    const-string/jumbo p0, "setOperationAuthenticateFails"

    return-object p0

    .line 395
    :pswitch_70
    const-string/jumbo p0, "setChallenge"

    return-object p0

    .line 391
    :pswitch_74
    const-string/jumbo p0, "setAuthenticatorId"

    return-object p0

    .line 387
    :pswitch_78
    const-string/jumbo p0, "setNextEnrollment"

    return-object p0

    .line 383
    :pswitch_7c
    const-string/jumbo p0, "setEnrollmentHit"

    return-object p0

    .line 379
    :pswitch_80
    const-string/jumbo p0, "setEnrollments"

    return-object p0

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
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

    .line 370
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1576
    const/16 v0, 0x1f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 514
    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 518
    nop

    .line 519
    const-string v0, "android.hardware.biometrics.fingerprint.virtualhal.IVirtualHal"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 520
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 523
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    return v1

    .line 526
    :cond_17
    packed-switch p1, :pswitch_data_1fe

    .line 813
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 806
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->getFingerprintHal()Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object p1

    .line 807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 809
    goto/16 :goto_1fd

    .line 798
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setControlIllumination(Z)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_1fd

    .line 789
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setDisplayTouch(Z)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    goto/16 :goto_1fd

    .line 780
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setDetectInteraction(Z)V

    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    goto/16 :goto_1fd

    .line 771
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setNavigationGesture(Z)V

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    goto/16 :goto_1fd

    .line 762
    :pswitch_67
    sget-object p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setSensorLocation(Landroid/hardware/biometrics/fingerprint/SensorLocation;)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    goto/16 :goto_1fd

    .line 753
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setMaxEnrollmentPerUser(I)V

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    goto/16 :goto_1fd

    .line 744
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setSensorStrength(B)V

    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    goto/16 :goto_1fd

    .line 735
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setSensorId(I)V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    goto/16 :goto_1fd

    .line 726
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setType(B)V

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_1fd

    .line 719
    :pswitch_b6
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->resetConfigurations()V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_1fd

    .line 711
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockoutPermanentThreshold(I)V

    .line 714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    goto/16 :goto_1fd

    .line 702
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockoutTimedDuration(I)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    goto/16 :goto_1fd

    .line 693
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockoutTimedThreshold(I)V

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    goto/16 :goto_1fd

    .line 684
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockoutEnable(Z)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    goto/16 :goto_1fd

    .line 675
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setLockout(Z)V

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    goto/16 :goto_1fd

    .line 666
    :pswitch_109
    sget-object p1, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionAcquired([Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;)V

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    goto/16 :goto_1fd

    .line 657
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionDuration(I)V

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    goto/16 :goto_1fd

    .line 648
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionError(I)V

    .line 651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    goto/16 :goto_1fd

    .line 639
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationDetectInteractionLatency([I)V

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    goto/16 :goto_1fd

    .line 630
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationEnrollLatency([I)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto/16 :goto_1fd

    .line 621
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationEnrollError(I)V

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto/16 :goto_1fd

    .line 612
    :pswitch_167
    sget-object p1, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateAcquired([Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;)V

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    goto/16 :goto_1fd

    .line 603
    :pswitch_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateError(I)V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto/16 :goto_1fd

    .line 594
    :pswitch_189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateDuration(I)V

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    goto :goto_1fd

    .line 585
    :pswitch_197
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateLatency([I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    goto :goto_1fd

    .line 576
    :pswitch_1a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setOperationAuthenticateFails(Z)V

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    goto :goto_1fd

    .line 567
    :pswitch_1b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setChallenge(J)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    goto :goto_1fd

    .line 558
    :pswitch_1c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setAuthenticatorId(J)V

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    goto :goto_1fd

    .line 549
    :pswitch_1cf
    sget-object p1, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setNextEnrollment(Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto :goto_1fd

    .line 540
    :pswitch_1e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setEnrollmentHit(I)V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto :goto_1fd

    .line 531
    :pswitch_1ef
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->setEnrollments([I)V

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    nop

    .line 816
    :goto_1fd
    return v1

    :pswitch_data_1fe
    .packed-switch 0x1
        :pswitch_1ef
        :pswitch_1e1
        :pswitch_1cf
        :pswitch_1c1
        :pswitch_1b3
        :pswitch_1a5
        :pswitch_197
        :pswitch_189
        :pswitch_17a
        :pswitch_167
        :pswitch_158
        :pswitch_149
        :pswitch_13a
        :pswitch_12b
        :pswitch_11c
        :pswitch_109
        :pswitch_fa
        :pswitch_eb
        :pswitch_dc
        :pswitch_cd
        :pswitch_be
        :pswitch_b6
        :pswitch_a7
        :pswitch_98
        :pswitch_89
        :pswitch_7a
        :pswitch_67
        :pswitch_58
        :pswitch_49
        :pswitch_3a
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
