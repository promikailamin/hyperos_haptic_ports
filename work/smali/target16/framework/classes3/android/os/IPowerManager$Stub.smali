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

.field static final blacklist TRANSACTION_acquireLowPowerStandbyPorts:I = 0x31

.field static final greylist-max-r TRANSACTION_acquireWakeLock:I = 0x1

.field static final blacklist TRANSACTION_acquireWakeLockAsync:I = 0x3c

.field static final greylist-max-o TRANSACTION_acquireWakeLockWithUid:I = 0x2

.field static final blacklist TRANSACTION_addScreenTimeoutPolicyListener:I = 0xc

.field static final blacklist TRANSACTION_areAutoPowerSaveModesEnabled:I = 0x17

.field static final greylist-max-o TRANSACTION_boostScreenBrightness:I = 0x3b

.field static final greylist-max-o TRANSACTION_crash:I = 0x37

.field static final blacklist TRANSACTION_forceLowPowerStandbyActive:I = 0x2b

.field static final blacklist TRANSACTION_forceSuspend:I = 0x48

.field static final blacklist TRANSACTION_getActiveLowPowerStandbyPorts:I = 0x33

.field static final blacklist TRANSACTION_getBatteryDischargePrediction:I = 0x23

.field static final blacklist TRANSACTION_getBrightnessConstraint:I = 0x14

.field static final blacklist TRANSACTION_getFullPowerSavePolicy:I = 0x1c

.field static final greylist-max-o TRANSACTION_getLastShutdownReason:I = 0x38

.field static final blacklist TRANSACTION_getLastSleepReason:I = 0x39

.field static final blacklist TRANSACTION_getLowPowerStandbyPolicy:I = 0x2d

.field static final blacklist TRANSACTION_getPowerSaveModeTrigger:I = 0x21

.field static final greylist-max-o TRANSACTION_getPowerSaveState:I = 0x19

.field static final greylist-max-r TRANSACTION_goToSleep:I = 0x11

.field static final blacklist TRANSACTION_goToSleepWithDisplayId:I = 0x12

.field static final blacklist TRANSACTION_isAmbientDisplayAvailable:I = 0x42

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressed:I = 0x46

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressedForToken:I = 0x45

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressedForTokenByApp:I = 0x47

.field static final blacklist TRANSACTION_isBatteryDischargePredictionPersonalized:I = 0x24

.field static final blacklist TRANSACTION_isBatterySaverSupported:I = 0x1b

.field static final greylist-max-o TRANSACTION_isDeviceIdleMode:I = 0x25

.field static final blacklist TRANSACTION_isDisplayInteractive:I = 0x16

.field static final blacklist TRANSACTION_isExemptFromLowPowerStandby:I = 0x2e

.field static final blacklist TRANSACTION_isFeatureAllowedInLowPowerStandby:I = 0x30

.field static final greylist-max-o TRANSACTION_isInteractive:I = 0x15

.field static final greylist-max-o TRANSACTION_isLightDeviceIdleMode:I = 0x26

.field static final blacklist TRANSACTION_isLowPowerStandbyEnabled:I = 0x28

.field static final blacklist TRANSACTION_isLowPowerStandbySupported:I = 0x27

.field static final greylist-max-o TRANSACTION_isPowerSaveMode:I = 0x18

.field static final blacklist TRANSACTION_isReasonAllowedInLowPowerStandby:I = 0x2f

.field static final greylist-max-o TRANSACTION_isScreenBrightnessBoosted:I = 0x3f

.field static final greylist-max-o TRANSACTION_isWakeLockLevelSupported:I = 0xa

.field static final blacklist TRANSACTION_isWakeLockLevelSupportedWithDisplayId:I = 0xb

.field static final greylist-max-o TRANSACTION_nap:I = 0x13

.field static final greylist-max-o TRANSACTION_reboot:I = 0x34

.field static final blacklist TRANSACTION_rebootCustom:I = 0x49

.field static final greylist-max-o TRANSACTION_rebootSafeMode:I = 0x35

.field static final blacklist TRANSACTION_releaseLowPowerStandbyPorts:I = 0x32

.field static final greylist-max-o TRANSACTION_releaseWakeLock:I = 0x3

