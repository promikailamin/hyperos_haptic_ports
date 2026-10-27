.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final blacklist TRANSACTION_addGnssAntennaInfoListener:I = 0x1c

.field static final greylist-max-o TRANSACTION_addGnssMeasurementsListener:I = 0x17

.field static final greylist-max-o TRANSACTION_addGnssNavigationMessageListener:I = 0x1a

.field static final blacklist TRANSACTION_addProviderRequestListener:I = 0x1e

.field static final greylist-max-o TRANSACTION_addTestProvider:I = 0x36

.field static final greylist-max-o TRANSACTION_flushGnssBatch:I = 0x22

.field static final greylist-max-o TRANSACTION_geocoderIsPresent:I = 0xc

.field static final blacklist TRANSACTION_getAdasAllowlist:I = 0x3e

.field static final greylist-max-r TRANSACTION_getAllProviders:I = 0x25

.field static final greylist-max-o TRANSACTION_getBackgroundThrottlingWhitelist:I = 0x3c

.field static final greylist-max-o TRANSACTION_getBestProvider:I = 0x27

.field static final blacklist TRANSACTION_getCurrentLocation:I = 0x2

.field static final blacklist TRANSACTION_getExtraLocationControllerPackage:I = 0x2c

.field static final greylist-max-o TRANSACTION_getFromLocation:I = 0xd

.field static final greylist-max-o TRANSACTION_getFromLocationName:I = 0xe

.field static final blacklist TRANSACTION_getGnssAntennaInfos:I = 0x12

.field static final greylist-max-o TRANSACTION_getGnssBatchSize:I = 0x20

.field static final blacklist TRANSACTION_getGnssCapabilities:I = 0xf

.field static final greylist-max-o TRANSACTION_getGnssHardwareModelName:I = 0x11

.field static final blacklist TRANSACTION_getGnssTimeMillis:I = 0x3a

.field static final greylist-max-o TRANSACTION_getGnssYearOfHardware:I = 0x10

.field static final blacklist TRANSACTION_getIgnoreSettingsAllowlist:I = 0x3d

.field static final greylist-max-o TRANSACTION_getLastLocation:I = 0x1

.field static final blacklist TRANSACTION_getProviderPackages:I = 0x2a

.field static final greylist-max-o TRANSACTION_getProviderProperties:I = 0x28

.field static final greylist-max-o TRANSACTION_getProviders:I = 0x26

.field static final blacklist TRANSACTION_hasProvider:I = 0x24

.field static final blacklist TRANSACTION_injectGnssMeasurementCorrections:I = 0x19

.field static final greylist-max-o TRANSACTION_injectLocation:I = 0x7

.field static final blacklist TRANSACTION_isAdasGnssLocationEnabledForUser:I = 0x32

.field static final blacklist TRANSACTION_isAutomotiveGnssSuspended:I = 0x34

.field static final blacklist TRANSACTION_isExtraLocationControllerPackageEnabled:I = 0x2e

.field static final greylist-max-o TRANSACTION_isLocationEnabledForUser:I = 0x30

.field static final greylist-max-o TRANSACTION_isProviderEnabledForUser:I = 0x2f

.field static final blacklist TRANSACTION_isProviderPackage:I = 0x29

.field static final blacklist TRANSACTION_registerGnssNmeaCallback:I = 0x15

.field static final greylist-max-o TRANSACTION_registerGnssStatusCallback:I = 0x13

.field static final blacklist TRANSACTION_registerLocationListener:I = 0x3

.field static final blacklist TRANSACTION_registerLocationPendingIntent:I = 0x5

.field static final greylist-max-o TRANSACTION_removeGeofence:I = 0xb

.field static final blacklist TRANSACTION_removeGnssAntennaInfoListener:I = 0x1d

.field static final greylist-max-o TRANSACTION_removeGnssMeasurementsListener:I = 0x18

.field static final greylist-max-o TRANSACTION_removeGnssNavigationMessageListener:I = 0x1b

.field static final blacklist TRANSACTION_removeProviderRequestListener:I = 0x1f

