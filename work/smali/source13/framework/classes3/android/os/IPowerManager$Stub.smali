.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final greylist-max-r TRANSACTION_acquireWakeLock:I = 0x1

.field static final blacklist TRANSACTION_acquireWakeLockAsync:I = 0x2c

.field static final greylist-max-o TRANSACTION_acquireWakeLockWithUid:I = 0x2

.field static final greylist-max-o TRANSACTION_boostScreenBrightness:I = 0x2b

.field static final greylist-max-o TRANSACTION_crash:I = 0x27

.field static final blacklist TRANSACTION_forceLowPowerStandbyActive:I = 0x23

.field static final blacklist TRANSACTION_forceSuspend:I = 0x37

.field static final blacklist TRANSACTION_getBatteryDischargePrediction:I = 0x1b

.field static final blacklist TRANSACTION_getBrightnessConstraint:I = 0xf

.field static final blacklist TRANSACTION_getFullPowerSavePolicy:I = 0x14

.field static final greylist-max-o TRANSACTION_getLastShutdownReason:I = 0x28

.field static final blacklist TRANSACTION_getLastSleepReason:I = 0x29

.field static final blacklist TRANSACTION_getPowerSaveModeTrigger:I = 0x19

.field static final greylist-max-o TRANSACTION_getPowerSaveState:I = 0x12

.field static final greylist-max-r TRANSACTION_goToSleep:I = 0xd

.field static final blacklist TRANSACTION_isAmbientDisplayAvailable:I = 0x32

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressed:I = 0x35

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressedForToken:I = 0x34

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressedForTokenByApp:I = 0x36

.field static final blacklist TRANSACTION_isBatteryDischargePredictionPersonalized:I = 0x1c

.field static final greylist-max-o TRANSACTION_isDeviceIdleMode:I = 0x1d

.field static final greylist-max-o TRANSACTION_isInteractive:I = 0x10

.field static final greylist-max-o TRANSACTION_isLightDeviceIdleMode:I = 0x1e

.field static final blacklist TRANSACTION_isLowPowerStandbyEnabled:I = 0x20

.field static final blacklist TRANSACTION_isLowPowerStandbySupported:I = 0x1f

.field static final greylist-max-o TRANSACTION_isPowerSaveMode:I = 0x11

.field static final greylist-max-o TRANSACTION_isScreenBrightnessBoosted:I = 0x2f

.field static final greylist-max-o TRANSACTION_isWakeLockLevelSupported:I = 0xa

.field static final greylist-max-o TRANSACTION_nap:I = 0xe

.field static final greylist-max-o TRANSACTION_reboot:I = 0x24

.field static final greylist-max-o TRANSACTION_rebootSafeMode:I = 0x25

.field static final greylist-max-o TRANSACTION_releaseWakeLock:I = 0x3

.field static final blacklist TRANSACTION_releaseWakeLockAsync:I = 0x2d

.field static final blacklist TRANSACTION_setAdaptivePowerSaveEnabled:I = 0x18

.field static final blacklist TRANSACTION_setAdaptivePowerSavePolicy:I = 0x17

.field static final greylist-max-o TRANSACTION_setAttentionLight:I = 0x30

.field static final blacklist TRANSACTION_setBatteryDischargePrediction:I = 0x1a

.field static final greylist-max-o TRANSACTION_setDozeAfterScreenOff:I = 0x31

.field static final blacklist TRANSACTION_setDynamicPowerSaveHint:I = 0x16

.field static final blacklist TRANSACTION_setFullPowerSavePolicy:I = 0x15

.field static final blacklist TRANSACTION_setLowPowerStandbyActiveDuringMaintenance:I = 0x22

.field static final blacklist TRANSACTION_setLowPowerStandbyEnabled:I = 0x21

.field static final blacklist TRANSACTION_setPowerBoost:I = 0x5

.field static final blacklist TRANSACTION_setPowerMode:I = 0x6

