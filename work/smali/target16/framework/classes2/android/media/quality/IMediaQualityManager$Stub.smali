.class public abstract Landroid/media/quality/IMediaQualityManager$Stub;
.super Landroid/os/Binder;
.source "IMediaQualityManager.java"

# interfaces
.implements Landroid/media/quality/IMediaQualityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/IMediaQualityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/IMediaQualityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_changeStreamStatus:I = 0xd

.field static final blacklist TRANSACTION_createPictureProfile:I = 0x1

.field static final blacklist TRANSACTION_createSoundProfile:I = 0x14

.field static final blacklist TRANSACTION_getAllPictureProfilesForTvInput:I = 0x13

.field static final blacklist TRANSACTION_getAvailablePictureProfiles:I = 0x8

.field static final blacklist TRANSACTION_getAvailableSoundProfiles:I = 0x1a

.field static final blacklist TRANSACTION_getCurrentPictureProfileForTvInput:I = 0x12

.field static final blacklist TRANSACTION_getDefaultPictureProfile:I = 0x4

.field static final blacklist TRANSACTION_getDefaultPictureProfileHandleValue:I = 0xf

.field static final blacklist TRANSACTION_getParameterCapabilities:I = 0x23

.field static final blacklist TRANSACTION_getPictureProfile:I = 0x6

.field static final blacklist TRANSACTION_getPictureProfileAllowList:I = 0xa

.field static final blacklist TRANSACTION_getPictureProfileForTvInput:I = 0x11

.field static final blacklist TRANSACTION_getPictureProfileHandle:I = 0xc

.field static final blacklist TRANSACTION_getPictureProfileHandleValue:I = 0xe

.field static final blacklist TRANSACTION_getPictureProfilePackageNames:I = 0x9

.field static final blacklist TRANSACTION_getPictureProfilesByPackage:I = 0x7

.field static final blacklist TRANSACTION_getSoundProfile:I = 0x18

.field static final blacklist TRANSACTION_getSoundProfileAllowList:I = 0x1c

.field static final blacklist TRANSACTION_getSoundProfileHandle:I = 0x1e

.field static final blacklist TRANSACTION_getSoundProfilePackageNames:I = 0x1b

.field static final blacklist TRANSACTION_getSoundProfilesByPackage:I = 0x19

.field static final blacklist TRANSACTION_isAmbientBacklightEnabled:I = 0x2d

.field static final blacklist TRANSACTION_isAutoPictureQualityEnabled:I = 0x26

.field static final blacklist TRANSACTION_isAutoSoundQualityEnabled:I = 0x2a

.field static final blacklist TRANSACTION_isSuperResolutionEnabled:I = 0x28

.field static final blacklist TRANSACTION_isSupported:I = 0x24

.field static final blacklist TRANSACTION_notifyPictureProfileHandleSelection:I = 0x10

.field static final blacklist TRANSACTION_registerActiveProcessingPictureListener:I = 0x22

.field static final blacklist TRANSACTION_registerAmbientBacklightCallback:I = 0x21

.field static final blacklist TRANSACTION_registerPictureProfileCallback:I = 0x1f

.field static final blacklist TRANSACTION_registerSoundProfileCallback:I = 0x20

.field static final blacklist TRANSACTION_removePictureProfile:I = 0x3

.field static final blacklist TRANSACTION_removeSoundProfile:I = 0x16

.field static final blacklist TRANSACTION_setAmbientBacklightEnabled:I = 0x2c

.field static final blacklist TRANSACTION_setAmbientBacklightSettings:I = 0x2b

.field static final blacklist TRANSACTION_setAutoPictureQualityEnabled:I = 0x25

.field static final blacklist TRANSACTION_setAutoSoundQualityEnabled:I = 0x29

.field static final blacklist TRANSACTION_setDefaultPictureProfile:I = 0x5

.field static final blacklist TRANSACTION_setDefaultSoundProfile:I = 0x17

.field static final blacklist TRANSACTION_setPictureProfileAllowList:I = 0xb

.field static final blacklist TRANSACTION_setSoundProfileAllowList:I = 0x1d

.field static final blacklist TRANSACTION_setSuperResolutionEnabled:I = 0x27

.field static final blacklist TRANSACTION_updatePictureProfile:I = 0x2

