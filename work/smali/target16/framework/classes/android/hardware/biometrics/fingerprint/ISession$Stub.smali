.class public abstract Landroid/hardware/biometrics/fingerprint/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticate:I = 0x4

.field static final blacklist TRANSACTION_authenticateWithContext:I = 0xf

.field static final blacklist TRANSACTION_close:I = 0xb

.field static final blacklist TRANSACTION_detectInteraction:I = 0x5

.field static final blacklist TRANSACTION_detectInteractionWithContext:I = 0x11

.field static final blacklist TRANSACTION_enroll:I = 0x3

.field static final blacklist TRANSACTION_enrollWithContext:I = 0x10

.field static final blacklist TRANSACTION_enumerateEnrollments:I = 0x6

.field static final blacklist TRANSACTION_generateChallenge:I = 0x1

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0x8

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0x9

.field static final blacklist TRANSACTION_onContextChanged:I = 0x14

.field static final blacklist TRANSACTION_onPointerCancelWithContext:I = 0x15

.field static final blacklist TRANSACTION_onPointerDown:I = 0xc

.field static final blacklist TRANSACTION_onPointerDownWithContext:I = 0x12

.field static final blacklist TRANSACTION_onPointerUp:I = 0xd

.field static final blacklist TRANSACTION_onPointerUpWithContext:I = 0x13

.field static final blacklist TRANSACTION_onUiReady:I = 0xe

.field static final blacklist TRANSACTION_removeEnrollments:I = 0x7

.field static final blacklist TRANSACTION_resetLockout:I = 0xa

.field static final blacklist TRANSACTION_revokeChallenge:I = 0x2