.field static final greylist-max-o TRANSACTION_removeTestProvider:I = 0x37

.field static final greylist-max-o TRANSACTION_requestGeofence:I = 0xa

.field static final blacklist TRANSACTION_requestListenerFlush:I = 0x8

.field static final blacklist TRANSACTION_requestPendingIntentFlush:I = 0x9

.field static final greylist-max-o TRANSACTION_sendExtraCommand:I = 0x3b

.field static final blacklist TRANSACTION_setAdasGnssLocationEnabledForUser:I = 0x33

.field static final blacklist TRANSACTION_setAutomotiveGnssSuspended:I = 0x35

.field static final blacklist TRANSACTION_setExtraLocationControllerPackage:I = 0x2b

.field static final blacklist TRANSACTION_setExtraLocationControllerPackageEnabled:I = 0x2d

.field static final greylist-max-o TRANSACTION_setLocationEnabledForUser:I = 0x31

.field static final greylist-max-o TRANSACTION_setTestProviderEnabled:I = 0x39

.field static final greylist-max-o TRANSACTION_setTestProviderLocation:I = 0x38

.field static final greylist-max-o TRANSACTION_startGnssBatch:I = 0x21

.field static final greylist-max-o TRANSACTION_stopGnssBatch:I = 0x23

.field static final blacklist TRANSACTION_unregisterGnssNmeaCallback:I = 0x16

.field static final greylist-max-o TRANSACTION_unregisterGnssStatusCallback:I = 0x14

.field static final blacklist TRANSACTION_unregisterLocationListener:I = 0x4

