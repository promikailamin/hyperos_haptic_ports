.class public abstract Landroid/hardware/radio/network/IRadioNetwork$Stub;
.super Landroid/os/Binder;
.source "IRadioNetwork.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelEmergencyNetworkScan:I = 0x27

.field static final blacklist TRANSACTION_exitEmergencyMode:I = 0x28

.field static final blacklist TRANSACTION_getAllowedNetworkTypesBitmap:I = 0x1

.field static final blacklist TRANSACTION_getAvailableBandModes:I = 0x2

.field static final blacklist TRANSACTION_getAvailableNetworks:I = 0x3

.field static final blacklist TRANSACTION_getBarringInfo:I = 0x4

.field static final blacklist TRANSACTION_getCdmaRoamingPreference:I = 0x5

.field static final blacklist TRANSACTION_getCellInfoList:I = 0x6

.field static final blacklist TRANSACTION_getDataRegistrationState:I = 0x7

.field static final blacklist TRANSACTION_getImsRegistrationState:I = 0x8

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getNetworkSelectionMode:I = 0x9

.field static final blacklist TRANSACTION_getOperator:I = 0xa

.field static final blacklist TRANSACTION_getSignalStrength:I = 0xb

.field static final blacklist TRANSACTION_getSystemSelectionChannels:I = 0xc

.field static final blacklist TRANSACTION_getUsageSetting:I = 0x24

.field static final blacklist TRANSACTION_getVoiceRadioTechnology:I = 0xd

.field static final blacklist TRANSACTION_getVoiceRegistrationState:I = 0xe

.field static final blacklist TRANSACTION_isCellularIdentifierTransparencyEnabled:I = 0x2d

.field static final blacklist TRANSACTION_isN1ModeEnabled:I = 0x2b

.field static final blacklist TRANSACTION_isNrDualConnectivityEnabled:I = 0xf

.field static final blacklist TRANSACTION_isNullCipherAndIntegrityEnabled:I = 0x2a

.field static final blacklist TRANSACTION_isSatelliteEnabledForCarrier:I = 0x33

.field static final blacklist TRANSACTION_isSecurityAlgorithmsUpdatedEnabled:I = 0x30

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0x10

.field static final blacklist TRANSACTION_setAllowedNetworkTypesBitmap:I = 0x11

.field static final blacklist TRANSACTION_setBandMode:I = 0x12

.field static final blacklist TRANSACTION_setBarringPassword:I = 0x13

.field static final blacklist TRANSACTION_setCdmaRoamingPreference:I = 0x14

.field static final blacklist TRANSACTION_setCellInfoListRate:I = 0x15

.field static final blacklist TRANSACTION_setCellularIdentifierTransparencyEnabled:I = 0x2e

.field static final blacklist TRANSACTION_setEmergencyMode:I = 0x25

.field static final blacklist TRANSACTION_setIndicationFilter:I = 0x16

.field static final blacklist TRANSACTION_setLinkCapacityReportingCriteria:I = 0x17

.field static final blacklist TRANSACTION_setLocationUpdates:I = 0x18

.field static final blacklist TRANSACTION_setN1ModeEnabled:I = 0x2c

.field static final blacklist TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x19

.field static final blacklist TRANSACTION_setNetworkSelectionModeManual:I = 0x1a

.field static final blacklist TRANSACTION_setNrDualConnectivityState:I = 0x1b

.field static final blacklist TRANSACTION_setNullCipherAndIntegrityEnabled:I = 0x29

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x1c

.field static final blacklist TRANSACTION_setSatelliteEnabledForCarrier:I = 0x32

.field static final blacklist TRANSACTION_setSatellitePlmn:I = 0x31

.field static final blacklist TRANSACTION_setSecurityAlgorithmsUpdatedEnabled:I = 0x2f

.field static final blacklist TRANSACTION_setSignalStrengthReportingCriteria:I = 0x1d

.field static final blacklist TRANSACTION_setSuppServiceNotifications:I = 0x1e

.field static final blacklist TRANSACTION_setSystemSelectionChannels:I = 0x1f

.field static final blacklist TRANSACTION_setUsageSetting:I = 0x23

.field static final blacklist TRANSACTION_startNetworkScan:I = 0x20

.field static final blacklist TRANSACTION_stopNetworkScan:I = 0x21

.field static final blacklist TRANSACTION_supplyNetworkDepersonalization:I = 0x22