.field static final blacklist TRANSACTION_setIgnoreDisplayTouches:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 592
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 593
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->markVintfStability()V

    .line 594
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/ISession;
    .registers 3

    .line 602
    if-nez p0, :cond_4

    .line 603
    const/4 p0, 0x0

    return-object p0

    .line 605
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 606
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/ISession;

    if-eqz v1, :cond_13

    .line 607
    check-cast v0, Landroid/hardware/biometrics/fingerprint/ISession;

    return-object v0

    .line 609
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 618
    sparse-switch p0, :sswitch_data_58

    .line 718
    const/4 p0, 0x0

    return-object p0

    .line 710
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 714
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 706
    :sswitch_b
    const-string/jumbo p0, "setIgnoreDisplayTouches"

    return-object p0

    .line 702
    :sswitch_f
    const-string/jumbo p0, "onPointerCancelWithContext"

    return-object p0

    .line 698
    :sswitch_13
    const-string/jumbo p0, "onContextChanged"

    return-object p0

    .line 694
    :sswitch_17
    const-string/jumbo p0, "onPointerUpWithContext"

    return-object p0

    .line 690
    :sswitch_1b
    const-string/jumbo p0, "onPointerDownWithContext"

    return-object p0

    .line 686
    :sswitch_1f
    const-string p0, "detectInteractionWithContext"

    return-object p0

    .line 682
    :sswitch_22
    const-string p0, "enrollWithContext"

    return-object p0

    .line 678
    :sswitch_25
    const-string p0, "authenticateWithContext"

    return-object p0

    .line 674
    :sswitch_28
    const-string/jumbo p0, "onUiReady"

    return-object p0

    .line 670
    :sswitch_2c
    const-string/jumbo p0, "onPointerUp"

    return-object p0

    .line 666
    :sswitch_30
    const-string/jumbo p0, "onPointerDown"

    return-object p0

    .line 662
    :sswitch_34
    const-string p0, "close"

    return-object p0

    .line 658
    :sswitch_37
    const-string/jumbo p0, "resetLockout"

    return-object p0

    .line 654
    :sswitch_3b
    const-string p0, "invalidateAuthenticatorId"

    return-object p0

    .line 650
    :sswitch_3e
    const-string p0, "getAuthenticatorId"

    return-object p0

    .line 646
    :sswitch_41
    const-string/jumbo p0, "removeEnrollments"

    return-object p0

    .line 642
    :sswitch_45
    const-string p0, "enumerateEnrollments"

    return-object p0

    .line 638
    :sswitch_48
    const-string p0, "detectInteraction"

    return-object p0

    .line 634
    :sswitch_4b
    const-string p0, "authenticate"

    return-object p0

    .line 630
    :sswitch_4e
    const-string p0, "enroll"

    return-object p0

    .line 626
    :sswitch_51
    const-string/jumbo p0, "revokeChallenge"

    return-object p0

    .line 622
    :sswitch_55
    const-string p0, "generateChallenge"

    return-object p0

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_55
        0x2 -> :sswitch_51
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_48
        0x6 -> :sswitch_45
        0x7 -> :sswitch_41
        0x8 -> :sswitch_3e
        0x9 -> :sswitch_3b
        0xa -> :sswitch_37
        0xb -> :sswitch_34
        0xc -> :sswitch_30
        0xd -> :sswitch_2c
        0xe -> :sswitch_28
        0xf -> :sswitch_25
        0x10 -> :sswitch_22
        0x11 -> :sswitch_1f
        0x12 -> :sswitch_1b
        0x13 -> :sswitch_17
        0x14 -> :sswitch_13
        0x15 -> :sswitch_f
        0x16 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 613
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1892
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 725
    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 730
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 731
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 734
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 735
    return v2

    .line 737
    :cond_16
    if-ne p1, v1, :cond_23

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    return v2

    .line 742
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    return v2

    .line 747
    :cond_33
    packed-switch p1, :pswitch_data_1b4

    .line 946
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 938
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->setIgnoreDisplayTouches(Z)V

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    goto/16 :goto_1b2

    .line 929
    :pswitch_4b
    sget-object p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerCancelWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    goto/16 :goto_1b2

    .line 920
    :pswitch_5e
    sget-object p1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V

    .line 923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    goto/16 :goto_1b2

    .line 911
    :pswitch_71
    sget-object p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 912
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    goto/16 :goto_1b2

    .line 902
    :pswitch_84
    sget-object p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    goto/16 :goto_1b2

    .line 892
    :pswitch_97
    sget-object p1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    .line 895
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 897
    goto/16 :goto_1b2

    .line 880
    :pswitch_ae
    sget-object p1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 882
    sget-object p4, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/biometrics/common/OperationContext;

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, p1, p4}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 887
    goto/16 :goto_1b2

    .line 868
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 870
    sget-object p1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {p0, v0, v1, p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 875
    goto/16 :goto_1b2

    .line 861
    :pswitch_e8
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onUiReady()V

    .line 862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    goto/16 :goto_1b2

    .line 853
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerUp(I)V

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    goto/16 :goto_1b2

    .line 836
    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerDown(IIIFF)V

    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    goto/16 :goto_1b2

    .line 829
    :pswitch_11f
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->close()V

    .line 830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    goto/16 :goto_1b2

    .line 821
    :pswitch_128
    move-object v3, p0

    sget-object p1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V

    .line 824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    goto/16 :goto_1b2

    .line 814
    :pswitch_13c
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->invalidateAuthenticatorId()V

    .line 815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    goto/16 :goto_1b2

    .line 808
    :pswitch_145
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getAuthenticatorId()V

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    goto/16 :goto_1b2

    .line 800
    :pswitch_14e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->removeEnrollments([I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    goto :goto_1b2

    .line 793
    :pswitch_15d
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enumerateEnrollments()V

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    goto :goto_1b2

    .line 786
    :pswitch_165
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    .line 787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 789
    goto :goto_1b2

    .line 777
    :pswitch_171
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 782
    goto :goto_1b2

    .line 767
    :pswitch_184
    move-object v3, p0

    sget-object p1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 772
    goto :goto_1b2

    .line 758
    :pswitch_19b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->revokeChallenge(J)V

    .line 761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    goto :goto_1b2

    .line 751
    :pswitch_1aa
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->generateChallenge()V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    nop

    .line 949
    :goto_1b2
    return v2

    nop

    :pswitch_data_1b4
    .packed-switch 0x1
        :pswitch_1aa
        :pswitch_19b
        :pswitch_184
        :pswitch_171
        :pswitch_165
        :pswitch_15d
        :pswitch_14e
        :pswitch_145
        :pswitch_13c
        :pswitch_128
        :pswitch_11f
        :pswitch_ff
        :pswitch_f0
        :pswitch_e8
        :pswitch_cd
        :pswitch_ae
        :pswitch_97
        :pswitch_84
        :pswitch_71
        :pswitch_5e
        :pswitch_4b
        :pswitch_3c
    .end packed-switch
.end method
