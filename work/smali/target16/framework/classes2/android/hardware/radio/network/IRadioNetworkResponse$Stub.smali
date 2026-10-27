.class public abstract Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioNetworkResponse.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetworkResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetworkResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/IRadioNetworkResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x1

.field static final blacklist TRANSACTION_cancelEmergencyNetworkScanResponse:I = 0x27

.field static final blacklist TRANSACTION_exitEmergencyModeResponse:I = 0x26

.field static final blacklist TRANSACTION_getAllowedNetworkTypesBitmapResponse:I = 0x2

.field static final blacklist TRANSACTION_getAvailableBandModesResponse:I = 0x3

.field static final blacklist TRANSACTION_getAvailableNetworksResponse:I = 0x4

.field static final blacklist TRANSACTION_getBarringInfoResponse:I = 0x5

.field static final blacklist TRANSACTION_getCdmaRoamingPreferenceResponse:I = 0x6

.field static final blacklist TRANSACTION_getCellInfoListResponse:I = 0x7

.field static final blacklist TRANSACTION_getDataRegistrationStateResponse:I = 0x8

.field static final blacklist TRANSACTION_getImsRegistrationStateResponse:I = 0x9

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getNetworkSelectionModeResponse:I = 0xa

.field static final blacklist TRANSACTION_getOperatorResponse:I = 0xb

.field static final blacklist TRANSACTION_getSignalStrengthResponse:I = 0xc

.field static final blacklist TRANSACTION_getSystemSelectionChannelsResponse:I = 0xd

.field static final blacklist TRANSACTION_getUsageSettingResponse:I = 0x23

.field static final blacklist TRANSACTION_getVoiceRadioTechnologyResponse:I = 0xe

.field static final blacklist TRANSACTION_getVoiceRegistrationStateResponse:I = 0xf

.field static final blacklist TRANSACTION_isCellularIdentifierTransparencyEnabledResponse:I = 0x2c

.field static final blacklist TRANSACTION_isN1ModeEnabledResponse:I = 0x2a

.field static final blacklist TRANSACTION_isNrDualConnectivityEnabledResponse:I = 0x10

.field static final blacklist TRANSACTION_isNullCipherAndIntegrityEnabledResponse:I = 0x29

.field static final blacklist TRANSACTION_isSatelliteEnabledForCarrierResponse:I = 0x32

.field static final blacklist TRANSACTION_isSecurityAlgorithmsUpdatedEnabledResponse:I = 0x2f

.field static final blacklist TRANSACTION_setAllowedNetworkTypesBitmapResponse:I = 0x11

.field static final blacklist TRANSACTION_setBandModeResponse:I = 0x12

.field static final blacklist TRANSACTION_setBarringPasswordResponse:I = 0x13

.field static final blacklist TRANSACTION_setCdmaRoamingPreferenceResponse:I = 0x14

.field static final blacklist TRANSACTION_setCellInfoListRateResponse:I = 0x15

.field static final blacklist TRANSACTION_setCellularIdentifierTransparencyEnabledResponse:I = 0x2d

.field static final blacklist TRANSACTION_setEmergencyModeResponse:I = 0x24

.field static final blacklist TRANSACTION_setIndicationFilterResponse:I = 0x16

.field static final blacklist TRANSACTION_setLinkCapacityReportingCriteriaResponse:I = 0x17

.field static final blacklist TRANSACTION_setLocationUpdatesResponse:I = 0x18

.field static final blacklist TRANSACTION_setN1ModeEnabledResponse:I = 0x2b

.field static final blacklist TRANSACTION_setNetworkSelectionModeAutomaticResponse:I = 0x19

.field static final blacklist TRANSACTION_setNetworkSelectionModeManualResponse:I = 0x1a

.field static final blacklist TRANSACTION_setNrDualConnectivityStateResponse:I = 0x1b

.field static final blacklist TRANSACTION_setNullCipherAndIntegrityEnabledResponse:I = 0x28

.field static final blacklist TRANSACTION_setSatelliteEnabledForCarrierResponse:I = 0x31

.field static final blacklist TRANSACTION_setSatellitePlmnResponse:I = 0x30

.field static final blacklist TRANSACTION_setSecurityAlgorithmsUpdatedEnabledResponse:I = 0x2e

.field static final blacklist TRANSACTION_setSignalStrengthReportingCriteriaResponse:I = 0x1c

.field static final blacklist TRANSACTION_setSuppServiceNotificationsResponse:I = 0x1d

.field static final blacklist TRANSACTION_setSystemSelectionChannelsResponse:I = 0x1e

.field static final blacklist TRANSACTION_setUsageSettingResponse:I = 0x22

