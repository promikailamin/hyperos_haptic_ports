.class public abstract Landroid/uwb/IUwbAdapter$Stub;
.super Landroid/os/Binder;
.source "IUwbAdapter.java"

# interfaces
.implements Landroid/uwb/IUwbAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/IUwbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/IUwbAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addControlee:I = 0xc

.field static final blacklist TRANSACTION_addServiceProfile:I = 0x16

.field static final blacklist TRANSACTION_closeRanging:I = 0xb

.field static final blacklist TRANSACTION_getAdapterState:I = 0x12

.field static final blacklist TRANSACTION_getAdfCertificateAndInfo:I = 0x1a

.field static final blacklist TRANSACTION_getAdfProvisioningAuthorities:I = 0x19

.field static final blacklist TRANSACTION_getAllServiceProfiles:I = 0x18

.field static final blacklist TRANSACTION_getChipIds:I = 0x14

.field static final blacklist TRANSACTION_getChipInfos:I = 0x13

.field static final blacklist TRANSACTION_getDefaultChipId:I = 0x15

.field static final blacklist TRANSACTION_getSpecificationInfo:I = 0x6

.field static final blacklist TRANSACTION_getTimestampResolutionNanos:I = 0x5

.field static final blacklist TRANSACTION_openRanging:I = 0x7

.field static final blacklist TRANSACTION_pause:I = 0xe

.field static final blacklist TRANSACTION_provisionProfileAdfByScript:I = 0x1b

.field static final blacklist TRANSACTION_reconfigureRanging:I = 0x9

.field static final blacklist TRANSACTION_registerAdapterStateCallbacks:I = 0x1

.field static final blacklist TRANSACTION_registerVendorExtensionCallback:I = 0x2

.field static final blacklist TRANSACTION_removeControlee:I = 0xd

.field static final blacklist TRANSACTION_removeProfileAdf:I = 0x1c

.field static final blacklist TRANSACTION_removeServiceProfile:I = 0x17

.field static final blacklist TRANSACTION_resume:I = 0xf

.field static final blacklist TRANSACTION_sendData:I = 0x10

.field static final blacklist TRANSACTION_sendVendorUciMessage:I = 0x1d

.field static final blacklist TRANSACTION_setEnabled:I = 0x11

.field static final blacklist TRANSACTION_startRanging:I = 0x8

.field static final blacklist TRANSACTION_stopRanging:I = 0xa

.field static final blacklist TRANSACTION_unregisterAdapterStateCallbacks:I = 0x4