.field static final blacklist TRANSACTION_setPowerModeChecked:I = 0x7

.field static final blacklist TRANSACTION_setPowerSaveModeEnabled:I = 0x13

.field static final greylist-max-o TRANSACTION_setStayOnSetting:I = 0x2a

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x26

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x33

.field static final blacklist TRANSACTION_updateWakeLockCallback:I = 0x9

.field static final greylist-max-o TRANSACTION_updateWakeLockUids:I = 0x4

.field static final blacklist TRANSACTION_updateWakeLockUidsAsync:I = 0x2e

.field static final greylist-max-o TRANSACTION_updateWakeLockWorkSource:I = 0x8

.field static final greylist-max-o TRANSACTION_userActivity:I = 0xb

.field static final greylist-max-o TRANSACTION_wakeUp:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 224
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 225
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 233
    if-nez p0, :cond_4

    .line 234
    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_4
    const-string v0, "android.os.IPowerManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 237
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_14

    .line 238
    move-object v1, v0

    check-cast v1, Landroid/os/IPowerManager;

    return-object v1

    .line 240
    :cond_14
    new-instance v1, Landroid/os/IPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 249
    packed-switch p0, :pswitch_data_d4

    .line 473
    const/4 v0, 0x0

    return-object v0

    .line 469
    :pswitch_5
    const-string v0, "forceSuspend"

    return-object v0

    .line 465
    :pswitch_8
    const-string/jumbo v0, "isAmbientDisplaySuppressedForTokenByApp"

    return-object v0

    .line 461
    :pswitch_c
    const-string/jumbo v0, "isAmbientDisplaySuppressed"

    return-object v0

    .line 457
    :pswitch_10
    const-string/jumbo v0, "isAmbientDisplaySuppressedForToken"

    return-object v0

    .line 453
    :pswitch_14
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    .line 449
    :pswitch_18
    const-string/jumbo v0, "isAmbientDisplayAvailable"

    return-object v0

    .line 445
    :pswitch_1c
    const-string/jumbo v0, "setDozeAfterScreenOff"

    return-object v0

    .line 441
    :pswitch_20
    const-string/jumbo v0, "setAttentionLight"

    return-object v0

    .line 437
    :pswitch_24
    const-string/jumbo v0, "isScreenBrightnessBoosted"

    return-object v0

    .line 433
    :pswitch_28
    const-string/jumbo v0, "updateWakeLockUidsAsync"

    return-object v0

    .line 429
    :pswitch_2c
    const-string/jumbo v0, "releaseWakeLockAsync"

    return-object v0

    .line 425
    :pswitch_30
    const-string v0, "acquireWakeLockAsync"

    return-object v0

    .line 421
    :pswitch_33
    const-string v0, "boostScreenBrightness"

    return-object v0

    .line 417
    :pswitch_36
    const-string/jumbo v0, "setStayOnSetting"

    return-object v0

    .line 413
    :pswitch_3a
    const-string v0, "getLastSleepReason"

    return-object v0

    .line 409
    :pswitch_3d
    const-string v0, "getLastShutdownReason"

    return-object v0

    .line 405
    :pswitch_40
    const-string v0, "crash"

    return-object v0

    .line 401
    :pswitch_43
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 397
    :pswitch_47
    const-string/jumbo v0, "rebootSafeMode"

    return-object v0

    .line 393
    :pswitch_4b
    const-string/jumbo v0, "reboot"

    return-object v0

    .line 389
    :pswitch_4f
    const-string v0, "forceLowPowerStandbyActive"

    return-object v0

    .line 385
    :pswitch_52
    const-string/jumbo v0, "setLowPowerStandbyActiveDuringMaintenance"

    return-object v0

    .line 381
    :pswitch_56
    const-string/jumbo v0, "setLowPowerStandbyEnabled"

    return-object v0

    .line 377
    :pswitch_5a
    const-string/jumbo v0, "isLowPowerStandbyEnabled"

    return-object v0

    .line 373
    :pswitch_5e
    const-string/jumbo v0, "isLowPowerStandbySupported"

    return-object v0

    .line 369
    :pswitch_62
    const-string/jumbo v0, "isLightDeviceIdleMode"

    return-object v0

    .line 365
    :pswitch_66
    const-string/jumbo v0, "isDeviceIdleMode"

    return-object v0

    .line 361
    :pswitch_6a
    const-string/jumbo v0, "isBatteryDischargePredictionPersonalized"

    return-object v0

    .line 357
    :pswitch_6e
    const-string v0, "getBatteryDischargePrediction"

    return-object v0

    .line 353
    :pswitch_71
    const-string/jumbo v0, "setBatteryDischargePrediction"

    return-object v0

    .line 349
    :pswitch_75
    const-string v0, "getPowerSaveModeTrigger"

    return-object v0

    .line 345
    :pswitch_78
    const-string/jumbo v0, "setAdaptivePowerSaveEnabled"

    return-object v0

    .line 341
    :pswitch_7c
    const-string/jumbo v0, "setAdaptivePowerSavePolicy"

    return-object v0

    .line 337
    :pswitch_80
    const-string/jumbo v0, "setDynamicPowerSaveHint"

    return-object v0

    .line 333
    :pswitch_84
    const-string/jumbo v0, "setFullPowerSavePolicy"

    return-object v0

    .line 329
    :pswitch_88
    const-string v0, "getFullPowerSavePolicy"

    return-object v0

    .line 325
    :pswitch_8b
    const-string/jumbo v0, "setPowerSaveModeEnabled"

    return-object v0

    .line 321
    :pswitch_8f
    const-string v0, "getPowerSaveState"

    return-object v0

    .line 317
    :pswitch_92
    const-string/jumbo v0, "isPowerSaveMode"

    return-object v0

    .line 313
    :pswitch_96
    const-string/jumbo v0, "isInteractive"

    return-object v0

    .line 309
    :pswitch_9a
    const-string v0, "getBrightnessConstraint"

    return-object v0

    .line 305
    :pswitch_9d
    const-string/jumbo v0, "nap"

    return-object v0

    .line 301
    :pswitch_a1
    const-string/jumbo v0, "goToSleep"

    return-object v0

    .line 297
    :pswitch_a5
    const-string/jumbo v0, "wakeUp"

    return-object v0

    .line 293
    :pswitch_a9
    const-string/jumbo v0, "userActivity"

    return-object v0

    .line 289
    :pswitch_ad
    const-string/jumbo v0, "isWakeLockLevelSupported"

    return-object v0

    .line 285
    :pswitch_b1
    const-string/jumbo v0, "updateWakeLockCallback"

    return-object v0

    .line 281
    :pswitch_b5
    const-string/jumbo v0, "updateWakeLockWorkSource"

    return-object v0

    .line 277
    :pswitch_b9
    const-string/jumbo v0, "setPowerModeChecked"

    return-object v0

    .line 273
    :pswitch_bd
    const-string/jumbo v0, "setPowerMode"

    return-object v0

    .line 269
    :pswitch_c1
    const-string/jumbo v0, "setPowerBoost"

    return-object v0

    .line 265
    :pswitch_c5
    const-string/jumbo v0, "updateWakeLockUids"

    return-object v0

    .line 261
    :pswitch_c9
    const-string/jumbo v0, "releaseWakeLock"

    return-object v0

    .line 257
    :pswitch_cd
    const-string v0, "acquireWakeLockWithUid"

    return-object v0

    .line 253
    :pswitch_d0
    const-string v0, "acquireWakeLock"

    return-object v0

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_cd
        :pswitch_c9
        :pswitch_c5
        :pswitch_c1
        :pswitch_bd
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ad
        :pswitch_a9
        :pswitch_a5
        :pswitch_a1
        :pswitch_9d
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8f
        :pswitch_8b
        :pswitch_88
        :pswitch_84
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_75
        :pswitch_71
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 244
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2073
    const/16 v0, 0x36

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 480
    invoke-static {p1}, Landroid/os/IPowerManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.os.IPowerManager"

    .line 485
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_15

    const v0, 0xffffff

    if-gt v10, v0, :cond_15

    .line 486
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    :cond_15
    packed-switch v10, :pswitch_data_462

    .line 496
    packed-switch v10, :pswitch_data_468

    .line 1061
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 492
    :pswitch_20
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    return v14

    .line 1054
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->forceSuspend()Z

    move-result v0

    .line 1055
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1057
    goto/16 :goto_460

    .line 1043
    .end local v0    # "_result":Z
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1046
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z

    move-result v2

    .line 1048
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1050
    goto/16 :goto_460

    .line 1035
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_47
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressed()Z

    move-result v0

    .line 1036
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1038
    goto/16 :goto_460

    .line 1026
    .end local v0    # "_result":Z
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z

    move-result v1

    .line 1029
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1031
    goto/16 :goto_460

    .line 1015
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1018
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->suppressAmbientDisplay(Ljava/lang/String;Z)V

    .line 1020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    goto/16 :goto_460

    .line 1007
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_79
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplayAvailable()Z

    move-result v0

    .line 1008
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1010
    goto/16 :goto_460

    .line 999
    .end local v0    # "_result":Z
    :pswitch_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1000
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setDozeAfterScreenOff(Z)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    goto/16 :goto_460

    .line 988
    .end local v0    # "_arg0":Z
    :pswitch_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 990
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 991
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 993
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    goto/16 :goto_460

    .line 980
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_a7
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isScreenBrightnessBoosted()Z

    move-result v0

    .line 981
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 983
    goto/16 :goto_460

    .line 971
    .end local v0    # "_result":Z
    :pswitch_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 973
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 974
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->updateWakeLockUidsAsync(Landroid/os/IBinder;[I)V

    .line 976
    goto/16 :goto_460

    .line 961
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":[I
    :pswitch_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 963
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 964
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->releaseWakeLockAsync(Landroid/os/IBinder;I)V

    .line 966
    goto/16 :goto_460

    .line 943
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 945
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 947
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 949
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 951
    .local v16, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/WorkSource;

    .line 953
    .local v17, "_arg4":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 954
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->acquireWakeLockAsync(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 956
    goto/16 :goto_460

    .line 934
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Landroid/os/WorkSource;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 935
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->boostScreenBrightness(J)V

    .line 937
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    goto/16 :goto_460

    .line 925
    .end local v0    # "_arg0":J
    :pswitch_113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 926
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_460

    .line 917
    .end local v0    # "_arg0":I
    :pswitch_122
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getLastSleepReason()I

    move-result v0

    .line 918
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    goto/16 :goto_460

    .line 910
    .end local v0    # "_result":I
    :pswitch_12e
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getLastShutdownReason()I

    move-result v0

    .line 911
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    goto/16 :goto_460

    .line 902
    .end local v0    # "_result":I
    :pswitch_13a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    goto/16 :goto_460

    .line 889
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 891
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 893
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 894
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->shutdown(ZLjava/lang/String;Z)V

    .line 896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    goto/16 :goto_460

    .line 878
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 880
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 881
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->rebootSafeMode(ZZ)V

    .line 883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    goto/16 :goto_460

    .line 865
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 867
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 870
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    goto/16 :goto_460

    .line 856
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_18a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 857
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->forceLowPowerStandbyActive(Z)V

    .line 859
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    goto/16 :goto_460

    .line 847
    .end local v0    # "_arg0":Z
    :pswitch_199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 848
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 849
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyActiveDuringMaintenance(Z)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    goto/16 :goto_460

    .line 838
    .end local v0    # "_arg0":Z
    :pswitch_1a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 839
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyEnabled(Z)V

    .line 841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    goto/16 :goto_460

    .line 830
    .end local v0    # "_arg0":Z
    :pswitch_1b7
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isLowPowerStandbyEnabled()Z

    move-result v0

    .line 831
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 833
    goto/16 :goto_460

    .line 823
    .end local v0    # "_result":Z
    :pswitch_1c3
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isLowPowerStandbySupported()Z

    move-result v0

    .line 824
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 826
    goto/16 :goto_460

    .line 816
    .end local v0    # "_result":Z
    :pswitch_1cf
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isLightDeviceIdleMode()Z

    move-result v0

    .line 817
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 819
    goto/16 :goto_460

    .line 809
    .end local v0    # "_result":Z
    :pswitch_1db
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isDeviceIdleMode()Z

    move-result v0

    .line 810
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 812
    goto/16 :goto_460

    .line 802
    .end local v0    # "_result":Z
    :pswitch_1e7
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isBatteryDischargePredictionPersonalized()Z

    move-result v0

    .line 803
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 805
    goto/16 :goto_460

    .line 795
    .end local v0    # "_result":Z
    :pswitch_1f3
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getBatteryDischargePrediction()Landroid/os/ParcelDuration;

    move-result-object v0

    .line 796
    .local v0, "_result":Landroid/os/ParcelDuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 798
    goto/16 :goto_460

    .line 785
    .end local v0    # "_result":Landroid/os/ParcelDuration;
    :pswitch_1ff
    sget-object v0, Landroid/os/ParcelDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelDuration;

    .line 787
    .local v0, "_arg0":Landroid/os/ParcelDuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 788
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    goto/16 :goto_460

    .line 777
    .end local v0    # "_arg0":Landroid/os/ParcelDuration;
    .end local v1    # "_arg1":Z
    :pswitch_216
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getPowerSaveModeTrigger()I

    move-result v0

    .line 778
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    goto/16 :goto_460

    .line 768
    .end local v0    # "_result":I
    :pswitch_222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 769
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setAdaptivePowerSaveEnabled(Z)Z

    move-result v1

    .line 771
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 773
    goto/16 :goto_460

    .line 758
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_235
    sget-object v0, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatterySaverPolicyConfig;

    .line 759
    .local v0, "_arg0":Landroid/os/BatterySaverPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v1

    .line 761
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 763
    goto/16 :goto_460

    .line 746
    .end local v0    # "_arg0":Landroid/os/BatterySaverPolicyConfig;
    .end local v1    # "_result":Z
    :pswitch_24c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 748
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 749
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setDynamicPowerSaveHint(ZI)Z

    move-result v2

    .line 751
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 753
    goto/16 :goto_460

    .line 736
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_263
    sget-object v0, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatterySaverPolicyConfig;

    .line 737
    .local v0, "_arg0":Landroid/os/BatterySaverPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v1

    .line 739
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 741
    goto/16 :goto_460

    .line 728
    .end local v0    # "_arg0":Landroid/os/BatterySaverPolicyConfig;
    .end local v1    # "_result":Z
    :pswitch_27a
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;

    move-result-object v0

    .line 729
    .local v0, "_result":Landroid/os/BatterySaverPolicyConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 731
    goto/16 :goto_460

    .line 719
    .end local v0    # "_result":Landroid/os/BatterySaverPolicyConfig;
    :pswitch_286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 720
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setPowerSaveModeEnabled(Z)Z

    move-result v1

    .line 722
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 724
    goto/16 :goto_460

    .line 709
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 710
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    .line 712
    .local v1, "_result":Landroid/os/PowerSaveState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 714
    goto/16 :goto_460

    .line 701
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/PowerSaveState;
    :pswitch_2ac
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isPowerSaveMode()Z

    move-result v0

    .line 702
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 704
    goto/16 :goto_460

    .line 694
    .end local v0    # "_result":Z
    :pswitch_2b8
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isInteractive()Z

    move-result v0

    .line 695
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 697
    goto/16 :goto_460

    .line 685
    .end local v0    # "_result":Z
    :pswitch_2c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 686
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->getBrightnessConstraint(I)F

    move-result v1

    .line 688
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 690
    goto/16 :goto_460

    .line 676
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    :pswitch_2d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 677
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->nap(J)V

    .line 679
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    goto/16 :goto_460

    .line 663
    .end local v0    # "_arg0":J
    :pswitch_2e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 665
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 667
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 668
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->goToSleep(JII)V

    .line 670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    goto/16 :goto_460

    .line 648
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_2fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 650
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 652
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 654
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 655
    .restart local v16    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    move-object/from16 v0, p0

    move-wide v1, v6

    move v3, v8

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    goto/16 :goto_460

    .line 633
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_31f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 635
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 637
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 639
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 640
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->userActivity(IJII)V

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    goto/16 :goto_460

    .line 623
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    :pswitch_341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 624
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupported(I)Z

    move-result v1

    .line 626
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 628
    goto/16 :goto_460

    .line 612
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 614
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v1

    .line 615
    .local v1, "_arg1":Landroid/os/IWakeLockCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->updateWakeLockCallback(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    goto/16 :goto_460

    .line 599
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IWakeLockCallback;
    :pswitch_36b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 601
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 603
    .local v1, "_arg1":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto/16 :goto_460

    .line 587
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 589
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 590
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setPowerModeChecked(IZ)Z

    move-result v2

    .line 592
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 594
    goto/16 :goto_460

    .line 577
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_39d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 579
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 580
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setPowerMode(IZ)V

    .line 582
    goto/16 :goto_460

    .line 567
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_3ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 569
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 570
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setPowerBoost(II)V

    .line 572
    goto/16 :goto_460

    .line 556
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 558
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 559
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    goto/16 :goto_460

    .line 545
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":[I
    :pswitch_3d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 547
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 548
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    goto/16 :goto_460

    .line 524
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_3e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 526
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 528
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 530
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 532
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 534
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 536
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v20

    .line 537
    .local v20, "_arg6":Landroid/os/IWakeLockCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IPowerManager$Stub;->acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V

    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto :goto_460

    .line 501
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Landroid/os/IWakeLockCallback;
    :pswitch_41b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 503
    .local v15, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 505
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 507
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 509
    .local v18, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/WorkSource;

    .line 511
    .local v19, "_arg4":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 513
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 515
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v22

    .line 516
    .local v22, "_arg7":Landroid/os/IWakeLockCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    nop

    .line 1064
    .end local v15    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Landroid/os/WorkSource;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":Landroid/os/IWakeLockCallback;
    :goto_460
    return v14

    nop

    :pswitch_data_462
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_468
    .packed-switch 0x1
        :pswitch_41b
        :pswitch_3e3
        :pswitch_3d0
        :pswitch_3bd
        :pswitch_3ad
        :pswitch_39d
        :pswitch_386
        :pswitch_36b
        :pswitch_354
        :pswitch_341
        :pswitch_31f
        :pswitch_2fd
        :pswitch_2e6
        :pswitch_2d7
        :pswitch_2c4
        :pswitch_2b8
        :pswitch_2ac
        :pswitch_299
        :pswitch_286
        :pswitch_27a
        :pswitch_263
        :pswitch_24c
        :pswitch_235
        :pswitch_222
        :pswitch_216
        :pswitch_1ff
        :pswitch_1f3
        :pswitch_1e7
        :pswitch_1db
        :pswitch_1cf
        :pswitch_1c3
        :pswitch_1b7
        :pswitch_1a8
        :pswitch_199
        :pswitch_18a
        :pswitch_173
        :pswitch_160
        :pswitch_149
        :pswitch_13a
        :pswitch_12e
        :pswitch_122
        :pswitch_113
        :pswitch_104
        :pswitch_d3
        :pswitch_c3
        :pswitch_b3
        :pswitch_a7
        :pswitch_94
        :pswitch_85
        :pswitch_79
        :pswitch_66
        :pswitch_53
        :pswitch_47
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
