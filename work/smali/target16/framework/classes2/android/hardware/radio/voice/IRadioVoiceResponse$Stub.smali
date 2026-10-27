.class public abstract Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioVoiceResponse.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoiceResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acceptCallResponse:I = 0x1

.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x2

.field static final blacklist TRANSACTION_cancelPendingUssdResponse:I = 0x3

.field static final blacklist TRANSACTION_conferenceResponse:I = 0x4

.field static final blacklist TRANSACTION_dialResponse:I = 0x5

.field static final blacklist TRANSACTION_emergencyDialResponse:I = 0x6

.field static final blacklist TRANSACTION_exitEmergencyCallbackModeResponse:I = 0x7

.field static final blacklist TRANSACTION_explicitCallTransferResponse:I = 0x8

.field static final blacklist TRANSACTION_getCallForwardStatusResponse:I = 0x9

.field static final blacklist TRANSACTION_getCallWaitingResponse:I = 0xa

.field static final blacklist TRANSACTION_getClipResponse:I = 0xb

.field static final blacklist TRANSACTION_getClirResponse:I = 0xc

.field static final blacklist TRANSACTION_getCurrentCallsResponse:I = 0xd

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getLastCallFailCauseResponse:I = 0xe

.field static final blacklist TRANSACTION_getMuteResponse:I = 0xf

.field static final blacklist TRANSACTION_getPreferredVoicePrivacyResponse:I = 0x10

.field static final blacklist TRANSACTION_getTtyModeResponse:I = 0x11

.field static final blacklist TRANSACTION_handleStkCallSetupRequestFromSimResponse:I = 0x12

.field static final blacklist TRANSACTION_hangupConnectionResponse:I = 0x13

.field static final blacklist TRANSACTION_hangupForegroundResumeBackgroundResponse:I = 0x14

.field static final blacklist TRANSACTION_hangupWaitingOrBackgroundResponse:I = 0x15

.field static final blacklist TRANSACTION_isVoNrEnabledResponse:I = 0x16

.field static final blacklist TRANSACTION_rejectCallResponse:I = 0x17

.field static final blacklist TRANSACTION_sendBurstDtmfResponse:I = 0x18

.field static final blacklist TRANSACTION_sendCdmaFeatureCodeResponse:I = 0x19

.field static final blacklist TRANSACTION_sendDtmfResponse:I = 0x1a

.field static final blacklist TRANSACTION_sendUssdResponse:I = 0x1b

.field static final blacklist TRANSACTION_separateConnectionResponse:I = 0x1c

.field static final blacklist TRANSACTION_setCallForwardResponse:I = 0x1d

.field static final blacklist TRANSACTION_setCallWaitingResponse:I = 0x1e

.field static final blacklist TRANSACTION_setClirResponse:I = 0x1f

.field static final blacklist TRANSACTION_setMuteResponse:I = 0x20

.field static final blacklist TRANSACTION_setPreferredVoicePrivacyResponse:I = 0x21

.field static final blacklist TRANSACTION_setTtyModeResponse:I = 0x22

.field static final blacklist TRANSACTION_setVoNrEnabledResponse:I = 0x23

.field static final blacklist TRANSACTION_startDtmfResponse:I = 0x24

.field static final blacklist TRANSACTION_stopDtmfResponse:I = 0x25

