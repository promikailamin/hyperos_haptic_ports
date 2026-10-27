.class public abstract Landroid/hardware/radio/sim/IRadioSimResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioSimResponse.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSimResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSimResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x1

.field static final blacklist TRANSACTION_areUiccApplicationsEnabledResponse:I = 0x2

.field static final blacklist TRANSACTION_changeIccPin2ForAppResponse:I = 0x3

.field static final blacklist TRANSACTION_changeIccPinForAppResponse:I = 0x4

.field static final blacklist TRANSACTION_enableUiccApplicationsResponse:I = 0x5

.field static final blacklist TRANSACTION_getAllowedCarriersResponse:I = 0x6

.field static final blacklist TRANSACTION_getCdmaSubscriptionResponse:I = 0x7

.field static final blacklist TRANSACTION_getCdmaSubscriptionSourceResponse:I = 0x8

.field static final blacklist TRANSACTION_getFacilityLockForAppResponse:I = 0x9

.field static final blacklist TRANSACTION_getIccCardStatusResponse:I = 0xa

.field static final blacklist TRANSACTION_getImsiForAppResponse:I = 0xb

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSimPhonebookCapacityResponse:I = 0xc

.field static final blacklist TRANSACTION_getSimPhonebookRecordsResponse:I = 0xd

.field static final blacklist TRANSACTION_iccCloseLogicalChannelResponse:I = 0xe

.field static final blacklist TRANSACTION_iccCloseLogicalChannelWithSessionInfoResponse:I = 0x24

.field static final blacklist TRANSACTION_iccIoForAppResponse:I = 0xf

.field static final blacklist TRANSACTION_iccOpenLogicalChannelResponse:I = 0x10

.field static final blacklist TRANSACTION_iccTransmitApduBasicChannelResponse:I = 0x11

.field static final blacklist TRANSACTION_iccTransmitApduLogicalChannelResponse:I = 0x12

.field static final blacklist TRANSACTION_reportStkServiceIsRunningResponse:I = 0x13

.field static final blacklist TRANSACTION_requestIccSimAuthenticationResponse:I = 0x14

.field static final blacklist TRANSACTION_sendEnvelopeResponse:I = 0x15

.field static final blacklist TRANSACTION_sendEnvelopeWithStatusResponse:I = 0x16

.field static final blacklist TRANSACTION_sendTerminalResponseToSimResponse:I = 0x17

.field static final blacklist TRANSACTION_setAllowedCarriersResponse:I = 0x18

.field static final blacklist TRANSACTION_setCarrierInfoForImsiEncryptionResponse:I = 0x19

.field static final blacklist TRANSACTION_setCdmaSubscriptionSourceResponse:I = 0x1a

.field static final blacklist TRANSACTION_setFacilityLockForAppResponse:I = 0x1b

.field static final blacklist TRANSACTION_setSimCardPowerResponse:I = 0x1c

.field static final blacklist TRANSACTION_setUiccSubscriptionResponse:I = 0x1d

.field static final blacklist TRANSACTION_supplyIccPin2ForAppResponse:I = 0x1e

.field static final blacklist TRANSACTION_supplyIccPinForAppResponse:I = 0x1f

.field static final blacklist TRANSACTION_supplyIccPuk2ForAppResponse:I = 0x20

.field static final blacklist TRANSACTION_supplyIccPukForAppResponse:I = 0x21

.field static final blacklist TRANSACTION_supplySimDepersonalizationResponse:I = 0x22