.field static final blacklist TRANSACTION_updateSoundProfile:I = 0x15


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 193
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 194
    const-string v0, "android.media.quality.IMediaQualityManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/quality/IMediaQualityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/quality/IMediaQualityManager;
    .registers 3

    .line 202
    if-nez p0, :cond_4

    .line 203
    const/4 p0, 0x0

    return-object p0

    .line 205
    :cond_4
    const-string v0, "android.media.quality.IMediaQualityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/quality/IMediaQualityManager;

    if-eqz v1, :cond_13

    .line 207
    check-cast v0, Landroid/media/quality/IMediaQualityManager;

    return-object v0

    .line 209
    :cond_13
    new-instance v0, Landroid/media/quality/IMediaQualityManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/quality/IMediaQualityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 213
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    nop

    .line 218
    const-string v0, "android.media.quality.IMediaQualityManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 219
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 222
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    return v1

    .line 225
    :cond_17
    packed-switch p1, :pswitch_data_3de

    .line 735
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 726
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->isAmbientBacklightEnabled(I)Z

    move-result p1

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 731
    goto/16 :goto_3dd

    .line 715
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->setAmbientBacklightEnabled(ZI)V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_3dd

    .line 704
    :pswitch_45
    sget-object p1, Landroid/media/quality/AmbientBacklightSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/quality/AmbientBacklightSettings;

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;I)V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    goto/16 :goto_3dd

    .line 694
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->isAutoSoundQualityEnabled(I)Z

    move-result p1

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 699
    goto/16 :goto_3dd

    .line 683
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->setAutoSoundQualityEnabled(ZI)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    goto/16 :goto_3dd

    .line 673
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->isSuperResolutionEnabled(I)Z

    move-result p1

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 678
    goto/16 :goto_3dd

    .line 662
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->setSuperResolutionEnabled(ZI)V

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    goto/16 :goto_3dd

    .line 652
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->isAutoPictureQualityEnabled(I)Z

    move-result p1

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 657
    goto/16 :goto_3dd

    .line 641
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->setAutoPictureQualityEnabled(ZI)V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto/16 :goto_3dd

    .line 631
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->isSupported(I)Z

    move-result p1

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 636
    goto/16 :goto_3dd

    .line 619
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->getParameterCapabilities(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 626
    goto/16 :goto_3dd

    .line 610
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/quality/IActiveProcessingPictureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/quality/IActiveProcessingPictureListener;

    move-result-object p1

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->registerActiveProcessingPictureListener(Landroid/media/quality/IActiveProcessingPictureListener;)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    goto/16 :goto_3dd

    .line 601
    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/quality/IAmbientBacklightCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/quality/IAmbientBacklightCallback;

    move-result-object p1

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->registerAmbientBacklightCallback(Landroid/media/quality/IAmbientBacklightCallback;)V

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    goto/16 :goto_3dd

    .line 592
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/quality/ISoundProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/quality/ISoundProfileCallback;

    move-result-object p1

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->registerSoundProfileCallback(Landroid/media/quality/ISoundProfileCallback;)V

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    goto/16 :goto_3dd

    .line 583
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/quality/IPictureProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/quality/IPictureProfileCallback;

    move-result-object p1

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->registerPictureProfileCallback(Landroid/media/quality/IPictureProfileCallback;)V

    .line 586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    goto/16 :goto_3dd

    .line 571
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfileHandle([Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 578
    goto/16 :goto_3dd

    .line 560
    :pswitch_15b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->setSoundProfileAllowList(Ljava/util/List;I)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    goto/16 :goto_3dd

    .line 550
    :pswitch_16e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfileAllowList(I)Ljava/util/List;

    move-result-object p1

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 555
    goto/16 :goto_3dd

    .line 540
    :pswitch_181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfilePackageNames(I)Ljava/util/List;

    move-result-object p1

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 545
    goto/16 :goto_3dd

    .line 528
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->getAvailableSoundProfiles(ZI)Ljava/util/List;

    move-result-object p1

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 535
    goto/16 :goto_3dd

    .line 514
    :pswitch_1ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 523
    goto/16 :goto_3dd

    .line 498
    :pswitch_1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfile(ILjava/lang/String;ZI)Landroid/media/quality/SoundProfile;

    move-result-object p1

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 509
    goto/16 :goto_3dd

    .line 486
    :pswitch_1e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->setDefaultSoundProfile(Ljava/lang/String;I)Z

    move-result p1

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 493
    goto/16 :goto_3dd

    .line 475
    :pswitch_1fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->removeSoundProfile(Ljava/lang/String;I)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_3dd

    .line 462
    :pswitch_20f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 464
    sget-object p4, Landroid/media/quality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/quality/SoundProfile;

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/quality/IMediaQualityManager$Stub;->updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;I)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    goto/16 :goto_3dd

    .line 451
    :pswitch_22a
    sget-object p1, Landroid/media/quality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/quality/SoundProfile;

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->createSoundProfile(Landroid/media/quality/SoundProfile;I)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    goto/16 :goto_3dd

    .line 439
    :pswitch_241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->getAllPictureProfilesForTvInput(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 446
    goto/16 :goto_3dd

    .line 427
    :pswitch_258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->getCurrentPictureProfileForTvInput(Ljava/lang/String;I)Landroid/media/quality/PictureProfile;

    move-result-object p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 434
    goto/16 :goto_3dd

    .line 415
    :pswitch_26f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfileForTvInput(Ljava/lang/String;I)J

    move-result-wide p1

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 422
    goto/16 :goto_3dd

    .line 404
    :pswitch_286
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2, v3, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->notifyPictureProfileHandleSelection(JI)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    goto/16 :goto_3dd

    .line 394
    :pswitch_299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->getDefaultPictureProfileHandleValue(I)J

    move-result-wide p1

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 399
    goto/16 :goto_3dd

    .line 382
    :pswitch_2ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfileHandleValue(Ljava/lang/String;I)J

    move-result-wide p1

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 389
    goto/16 :goto_3dd

    .line 369
    :pswitch_2c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/quality/IMediaQualityManager$Stub;->changeStreamStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    goto/16 :goto_3dd

    .line 357
    :pswitch_2da
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfileHandle([Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 364
    goto/16 :goto_3dd

    .line 346
    :pswitch_2f1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->setPictureProfileAllowList(Ljava/util/List;I)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    goto/16 :goto_3dd

    .line 336
    :pswitch_304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfileAllowList(I)Ljava/util/List;

    move-result-object p1

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 341
    goto/16 :goto_3dd

    .line 326
    :pswitch_317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, p1}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfilePackageNames(I)Ljava/util/List;

    move-result-object p1

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 331
    goto/16 :goto_3dd

    .line 314
    :pswitch_32a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->getAvailablePictureProfiles(ZI)Ljava/util/List;

    move-result-object p1

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 321
    goto/16 :goto_3dd

    .line 300
    :pswitch_341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 309
    goto/16 :goto_3dd

    .line 284
    :pswitch_35c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfile(ILjava/lang/String;ZI)Landroid/media/quality/PictureProfile;

    move-result-object p1

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 295
    goto :goto_3dd

    .line 272
    :pswitch_37a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->setDefaultPictureProfile(Ljava/lang/String;I)Z

    move-result p1

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    goto :goto_3dd

    .line 264
    :pswitch_390
    invoke-virtual {p0}, Landroid/media/quality/IMediaQualityManager$Stub;->getDefaultPictureProfile()Landroid/media/quality/PictureProfile;

    move-result-object p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 267
    goto :goto_3dd

    .line 254
    :pswitch_39b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->removePictureProfile(Ljava/lang/String;I)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto :goto_3dd

    .line 241
    :pswitch_3ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 243
    sget-object p4, Landroid/media/quality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/quality/PictureProfile;

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/quality/IMediaQualityManager$Stub;->updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;I)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    goto :goto_3dd

    .line 230
    :pswitch_3c7
    sget-object p1, Landroid/media/quality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/quality/PictureProfile;

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, p1, p4}, Landroid/media/quality/IMediaQualityManager$Stub;->createPictureProfile(Landroid/media/quality/PictureProfile;I)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    nop

    .line 738
    :goto_3dd
    return v1

    :pswitch_data_3de
    .packed-switch 0x1
        :pswitch_3c7
        :pswitch_3ad
        :pswitch_39b
        :pswitch_390
        :pswitch_37a
        :pswitch_35c
        :pswitch_341
        :pswitch_32a
        :pswitch_317
        :pswitch_304
        :pswitch_2f1
        :pswitch_2da
        :pswitch_2c3
        :pswitch_2ac
        :pswitch_299
        :pswitch_286
        :pswitch_26f
        :pswitch_258
        :pswitch_241
        :pswitch_22a
        :pswitch_20f
        :pswitch_1fc
        :pswitch_1e5
        :pswitch_1c6
        :pswitch_1ab
        :pswitch_194
        :pswitch_181
        :pswitch_16e
        :pswitch_15b
        :pswitch_144
        :pswitch_131
        :pswitch_11e
        :pswitch_10b
        :pswitch_f8
        :pswitch_e1
        :pswitch_ce
        :pswitch_bb
        :pswitch_a8
        :pswitch_95
        :pswitch_82
        :pswitch_6f
        :pswitch_5c
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
