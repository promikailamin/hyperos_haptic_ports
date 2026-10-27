.class public abstract Landroid/hardware/radio/sim/IRadioSim$Stub;
.super Landroid/os/Binder;
.source "IRadioSim.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/sim/IRadioSim$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_areUiccApplicationsEnabled:I = 0x1

.field static final blacklist TRANSACTION_changeIccPin2ForApp:I = 0x2

.field static final blacklist TRANSACTION_changeIccPinForApp:I = 0x3

.field static final blacklist TRANSACTION_enableUiccApplications:I = 0x4

.field static final blacklist TRANSACTION_getAllowedCarriers:I = 0x5

.field static final blacklist TRANSACTION_getCdmaSubscription:I = 0x6

.field static final blacklist TRANSACTION_getCdmaSubscriptionSource:I = 0x7

.field static final blacklist TRANSACTION_getFacilityLockForApp:I = 0x8

.field static final blacklist TRANSACTION_getIccCardStatus:I = 0x9

.field static final blacklist TRANSACTION_getImsiForApp:I = 0xa

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSimPhonebookCapacity:I = 0xb

.field static final blacklist TRANSACTION_getSimPhonebookRecords:I = 0xc

.field static final blacklist TRANSACTION_iccCloseLogicalChannel:I = 0xd

.field static final blacklist TRANSACTION_iccCloseLogicalChannelWithSessionInfo:I = 0x25

.field static final blacklist TRANSACTION_iccIoForApp:I = 0xe

.field static final blacklist TRANSACTION_iccOpenLogicalChannel:I = 0xf

.field static final blacklist TRANSACTION_iccTransmitApduBasicChannel:I = 0x10

.field static final blacklist TRANSACTION_iccTransmitApduLogicalChannel:I = 0x11

.field static final blacklist TRANSACTION_reportStkServiceIsRunning:I = 0x12

.field static final blacklist TRANSACTION_requestIccSimAuthentication:I = 0x13

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0x14

.field static final blacklist TRANSACTION_sendEnvelope:I = 0x15

.field static final blacklist TRANSACTION_sendEnvelopeWithStatus:I = 0x16

.field static final blacklist TRANSACTION_sendTerminalResponseToSim:I = 0x17

.field static final blacklist TRANSACTION_setAllowedCarriers:I = 0x18

.field static final blacklist TRANSACTION_setCarrierInfoForImsiEncryption:I = 0x19

.field static final blacklist TRANSACTION_setCdmaSubscriptionSource:I = 0x1a

.field static final blacklist TRANSACTION_setFacilityLockForApp:I = 0x1b

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x1c

.field static final blacklist TRANSACTION_setSimCardPower:I = 0x1d

.field static final blacklist TRANSACTION_setUiccSubscription:I = 0x1e

.field static final blacklist TRANSACTION_supplyIccPin2ForApp:I = 0x1f

.field static final blacklist TRANSACTION_supplyIccPinForApp:I = 0x20

.field static final blacklist TRANSACTION_supplyIccPuk2ForApp:I = 0x21

.field static final blacklist TRANSACTION_supplyIccPukForApp:I = 0x22

.field static final blacklist TRANSACTION_supplySimDepersonalization:I = 0x23