.field static final blacklist TRANSACTION_releaseWakeLockAsync:I = 0x3d

.field static final blacklist TRANSACTION_removeScreenTimeoutPolicyListener:I = 0xd

.field static final blacklist TRANSACTION_setAdaptivePowerSaveEnabled:I = 0x20

.field static final blacklist TRANSACTION_setAdaptivePowerSavePolicy:I = 0x1f

.field static final greylist-max-o TRANSACTION_setAttentionLight:I = 0x40

.field static final blacklist TRANSACTION_setBatteryDischargePrediction:I = 0x22

.field static final greylist-max-o TRANSACTION_setDozeAfterScreenOff:I = 0x41

.field static final blacklist TRANSACTION_setDynamicPowerSaveHint:I = 0x1e

.field static final blacklist TRANSACTION_setFullPowerSavePolicy:I = 0x1d

.field static final blacklist TRANSACTION_setLowPowerStandbyActiveDuringMaintenance:I = 0x2a

.field static final blacklist TRANSACTION_setLowPowerStandbyEnabled:I = 0x29

.field static final blacklist TRANSACTION_setLowPowerStandbyPolicy:I = 0x2c

.field static final blacklist TRANSACTION_setPowerBoost:I = 0x5

.field static final blacklist TRANSACTION_setPowerMode:I = 0x6

.field static final blacklist TRANSACTION_setPowerModeChecked:I = 0x7

.field static final blacklist TRANSACTION_setPowerSaveModeEnabled:I = 0x1a

.field static final greylist-max-o TRANSACTION_setStayOnSetting:I = 0x3a

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x36

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x43

.field static final blacklist TRANSACTION_suppressAmbientDisplayBehavior:I = 0x44

.field static final blacklist TRANSACTION_updateWakeLockCallback:I = 0x9

.field static final greylist-max-o TRANSACTION_updateWakeLockUids:I = 0x4

.field static final blacklist TRANSACTION_updateWakeLockUidsAsync:I = 0x3e

.field static final greylist-max-o TRANSACTION_updateWakeLockWorkSource:I = 0x8

.field static final greylist-max-o TRANSACTION_userActivity:I = 0xe

.field static final greylist-max-o TRANSACTION_wakeUp:I = 0xf