.field static final blacklist TRANSACTION_startNetworkScanResponse:I = 0x1f

.field static final blacklist TRANSACTION_stopNetworkScanResponse:I = 0x20

.field static final blacklist TRANSACTION_supplyNetworkDepersonalizationResponse:I = 0x21

.field static final blacklist TRANSACTION_triggerEmergencyNetworkScanResponse:I = 0x25


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 928
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 929
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->markVintfStability()V

    .line 930
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetworkResponse;
    .registers 3

    .line 938
    if-nez p0, :cond_4

    .line 939
    const/4 p0, 0x0

    return-object p0

    .line 941
    :cond_4
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 942
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/network/IRadioNetworkResponse;

    if-eqz v1, :cond_13

    .line 943
    check-cast v0, Landroid/hardware/radio/network/IRadioNetworkResponse;

    return-object v0

    .line 945
    :cond_13
    new-instance v0, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 949
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 954
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 955
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 958
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    return v2

    .line 961
    :cond_16
    if-ne p1, v1, :cond_23

    .line 962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    return v2

    .line 966
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 969
    return v2

    .line 971
    :cond_33
    packed-switch p1, :pswitch_data_3e2

    .line 1429
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1420
    :pswitch_3b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1422
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1423
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1424
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isSatelliteEnabledForCarrierResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1425
    goto/16 :goto_3e1

    .line 1412
    :pswitch_4f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSatelliteEnabledForCarrierResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1415
    goto/16 :goto_3e1

    .line 1404
    :pswitch_5f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1405
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1406
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSatellitePlmnResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1407
    goto/16 :goto_3e1

    .line 1394
    :pswitch_6f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1396
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1398
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isSecurityAlgorithmsUpdatedEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1399
    goto/16 :goto_3e1

    .line 1386
    :pswitch_83
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1388
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSecurityAlgorithmsUpdatedEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1389
    goto/16 :goto_3e1

    .line 1378
    :pswitch_93
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1380
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setCellularIdentifierTransparencyEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1381
    goto/16 :goto_3e1

    .line 1368
    :pswitch_a3
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1370
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1372
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isCellularIdentifierTransparencyEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1373
    goto/16 :goto_3e1

    .line 1360
    :pswitch_b7
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1361
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1362
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setN1ModeEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1363
    goto/16 :goto_3e1

    .line 1350
    :pswitch_c7
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1352
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isN1ModeEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1355
    goto/16 :goto_3e1

    .line 1340
    :pswitch_db
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1342
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1343
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1344
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isNullCipherAndIntegrityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1345
    goto/16 :goto_3e1

    .line 1332
    :pswitch_ef
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1334
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setNullCipherAndIntegrityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1335
    goto/16 :goto_3e1

    .line 1324
    :pswitch_ff
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1326
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->cancelEmergencyNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1327
    goto/16 :goto_3e1

    .line 1316
    :pswitch_10f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1318
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->exitEmergencyModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1319
    goto/16 :goto_3e1

    .line 1308
    :pswitch_11f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1310
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->triggerEmergencyNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1311
    goto/16 :goto_3e1

    .line 1298
    :pswitch_12f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1300
    sget-object p3, Landroid/hardware/radio/network/EmergencyRegResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/network/EmergencyRegResult;

    .line 1301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1302
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setEmergencyModeResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/EmergencyRegResult;)V

    .line 1303
    goto/16 :goto_3e1

    .line 1288
    :pswitch_147
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1293
    goto/16 :goto_3e1

    .line 1280
    :pswitch_15b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1281
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1282
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1283
    goto/16 :goto_3e1

    .line 1270
    :pswitch_16b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1273
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1274
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1275
    goto/16 :goto_3e1

    .line 1262
    :pswitch_17f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1263
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1264
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1265
    goto/16 :goto_3e1

    .line 1254
    :pswitch_18f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1255
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1257
    goto/16 :goto_3e1

    .line 1246
    :pswitch_19f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1248
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1249
    goto/16 :goto_3e1

    .line 1238
    :pswitch_1af
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1240
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1241
    goto/16 :goto_3e1

    .line 1230
    :pswitch_1bf
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1232
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1233
    goto/16 :goto_3e1

    .line 1222
    :pswitch_1cf
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1224
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setNrDualConnectivityStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1225
    goto/16 :goto_3e1

    .line 1214
    :pswitch_1df
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1216
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1217
    goto/16 :goto_3e1

    .line 1206
    :pswitch_1ef
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1208
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1209
    goto/16 :goto_3e1

    .line 1198
    :pswitch_1ff
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1201
    goto/16 :goto_3e1

    .line 1190
    :pswitch_20f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1192
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1193
    goto/16 :goto_3e1

    .line 1182
    :pswitch_21f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1184
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1185
    goto/16 :goto_3e1

    .line 1174
    :pswitch_22f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1177
    goto/16 :goto_3e1

    .line 1166
    :pswitch_23f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1169
    goto/16 :goto_3e1

    .line 1158
    :pswitch_24f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1160
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1161
    goto/16 :goto_3e1

    .line 1150
    :pswitch_25f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1153
    goto/16 :goto_3e1

    .line 1142
    :pswitch_26f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 1145
    goto/16 :goto_3e1

    .line 1132
    :pswitch_27f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1134
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1136
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isNrDualConnectivityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1137
    goto/16 :goto_3e1

    .line 1122
    :pswitch_293
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1124
    sget-object p3, Landroid/hardware/radio/network/RegStateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/network/RegStateResult;

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V

    .line 1127
    goto/16 :goto_3e1

    .line 1112
    :pswitch_2ab
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1116
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1117
    goto/16 :goto_3e1

    .line 1102
    :pswitch_2bf
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1104
    sget-object p3, Landroid/hardware/radio/network/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1106
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/RadioAccessSpecifier;)V

    .line 1107
    goto/16 :goto_3e1

    .line 1092
    :pswitch_2d7
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1094
    sget-object p3, Landroid/hardware/radio/network/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/network/SignalStrength;

    .line 1095
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1096
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/SignalStrength;)V

    .line 1097
    goto/16 :goto_3e1

    .line 1078
    :pswitch_2ef
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1080
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1082
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1084
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1086
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    goto/16 :goto_3e1

    .line 1068
    :pswitch_30b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1070
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1071
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 1073
    goto/16 :goto_3e1

    .line 1056
    :pswitch_31f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1058
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1060
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1061
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V

    .line 1063
    goto/16 :goto_3e1

    .line 1046
    :pswitch_337
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1048
    sget-object p3, Landroid/hardware/radio/network/RegStateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/network/RegStateResult;

    .line 1049
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V

    .line 1051
    goto/16 :goto_3e1

    .line 1036
    :pswitch_34f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1038
    sget-object p3, Landroid/hardware/radio/network/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/network/CellInfo;

    .line 1039
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1040
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/CellInfo;)V

    .line 1041
    goto/16 :goto_3e1

    .line 1026
    :pswitch_367
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 1031
    goto :goto_3e1

    .line 1014
    :pswitch_37a
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1016
    sget-object p3, Landroid/hardware/radio/network/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/network/CellIdentity;

    .line 1018
    sget-object p4, Landroid/hardware/radio/network/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/hardware/radio/network/BarringInfo;

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getBarringInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V

    .line 1021
    goto :goto_3e1

    .line 1004
    :pswitch_399
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 1006
    sget-object p3, Landroid/hardware/radio/network/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/network/OperatorInfo;

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/OperatorInfo;)V

    .line 1009
    goto :goto_3e1

    .line 994
    :pswitch_3b0
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 996
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p3

    .line 997
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 999
    goto :goto_3e1

    .line 984
    :pswitch_3c3
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 987
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 988
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 989
    goto :goto_3e1

    .line 976
    :pswitch_3d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->acknowledgeRequest(I)V

    .line 979
    nop

    .line 1432
    :goto_3e1
    return v2

    :pswitch_data_3e2
    .packed-switch 0x1
        :pswitch_3d6
        :pswitch_3c3
        :pswitch_3b0
        :pswitch_399
        :pswitch_37a
        :pswitch_367
        :pswitch_34f
        :pswitch_337
        :pswitch_31f
        :pswitch_30b
        :pswitch_2ef
        :pswitch_2d7
        :pswitch_2bf
        :pswitch_2ab
        :pswitch_293
        :pswitch_27f
        :pswitch_26f
        :pswitch_25f
        :pswitch_24f
        :pswitch_23f
        :pswitch_22f
        :pswitch_21f
        :pswitch_20f
        :pswitch_1ff
        :pswitch_1ef
        :pswitch_1df
        :pswitch_1cf
        :pswitch_1bf
        :pswitch_1af
        :pswitch_19f
        :pswitch_18f
        :pswitch_17f
        :pswitch_16b
        :pswitch_15b
        :pswitch_147
        :pswitch_12f
        :pswitch_11f
        :pswitch_10f
        :pswitch_ff
        :pswitch_ef
        :pswitch_db
        :pswitch_c7
        :pswitch_b7
        :pswitch_a3
        :pswitch_93
        :pswitch_83
        :pswitch_6f
        :pswitch_5f
        :pswitch_4f
        :pswitch_3b
    .end packed-switch
.end method
