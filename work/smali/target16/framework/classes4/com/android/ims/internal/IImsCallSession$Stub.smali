.class public abstract Lcom/android/ims/internal/IImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IImsCallSession.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSession"

.field static final greylist-max-o TRANSACTION_accept:I = 0xd

.field static final blacklist TRANSACTION_callSessionNotifyAnbr:I = 0x24

.field static final greylist-max-o TRANSACTION_close:I = 0x1

.field static final blacklist TRANSACTION_consultativeTransfer:I = 0x11

.field static final greylist-max-o TRANSACTION_deflect:I = 0xe

.field static final greylist-max-o TRANSACTION_extendToConference:I = 0x17

.field static final greylist-max-o TRANSACTION_getCallId:I = 0x2

.field static final greylist-max-o TRANSACTION_getCallProfile:I = 0x3

.field static final greylist-max-o TRANSACTION_getLocalCallProfile:I = 0x4

.field static final greylist-max-o TRANSACTION_getProperty:I = 0x6

.field static final greylist-max-o TRANSACTION_getRemoteCallProfile:I = 0x5

.field static final greylist-max-o TRANSACTION_getState:I = 0x7

.field static final greylist-max-o TRANSACTION_getVideoCallProvider:I = 0x1e

.field static final greylist-max-o TRANSACTION_hold:I = 0x13

.field static final greylist-max-o TRANSACTION_inviteParticipants:I = 0x18

.field static final greylist-max-o TRANSACTION_isInCall:I = 0x8

.field static final greylist-max-o TRANSACTION_isMultiparty:I = 0x1f

.field static final greylist-max-o TRANSACTION_merge:I = 0x15

.field static final greylist-max-o TRANSACTION_reject:I = 0xf

.field static final greylist-max-o TRANSACTION_removeParticipants:I = 0x19

.field static final greylist-max-o TRANSACTION_resume:I = 0x14

.field static final greylist-max-o TRANSACTION_sendDtmf:I = 0x1a

.field static final blacklist TRANSACTION_sendRtpHeaderExtensions:I = 0x23

.field static final greylist-max-o TRANSACTION_sendRttMessage:I = 0x22

.field static final greylist-max-o TRANSACTION_sendRttModifyRequest:I = 0x20

.field static final greylist-max-o TRANSACTION_sendRttModifyResponse:I = 0x21

.field static final greylist-max-o TRANSACTION_sendUssd:I = 0x1d

.field static final greylist-max-o TRANSACTION_setListener:I = 0x9

.field static final greylist-max-o TRANSACTION_setMute:I = 0xa

.field static final greylist-max-o TRANSACTION_start:I = 0xb

.field static final greylist-max-o TRANSACTION_startConference:I = 0xc

.field static final greylist-max-o TRANSACTION_startDtmf:I = 0x1b

.field static final greylist-max-o TRANSACTION_stopDtmf:I = 0x1c

.field static final greylist-max-o TRANSACTION_terminate:I = 0x12

.field static final blacklist TRANSACTION_transfer:I = 0x10

