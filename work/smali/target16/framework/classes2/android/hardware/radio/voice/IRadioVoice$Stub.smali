.class public abstract Landroid/hardware/radio/voice/IRadioVoice$Stub;
.super Landroid/os/Binder;
.source "IRadioVoice.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acceptCall:I = 0x1

.field static final blacklist TRANSACTION_cancelPendingUssd:I = 0x2

.field static final blacklist TRANSACTION_conference:I = 0x3

.field static final blacklist TRANSACTION_dial:I = 0x4

.field static final blacklist TRANSACTION_emergencyDial:I = 0x5

.field static final blacklist TRANSACTION_exitEmergencyCallbackMode:I = 0x6

.field static final blacklist TRANSACTION_explicitCallTransfer:I = 0x7

.field static final blacklist TRANSACTION_getCallForwardStatus:I = 0x8

.field static final blacklist TRANSACTION_getCallWaiting:I = 0x9

.field static final blacklist TRANSACTION_getClip:I = 0xa

.field static final blacklist TRANSACTION_getClir:I = 0xb

.field static final blacklist TRANSACTION_getCurrentCalls:I = 0xc

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getLastCallFailCause:I = 0xd

.field static final blacklist TRANSACTION_getMute:I = 0xe

.field static final blacklist TRANSACTION_getPreferredVoicePrivacy:I = 0xf

.field static final blacklist TRANSACTION_getTtyMode:I = 0x10

.field static final blacklist TRANSACTION_handleStkCallSetupRequestFromSim:I = 0x11

.field static final blacklist TRANSACTION_hangup:I = 0x12

.field static final blacklist TRANSACTION_hangupForegroundResumeBackground:I = 0x13

.field static final blacklist TRANSACTION_hangupWaitingOrBackground:I = 0x14

.field static final blacklist TRANSACTION_isVoNrEnabled:I = 0x15

.field static final blacklist TRANSACTION_rejectCall:I = 0x16

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0x17

.field static final blacklist TRANSACTION_sendBurstDtmf:I = 0x18

.field static final blacklist TRANSACTION_sendCdmaFeatureCode:I = 0x19

.field static final blacklist TRANSACTION_sendDtmf:I = 0x1a

.field static final blacklist TRANSACTION_sendUssd:I = 0x1b

.field static final blacklist TRANSACTION_separateConnection:I = 0x1c

.field static final blacklist TRANSACTION_setCallForward:I = 0x1d

.field static final blacklist TRANSACTION_setCallWaiting:I = 0x1e

.field static final blacklist TRANSACTION_setClir:I = 0x1f

.field static final blacklist TRANSACTION_setMute:I = 0x20

.field static final blacklist TRANSACTION_setPreferredVoicePrivacy:I = 0x21

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x22

.field static final blacklist TRANSACTION_setTtyMode:I = 0x23

.field static final blacklist TRANSACTION_setVoNrEnabled:I = 0x24

.field static final blacklist TRANSACTION_startDtmf:I = 0x25

.field static final blacklist TRANSACTION_stopDtmf:I = 0x26