.field static final blacklist TRANSACTION_switchWaitingOrHoldingAndActiveResponse:I = 0x26


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 883
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 884
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->markVintfStability()V

    .line 885
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceResponse;
    .registers 3

    .line 893
    if-nez p0, :cond_4

    .line 894
    const/4 p0, 0x0

    return-object p0

    .line 896
    :cond_4
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 897
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/voice/IRadioVoiceResponse;

    if-eqz v1, :cond_13

    .line 898
    check-cast v0, Landroid/hardware/radio/voice/IRadioVoiceResponse;

    return-object v0

    .line 900
    :cond_13
    new-instance v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 904
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 909
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 910
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 913
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    return v2

    .line 916
    :cond_16
    if-ne p1, v1, :cond_23

    .line 917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    return v2

    .line 921
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    return v2

    .line 926
    :cond_33
    packed-switch p1, :pswitch_data_2cc

    .line 1258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1251
    :pswitch_3b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1253
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1254
    goto/16 :goto_2cb

    .line 1243
    :pswitch_4b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1246
    goto/16 :goto_2cb

    .line 1235
    :pswitch_5b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1236
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1238
    goto/16 :goto_2cb

    .line 1227
    :pswitch_6b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1230
    goto/16 :goto_2cb

    .line 1219
    :pswitch_7b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1221
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1222
    goto/16 :goto_2cb

    .line 1211
    :pswitch_8b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1214
    goto/16 :goto_2cb

    .line 1203
    :pswitch_9b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setMuteResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1206
    goto/16 :goto_2cb

    .line 1195
    :pswitch_ab
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1197
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setClirResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1198
    goto/16 :goto_2cb

    .line 1187
    :pswitch_bb
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1189
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1190
    goto/16 :goto_2cb

    .line 1179
    :pswitch_cb
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1182
    goto/16 :goto_2cb

    .line 1171
    :pswitch_db
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1173
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1174
    goto/16 :goto_2cb

    .line 1163
    :pswitch_eb
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1166
    goto/16 :goto_2cb

    .line 1155
    :pswitch_fb
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1157
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1158
    goto/16 :goto_2cb

    .line 1147
    :pswitch_10b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendCdmaFeatureCodeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1150
    goto/16 :goto_2cb

    .line 1139
    :pswitch_11b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1141
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1142
    goto/16 :goto_2cb

    .line 1131
    :pswitch_12b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1134
    goto/16 :goto_2cb

    .line 1121
    :pswitch_13b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1123
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1125
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->isVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1126
    goto/16 :goto_2cb

    .line 1113
    :pswitch_14f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1114
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1116
    goto/16 :goto_2cb

    .line 1105
    :pswitch_15f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1108
    goto/16 :goto_2cb

    .line 1097
    :pswitch_16f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1100
    goto/16 :goto_2cb

    .line 1089
    :pswitch_17f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1090
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1091
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1092
    goto/16 :goto_2cb

    .line 1079
    :pswitch_18f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1081
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1082
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1083
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1084
    goto/16 :goto_2cb

    .line 1069
    :pswitch_1a3
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1071
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1072
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1073
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1074
    goto/16 :goto_2cb

    .line 1059
    :pswitch_1b7
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1061
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1062
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getMuteResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1064
    goto/16 :goto_2cb

    .line 1049
    :pswitch_1cb
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1051
    sget-object p3, Landroid/hardware/radio/voice/LastCallFailCauseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/voice/LastCallFailCauseInfo;

    .line 1052
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/voice/LastCallFailCauseInfo;)V

    .line 1054
    goto/16 :goto_2cb

    .line 1039
    :pswitch_1e3
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1041
    sget-object p3, Landroid/hardware/radio/voice/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/voice/Call;

    .line 1042
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/Call;)V

    .line 1044
    goto/16 :goto_2cb

    .line 1027
    :pswitch_1fb
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getClirResponse(Landroid/hardware/radio/RadioResponseInfo;II)V

    .line 1034
    goto/16 :goto_2cb

    .line 1017
    :pswitch_213
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getClipResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1022
    goto/16 :goto_2cb

    .line 1005
    :pswitch_227
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1009
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1010
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V

    .line 1012
    goto/16 :goto_2cb

    .line 995
    :pswitch_23f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 997
    sget-object p3, Landroid/hardware/radio/voice/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/voice/CallForwardInfo;

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/CallForwardInfo;)V

    .line 1000
    goto/16 :goto_2cb

    .line 987
    :pswitch_257
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 990
    goto :goto_2cb

    .line 979
    :pswitch_266
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 982
    goto :goto_2cb

    .line 971
    :pswitch_275
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 974
    goto :goto_2cb

    .line 963
    :pswitch_284
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 964
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->dialResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 966
    goto :goto_2cb

    .line 955
    :pswitch_293
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 956
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->conferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 958
    goto :goto_2cb

    .line 947
    :pswitch_2a2
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 948
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 950
    goto :goto_2cb

    .line 939
    :pswitch_2b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->acknowledgeRequest(I)V

    .line 942
    goto :goto_2cb

    .line 931
    :pswitch_2bc
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 932
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 933
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 934
    nop

    .line 1261
    :goto_2cb
    return v2

    :pswitch_data_2cc
    .packed-switch 0x1
        :pswitch_2bc
        :pswitch_2b1
        :pswitch_2a2
        :pswitch_293
        :pswitch_284
        :pswitch_275
        :pswitch_266
        :pswitch_257
        :pswitch_23f
        :pswitch_227
        :pswitch_213
        :pswitch_1fb
        :pswitch_1e3
        :pswitch_1cb
        :pswitch_1b7
        :pswitch_1a3
        :pswitch_18f
        :pswitch_17f
        :pswitch_16f
        :pswitch_15f
        :pswitch_14f
        :pswitch_13b
        :pswitch_12b
        :pswitch_11b
        :pswitch_10b
        :pswitch_fb
        :pswitch_eb
        :pswitch_db
        :pswitch_cb
        :pswitch_bb
        :pswitch_ab
        :pswitch_9b
        :pswitch_8b
        :pswitch_7b
        :pswitch_6b
        :pswitch_5b
        :pswitch_4b
        :pswitch_3b
    .end packed-switch
.end method