.field static final blacklist TRANSACTION_updateSimPhonebookRecordsResponse:I = 0x23


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 733
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 734
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->markVintfStability()V

    .line 735
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSimResponse;
    .registers 3

    .line 743
    if-nez p0, :cond_4

    .line 744
    const/4 p0, 0x0

    return-object p0

    .line 746
    :cond_4
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/sim/IRadioSimResponse;

    if-eqz v1, :cond_13

    .line 748
    check-cast v0, Landroid/hardware/radio/sim/IRadioSimResponse;

    return-object v0

    .line 750
    :cond_13
    new-instance v0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 754
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 758
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 759
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 760
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 763
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 764
    return v2

    .line 766
    :cond_16
    if-ne p1, v1, :cond_23

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    return v2

    .line 771
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 774
    return v2

    .line 776
    :cond_33
    packed-switch p1, :pswitch_data_318

    .line 1130
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1123
    :pswitch_3c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1125
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccCloseLogicalChannelWithSessionInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1126
    goto/16 :goto_316

    .line 1113
    :pswitch_4c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->updateSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1118
    goto/16 :goto_316

    .line 1101
    :pswitch_60
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplySimDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;II)V

    .line 1108
    goto/16 :goto_316

    .line 1091
    :pswitch_78
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1093
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1096
    goto/16 :goto_316

    .line 1081
    :pswitch_8c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1084
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1085
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1086
    goto/16 :goto_316

    .line 1071
    :pswitch_a0
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1074
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1075
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1076
    goto/16 :goto_316

    .line 1061
    :pswitch_b4
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1063
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1064
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1066
    goto/16 :goto_316

    .line 1053
    :pswitch_c8
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1054
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1056
    goto/16 :goto_316

    .line 1045
    :pswitch_d8
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1046
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1048
    goto/16 :goto_316

    .line 1035
    :pswitch_e8
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1037
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1038
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1040
    goto/16 :goto_316

    .line 1027
    :pswitch_fc
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1030
    goto/16 :goto_316

    .line 1019
    :pswitch_10c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1022
    goto/16 :goto_316

    .line 1011
    :pswitch_11c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1014
    goto/16 :goto_316

    .line 1003
    :pswitch_12c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1006
    goto/16 :goto_316

    .line 993
    :pswitch_13c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 995
    sget-object p3, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/sim/IccIoResult;

    .line 996
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 998
    goto/16 :goto_316

    .line 983
    :pswitch_154
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 985
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 987
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 988
    goto/16 :goto_316

    .line 973
    :pswitch_168
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 975
    sget-object p3, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/sim/IccIoResult;

    .line 976
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 978
    goto/16 :goto_316

    .line 965
    :pswitch_180
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 968
    goto/16 :goto_316

    .line 955
    :pswitch_190
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 957
    sget-object p3, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/sim/IccIoResult;

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 959
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 960
    goto/16 :goto_316

    .line 945
    :pswitch_1a8
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 947
    sget-object p3, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/sim/IccIoResult;

    .line 948
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 950
    goto/16 :goto_316

    .line 933
    :pswitch_1c0
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 939
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;I[B)V

    .line 940
    goto/16 :goto_316

    .line 923
    :pswitch_1d8
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 925
    sget-object p3, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/sim/IccIoResult;

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccIoForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 928
    goto/16 :goto_316

    .line 915
    :pswitch_1f0
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 916
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 917
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 918
    goto/16 :goto_316

    .line 907
    :pswitch_200
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 910
    goto/16 :goto_316

    .line 897
    :pswitch_210
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 899
    sget-object p3, Landroid/hardware/radio/sim/PhonebookCapacity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/sim/PhonebookCapacity;

    .line 900
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 901
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getSimPhonebookCapacityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/PhonebookCapacity;)V

    .line 902
    goto/16 :goto_316

    .line 887
    :pswitch_228
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 890
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getImsiForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 892
    goto/16 :goto_316

    .line 877
    :pswitch_23c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 879
    sget-object p3, Landroid/hardware/radio/sim/CardStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/sim/CardStatus;

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CardStatus;)V

    .line 882
    goto/16 :goto_316

    .line 867
    :pswitch_254
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 870
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 872
    goto/16 :goto_316

    .line 857
    :pswitch_268
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 862
    goto/16 :goto_316

    .line 839
    :pswitch_27c
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/hardware/radio/RadioResponseInfo;

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 843
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getCdmaSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    goto/16 :goto_316

    .line 827
    :pswitch_2a2
    move-object v3, p0

    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 829
    sget-object p3, Landroid/hardware/radio/sim/CarrierRestrictions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/sim/CarrierRestrictions;

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CarrierRestrictions;I)V

    .line 834
    goto :goto_316

    .line 819
    :pswitch_2be
    move-object v3, p0

    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 820
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->enableUiccApplicationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 822
    goto :goto_316

    .line 809
    :pswitch_2ce
    move-object v3, p0

    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 814
    goto :goto_316

    .line 799
    :pswitch_2e2
    move-object v3, p0

    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 804
    goto :goto_316

    .line 789
    :pswitch_2f6
    move-object v3, p0

    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->areUiccApplicationsEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 794
    goto :goto_316

    .line 781
    :pswitch_30a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->acknowledgeRequest(I)V

    .line 784
    nop

    .line 1133
    :goto_316
    return v2

    nop

    :pswitch_data_318
    .packed-switch 0x1
        :pswitch_30a
        :pswitch_2f6
        :pswitch_2e2
        :pswitch_2ce
        :pswitch_2be
        :pswitch_2a2
        :pswitch_27c
        :pswitch_268
        :pswitch_254
        :pswitch_23c
        :pswitch_228
        :pswitch_210
        :pswitch_200
        :pswitch_1f0
        :pswitch_1d8
        :pswitch_1c0
        :pswitch_1a8
        :pswitch_190
        :pswitch_180
        :pswitch_168
        :pswitch_154
        :pswitch_13c
        :pswitch_12c
        :pswitch_11c
        :pswitch_10c
        :pswitch_fc
        :pswitch_e8
        :pswitch_d8
        :pswitch_c8
        :pswitch_b4
        :pswitch_a0
        :pswitch_8c
        :pswitch_78
        :pswitch_60
        :pswitch_4c
        :pswitch_3c
    .end packed-switch
.end method