.field static final blacklist TRANSACTION_unregisterLocationPendingIntent:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 237
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 238
    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 246
    if-nez p0, :cond_4

    .line 247
    const/4 v0, 0x0

    return-object v0

    .line 249
    :cond_4
    const-string v0, "android.location.ILocationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 250
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_14

    .line 251
    move-object v1, v0

    check-cast v1, Landroid/location/ILocationManager;

    return-object v1

    .line 253
    :cond_14
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 262
    packed-switch p0, :pswitch_data_c0

    .line 514
    const/4 v0, 0x0

    return-object v0

    .line 510
    :pswitch_5
    const-string v0, "getAdasAllowlist"

    return-object v0

    .line 506
    :pswitch_8
    const-string v0, "getIgnoreSettingsAllowlist"

    return-object v0

    .line 502
    :pswitch_b
    const-string v0, "getBackgroundThrottlingWhitelist"

    return-object v0

    .line 498
    :pswitch_e
    const-string v0, "sendExtraCommand"

    return-object v0

    .line 494
    :pswitch_11
    const-string v0, "getGnssTimeMillis"

    return-object v0

    .line 490
    :pswitch_14
    const-string v0, "setTestProviderEnabled"

    return-object v0

    .line 486
    :pswitch_17
    const-string v0, "setTestProviderLocation"

    return-object v0

    .line 482
    :pswitch_1a
    const-string v0, "removeTestProvider"

    return-object v0

    .line 478
    :pswitch_1d
    const-string v0, "addTestProvider"

    return-object v0

    .line 474
    :pswitch_20
    const-string v0, "setAutomotiveGnssSuspended"

    return-object v0

    .line 470
    :pswitch_23
    const-string v0, "isAutomotiveGnssSuspended"

    return-object v0

    .line 466
    :pswitch_26
    const-string v0, "setAdasGnssLocationEnabledForUser"

    return-object v0

    .line 462
    :pswitch_29
    const-string v0, "isAdasGnssLocationEnabledForUser"

    return-object v0

    .line 458
    :pswitch_2c
    const-string v0, "setLocationEnabledForUser"

    return-object v0

    .line 454
    :pswitch_2f
    const-string v0, "isLocationEnabledForUser"

    return-object v0

    .line 450
    :pswitch_32
    const-string v0, "isProviderEnabledForUser"

    return-object v0

    .line 446
    :pswitch_35
    const-string v0, "isExtraLocationControllerPackageEnabled"

    return-object v0

    .line 442
    :pswitch_38
    const-string v0, "setExtraLocationControllerPackageEnabled"

    return-object v0

    .line 438
    :pswitch_3b
    const-string v0, "getExtraLocationControllerPackage"

    return-object v0

    .line 434
    :pswitch_3e
    const-string v0, "setExtraLocationControllerPackage"

    return-object v0

    .line 430
    :pswitch_41
    const-string v0, "getProviderPackages"

    return-object v0

    .line 426
    :pswitch_44
    const-string v0, "isProviderPackage"

    return-object v0

    .line 422
    :pswitch_47
    const-string v0, "getProviderProperties"

    return-object v0

    .line 418
    :pswitch_4a
    const-string v0, "getBestProvider"

    return-object v0

    .line 414
    :pswitch_4d
    const-string v0, "getProviders"

    return-object v0

    .line 410
    :pswitch_50
    const-string v0, "getAllProviders"

    return-object v0

    .line 406
    :pswitch_53
    const-string v0, "hasProvider"

    return-object v0

    .line 402
    :pswitch_56
    const-string v0, "stopGnssBatch"

    return-object v0

    .line 398
    :pswitch_59
    const-string v0, "flushGnssBatch"

    return-object v0

    .line 394
    :pswitch_5c
    const-string v0, "startGnssBatch"

    return-object v0

    .line 390
    :pswitch_5f
    const-string v0, "getGnssBatchSize"

    return-object v0

    .line 386
    :pswitch_62
    const-string v0, "removeProviderRequestListener"

    return-object v0

    .line 382
    :pswitch_65
    const-string v0, "addProviderRequestListener"

    return-object v0

    .line 378
    :pswitch_68
    const-string v0, "removeGnssAntennaInfoListener"

    return-object v0

    .line 374
    :pswitch_6b
    const-string v0, "addGnssAntennaInfoListener"

    return-object v0

    .line 370
    :pswitch_6e
    const-string v0, "removeGnssNavigationMessageListener"

    return-object v0

    .line 366
    :pswitch_71
    const-string v0, "addGnssNavigationMessageListener"

    return-object v0

    .line 362
    :pswitch_74
    const-string v0, "injectGnssMeasurementCorrections"

    return-object v0

    .line 358
    :pswitch_77
    const-string v0, "removeGnssMeasurementsListener"

    return-object v0

    .line 354
    :pswitch_7a
    const-string v0, "addGnssMeasurementsListener"

    return-object v0

    .line 350
    :pswitch_7d
    const-string v0, "unregisterGnssNmeaCallback"

    return-object v0

    .line 346
    :pswitch_80
    const-string v0, "registerGnssNmeaCallback"

    return-object v0

    .line 342
    :pswitch_83
    const-string v0, "unregisterGnssStatusCallback"

    return-object v0

    .line 338
    :pswitch_86
    const-string v0, "registerGnssStatusCallback"

    return-object v0

    .line 334
    :pswitch_89
    const-string v0, "getGnssAntennaInfos"

    return-object v0

    .line 330
    :pswitch_8c
    const-string v0, "getGnssHardwareModelName"

    return-object v0

    .line 326
    :pswitch_8f
    const-string v0, "getGnssYearOfHardware"

    return-object v0

    .line 322
    :pswitch_92
    const-string v0, "getGnssCapabilities"

    return-object v0

    .line 318
    :pswitch_95
    const-string v0, "getFromLocationName"

    return-object v0

    .line 314
    :pswitch_98
    const-string v0, "getFromLocation"

    return-object v0

    .line 310
    :pswitch_9b
    const-string v0, "geocoderIsPresent"

    return-object v0

    .line 306
    :pswitch_9e
    const-string v0, "removeGeofence"

    return-object v0

    .line 302
    :pswitch_a1
    const-string v0, "requestGeofence"

    return-object v0

    .line 298
    :pswitch_a4
    const-string v0, "requestPendingIntentFlush"

    return-object v0

    .line 294
    :pswitch_a7
    const-string v0, "requestListenerFlush"

    return-object v0

    .line 290
    :pswitch_aa
    const-string v0, "injectLocation"

    return-object v0

    .line 286
    :pswitch_ad
    const-string v0, "unregisterLocationPendingIntent"

    return-object v0

    .line 282
    :pswitch_b0
    const-string v0, "registerLocationPendingIntent"

    return-object v0

    .line 278
    :pswitch_b3
    const-string v0, "unregisterLocationListener"

    return-object v0

    .line 274
    :pswitch_b6
    const-string v0, "registerLocationListener"

    return-object v0

    .line 270
    :pswitch_b9
    const-string v0, "getCurrentLocation"

    return-object v0

    .line 266
    :pswitch_bc
    const-string v0, "getLastLocation"

    return-object v0

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
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

    .line 257
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2385
    const/16 v0, 0x3d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 521
    invoke-static {p1}, Landroid/location/ILocationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.location.ILocationManager"

    .line 526
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_15

    const v0, 0xffffff

    if-gt v14, v0, :cond_15

    .line 527
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    :cond_15
    packed-switch v14, :pswitch_data_6d8

    .line 537
    packed-switch v14, :pswitch_data_6de

    .line 1229
    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 533
    :pswitch_21
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    return v10

    .line 1222
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object v0

    .line 1223
    .local v0, "_result":Landroid/os/PackageTagsList;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1225
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1215
    .end local v0    # "_result":Landroid/os/PackageTagsList;
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v0

    .line 1216
    .restart local v0    # "_result":Landroid/os/PackageTagsList;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1218
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1208
    .end local v0    # "_result":Landroid/os/PackageTagsList;
    :pswitch_45
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getBackgroundThrottlingWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 1209
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1211
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1195
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1200
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1201
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1204
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1187
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_77
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v0

    .line 1188
    .local v0, "_result":Landroid/location/LocationTime;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1190
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1173
    .end local v0    # "_result":Landroid/location/LocationTime;
    :pswitch_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1177
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1179
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1180
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1158
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 1162
    .local v1, "_arg1":Landroid/location/Location;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1164
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1165
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1166
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1145
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/location/Location;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1150
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1128
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1130
    .local v6, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/location/provider/ProviderProperties;

    .line 1132
    .local v7, "_arg1":Landroid/location/provider/ProviderProperties;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 1134
    .local v8, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1136
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1137
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1138
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1119
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/location/provider/ProviderProperties;
    .end local v8    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1120
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1121
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->setAutomotiveGnssSuspended(Z)V

    .line 1122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1111
    .end local v0    # "_arg0":Z
    :pswitch_127
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->isAutomotiveGnssSuspended()Z

    move-result v0

    .line 1112
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1114
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1101
    .end local v0    # "_result":Z
    :pswitch_137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1103
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1104
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->setAdasGnssLocationEnabledForUser(ZI)V

    .line 1106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1091
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_14e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1092
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->isAdasGnssLocationEnabledForUser(I)Z

    move-result v1

    .line 1094
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1096
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1080
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1082
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1083
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->setLocationEnabledForUser(ZI)V

    .line 1085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1070
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_17c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1071
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->isLocationEnabledForUser(I)Z

    move-result v1

    .line 1073
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1075
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1058
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1061
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v2

    .line 1063
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1065
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1050
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1ae
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->isExtraLocationControllerPackageEnabled()Z

    move-result v0

    .line 1051
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1053
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1042
    .end local v0    # "_result":Z
    :pswitch_1be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1043
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackageEnabled(Z)V

    .line 1045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1034
    .end local v0    # "_arg0":Z
    :pswitch_1d1
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getExtraLocationControllerPackage()Ljava/lang/String;

    move-result-object v0

    .line 1035
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1037
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1026
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackage(Ljava/lang/String;)V

    .line 1029
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1016
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->getProviderPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1019
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1021
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 1002
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_20b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1004
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1006
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1009
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1011
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 992
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_22a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 993
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;

    move-result-object v1

    .line 995
    .local v1, "_result":Landroid/location/provider/ProviderProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 997
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 980
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/location/provider/ProviderProperties;
    :pswitch_241
    sget-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    .line 982
    .local v0, "_arg0":Landroid/location/Criteria;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 983
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 985
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 987
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 968
    .end local v0    # "_arg0":Landroid/location/Criteria;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_260
    sget-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    .line 970
    .restart local v0    # "_arg0":Landroid/location/Criteria;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 971
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 973
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 975
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 960
    .end local v0    # "_arg0":Landroid/location/Criteria;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_27f
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 961
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 963
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 951
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_28f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->hasProvider(Ljava/lang/String;)Z

    move-result v1

    .line 954
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 956
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 944
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_2a6
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->stopGnssBatch()V

    .line 945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 938
    :pswitch_2b2
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->flushGnssBatch()V

    .line 939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 922
    :pswitch_2be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 924
    .local v7, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v9

    .line 926
    .local v9, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 928
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 930
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 931
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 932
    move-object/from16 v0, p0

    move-wide v1, v7

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->startGnssBatch(JLandroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 914
    .end local v7    # "_arg0":J
    .end local v9    # "_arg1":Landroid/location/ILocationListener;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/lang/String;
    :pswitch_2ef
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssBatchSize()I

    move-result v0

    .line 915
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 906
    .end local v0    # "_result":I
    :pswitch_2ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/provider/IProviderRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IProviderRequestListener;

    move-result-object v0

    .line 907
    .local v0, "_arg0":Landroid/location/provider/IProviderRequestListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    .line 909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 897
    .end local v0    # "_arg0":Landroid/location/provider/IProviderRequestListener;
    :pswitch_316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/provider/IProviderRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IProviderRequestListener;

    move-result-object v0

    .line 898
    .restart local v0    # "_arg0":Landroid/location/provider/IProviderRequestListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 888
    .end local v0    # "_arg0":Landroid/location/provider/IProviderRequestListener;
    :pswitch_32d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssAntennaInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssAntennaInfoListener;

    move-result-object v0

    .line 889
    .local v0, "_arg0":Landroid/location/IGnssAntennaInfoListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 873
    .end local v0    # "_arg0":Landroid/location/IGnssAntennaInfoListener;
    :pswitch_344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssAntennaInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssAntennaInfoListener;

    move-result-object v0

    .line 875
    .restart local v0    # "_arg0":Landroid/location/IGnssAntennaInfoListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 880
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 864
    .end local v0    # "_arg0":Landroid/location/IGnssAntennaInfoListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v0

    .line 865
    .local v0, "_arg0":Landroid/location/IGnssNavigationMessageListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    .line 867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 849
    .end local v0    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    :pswitch_37e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v0

    .line 851
    .restart local v0    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 853
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 855
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 856
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 840
    .end local v0    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_3a1
    sget-object v0, Landroid/location/GnssMeasurementCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssMeasurementCorrections;

    .line 841
    .local v0, "_arg0":Landroid/location/GnssMeasurementCorrections;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    .line 843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 831
    .end local v0    # "_arg0":Landroid/location/GnssMeasurementCorrections;
    :pswitch_3b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v0

    .line 832
    .local v0, "_arg0":Landroid/location/IGnssMeasurementsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    .line 834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 814
    .end local v0    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    :pswitch_3cf
    sget-object v0, Landroid/location/GnssMeasurementRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/location/GnssMeasurementRequest;

    .line 816
    .local v6, "_arg0":Landroid/location/GnssMeasurementRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v7

    .line 818
    .local v7, "_arg1":Landroid/location/IGnssMeasurementsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 820
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 822
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 823
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 805
    .end local v6    # "_arg0":Landroid/location/GnssMeasurementRequest;
    .end local v7    # "_arg1":Landroid/location/IGnssMeasurementsListener;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNmeaListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNmeaListener;

    move-result-object v0

    .line 806
    .local v0, "_arg0":Landroid/location/IGnssNmeaListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V

    .line 808
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 790
    .end local v0    # "_arg0":Landroid/location/IGnssNmeaListener;
    :pswitch_41a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNmeaListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNmeaListener;

    move-result-object v0

    .line 792
    .restart local v0    # "_arg0":Landroid/location/IGnssNmeaListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 794
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 796
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 797
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 781
    .end local v0    # "_arg0":Landroid/location/IGnssNmeaListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_43d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v0

    .line 782
    .local v0, "_arg0":Landroid/location/IGnssStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 766
    .end local v0    # "_arg0":Landroid/location/IGnssStatusListener;
    :pswitch_454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v0

    .line 768
    .restart local v0    # "_arg0":Landroid/location/IGnssStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 770
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 772
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 773
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 758
    .end local v0    # "_arg0":Landroid/location/IGnssStatusListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_477
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssAntennaInfos()Ljava/util/List;

    move-result-object v0

    .line 759
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 761
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 751
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    :pswitch_487
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 754
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 744
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_497
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssYearOfHardware()I

    move-result v0

    .line 745
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 737
    .end local v0    # "_result":I
    :pswitch_4a7
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    .line 738
    .local v0, "_result":Landroid/location/GnssCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 740
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_6d6

    .line 715
    .end local v0    # "_result":Landroid/location/GnssCapabilities;
    :pswitch_4b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 717
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 719
    .local v17, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 721
    .local v19, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    .line 723
    .local v21, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v23

    .line 725
    .local v23, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 727
    .local v25, "_arg5":I
    sget-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/location/GeocoderParams;

    .line 729
    .local v26, "_arg6":Landroid/location/GeocoderParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGeocodeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeListener;

    move-result-object v27

    .line 730
    .local v27, "_arg7":Landroid/location/IGeocodeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    move v14, v10

    move/from16 v10, v25

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    move-object v14, v12

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    const/4 v5, 0x1

    goto/16 :goto_6d6

    .line 698
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":D
    .end local v19    # "_arg2":D
    .end local v21    # "_arg3":D
    .end local v23    # "_arg4":D
    .end local v25    # "_arg5":I
    .end local v26    # "_arg6":Landroid/location/GeocoderParams;
    .end local v27    # "_arg7":Landroid/location/IGeocodeListener;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_503
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 700
    .local v8, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .line 702
    .local v10, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 704
    .local v12, "_arg2":I
    sget-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/location/GeocoderParams;

    .line 706
    .local v16, "_arg3":Landroid/location/GeocoderParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGeocodeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeListener;

    move-result-object v17

    .line 707
    .local v17, "_arg4":Landroid/location/IGeocodeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v10

    move v5, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    const/4 v5, 0x1

    goto/16 :goto_6d6

    .line 690
    .end local v8    # "_arg0":D
    .end local v10    # "_arg1":D
    .end local v12    # "_arg2":I
    .end local v16    # "_arg3":Landroid/location/GeocoderParams;
    .end local v17    # "_arg4":Landroid/location/IGeocodeListener;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_539
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v0

    .line 691
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 693
    const/4 v5, 0x1

    goto/16 :goto_6d6

    .line 682
    .end local v0    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_549
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 683
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/app/PendingIntent;)V

    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    const/4 v5, 0x1

    goto/16 :goto_6d6

    .line 667
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_560
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geofence;

    .line 669
    .local v0, "_arg0":Landroid/location/Geofence;
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 671
    .local v1, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 673
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 674
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v5, 0x1

    goto/16 :goto_6d6

    .line 654
    .end local v0    # "_arg0":Landroid/location/Geofence;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_587
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 658
    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 659
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->requestPendingIntentFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    const/4 v5, 0x1

    goto/16 :goto_6d6

    .line 641
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5a6
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 643
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v1

    .line 645
    .local v1, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 646
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V

    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    const/4 v5, 0x1

    goto/16 :goto_6d6

    .line 632
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/location/ILocationListener;
    .end local v2    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5c5
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 633
    .local v0, "_arg0":Landroid/location/Location;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->injectLocation(Landroid/location/Location;)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    const/4 v5, 0x1

    goto/16 :goto_6d6

    .line 623
    .end local v0    # "_arg0":Landroid/location/Location;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5dc
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 624
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterLocationPendingIntent(Landroid/app/PendingIntent;)V

    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    const/4 v5, 0x1

    goto/16 :goto_6d6

    .line 606
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5f3
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 608
    .local v6, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/location/LocationRequest;

    .line 610
    .local v7, "_arg1":Landroid/location/LocationRequest;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    .line 612
    .local v8, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 614
    .restart local v9    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 615
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->registerLocationPendingIntent(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/4 v5, 0x1

    goto/16 :goto_6d6

    .line 597
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/location/LocationRequest;
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_627
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v0

    .line 598
    .local v0, "_arg0":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterLocationListener(Landroid/location/ILocationListener;)V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    const/4 v5, 0x1

    goto/16 :goto_6d6

    .line 578
    .end local v0    # "_arg0":Landroid/location/ILocationListener;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_63e
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 580
    .local v7, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/location/LocationRequest;

    .line 582
    .local v8, "_arg1":Landroid/location/LocationRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v9

    .line 584
    .local v9, "_arg2":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 586
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 588
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 589
    .local v12, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    const/4 v5, 0x1

    goto :goto_6d6

    .line 558
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/location/LocationRequest;
    .end local v9    # "_arg2":Landroid/location/ILocationListener;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_675
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 560
    .restart local v7    # "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/location/LocationRequest;

    .line 562
    .restart local v8    # "_arg1":Landroid/location/LocationRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationCallback;

    move-result-object v9

    .line 564
    .local v9, "_arg2":Landroid/location/ILocationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 566
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 568
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 569
    .restart local v12    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 571
    .local v0, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 573
    const/4 v5, 0x1

    goto :goto_6d6

    .line 542
    .end local v0    # "_result":Landroid/os/ICancellationSignal;
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/location/LocationRequest;
    .end local v9    # "_arg2":Landroid/location/ILocationCallback;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_6b0
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/location/LastLocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LastLocationRequest;

    .line 546
    .local v1, "_arg1":Landroid/location/LastLocationRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 549
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 551
    .local v4, "_result":Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 553
    nop

    .line 1232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/location/LastLocationRequest;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Landroid/location/Location;
    :goto_6d6
    return v5

    nop

    :pswitch_data_6d8
    .packed-switch 0x5f4e5446
        :pswitch_21
    .end packed-switch

    :pswitch_data_6de
    .packed-switch 0x1
        :pswitch_6b0
        :pswitch_675
        :pswitch_63e
        :pswitch_627
        :pswitch_5f3
        :pswitch_5dc
        :pswitch_5c5
        :pswitch_5a6
        :pswitch_587
        :pswitch_560
        :pswitch_549
        :pswitch_539
        :pswitch_503
        :pswitch_4b7
        :pswitch_4a7
        :pswitch_497
        :pswitch_487
        :pswitch_477
        :pswitch_454
        :pswitch_43d
        :pswitch_41a
        :pswitch_403
        :pswitch_3cf
        :pswitch_3b8
        :pswitch_3a1
        :pswitch_37e
        :pswitch_367
        :pswitch_344
        :pswitch_32d
        :pswitch_316
        :pswitch_2ff
        :pswitch_2ef
        :pswitch_2be
        :pswitch_2b2
        :pswitch_2a6
        :pswitch_28f
        :pswitch_27f
        :pswitch_260
        :pswitch_241
        :pswitch_22a
        :pswitch_20b
        :pswitch_1f4
        :pswitch_1e1
        :pswitch_1d1
        :pswitch_1be
        :pswitch_1ae
        :pswitch_193
        :pswitch_17c
        :pswitch_165
        :pswitch_14e
        :pswitch_137
        :pswitch_127
        :pswitch_114
        :pswitch_e4
        :pswitch_c9
        :pswitch_a6
        :pswitch_87
        :pswitch_77
        :pswitch_55
        :pswitch_45
        :pswitch_35
        :pswitch_25
    .end packed-switch
.end method