.field static final blacklist TRANSACTION_switchWaitingOrHoldingAndActive:I = 0x27


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 622
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 623
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->markVintfStability()V

    .line 624
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoice;
    .registers 3

    .line 632
    if-nez p0, :cond_4

    .line 633
    const/4 p0, 0x0

    return-object p0

    .line 635
    :cond_4
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/voice/IRadioVoice;

    if-eqz v1, :cond_13

    .line 637
    check-cast v0, Landroid/hardware/radio/voice/IRadioVoice;

    return-object v0

    .line 639
    :cond_13
    new-instance v0, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 643
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 647
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 648
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 649
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 652
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 653
    return v2

    .line 655
    :cond_16
    if-ne p1, v1, :cond_23

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    return v2

    .line 660
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    return v2

    .line 665
    :cond_33
    packed-switch p1, :pswitch_data_292

    .line 1034
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1027
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 1030
    goto/16 :goto_291

    .line 1019
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->stopDtmf(I)V

    .line 1022
    goto/16 :goto_291

    .line 1009
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->startDtmf(ILjava/lang/String;)V

    .line 1014
    goto/16 :goto_291

    .line 999
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1002
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setVoNrEnabled(IZ)V

    .line 1004
    goto/16 :goto_291

    .line 989
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setTtyMode(II)V

    .line 994
    goto/16 :goto_291

    .line 979
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceResponse;

    move-result-object p1

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceIndication;

    move-result-object p3

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setResponseFunctions(Landroid/hardware/radio/voice/IRadioVoiceResponse;Landroid/hardware/radio/voice/IRadioVoiceIndication;)V

    .line 984
    goto/16 :goto_291

    .line 969
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 974
    goto/16 :goto_291

    .line 959
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setMute(IZ)V

    .line 964
    goto/16 :goto_291

    .line 949
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setClir(II)V

    .line 954
    goto/16 :goto_291

    .line 937
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 942
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setCallWaiting(IZI)V

    .line 944
    goto/16 :goto_291

    .line 927
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 929
    sget-object p3, Landroid/hardware/radio/voice/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/voice/CallForwardInfo;

    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setCallForward(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    .line 932
    goto/16 :goto_291

    .line 917
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 920
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->separateConnection(II)V

    .line 922
    goto/16 :goto_291

    .line 907
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 909
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendUssd(ILjava/lang/String;)V

    .line 912
    goto/16 :goto_291

    .line 897
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 899
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 900
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 901
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 902
    goto/16 :goto_291

    .line 887
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 890
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendCdmaFeatureCode(ILjava/lang/String;)V

    .line 892
    goto/16 :goto_291

    .line 873
    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 882
    goto/16 :goto_291

    .line 867
    :pswitch_14c
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->responseAcknowledgement()V

    .line 868
    goto/16 :goto_291

    .line 860
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->rejectCall(I)V

    .line 863
    goto/16 :goto_291

    .line 852
    :pswitch_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->isVoNrEnabled(I)V

    .line 855
    goto/16 :goto_291

    .line 844
    :pswitch_169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->hangupWaitingOrBackground(I)V

    .line 847
    goto/16 :goto_291

    .line 836
    :pswitch_175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->hangupForegroundResumeBackground(I)V

    .line 839
    goto/16 :goto_291

    .line 826
    :pswitch_181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->hangup(II)V

    .line 831
    goto/16 :goto_291

    .line 816
    :pswitch_191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 821
    goto/16 :goto_291

    .line 808
    :pswitch_1a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getTtyMode(I)V

    .line 811
    goto/16 :goto_291

    .line 800
    :pswitch_1ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getPreferredVoicePrivacy(I)V

    .line 803
    goto/16 :goto_291

    .line 792
    :pswitch_1b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 793
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getMute(I)V

    .line 795
    goto/16 :goto_291

    .line 784
    :pswitch_1c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getLastCallFailCause(I)V

    .line 787
    goto/16 :goto_291

    .line 776
    :pswitch_1d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getCurrentCalls(I)V

    .line 779
    goto/16 :goto_291

    .line 768
    :pswitch_1dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 769
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getClir(I)V

    .line 771
    goto/16 :goto_291

    .line 760
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getClip(I)V

    .line 763
    goto/16 :goto_291

    .line 750
    :pswitch_1f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getCallWaiting(II)V

    .line 755
    goto/16 :goto_291

    .line 740
    :pswitch_205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 742
    sget-object p3, Landroid/hardware/radio/voice/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/voice/CallForwardInfo;

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getCallForwardStatus(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    .line 745
    goto/16 :goto_291

    .line 732
    :pswitch_219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->explicitCallTransfer(I)V

    .line 735
    goto/16 :goto_291

    .line 724
    :pswitch_225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->exitEmergencyCallbackMode(I)V

    .line 727
    goto :goto_291

    .line 704
    :pswitch_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 706
    sget-object p1, Landroid/hardware/radio/voice/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/hardware/radio/voice/Dial;

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->emergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZ)V

    .line 719
    goto :goto_291

    .line 694
    :pswitch_259
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 696
    sget-object p3, Landroid/hardware/radio/voice/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/voice/Dial;

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->dial(ILandroid/hardware/radio/voice/Dial;)V

    .line 699
    goto :goto_291

    .line 686
    :pswitch_26d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->conference(I)V

    .line 689
    goto :goto_291

    .line 678
    :pswitch_279
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->cancelPendingUssd(I)V

    .line 681
    goto :goto_291

    .line 670
    :pswitch_285
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->acceptCall(I)V

    .line 673
    nop

    .line 1037
    :goto_291
    return v2

    :pswitch_data_292
    .packed-switch 0x1
        :pswitch_285
        :pswitch_279
        :pswitch_26d
        :pswitch_259
        :pswitch_230
        :pswitch_225
        :pswitch_219
        :pswitch_205
        :pswitch_1f5
        :pswitch_1e9
        :pswitch_1dd
        :pswitch_1d1
        :pswitch_1c5
        :pswitch_1b9
        :pswitch_1ad
        :pswitch_1a1
        :pswitch_191
        :pswitch_181
        :pswitch_175
        :pswitch_169
        :pswitch_15d
        :pswitch_151
        :pswitch_14c
        :pswitch_134
        :pswitch_124
        :pswitch_114
        :pswitch_104
        :pswitch_f4
        :pswitch_e0
        :pswitch_cc
        :pswitch_bc
        :pswitch_ac
        :pswitch_9c
        :pswitch_84
        :pswitch_74
        :pswitch_64
        :pswitch_54
        :pswitch_48
        :pswitch_3c
    .end packed-switch
.end method