.field static final blacklist TRANSACTION_wakeUpWithDisplayId:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 296
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 297
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    .registers 3

    .line 305
    if-nez p0, :cond_4

    .line 306
    const/4 p0, 0x0

    return-object p0

    .line 308
    :cond_4
    const-string v0, "android.os.IPowerManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_13

    .line 310
    check-cast v0, Landroid/os/IPowerManager;

    return-object v0

    .line 312
    :cond_13
    new-instance v0, Landroid/os/IPowerManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 321
    packed-switch p0, :pswitch_data_104

    .line 617
    const/4 p0, 0x0

    return-object p0

    .line 613
    :pswitch_5
    const-string/jumbo p0, "rebootCustom"

    return-object p0

    .line 609
    :pswitch_9
    const-string p0, "forceSuspend"

    return-object p0

    .line 605
    :pswitch_c
    const-string p0, "isAmbientDisplaySuppressedForTokenByApp"

    return-object p0

    .line 601
    :pswitch_f
    const-string p0, "isAmbientDisplaySuppressed"

    return-object p0

    .line 597
    :pswitch_12
    const-string p0, "isAmbientDisplaySuppressedForToken"

    return-object p0

    .line 593
    :pswitch_15
    const-string/jumbo p0, "suppressAmbientDisplayBehavior"

    return-object p0

    .line 589
    :pswitch_19
    const-string/jumbo p0, "suppressAmbientDisplay"

    return-object p0

    .line 585
    :pswitch_1d
    const-string p0, "isAmbientDisplayAvailable"

    return-object p0

    .line 581
    :pswitch_20
    const-string/jumbo p0, "setDozeAfterScreenOff"

    return-object p0

    .line 577
    :pswitch_24
    const-string/jumbo p0, "setAttentionLight"

    return-object p0

    .line 573
    :pswitch_28
    const-string p0, "isScreenBrightnessBoosted"

    return-object p0

    .line 569
    :pswitch_2b
    const-string/jumbo p0, "updateWakeLockUidsAsync"

    return-object p0

    .line 565
    :pswitch_2f
    const-string/jumbo p0, "releaseWakeLockAsync"

    return-object p0

    .line 561
    :pswitch_33
    const-string p0, "acquireWakeLockAsync"

    return-object p0

    .line 557
    :pswitch_36
    const-string p0, "boostScreenBrightness"

    return-object p0

    .line 553
    :pswitch_39
    const-string/jumbo p0, "setStayOnSetting"

    return-object p0

    .line 549
    :pswitch_3d
    const-string p0, "getLastSleepReason"

    return-object p0

    .line 545
    :pswitch_40
    const-string p0, "getLastShutdownReason"

    return-object p0

    .line 541
    :pswitch_43
    const-string p0, "crash"

    return-object p0

    .line 537
    :pswitch_46
    const-string/jumbo p0, "shutdown"

    return-object p0

    .line 533
    :pswitch_4a
    const-string/jumbo p0, "rebootSafeMode"

    return-object p0

    .line 529
    :pswitch_4e
    const-string/jumbo p0, "reboot"

    return-object p0

    .line 525
    :pswitch_52
    const-string p0, "getActiveLowPowerStandbyPorts"

    return-object p0

    .line 521
    :pswitch_55
    const-string/jumbo p0, "releaseLowPowerStandbyPorts"

    return-object p0

    .line 517
    :pswitch_59
    const-string p0, "acquireLowPowerStandbyPorts"

    return-object p0

    .line 513
    :pswitch_5c
    const-string p0, "isFeatureAllowedInLowPowerStandby"

    return-object p0

    .line 509
    :pswitch_5f
    const-string p0, "isReasonAllowedInLowPowerStandby"

    return-object p0

    .line 505
    :pswitch_62
    const-string p0, "isExemptFromLowPowerStandby"

    return-object p0

    .line 501
    :pswitch_65
    const-string p0, "getLowPowerStandbyPolicy"

    return-object p0

    .line 497
    :pswitch_68
    const-string/jumbo p0, "setLowPowerStandbyPolicy"

    return-object p0

    .line 493
    :pswitch_6c
    const-string p0, "forceLowPowerStandbyActive"

    return-object p0

    .line 489
    :pswitch_6f
    const-string/jumbo p0, "setLowPowerStandbyActiveDuringMaintenance"

    return-object p0

    .line 485
    :pswitch_73
    const-string/jumbo p0, "setLowPowerStandbyEnabled"

    return-object p0

    .line 481
    :pswitch_77
    const-string p0, "isLowPowerStandbyEnabled"

    return-object p0

    .line 477
    :pswitch_7a
    const-string p0, "isLowPowerStandbySupported"

    return-object p0

    .line 473
    :pswitch_7d
    const-string p0, "isLightDeviceIdleMode"

    return-object p0

    .line 469
    :pswitch_80
    const-string p0, "isDeviceIdleMode"

    return-object p0

    .line 465
    :pswitch_83
    const-string p0, "isBatteryDischargePredictionPersonalized"

    return-object p0

    .line 461
    :pswitch_86
    const-string p0, "getBatteryDischargePrediction"

    return-object p0

    .line 457
    :pswitch_89
    const-string/jumbo p0, "setBatteryDischargePrediction"

    return-object p0

    .line 453
    :pswitch_8d
    const-string p0, "getPowerSaveModeTrigger"

    return-object p0

    .line 449
    :pswitch_90
    const-string/jumbo p0, "setAdaptivePowerSaveEnabled"

    return-object p0

    .line 445
    :pswitch_94
    const-string/jumbo p0, "setAdaptivePowerSavePolicy"

    return-object p0

    .line 441
    :pswitch_98
    const-string/jumbo p0, "setDynamicPowerSaveHint"

    return-object p0

    .line 437
    :pswitch_9c
    const-string/jumbo p0, "setFullPowerSavePolicy"

    return-object p0

    .line 433
    :pswitch_a0
    const-string p0, "getFullPowerSavePolicy"

    return-object p0

    .line 429
    :pswitch_a3
    const-string p0, "isBatterySaverSupported"

    return-object p0

    .line 425
    :pswitch_a6
    const-string/jumbo p0, "setPowerSaveModeEnabled"

    return-object p0

    .line 421
    :pswitch_aa
    const-string p0, "getPowerSaveState"

    return-object p0

    .line 417
    :pswitch_ad
    const-string p0, "isPowerSaveMode"

    return-object p0

    .line 413
    :pswitch_b0
    const-string p0, "areAutoPowerSaveModesEnabled"

    return-object p0

    .line 409
    :pswitch_b3
    const-string p0, "isDisplayInteractive"

    return-object p0

    .line 405
    :pswitch_b6
    const-string p0, "isInteractive"

    return-object p0

    .line 401
    :pswitch_b9
    const-string p0, "getBrightnessConstraint"

    return-object p0

    .line 397
    :pswitch_bc
    const-string/jumbo p0, "nap"

    return-object p0

    .line 393
    :pswitch_c0
    const-string p0, "goToSleepWithDisplayId"

    return-object p0

    .line 389
    :pswitch_c3
    const-string p0, "goToSleep"

    return-object p0

    .line 385
    :pswitch_c6
    const-string/jumbo p0, "wakeUpWithDisplayId"

    return-object p0

    .line 381
    :pswitch_ca
    const-string/jumbo p0, "wakeUp"

    return-object p0

    .line 377
    :pswitch_ce
    const-string/jumbo p0, "userActivity"

    return-object p0

    .line 373
    :pswitch_d2
    const-string/jumbo p0, "removeScreenTimeoutPolicyListener"

    return-object p0

    .line 369
    :pswitch_d6
    const-string p0, "addScreenTimeoutPolicyListener"

    return-object p0

    .line 365
    :pswitch_d9
    const-string/jumbo p0, "isWakeLockLevelSupportedWithDisplayId"

    return-object p0

    .line 361
    :pswitch_dd
    const-string/jumbo p0, "isWakeLockLevelSupported"

    return-object p0

    .line 357
    :pswitch_e1
    const-string/jumbo p0, "updateWakeLockCallback"

    return-object p0

    .line 353
    :pswitch_e5
    const-string/jumbo p0, "updateWakeLockWorkSource"

    return-object p0

    .line 349
    :pswitch_e9
    const-string/jumbo p0, "setPowerModeChecked"

    return-object p0

    .line 345
    :pswitch_ed
    const-string/jumbo p0, "setPowerMode"

    return-object p0

    .line 341
    :pswitch_f1
    const-string/jumbo p0, "setPowerBoost"

    return-object p0

    .line 337
    :pswitch_f5
    const-string/jumbo p0, "updateWakeLockUids"

    return-object p0

    .line 333
    :pswitch_f9
    const-string/jumbo p0, "releaseWakeLock"

    return-object p0

    .line 329
    :pswitch_fd
    const-string p0, "acquireWakeLockWithUid"

    return-object p0

    .line 325
    :pswitch_100
    const-string p0, "acquireWakeLock"

    return-object p0

    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_100
        :pswitch_fd
        :pswitch_f9
        :pswitch_f5
        :pswitch_f1
        :pswitch_ed
        :pswitch_e9
        :pswitch_e5
        :pswitch_e1
        :pswitch_dd
        :pswitch_d9
        :pswitch_d6
        :pswitch_d2
        :pswitch_ce
        :pswitch_ca
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8d
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6c
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_55
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 316
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2716
    const/16 v0, 0x48

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 624
    invoke-static {p1}, Landroid/os/IPowerManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    nop

    .line 629
    const-string v3, "android.os.IPowerManager"

    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 630
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 633
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 634
    return v9

    .line 636
    :cond_17
    packed-switch p1, :pswitch_data_57c

    .line 1384
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1372
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1374
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1376
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1377
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1378
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/IPowerManager$Stub;->rebootCustom(ZLjava/lang/String;Z)V

    .line 1379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    goto/16 :goto_57a

    .line 1364
    :pswitch_36
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->forceSuspend()Z

    move-result v0

    .line 1365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1366
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1367
    goto/16 :goto_57a

    .line 1353
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1357
    invoke-virtual {p0, v1, v3}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z

    move-result v0

    .line 1358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1359
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1360
    goto/16 :goto_57a

    .line 1345
    :pswitch_59
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressed()Z

    move-result v0

    .line 1346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1348
    goto/16 :goto_57a

    .line 1336
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1338
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z

    move-result v0

    .line 1339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1341
    goto/16 :goto_57a

    .line 1326
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    invoke-virtual {p0, v1, v3}, Landroid/os/IPowerManager$Stub;->suppressAmbientDisplayBehavior(Ljava/lang/String;I)V

    .line 1331
    goto/16 :goto_57a

    .line 1315
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1317
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1318
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1319
    invoke-virtual {p0, v1, v3}, Landroid/os/IPowerManager$Stub;->suppressAmbientDisplay(Ljava/lang/String;Z)V

    .line 1320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    goto/16 :goto_57a

    .line 1307
    :pswitch_9b
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplayAvailable()Z

    move-result v0

    .line 1308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1310
    goto/16 :goto_57a

    .line 1299
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1300
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1301
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setDozeAfterScreenOff(Z)V

    .line 1302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    goto/16 :goto_57a

    .line 1288
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    invoke-virtual {p0, v1, v3}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 1293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    goto/16 :goto_57a

    .line 1280
    :pswitch_c9
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isScreenBrightnessBoosted()Z

    move-result v0

    .line 1281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1283
    goto/16 :goto_57a

    .line 1271
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1273
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    invoke-virtual {p0, v1, v3}, Landroid/os/IPowerManager$Stub;->updateWakeLockUidsAsync(Landroid/os/IBinder;[I)V

    .line 1276
    goto/16 :goto_57a

    .line 1261
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1264
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1265
    invoke-virtual {p0, v1, v3}, Landroid/os/IPowerManager$Stub;->releaseWakeLockAsync(Landroid/os/IBinder;I)V

    .line 1266
    goto/16 :goto_57a

    .line 1243
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1247
    move v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1249
    move v5, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1251
    sget-object v6, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource;

    .line 1253
    move v2, v5

    move-object v5, v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->acquireWakeLockAsync(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 1256
    goto/16 :goto_57a

    .line 1234
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1236
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->boostScreenBrightness(J)V

    .line 1237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    goto/16 :goto_57a

    .line 1225
    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1227
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 1228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    goto/16 :goto_57a

    .line 1217
    :pswitch_13c
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getLastSleepReason()I

    move-result v0

    .line 1218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    goto/16 :goto_57a

    .line 1210
    :pswitch_148
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getLastShutdownReason()I

    move-result v0

    .line 1211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    goto/16 :goto_57a

    .line 1202
    :pswitch_154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    goto/16 :goto_57a

    .line 1189
    :pswitch_163
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1193
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->shutdown(ZLjava/lang/String;Z)V

    .line 1196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    goto/16 :goto_57a

    .line 1178
    :pswitch_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1180
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1182
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->rebootSafeMode(ZZ)V

    .line 1183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    goto/16 :goto_57a

    .line 1165
    :pswitch_18d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1169
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1171
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    .line 1172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    goto/16 :goto_57a

    .line 1157
    :pswitch_1a4
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getActiveLowPowerStandbyPorts()Ljava/util/List;

    move-result-object v0

    .line 1158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1160
    goto/16 :goto_57a

    .line 1149
    :pswitch_1b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->releaseLowPowerStandbyPorts(Landroid/os/IBinder;)V

    .line 1152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    goto/16 :goto_57a

    .line 1138
    :pswitch_1bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1140
    sget-object v2, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->acquireLowPowerStandbyPorts(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    goto/16 :goto_57a

    .line 1128
    :pswitch_1d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1130
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isFeatureAllowedInLowPowerStandby(Ljava/lang/String;)Z

    move-result v0

    .line 1131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1133
    goto/16 :goto_57a

    .line 1118
    :pswitch_1e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isReasonAllowedInLowPowerStandby(I)Z

    move-result v0

    .line 1121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1123
    goto/16 :goto_57a

    .line 1110
    :pswitch_1fa
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isExemptFromLowPowerStandby()Z

    move-result v0

    .line 1111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1113
    goto/16 :goto_57a

    .line 1103
    :pswitch_206
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getLowPowerStandbyPolicy()Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    move-result-object v0

    .line 1104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1106
    goto/16 :goto_57a

    .line 1095
    :pswitch_212
    sget-object v1, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyPolicy(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)V

    .line 1098
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    goto/16 :goto_57a

    .line 1086
    :pswitch_225
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1088
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->forceLowPowerStandbyActive(Z)V

    .line 1089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    goto/16 :goto_57a

    .line 1077
    :pswitch_234
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1078
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1079
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyActiveDuringMaintenance(Z)V

    .line 1080
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    goto/16 :goto_57a

    .line 1068
    :pswitch_243
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1069
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1070
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyEnabled(Z)V

    .line 1071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    goto/16 :goto_57a

    .line 1060
    :pswitch_252
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isLowPowerStandbyEnabled()Z

    move-result v0

    .line 1061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1063
    goto/16 :goto_57a

    .line 1053
    :pswitch_25e
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isLowPowerStandbySupported()Z

    move-result v0

    .line 1054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1056
    goto/16 :goto_57a

    .line 1046
    :pswitch_26a
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isLightDeviceIdleMode()Z

    move-result v0

    .line 1047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1049
    goto/16 :goto_57a

    .line 1039
    :pswitch_276
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isDeviceIdleMode()Z

    move-result v0

    .line 1040
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1042
    goto/16 :goto_57a

    .line 1032
    :pswitch_282
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isBatteryDischargePredictionPersonalized()Z

    move-result v0

    .line 1033
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1035
    goto/16 :goto_57a

    .line 1025
    :pswitch_28e
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getBatteryDischargePrediction()Landroid/os/ParcelDuration;

    move-result-object v0

    .line 1026
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1028
    goto/16 :goto_57a

    .line 1015
    :pswitch_29a
    sget-object v1, Landroid/os/ParcelDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelDuration;

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V

    .line 1020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    goto/16 :goto_57a

    .line 1007
    :pswitch_2b1
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getPowerSaveModeTrigger()I

    move-result v0

    .line 1008
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    goto/16 :goto_57a

    .line 998
    :pswitch_2bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setAdaptivePowerSaveEnabled(Z)Z

    move-result v0

    .line 1001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1003
    goto/16 :goto_57a

    .line 988
    :pswitch_2d0
    sget-object v1, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatterySaverPolicyConfig;

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v0

    .line 991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 993
    goto/16 :goto_57a

    .line 976
    :pswitch_2e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 978
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setDynamicPowerSaveHint(ZI)Z

    move-result v0

    .line 981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 983
    goto/16 :goto_57a

    .line 966
    :pswitch_2fe
    sget-object v1, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatterySaverPolicyConfig;

    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v0

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 971
    goto/16 :goto_57a

    .line 958
    :pswitch_315
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;

    move-result-object v0

    .line 959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 961
    goto/16 :goto_57a

    .line 951
    :pswitch_321
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isBatterySaverSupported()Z

    move-result v0

    .line 952
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 954
    goto/16 :goto_57a

    .line 942
    :pswitch_32d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setPowerSaveModeEnabled(Z)Z

    move-result v0

    .line 945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 947
    goto/16 :goto_57a

    .line 932
    :pswitch_340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 933
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 935
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 937
    goto/16 :goto_57a

    .line 924
    :pswitch_353
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isPowerSaveMode()Z

    move-result v0

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 927
    goto/16 :goto_57a

    .line 917
    :pswitch_35f
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->areAutoPowerSaveModesEnabled()Z

    move-result v0

    .line 918
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 920
    goto/16 :goto_57a

    .line 908
    :pswitch_36b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 909
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isDisplayInteractive(I)Z

    move-result v0

    .line 911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 913
    goto/16 :goto_57a

    .line 900
    :pswitch_37e
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isInteractive()Z

    move-result v0

    .line 901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 903
    goto/16 :goto_57a

    .line 889
    :pswitch_38a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->getBrightnessConstraint(II)F

    move-result v0

    .line 894
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 896
    goto/16 :goto_57a

    .line 880
    :pswitch_3a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->nap(J)V

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    goto/16 :goto_57a

    .line 865
    :pswitch_3b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->goToSleepWithDisplayId(IJII)V

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    goto/16 :goto_57a

    .line 852
    :pswitch_3cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 856
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IPowerManager$Stub;->goToSleep(JII)V

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    goto/16 :goto_57a

    .line 835
    :pswitch_3e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 839
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 843
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->wakeUpWithDisplayId(JILjava/lang/String;Ljava/lang/String;I)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    goto/16 :goto_57a

    .line 820
    :pswitch_403
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    goto/16 :goto_57a

    .line 805
    :pswitch_41f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->userActivity(IJII)V

    .line 814
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    goto/16 :goto_57a

    .line 795
    :pswitch_43b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IScreenTimeoutPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IScreenTimeoutPolicyListener;

    move-result-object v2

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->removeScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V

    .line 800
    goto/16 :goto_57a

    .line 785
    :pswitch_44f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 787
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IScreenTimeoutPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IScreenTimeoutPolicyListener;

    move-result-object v2

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->addScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V

    .line 790
    goto/16 :goto_57a

    .line 773
    :pswitch_463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupportedWithDisplayId(II)Z

    move-result v0

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 780
    goto/16 :goto_57a

    .line 763
    :pswitch_47a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupported(I)Z

    move-result v0

    .line 766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 768
    goto/16 :goto_57a

    .line 752
    :pswitch_48d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v2

    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockCallback(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;)V

    .line 757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    goto/16 :goto_57a

    .line 739
    :pswitch_4a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 741
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    goto/16 :goto_57a

    .line 727
    :pswitch_4bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setPowerModeChecked(IZ)Z

    move-result v0

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 734
    goto/16 :goto_57a

    .line 717
    :pswitch_4d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setPowerMode(IZ)V

    .line 722
    goto/16 :goto_57a

    .line 707
    :pswitch_4e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setPowerBoost(II)V

    .line 712
    goto/16 :goto_57a

    .line 696
    :pswitch_4f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    .line 701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    goto :goto_57a

    .line 685
    :pswitch_508
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    goto :goto_57a

    .line 664
    :pswitch_51a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v8

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    move-object v0, p0

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/os/IPowerManager$Stub;->acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    goto :goto_57a

    .line 641
    :pswitch_546
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 649
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/WorkSource;

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v8

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V

    .line 658
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    nop

    .line 1387
    :goto_57a
    return v9

    nop

    :pswitch_data_57c
    .packed-switch 0x1
        :pswitch_546
        :pswitch_51a
        :pswitch_508
        :pswitch_4f6
        :pswitch_4e6
        :pswitch_4d6
        :pswitch_4bf
        :pswitch_4a4
        :pswitch_48d
        :pswitch_47a
        :pswitch_463
        :pswitch_44f
        :pswitch_43b
        :pswitch_41f
        :pswitch_403
        :pswitch_3e3
        :pswitch_3cc
        :pswitch_3b0
        :pswitch_3a1
        :pswitch_38a
        :pswitch_37e
        :pswitch_36b
        :pswitch_35f
        :pswitch_353
        :pswitch_340
        :pswitch_32d
        :pswitch_321
        :pswitch_315
        :pswitch_2fe
        :pswitch_2e7
        :pswitch_2d0
        :pswitch_2bd
        :pswitch_2b1
        :pswitch_29a
        :pswitch_28e
        :pswitch_282
        :pswitch_276
        :pswitch_26a
        :pswitch_25e
        :pswitch_252
        :pswitch_243
        :pswitch_234
        :pswitch_225
        :pswitch_212
        :pswitch_206
        :pswitch_1fa
        :pswitch_1e7
        :pswitch_1d4
        :pswitch_1bf
        :pswitch_1b0
        :pswitch_1a4
        :pswitch_18d
        :pswitch_17a
        :pswitch_163
        :pswitch_154
        :pswitch_148
        :pswitch_13c
        :pswitch_12d
        :pswitch_11e
        :pswitch_f5
        :pswitch_e5
        :pswitch_d5
        :pswitch_c9
        :pswitch_b6
        :pswitch_a7
        :pswitch_9b
        :pswitch_88
        :pswitch_78
        :pswitch_65
        :pswitch_59
        :pswitch_42
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