.field static final greylist-max-o TRANSACTION_update:I = 0x16


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 361
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 362
    const-string v0, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;
    .registers 3

    .line 370
    if-nez p0, :cond_4

    .line 371
    const/4 p0, 0x0

    return-object p0

    .line 373
    :cond_4
    const-string v0, "com.android.ims.internal.IImsCallSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSession;

    if-eqz v1, :cond_13

    .line 375
    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    return-object v0

    .line 377
    :cond_13
    new-instance v0, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 386
    packed-switch p0, :pswitch_data_72

    .line 534
    const/4 p0, 0x0

    return-object p0

    .line 530
    :pswitch_5
    const-string p0, "callSessionNotifyAnbr"

    return-object p0

    .line 526
    :pswitch_8
    const-string p0, "sendRtpHeaderExtensions"

    return-object p0

    .line 522
    :pswitch_b
    const-string p0, "sendRttMessage"

    return-object p0

    .line 518
    :pswitch_e
    const-string p0, "sendRttModifyResponse"

    return-object p0

    .line 514
    :pswitch_11
    const-string p0, "sendRttModifyRequest"

    return-object p0

    .line 510
    :pswitch_14
    const-string p0, "isMultiparty"

    return-object p0

    .line 506
    :pswitch_17
    const-string p0, "getVideoCallProvider"

    return-object p0

    .line 502
    :pswitch_1a
    const-string p0, "sendUssd"

    return-object p0

    .line 498
    :pswitch_1d
    const-string p0, "stopDtmf"

    return-object p0

    .line 494
    :pswitch_20
    const-string p0, "startDtmf"

    return-object p0

    .line 490
    :pswitch_23
    const-string p0, "sendDtmf"

    return-object p0

    .line 486
    :pswitch_26
    const-string p0, "removeParticipants"

    return-object p0

    .line 482
    :pswitch_29
    const-string p0, "inviteParticipants"

    return-object p0

    .line 478
    :pswitch_2c
    const-string p0, "extendToConference"

    return-object p0

    .line 474
    :pswitch_2f
    const-string p0, "update"

    return-object p0

    .line 470
    :pswitch_32
    const-string p0, "merge"

    return-object p0

    .line 466
    :pswitch_35
    const-string p0, "resume"

    return-object p0

    .line 462
    :pswitch_38
    const-string p0, "hold"

    return-object p0

    .line 458
    :pswitch_3b
    const-string p0, "terminate"

    return-object p0

    .line 454
    :pswitch_3e
    const-string p0, "consultativeTransfer"

    return-object p0

    .line 450
    :pswitch_41
    const-string p0, "transfer"

    return-object p0

    .line 446
    :pswitch_44
    const-string p0, "reject"

    return-object p0

    .line 442
    :pswitch_47
    const-string p0, "deflect"

    return-object p0

    .line 438
    :pswitch_4a
    const-string p0, "accept"

    return-object p0

    .line 434
    :pswitch_4d
    const-string p0, "startConference"

    return-object p0

    .line 430
    :pswitch_50
    const-string p0, "start"

    return-object p0

    .line 426
    :pswitch_53
    const-string p0, "setMute"

    return-object p0

    .line 422
    :pswitch_56
    const-string p0, "setListener"

    return-object p0

    .line 418
    :pswitch_59
    const-string p0, "isInCall"

    return-object p0

    .line 414
    :pswitch_5c
    const-string p0, "getState"

    return-object p0

    .line 410
    :pswitch_5f
    const-string p0, "getProperty"

    return-object p0

    .line 406
    :pswitch_62
    const-string p0, "getRemoteCallProfile"

    return-object p0

    .line 402
    :pswitch_65
    const-string p0, "getLocalCallProfile"

    return-object p0

    .line 398
    :pswitch_68
    const-string p0, "getCallProfile"

    return-object p0

    .line 394
    :pswitch_6b
    const-string p0, "getCallId"

    return-object p0

    .line 390
    :pswitch_6e
    const-string p0, "close"

    return-object p0

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 381
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1712
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 541
    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    nop

    .line 546
    const-string v0, "com.android.ims.internal.IImsCallSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 547
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 550
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    return v1

    .line 553
    :cond_17
    packed-switch p1, :pswitch_data_256

    .line 873
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 861
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 865
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/ims/internal/IImsCallSession$Stub;->callSessionNotifyAnbr(III)V

    .line 868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    goto/16 :goto_255

    .line 852
    :pswitch_36
    sget-object p1, Landroid/telephony/ims/RtpHeaderExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRtpHeaderExtensions(Ljava/util/List;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_255

    .line 843
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttMessage(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    goto/16 :goto_255

    .line 834
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttModifyResponse(Z)V

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    goto/16 :goto_255

    .line 825
    :pswitch_65
    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    goto/16 :goto_255

    .line 817
    :pswitch_78
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isMultiparty()Z

    move-result p1

    .line 818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 820
    goto/16 :goto_255

    .line 810
    :pswitch_84
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object p1

    .line 811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 813
    goto/16 :goto_255

    .line 802
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendUssd(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    goto/16 :goto_255

    .line 795
    :pswitch_9f
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->stopDtmf()V

    .line 796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    goto/16 :goto_255

    .line 787
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->startDtmf(C)V

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    goto/16 :goto_255

    .line 776
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    .line 778
    sget-object p4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Message;

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendDtmf(CLandroid/os/Message;)V

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    goto/16 :goto_255

    .line 767
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->removeParticipants([Ljava/lang/String;)V

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    goto/16 :goto_255

    .line 758
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->inviteParticipants([Ljava/lang/String;)V

    .line 761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    goto/16 :goto_255

    .line 749
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->extendToConference([Ljava/lang/String;)V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    goto/16 :goto_255

    .line 738
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 740
    sget-object p4, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsCallSession$Stub;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    goto/16 :goto_255

    .line 731
    :pswitch_113
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->merge()V

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    goto/16 :goto_255

    .line 723
    :pswitch_11b
    sget-object p1, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    goto/16 :goto_255

    .line 714
    :pswitch_12e
    sget-object p1, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    goto/16 :goto_255

    .line 705
    :pswitch_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->terminate(I)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_255

    .line 696
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    goto/16 :goto_255

    .line 685
    :pswitch_163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsCallSession$Stub;->transfer(Ljava/lang/String;Z)V

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    goto/16 :goto_255

    .line 676
    :pswitch_176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->reject(I)V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    goto/16 :goto_255

    .line 667
    :pswitch_185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->deflect(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    goto/16 :goto_255

    .line 656
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 658
    sget-object p4, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsCallSession$Stub;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_255

    .line 645
    :pswitch_1ab
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 647
    sget-object p4, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/ims/ImsCallProfile;

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsCallSession$Stub;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    goto/16 :goto_255

    .line 634
    :pswitch_1c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 636
    sget-object p4, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/ims/ImsCallProfile;

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {p0, p1, p4}, Lcom/android/ims/internal/IImsCallSession$Stub;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    goto/16 :goto_255

    .line 625
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->setMute(Z)V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    goto/16 :goto_255

    .line 616
    :pswitch_1e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    goto :goto_255

    .line 608
    :pswitch_1fa
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isInCall()Z

    move-result p1

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 611
    goto :goto_255

    .line 601
    :pswitch_205
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getState()I

    move-result p1

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    goto :goto_255

    .line 592
    :pswitch_210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    goto :goto_255

    .line 584
    :pswitch_222
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 587
    goto :goto_255

    .line 577
    :pswitch_22d
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 580
    goto :goto_255

    .line 570
    :pswitch_238
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 573
    goto :goto_255

    .line 563
    :pswitch_243
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallId()Ljava/lang/String;

    move-result-object p1

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    goto :goto_255

    .line 557
    :pswitch_24e
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->close()V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    nop

    .line 876
    :goto_255
    return v1

    :pswitch_data_256
    .packed-switch 0x1
        :pswitch_24e
        :pswitch_243
        :pswitch_238
        :pswitch_22d
        :pswitch_222
        :pswitch_210
        :pswitch_205
        :pswitch_1fa
        :pswitch_1e8
        :pswitch_1d9
        :pswitch_1c2
        :pswitch_1ab
        :pswitch_194
        :pswitch_185
        :pswitch_176
        :pswitch_163
        :pswitch_150
        :pswitch_141
        :pswitch_12e
        :pswitch_11b
        :pswitch_113
        :pswitch_fc
        :pswitch_ed
        :pswitch_de
        :pswitch_cf
        :pswitch_b7
        :pswitch_a7
        :pswitch_9f
        :pswitch_90
        :pswitch_84
        :pswitch_78
        :pswitch_65
        :pswitch_56
        :pswitch_47
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