.field static final blacklist TRANSACTION_triggerEmergencyNetworkScan:I = 0x26


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 832
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 833
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->markVintfStability()V

    .line 834
    sget-object v0, Landroid/hardware/radio/network/IRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetwork;
    .registers 3

    .line 842
    if-nez p0, :cond_4

    .line 843
    const/4 p0, 0x0

    return-object p0

    .line 845
    :cond_4
    sget-object v0, Landroid/hardware/radio/network/IRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/network/IRadioNetwork;

    if-eqz v1, :cond_13

    .line 847
    check-cast v0, Landroid/hardware/radio/network/IRadioNetwork;

    return-object v0

    .line 849
    :cond_13
    new-instance v0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 853
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 857
    sget-object v0, Landroid/hardware/radio/network/IRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 858
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 859
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 862
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 863
    return v2

    .line 865
    :cond_16
    if-ne p1, v1, :cond_23

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    return v2

    .line 870
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 871
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 873
    return v2

    .line 875
    :cond_33
    packed-switch p1, :pswitch_data_352

    .line 1356
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1349
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1350
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1351
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->isSatelliteEnabledForCarrier(I)V

    .line 1352
    goto/16 :goto_350

    .line 1339
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1341
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1342
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1343
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setSatelliteEnabledForCarrier(IZ)V

    .line 1344
    goto/16 :goto_350

    .line 1327
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1329
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 1331
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 1332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1333
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setSatellitePlmn(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1334
    goto/16 :goto_350

    .line 1319
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1321
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->isSecurityAlgorithmsUpdatedEnabled(I)V

    .line 1322
    goto/16 :goto_350

    .line 1309
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1311
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1313
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setSecurityAlgorithmsUpdatedEnabled(IZ)V

    .line 1314
    goto/16 :goto_350

    .line 1299
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1301
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1303
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setCellularIdentifierTransparencyEnabled(IZ)V

    .line 1304
    goto/16 :goto_350

    .line 1291
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1293
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->isCellularIdentifierTransparencyEnabled(I)V

    .line 1294
    goto/16 :goto_350

    .line 1281
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1283
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1284
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1285
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setN1ModeEnabled(IZ)V

    .line 1286
    goto/16 :goto_350

    .line 1273
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->isN1ModeEnabled(I)V

    .line 1276
    goto/16 :goto_350

    .line 1265
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1266
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1267
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->isNullCipherAndIntegrityEnabled(I)V

    .line 1268
    goto/16 :goto_350

    .line 1255
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1257
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setNullCipherAndIntegrityEnabled(IZ)V

    .line 1260
    goto/16 :goto_350

    .line 1247
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1249
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->exitEmergencyMode(I)V

    .line 1250
    goto/16 :goto_350

    .line 1237
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1239
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1241
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->cancelEmergencyNetworkScan(IZ)V

    .line 1242
    goto/16 :goto_350

    .line 1227
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1229
    sget-object p3, Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;

    .line 1230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1231
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->triggerEmergencyNetworkScan(ILandroid/hardware/radio/network/EmergencyNetworkScanTrigger;)V

    .line 1232
    goto/16 :goto_350

    .line 1217
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1221
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setEmergencyMode(II)V

    .line 1222
    goto/16 :goto_350

    .line 1209
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getUsageSetting(I)V

    .line 1212
    goto/16 :goto_350

    .line 1199
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1203
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setUsageSetting(II)V

    .line 1204
    goto/16 :goto_350

    .line 1189
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1193
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 1194
    goto/16 :goto_350

    .line 1181
    :pswitch_148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1183
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->stopNetworkScan(I)V

    .line 1184
    goto/16 :goto_350

    .line 1171
    :pswitch_154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1173
    sget-object p3, Landroid/hardware/radio/network/NetworkScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/network/NetworkScanRequest;

    .line 1174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->startNetworkScan(ILandroid/hardware/radio/network/NetworkScanRequest;)V

    .line 1176
    goto/16 :goto_350

    .line 1159
    :pswitch_168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1161
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1163
    sget-object p4, Landroid/hardware/radio/network/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setSystemSelectionChannels(IZ[Landroid/hardware/radio/network/RadioAccessSpecifier;)V

    .line 1166
    goto/16 :goto_350

    .line 1149
    :pswitch_180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1151
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1153
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setSuppServiceNotifications(IZ)V

    .line 1154
    goto/16 :goto_350

    .line 1139
    :pswitch_190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1141
    sget-object p3, Landroid/hardware/radio/network/SignalThresholdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/network/SignalThresholdInfo;

    .line 1142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setSignalStrengthReportingCriteria(I[Landroid/hardware/radio/network/SignalThresholdInfo;)V

    .line 1144
    goto/16 :goto_350

    .line 1129
    :pswitch_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetworkResponse;

    move-result-object p1

    .line 1131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetworkIndication;

    move-result-object p3

    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setResponseFunctions(Landroid/hardware/radio/network/IRadioNetworkResponse;Landroid/hardware/radio/network/IRadioNetworkIndication;)V

    .line 1134
    goto/16 :goto_350

    .line 1119
    :pswitch_1bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1121
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p3

    .line 1122
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1123
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setNrDualConnectivityState(IB)V

    .line 1124
    goto/16 :goto_350

    .line 1107
    :pswitch_1cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1112
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;I)V

    .line 1114
    goto/16 :goto_350

    .line 1099
    :pswitch_1e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1101
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 1102
    goto/16 :goto_350

    .line 1089
    :pswitch_1ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1091
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1092
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setLocationUpdates(IZ)V

    .line 1094
    goto/16 :goto_350

    .line 1069
    :pswitch_1fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1071
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1077
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 1081
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1082
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1083
    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setLinkCapacityReportingCriteria(IIII[I[II)V

    .line 1084
    goto/16 :goto_350

    .line 1059
    :pswitch_221
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1061
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1062
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setIndicationFilter(II)V

    .line 1064
    goto/16 :goto_350

    .line 1049
    :pswitch_232
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1051
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1052
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setCellInfoListRate(II)V

    .line 1054
    goto/16 :goto_350

    .line 1039
    :pswitch_243
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1041
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1042
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setCdmaRoamingPreference(II)V

    .line 1044
    goto/16 :goto_350

    .line 1025
    :pswitch_254
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    goto/16 :goto_350

    .line 1015
    :pswitch_26d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setBandMode(II)V

    .line 1020
    goto/16 :goto_350

    .line 1005
    :pswitch_27e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1008
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setAllowedNetworkTypesBitmap(II)V

    .line 1010
    goto/16 :goto_350

    .line 999
    :pswitch_28f
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->responseAcknowledgement()V

    .line 1000
    goto/16 :goto_350

    .line 992
    :pswitch_295
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->isNrDualConnectivityEnabled(I)V

    .line 995
    goto/16 :goto_350

    .line 984
    :pswitch_2a2
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 985
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getVoiceRegistrationState(I)V

    .line 987
    goto/16 :goto_350

    .line 976
    :pswitch_2af
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getVoiceRadioTechnology(I)V

    .line 979
    goto/16 :goto_350

    .line 968
    :pswitch_2bc
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getSystemSelectionChannels(I)V

    .line 971
    goto/16 :goto_350

    .line 960
    :pswitch_2c9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 962
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getSignalStrength(I)V

    .line 963
    goto/16 :goto_350

    .line 952
    :pswitch_2d6
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 954
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getOperator(I)V

    .line 955
    goto/16 :goto_350

    .line 944
    :pswitch_2e3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getNetworkSelectionMode(I)V

    .line 947
    goto/16 :goto_350

    .line 936
    :pswitch_2f0
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getImsRegistrationState(I)V

    .line 939
    goto :goto_350

    .line 928
    :pswitch_2fc
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getDataRegistrationState(I)V

    .line 931
    goto :goto_350

    .line 920
    :pswitch_308
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getCellInfoList(I)V

    .line 923
    goto :goto_350

    .line 912
    :pswitch_314
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 913
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getCdmaRoamingPreference(I)V

    .line 915
    goto :goto_350

    .line 904
    :pswitch_320
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getBarringInfo(I)V

    .line 907
    goto :goto_350

    .line 896
    :pswitch_32c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getAvailableNetworks(I)V

    .line 899
    goto :goto_350

    .line 888
    :pswitch_338
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getAvailableBandModes(I)V

    .line 891
    goto :goto_350

    .line 880
    :pswitch_344
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getAllowedNetworkTypesBitmap(I)V

    .line 883
    nop

    .line 1359
    :goto_350
    return v2

    nop

    :pswitch_data_352
    .packed-switch 0x1
        :pswitch_344
        :pswitch_338
        :pswitch_32c
        :pswitch_320
        :pswitch_314
        :pswitch_308
        :pswitch_2fc
        :pswitch_2f0
        :pswitch_2e3
        :pswitch_2d6
        :pswitch_2c9
        :pswitch_2bc
        :pswitch_2af
        :pswitch_2a2
        :pswitch_295
        :pswitch_28f
        :pswitch_27e
        :pswitch_26d
        :pswitch_254
        :pswitch_243
        :pswitch_232
        :pswitch_221
        :pswitch_1fc
        :pswitch_1ec
        :pswitch_1e0
        :pswitch_1cc
        :pswitch_1bc
        :pswitch_1a4
        :pswitch_190
        :pswitch_180
        :pswitch_168
        :pswitch_154
        :pswitch_148
        :pswitch_138
        :pswitch_128
        :pswitch_11c
        :pswitch_10c
        :pswitch_f8
        :pswitch_e8
        :pswitch_dc
        :pswitch_cc
        :pswitch_c0
        :pswitch_b4
        :pswitch_a4
        :pswitch_98
        :pswitch_88
        :pswitch_78
        :pswitch_6c
        :pswitch_58
        :pswitch_48
        :pswitch_3c
    .end packed-switch
.end method