.field static final blacklist TRANSACTION_updateSimPhonebookRecords:I = 0x24


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 644
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 645
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->markVintfStability()V

    .line 646
    sget-object v0, Landroid/hardware/radio/sim/IRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSim;
    .registers 3

    .line 654
    if-nez p0, :cond_4

    .line 655
    const/4 p0, 0x0

    return-object p0

    .line 657
    :cond_4
    sget-object v0, Landroid/hardware/radio/sim/IRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/sim/IRadioSim;

    if-eqz v1, :cond_13

    .line 659
    check-cast v0, Landroid/hardware/radio/sim/IRadioSim;

    return-object v0

    .line 661
    :cond_13
    new-instance v0, Landroid/hardware/radio/sim/IRadioSim$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/sim/IRadioSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 665
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    sget-object v4, Landroid/hardware/radio/sim/IRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 670
    const v5, 0xffffff

    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    if-gt p1, v5, :cond_d

    .line 671
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    :cond_d
    const v6, 0x5f4e5446

    if-ne p1, v6, :cond_16

    .line 674
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 675
    return v7

    .line 677
    :cond_16
    if-ne p1, v5, :cond_23

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    return v7

    .line 682
    :cond_23
    const v4, 0xfffffe

    if-ne p1, v4, :cond_33

    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 685
    return v7

    .line 687
    :cond_33
    packed-switch p1, :pswitch_data_2dc

    .line 1084
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1075
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1077
    sget-object v3, Landroid/hardware/radio/sim/SessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/sim/SessionInfo;

    .line 1078
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1079
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccCloseLogicalChannelWithSessionInfo(ILandroid/hardware/radio/sim/SessionInfo;)V

    .line 1080
    goto/16 :goto_2da

    .line 1065
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1067
    sget-object v3, Landroid/hardware/radio/sim/PhonebookRecordInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/sim/PhonebookRecordInfo;

    .line 1068
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1069
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->updateSimPhonebookRecords(ILandroid/hardware/radio/sim/PhonebookRecordInfo;)V

    .line 1070
    goto/16 :goto_2da

    .line 1053
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1057
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1058
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplySimDepersonalization(IILjava/lang/String;)V

    .line 1060
    goto/16 :goto_2da

    .line 1039
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1041
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1043
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1045
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1046
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    goto/16 :goto_2da

    .line 1025
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    goto/16 :goto_2da

    .line 1013
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1015
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 1020
    goto/16 :goto_2da

    .line 1001
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1005
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/sim/IRadioSim$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 1008
    goto/16 :goto_2da

    .line 991
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 993
    sget-object v3, Landroid/hardware/radio/sim/SelectUiccSub;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/sim/SelectUiccSub;

    .line 994
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setUiccSubscription(ILandroid/hardware/radio/sim/SelectUiccSub;)V

    .line 996
    goto/16 :goto_2da

    .line 981
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setSimCardPower(II)V

    .line 986
    goto/16 :goto_2da

    .line 971
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSimResponse;

    move-result-object v1

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSimIndication;

    move-result-object v3

    .line 974
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setResponseFunctions(Landroid/hardware/radio/sim/IRadioSimResponse;Landroid/hardware/radio/sim/IRadioSimIndication;)V

    .line 976
    goto/16 :goto_2da

    .line 953
    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 959
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 963
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 964
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 966
    goto/16 :goto_2da

    .line 943
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 946
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 947
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setCdmaSubscriptionSource(II)V

    .line 948
    goto/16 :goto_2da

    .line 933
    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 935
    sget-object v2, Landroid/hardware/radio/sim/ImsiEncryptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/ImsiEncryptionInfo;

    .line 936
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/sim/ImsiEncryptionInfo;)V

    .line 938
    goto/16 :goto_2da

    .line 921
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 923
    sget-object v2, Landroid/hardware/radio/sim/CarrierRestrictions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/CarrierRestrictions;

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->setAllowedCarriers(ILandroid/hardware/radio/sim/CarrierRestrictions;I)V

    .line 928
    goto/16 :goto_2da

    .line 911
    :pswitch_168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 913
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 916
    goto/16 :goto_2da

    .line 901
    :pswitch_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 906
    goto/16 :goto_2da

    .line 891
    :pswitch_188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 896
    goto/16 :goto_2da

    .line 885
    :pswitch_198
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->responseAcknowledgement()V

    .line 886
    goto/16 :goto_2da

    .line 872
    :pswitch_19d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 876
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/sim/IRadioSim$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 881
    goto/16 :goto_2da

    .line 864
    :pswitch_1b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 865
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->reportStkServiceIsRunning(I)V

    .line 867
    goto/16 :goto_2da

    .line 854
    :pswitch_1c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 856
    sget-object v2, Landroid/hardware/radio/sim/SimApdu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/SimApdu;

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/sim/SimApdu;)V

    .line 859
    goto/16 :goto_2da

    .line 844
    :pswitch_1d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 846
    sget-object v2, Landroid/hardware/radio/sim/SimApdu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/SimApdu;

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/sim/SimApdu;)V

    .line 849
    goto/16 :goto_2da

    .line 832
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 839
    goto/16 :goto_2da

    .line 822
    :pswitch_1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 824
    sget-object v2, Landroid/hardware/radio/sim/IccIo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/sim/IccIo;

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccIoForApp(ILandroid/hardware/radio/sim/IccIo;)V

    .line 827
    goto/16 :goto_2da

    .line 812
    :pswitch_211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->iccCloseLogicalChannel(II)V

    .line 817
    goto/16 :goto_2da

    .line 804
    :pswitch_221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getSimPhonebookRecords(I)V

    .line 807
    goto/16 :goto_2da

    .line 796
    :pswitch_22d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getSimPhonebookCapacity(I)V

    .line 799
    goto/16 :goto_2da

    .line 786
    :pswitch_239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 791
    goto/16 :goto_2da

    .line 778
    :pswitch_249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getIccCardStatus(I)V

    .line 781
    goto/16 :goto_2da

    .line 762
    :pswitch_255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 770
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 773
    goto :goto_2da

    .line 754
    :pswitch_271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getCdmaSubscriptionSource(I)V

    .line 757
    goto :goto_2da

    .line 746
    :pswitch_27c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getCdmaSubscription(I)V

    .line 749
    goto :goto_2da

    .line 738
    :pswitch_287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->getAllowedCarriers(I)V

    .line 741
    goto :goto_2da

    .line 728
    :pswitch_292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/sim/IRadioSim$Stub;->enableUiccApplications(IZ)V

    .line 733
    goto :goto_2da

    .line 714
    :pswitch_2a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/sim/IRadioSim$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    goto :goto_2da

    .line 700
    :pswitch_2b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/sim/IRadioSim$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    goto :goto_2da

    .line 692
    :pswitch_2cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, v1}, Landroid/hardware/radio/sim/IRadioSim$Stub;->areUiccApplicationsEnabled(I)V

    .line 695
    nop

    .line 1087
    :goto_2da
    return v7

    nop

    :pswitch_data_2dc
    .packed-switch 0x1
        :pswitch_2cf
        :pswitch_2b8
        :pswitch_2a1
        :pswitch_292
        :pswitch_287
        :pswitch_27c
        :pswitch_271
        :pswitch_255
        :pswitch_249
        :pswitch_239
        :pswitch_22d
        :pswitch_221
        :pswitch_211
        :pswitch_1fd
        :pswitch_1e9
        :pswitch_1d5
        :pswitch_1c1
        :pswitch_1b5
        :pswitch_19d
        :pswitch_198
        :pswitch_188
        :pswitch_178
        :pswitch_168
        :pswitch_150
        :pswitch_13c
        :pswitch_12c
        :pswitch_10b
        :pswitch_f3
        :pswitch_e3
        :pswitch_cf
        :pswitch_bb
        :pswitch_a7
        :pswitch_8f
        :pswitch_77
        :pswitch_63
        :pswitch_4f
        :pswitch_3b
    .end packed-switch
.end method