.field static final blacklist TRANSACTION_unregisterVendorExtensionCallback:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 370
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 371
    const-string v0, "android.uwb.IUwbAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/uwb/IUwbAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 379
    if-nez p0, :cond_4

    .line 380
    const/4 v0, 0x0

    return-object v0

    .line 382
    :cond_4
    const-string v0, "android.uwb.IUwbAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 383
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/uwb/IUwbAdapter;

    if-eqz v1, :cond_14

    .line 384
    move-object v1, v0

    check-cast v1, Landroid/uwb/IUwbAdapter;

    return-object v1

    .line 386
    :cond_14
    new-instance v1, Landroid/uwb/IUwbAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/uwb/IUwbAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 395
    packed-switch p0, :pswitch_data_6e

    .line 515
    const/4 v0, 0x0

    return-object v0

    .line 511
    :pswitch_5
    const-string/jumbo v0, "sendVendorUciMessage"

    return-object v0

    .line 507
    :pswitch_9
    const-string/jumbo v0, "removeProfileAdf"

    return-object v0

    .line 503
    :pswitch_d
    const-string/jumbo v0, "provisionProfileAdfByScript"

    return-object v0

    .line 499
    :pswitch_11
    const-string v0, "getAdfCertificateAndInfo"

    return-object v0

    .line 495
    :pswitch_14
    const-string v0, "getAdfProvisioningAuthorities"

    return-object v0

    .line 491
    :pswitch_17
    const-string v0, "getAllServiceProfiles"

    return-object v0

    .line 487
    :pswitch_1a
    const-string/jumbo v0, "removeServiceProfile"

    return-object v0

    .line 483
    :pswitch_1e
    const-string v0, "addServiceProfile"

    return-object v0

    .line 479
    :pswitch_21
    const-string v0, "getDefaultChipId"

    return-object v0

    .line 475
    :pswitch_24
    const-string v0, "getChipIds"

    return-object v0

    .line 471
    :pswitch_27
    const-string v0, "getChipInfos"

    return-object v0

    .line 467
    :pswitch_2a
    const-string v0, "getAdapterState"

    return-object v0

    .line 463
    :pswitch_2d
    const-string/jumbo v0, "setEnabled"

    return-object v0

    .line 459
    :pswitch_31
    const-string/jumbo v0, "sendData"

    return-object v0

    .line 455
    :pswitch_35
    const-string/jumbo v0, "resume"

    return-object v0

    .line 451
    :pswitch_39
    const-string/jumbo v0, "pause"

    return-object v0

    .line 447
    :pswitch_3d
    const-string/jumbo v0, "removeControlee"

    return-object v0

    .line 443
    :pswitch_41
    const-string v0, "addControlee"

    return-object v0

    .line 439
    :pswitch_44
    const-string v0, "closeRanging"

    return-object v0

    .line 435
    :pswitch_47
    const-string/jumbo v0, "stopRanging"

    return-object v0

    .line 431
    :pswitch_4b
    const-string/jumbo v0, "reconfigureRanging"

    return-object v0

    .line 427
    :pswitch_4f
    const-string/jumbo v0, "startRanging"

    return-object v0

    .line 423
    :pswitch_53
    const-string/jumbo v0, "openRanging"

    return-object v0

    .line 419
    :pswitch_57
    const-string v0, "getSpecificationInfo"

    return-object v0

    .line 415
    :pswitch_5a
    const-string v0, "getTimestampResolutionNanos"

    return-object v0

    .line 411
    :pswitch_5d
    const-string/jumbo v0, "unregisterAdapterStateCallbacks"

    return-object v0

    .line 407
    :pswitch_61
    const-string/jumbo v0, "unregisterVendorExtensionCallback"

    return-object v0

    .line 403
    :pswitch_65
    const-string/jumbo v0, "registerVendorExtensionCallback"

    return-object v0

    .line 399
    :pswitch_69
    const-string/jumbo v0, "registerAdapterStateCallbacks"

    return-object v0

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 390
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1617
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 522
    invoke-static {p1}, Landroid/uwb/IUwbAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.uwb.IUwbAdapter"

    .line 527
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 528
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    :cond_15
    packed-switch v7, :pswitch_data_2ae

    .line 538
    packed-switch v7, :pswitch_data_2b4

    .line 833
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 534
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    return v11

    .line 820
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 822
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 824
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 825
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {v6, v0, v1, v2}, Landroid/uwb/IUwbAdapter$Stub;->sendVendorUciMessage(II[B)I

    move-result v3

    .line 827
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    goto/16 :goto_2ac

    .line 810
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":I
    :pswitch_3f
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 811
    .local v0, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->removeProfileAdf(Landroid/os/PersistableBundle;)I

    move-result v1

    .line 813
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    goto/16 :goto_2ac

    .line 799
    .end local v0    # "_arg0":Landroid/os/PersistableBundle;
    .end local v1    # "_result":I
    :pswitch_56
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 801
    .restart local v0    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/uwb/IUwbAdfProvisionStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbAdfProvisionStateCallbacks;

    move-result-object v1

    .line 802
    .local v1, "_arg1":Landroid/uwb/IUwbAdfProvisionStateCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v6, v0, v1}, Landroid/uwb/IUwbAdapter$Stub;->provisionProfileAdfByScript(Landroid/os/PersistableBundle;Landroid/uwb/IUwbAdfProvisionStateCallbacks;)V

    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    goto/16 :goto_2ac

    .line 789
    .end local v0    # "_arg0":Landroid/os/PersistableBundle;
    .end local v1    # "_arg1":Landroid/uwb/IUwbAdfProvisionStateCallbacks;
    :pswitch_71
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 790
    .restart local v0    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->getAdfCertificateAndInfo(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 792
    .local v1, "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 794
    goto/16 :goto_2ac

    .line 779
    .end local v0    # "_arg0":Landroid/os/PersistableBundle;
    .end local v1    # "_result":Landroid/os/PersistableBundle;
    :pswitch_88
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 780
    .restart local v0    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->getAdfProvisioningAuthorities(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 782
    .restart local v1    # "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 784
    goto/16 :goto_2ac

    .line 771
    .end local v0    # "_arg0":Landroid/os/PersistableBundle;
    .end local v1    # "_result":Landroid/os/PersistableBundle;
    :pswitch_9f
    invoke-virtual/range {p0 .. p0}, Landroid/uwb/IUwbAdapter$Stub;->getAllServiceProfiles()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 772
    .local v0, "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 774
    goto/16 :goto_2ac

    .line 762
    .end local v0    # "_result":Landroid/os/PersistableBundle;
    :pswitch_ab
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 763
    .local v0, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->removeServiceProfile(Landroid/os/PersistableBundle;)I

    move-result v1

    .line 765
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    goto/16 :goto_2ac

    .line 752
    .end local v0    # "_arg0":Landroid/os/PersistableBundle;
    .end local v1    # "_result":I
    :pswitch_c2
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 753
    .restart local v0    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->addServiceProfile(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 755
    .local v1, "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 757
    goto/16 :goto_2ac

    .line 744
    .end local v0    # "_arg0":Landroid/os/PersistableBundle;
    .end local v1    # "_result":Landroid/os/PersistableBundle;
    :pswitch_d9
    invoke-virtual/range {p0 .. p0}, Landroid/uwb/IUwbAdapter$Stub;->getDefaultChipId()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 747
    goto/16 :goto_2ac

    .line 737
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_e5
    invoke-virtual/range {p0 .. p0}, Landroid/uwb/IUwbAdapter$Stub;->getChipIds()Ljava/util/List;

    move-result-object v0

    .line 738
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 740
    goto/16 :goto_2ac

    .line 730
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f1
    invoke-virtual/range {p0 .. p0}, Landroid/uwb/IUwbAdapter$Stub;->getChipInfos()Ljava/util/List;

    move-result-object v0

    .line 731
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 733
    goto/16 :goto_2ac

    .line 723
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :pswitch_fd
    invoke-virtual/range {p0 .. p0}, Landroid/uwb/IUwbAdapter$Stub;->getAdapterState()I

    move-result v0

    .line 724
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    goto/16 :goto_2ac

    .line 715
    .end local v0    # "_result":I
    :pswitch_109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 716
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->setEnabled(Z)V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    goto/16 :goto_2ac

    .line 700
    .end local v0    # "_arg0":Z
    :pswitch_118
    sget-object v0, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/SessionHandle;

    .line 702
    .local v0, "_arg0":Landroid/uwb/SessionHandle;
    sget-object v1, Landroid/uwb/UwbAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/uwb/UwbAddress;

    .line 704
    .local v1, "_arg1":Landroid/uwb/UwbAddress;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 706
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 707
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/uwb/IUwbAdapter$Stub;->sendData(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    goto/16 :goto_2ac

    .line 689
    .end local v0    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v1    # "_arg1":Landroid/uwb/UwbAddress;
    .end local v2    # "_arg2":Landroid/os/PersistableBundle;
    .end local v3    # "_arg3":[B
    :pswitch_13f
    sget-object v0, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/SessionHandle;

    .line 691
    .restart local v0    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 692
    .local v1, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {v6, v0, v1}, Landroid/uwb/IUwbAdapter$Stub;->resume(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    goto/16 :goto_2ac

    .line 678
    .end local v0    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v1    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_15a
    sget-object v0, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/SessionHandle;

    .line 680
    .restart local v0    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 681
    .restart local v1    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {v6, v0, v1}, Landroid/uwb/IUwbAdapter$Stub;->pause(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    goto/16 :goto_2ac

    .line 667
    .end local v0    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v1    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_175
    sget-object v0, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/SessionHandle;

    .line 669
    .restart local v0    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 670
    .restart local v1    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    invoke-virtual {v6, v0, v1}, Landroid/uwb/IUwbAdapter$Stub;->removeControlee(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    goto/16 :goto_2ac

    .line 656
    .end local v0    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v1    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_190
    sget-object v0, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/SessionHandle;

    .line 658
    .restart local v0    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 659
    .restart local v1    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {v6, v0, v1}, Landroid/uwb/IUwbAdapter$Stub;->addControlee(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_2ac

    .line 647
    .end local v0    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v1    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_1ab
    sget-object v0, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/SessionHandle;

    .line 648
    .restart local v0    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->closeRanging(Landroid/uwb/SessionHandle;)V

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    goto/16 :goto_2ac

    .line 638
    .end local v0    # "_arg0":Landroid/uwb/SessionHandle;
    :pswitch_1be
    sget-object v0, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/SessionHandle;

    .line 639
    .restart local v0    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->stopRanging(Landroid/uwb/SessionHandle;)V

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    goto/16 :goto_2ac

    .line 627
    .end local v0    # "_arg0":Landroid/uwb/SessionHandle;
    :pswitch_1d1
    sget-object v0, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/SessionHandle;

    .line 629
    .restart local v0    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 630
    .restart local v1    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {v6, v0, v1}, Landroid/uwb/IUwbAdapter$Stub;->reconfigureRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    goto/16 :goto_2ac

    .line 616
    .end local v0    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v1    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_1ec
    sget-object v0, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/SessionHandle;

    .line 618
    .restart local v0    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 619
    .restart local v1    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {v6, v0, v1}, Landroid/uwb/IUwbAdapter$Stub;->startRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_2ac

    .line 599
    .end local v0    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v1    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_207
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/AttributionSource;

    .line 601
    .local v12, "_arg0":Landroid/content/AttributionSource;
    sget-object v0, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/uwb/SessionHandle;

    .line 603
    .local v13, "_arg1":Landroid/uwb/SessionHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/uwb/IUwbRangingCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbRangingCallbacks;

    move-result-object v14

    .line 605
    .local v14, "_arg2":Landroid/uwb/IUwbRangingCallbacks;
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/PersistableBundle;

    .line 607
    .local v15, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 608
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/uwb/IUwbAdapter$Stub;->openRanging(Landroid/content/AttributionSource;Landroid/uwb/SessionHandle;Landroid/uwb/IUwbRangingCallbacks;Landroid/os/PersistableBundle;Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    goto :goto_2ac

    .line 589
    .end local v12    # "_arg0":Landroid/content/AttributionSource;
    .end local v13    # "_arg1":Landroid/uwb/SessionHandle;
    .end local v14    # "_arg2":Landroid/uwb/IUwbRangingCallbacks;
    .end local v15    # "_arg3":Landroid/os/PersistableBundle;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->getSpecificationInfo(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 592
    .local v1, "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 594
    goto :goto_2ac

    .line 579
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/os/PersistableBundle;
    :pswitch_252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 580
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->getTimestampResolutionNanos(Ljava/lang/String;)J

    move-result-wide v1

    .line 582
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 584
    goto :goto_2ac

    .line 570
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":J
    :pswitch_264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/uwb/IUwbAdapterStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbAdapterStateCallbacks;

    move-result-object v0

    .line 571
    .local v0, "_arg0":Landroid/uwb/IUwbAdapterStateCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->unregisterAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    goto :goto_2ac

    .line 561
    .end local v0    # "_arg0":Landroid/uwb/IUwbAdapterStateCallbacks;
    :pswitch_276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/uwb/IUwbVendorUciCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbVendorUciCallback;

    move-result-object v0

    .line 562
    .local v0, "_arg0":Landroid/uwb/IUwbVendorUciCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->unregisterVendorExtensionCallback(Landroid/uwb/IUwbVendorUciCallback;)V

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    goto :goto_2ac

    .line 552
    .end local v0    # "_arg0":Landroid/uwb/IUwbVendorUciCallback;
    :pswitch_288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/uwb/IUwbVendorUciCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbVendorUciCallback;

    move-result-object v0

    .line 553
    .restart local v0    # "_arg0":Landroid/uwb/IUwbVendorUciCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->registerVendorExtensionCallback(Landroid/uwb/IUwbVendorUciCallback;)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    goto :goto_2ac

    .line 543
    .end local v0    # "_arg0":Landroid/uwb/IUwbVendorUciCallback;
    :pswitch_29a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/uwb/IUwbAdapterStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbAdapterStateCallbacks;

    move-result-object v0

    .line 544
    .local v0, "_arg0":Landroid/uwb/IUwbAdapterStateCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {v6, v0}, Landroid/uwb/IUwbAdapter$Stub;->registerAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    nop

    .line 836
    .end local v0    # "_arg0":Landroid/uwb/IUwbAdapterStateCallbacks;
    :goto_2ac
    return v11

    nop

    :pswitch_data_2ae
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_2b4
    .packed-switch 0x1
        :pswitch_29a
        :pswitch_288
        :pswitch_276
        :pswitch_264
        :pswitch_252
        :pswitch_240
        :pswitch_207
        :pswitch_1ec
        :pswitch_1d1
        :pswitch_1be
        :pswitch_1ab
        :pswitch_190
        :pswitch_175
        :pswitch_15a
        :pswitch_13f
        :pswitch_118
        :pswitch_109
        :pswitch_fd
        :pswitch_f1
        :pswitch_e5
        :pswitch_d9
        :pswitch_c2
        :pswitch_ab
        :pswitch_9f
        :pswitch_88
        :pswitch_71
        :pswitch_56
        :pswitch_3f
        :pswitch_24
    .end packed-switch
.end method
