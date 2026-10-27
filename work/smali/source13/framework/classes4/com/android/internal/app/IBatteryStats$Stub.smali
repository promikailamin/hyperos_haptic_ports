.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final greylist-max-o TRANSACTION_computeBatteryTimeRemaining:I = 0x16

.field static final greylist-max-o TRANSACTION_computeChargeTimeRemaining:I = 0x17

.field static final blacklist TRANSACTION_getAppScreenInfo:I = 0x67

.field static final greylist-max-o TRANSACTION_getAwakeTimeBattery:I = 0x4f

.field static final greylist-max-o TRANSACTION_getAwakeTimePlugged:I = 0x50

.field static final blacklist TRANSACTION_getBatteryUsageStats:I = 0x12

.field static final blacklist TRANSACTION_getBluetoothBatteryStats:I = 0x5b

.field static final greylist-max-o TRANSACTION_getCellularBatteryStats:I = 0x57

.field static final blacklist TRANSACTION_getDyAppScreenPower:I = 0x69

.field static final greylist-max-o TRANSACTION_getGpsBatteryStats:I = 0x59

.field static final greylist-max-o TRANSACTION_getStatistics:I = 0x13

.field static final greylist-max-o TRANSACTION_getStatisticsStream:I = 0x14

.field static final blacklist TRANSACTION_getTargetScreenInfo:I = 0x68

.field static final blacklist TRANSACTION_getWakeLockStats:I = 0x5a

.field static final greylist-max-o TRANSACTION_getWifiBatteryStats:I = 0x58

.field static final greylist-max-o TRANSACTION_isCharging:I = 0x15

.field static final blacklist TRANSACTION_noteBleScanReset:I = 0x55

.field static final greylist-max-o TRANSACTION_noteBleScanResults:I = 0x56

.field static final greylist-max-o TRANSACTION_noteBleScanStarted:I = 0x53

.field static final greylist-max-o TRANSACTION_noteBleScanStopped:I = 0x54

.field static final greylist-max-o TRANSACTION_noteBluetoothControllerActivity:I = 0x5e

.field static final blacklist TRANSACTION_noteBluetoothOff:I = 0x52

.field static final blacklist TRANSACTION_noteBluetoothOn:I = 0x51

.field static final greylist-max-o TRANSACTION_noteChangeWakelockFromSource:I = 0x20

.field static final greylist-max-o TRANSACTION_noteConnectivityChanged:I = 0x2f

.field static final greylist-max-o TRANSACTION_noteDeviceIdleMode:I = 0x4d

.field static final greylist-max-o TRANSACTION_noteEvent:I = 0x18

.field static final greylist-max-o TRANSACTION_noteFlashlightOff:I = 0xa

.field static final greylist-max-o TRANSACTION_noteFlashlightOn:I = 0x9

.field static final greylist-max-o TRANSACTION_noteFullWifiLockAcquired:I = 0x3e

.field static final greylist-max-o TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x44

.field static final greylist-max-o TRANSACTION_noteFullWifiLockReleased:I = 0x3f

.field static final greylist-max-o TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x45

.field static final greylist-max-o TRANSACTION_noteGpsChanged:I = 0x28

.field static final greylist-max-o TRANSACTION_noteGpsSignalQuality:I = 0x29

.field static final greylist-max-o TRANSACTION_noteInteractive:I = 0x2e

.field static final greylist-max-o TRANSACTION_noteJobFinish:I = 0x1c

.field static final greylist-max-o TRANSACTION_noteJobStart:I = 0x1b

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockFinish:I = 0x24

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockFinishFromSource:I = 0x25

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockStart:I = 0x22

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockStartFromSource:I = 0x23

.field static final greylist-max-o TRANSACTION_noteMobileRadioPowerState:I = 0x30

.field static final greylist-max-o TRANSACTION_noteModemControllerActivity:I = 0x5f

.field static final blacklist TRANSACTION_noteNetworkInterfaceForTransports:I = 0x4b

.field static final greylist-max-o TRANSACTION_noteNetworkStatsEnabled:I = 0x4c

.field static final greylist-max-o TRANSACTION_notePhoneDataConnectionState:I = 0x34

.field static final greylist-max-o TRANSACTION_notePhoneOff:I = 0x32

.field static final greylist-max-o TRANSACTION_notePhoneOn:I = 0x31

.field static final greylist-max-o TRANSACTION_notePhoneSignalStrength:I = 0x33

.field static final greylist-max-o TRANSACTION_notePhoneState:I = 0x35

.field static final greylist-max-o TRANSACTION_noteResetAudio:I = 0x8

.field static final greylist-max-o TRANSACTION_noteResetCamera:I = 0xd

.field static final greylist-max-o TRANSACTION_noteResetFlashlight:I = 0xe

.field static final greylist-max-o TRANSACTION_noteResetVideo:I = 0x7

.field static final greylist-max-o TRANSACTION_noteScreenBrightness:I = 0x2b

.field static final greylist-max-o TRANSACTION_noteScreenState:I = 0x2a

.field static final greylist-max-o TRANSACTION_noteStartAudio:I = 0x5

.field static final greylist-max-o TRANSACTION_noteStartCamera:I = 0xb

.field static final greylist-max-o TRANSACTION_noteStartSensor:I = 0x1

.field static final blacklist TRANSACTION_noteStartSensorWithPkg:I = 0xf

.field static final greylist-max-o TRANSACTION_noteStartVideo:I = 0x3

.field static final greylist-max-o TRANSACTION_noteStartWakelock:I = 0x1d

.field static final greylist-max-o TRANSACTION_noteStartWakelockFromSource:I = 0x1f

.field static final greylist-max-o TRANSACTION_noteStopAudio:I = 0x6

.field static final greylist-max-o TRANSACTION_noteStopCamera:I = 0xc

.field static final greylist-max-o TRANSACTION_noteStopSensor:I = 0x2

.field static final blacklist TRANSACTION_noteStopSensorWithPkg:I = 0x10

.field static final greylist-max-o TRANSACTION_noteStopVideo:I = 0x4

.field static final greylist-max-o TRANSACTION_noteStopWakelock:I = 0x1e

.field static final greylist-max-o TRANSACTION_noteStopWakelockFromSource:I = 0x21

.field static final greylist-max-o TRANSACTION_noteSyncFinish:I = 0x1a

.field static final greylist-max-o TRANSACTION_noteSyncStart:I = 0x19

.field static final greylist-max-o TRANSACTION_noteUserActivity:I = 0x2c

.field static final greylist-max-o TRANSACTION_noteVibratorOff:I = 0x27

.field static final greylist-max-o TRANSACTION_noteVibratorOn:I = 0x26

.field static final blacklist TRANSACTION_noteVideoFps:I = 0x11

.field static final greylist-max-o TRANSACTION_noteWakeUp:I = 0x2d

.field static final greylist-max-o TRANSACTION_noteWifiBatchedScanStartedFromSource:I = 0x48

.field static final greylist-max-o TRANSACTION_noteWifiBatchedScanStoppedFromSource:I = 0x49

.field static final greylist-max-o TRANSACTION_noteWifiControllerActivity:I = 0x60

.field static final greylist-max-o TRANSACTION_noteWifiMulticastDisabled:I = 0x43

.field static final greylist-max-o TRANSACTION_noteWifiMulticastEnabled:I = 0x42

.field static final greylist-max-o TRANSACTION_noteWifiOff:I = 0x37

.field static final greylist-max-o TRANSACTION_noteWifiOn:I = 0x36

.field static final greylist-max-o TRANSACTION_noteWifiRadioPowerState:I = 0x4a

.field static final greylist-max-o TRANSACTION_noteWifiRssiChanged:I = 0x3d

.field static final greylist-max-o TRANSACTION_noteWifiRunning:I = 0x38

.field static final greylist-max-o TRANSACTION_noteWifiRunningChanged:I = 0x39

.field static final greylist-max-o TRANSACTION_noteWifiScanStarted:I = 0x40

.field static final greylist-max-o TRANSACTION_noteWifiScanStartedFromSource:I = 0x46

.field static final greylist-max-o TRANSACTION_noteWifiScanStopped:I = 0x41

.field static final greylist-max-o TRANSACTION_noteWifiScanStoppedFromSource:I = 0x47

.field static final greylist-max-o TRANSACTION_noteWifiState:I = 0x3b

.field static final greylist-max-o TRANSACTION_noteWifiStopped:I = 0x3a

.field static final greylist-max-o TRANSACTION_noteWifiSupplicantStateChanged:I = 0x3c

.field static final blacklist TRANSACTION_resetBattery:I = 0x65

.field static final blacklist TRANSACTION_setBatteryLevel:I = 0x63

.field static final greylist-max-o TRANSACTION_setBatteryState:I = 0x4e

.field static final blacklist TRANSACTION_setChargerAcOnline:I = 0x62

.field static final blacklist TRANSACTION_setChargingStateUpdateDelayMillis:I = 0x61

.field static final blacklist TRANSACTION_suspendBatteryInput:I = 0x66

.field static final greylist-max-o TRANSACTION_takeUidSnapshot:I = 0x5c

.field static final greylist-max-o TRANSACTION_takeUidSnapshots:I = 0x5d

.field static final blacklist TRANSACTION_unplugBattery:I = 0x64


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 376
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 377
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 385
    if-nez p0, :cond_4

    .line 386
    const/4 v0, 0x0

    return-object v0

    .line 388
    :cond_4
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 389
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_14

    .line 390
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IBatteryStats;

    return-object v1

    .line 392
    :cond_14
    new-instance v1, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 401
    packed-switch p0, :pswitch_data_19a

    .line 825
    const/4 v0, 0x0

    return-object v0

    .line 821
    :pswitch_5
    const-string v0, "getDyAppScreenPower"

    return-object v0

    .line 817
    :pswitch_8
    const-string v0, "getTargetScreenInfo"

    return-object v0

    .line 813
    :pswitch_b
    const-string v0, "getAppScreenInfo"

    return-object v0

    .line 809
    :pswitch_e
    const-string/jumbo v0, "suspendBatteryInput"

    return-object v0

    .line 805
    :pswitch_12
    const-string/jumbo v0, "resetBattery"

    return-object v0

    .line 801
    :pswitch_16
    const-string/jumbo v0, "unplugBattery"

    return-object v0

    .line 797
    :pswitch_1a
    const-string/jumbo v0, "setBatteryLevel"

    return-object v0

    .line 793
    :pswitch_1e
    const-string/jumbo v0, "setChargerAcOnline"

    return-object v0

    .line 789
    :pswitch_22
    const-string/jumbo v0, "setChargingStateUpdateDelayMillis"

    return-object v0

    .line 785
    :pswitch_26
    const-string/jumbo v0, "noteWifiControllerActivity"

    return-object v0

    .line 781
    :pswitch_2a
    const-string/jumbo v0, "noteModemControllerActivity"

    return-object v0

    .line 777
    :pswitch_2e
    const-string/jumbo v0, "noteBluetoothControllerActivity"

    return-object v0

    .line 773
    :pswitch_32
    const-string/jumbo v0, "takeUidSnapshots"

    return-object v0

    .line 769
    :pswitch_36
    const-string/jumbo v0, "takeUidSnapshot"

    return-object v0

    .line 765
    :pswitch_3a
    const-string v0, "getBluetoothBatteryStats"

    return-object v0

    .line 761
    :pswitch_3d
    const-string v0, "getWakeLockStats"

    return-object v0

    .line 757
    :pswitch_40
    const-string v0, "getGpsBatteryStats"

    return-object v0

    .line 753
    :pswitch_43
    const-string v0, "getWifiBatteryStats"

    return-object v0

    .line 749
    :pswitch_46
    const-string v0, "getCellularBatteryStats"

    return-object v0

    .line 745
    :pswitch_49
    const-string/jumbo v0, "noteBleScanResults"

    return-object v0

    .line 741
    :pswitch_4d
    const-string/jumbo v0, "noteBleScanReset"

    return-object v0

    .line 737
    :pswitch_51
    const-string/jumbo v0, "noteBleScanStopped"

    return-object v0

    .line 733
    :pswitch_55
    const-string/jumbo v0, "noteBleScanStarted"

    return-object v0

    .line 729
    :pswitch_59
    const-string/jumbo v0, "noteBluetoothOff"

    return-object v0

    .line 725
    :pswitch_5d
    const-string/jumbo v0, "noteBluetoothOn"

    return-object v0

    .line 721
    :pswitch_61
    const-string v0, "getAwakeTimePlugged"

    return-object v0

    .line 717
    :pswitch_64
    const-string v0, "getAwakeTimeBattery"

    return-object v0

    .line 713
    :pswitch_67
    const-string/jumbo v0, "setBatteryState"

    return-object v0

    .line 709
    :pswitch_6b
    const-string/jumbo v0, "noteDeviceIdleMode"

    return-object v0

    .line 705
    :pswitch_6f
    const-string/jumbo v0, "noteNetworkStatsEnabled"

    return-object v0

    .line 701
    :pswitch_73
    const-string/jumbo v0, "noteNetworkInterfaceForTransports"

    return-object v0

    .line 697
    :pswitch_77
    const-string/jumbo v0, "noteWifiRadioPowerState"

    return-object v0

    .line 693
    :pswitch_7b
    const-string/jumbo v0, "noteWifiBatchedScanStoppedFromSource"

    return-object v0

    .line 689
    :pswitch_7f
    const-string/jumbo v0, "noteWifiBatchedScanStartedFromSource"

    return-object v0

    .line 685
    :pswitch_83
    const-string/jumbo v0, "noteWifiScanStoppedFromSource"

    return-object v0

    .line 681
    :pswitch_87
    const-string/jumbo v0, "noteWifiScanStartedFromSource"

    return-object v0

    .line 677
    :pswitch_8b
    const-string/jumbo v0, "noteFullWifiLockReleasedFromSource"

    return-object v0

    .line 673
    :pswitch_8f
    const-string/jumbo v0, "noteFullWifiLockAcquiredFromSource"

    return-object v0

    .line 669
    :pswitch_93
    const-string/jumbo v0, "noteWifiMulticastDisabled"

    return-object v0

    .line 665
    :pswitch_97
    const-string/jumbo v0, "noteWifiMulticastEnabled"

    return-object v0

    .line 661
    :pswitch_9b
    const-string/jumbo v0, "noteWifiScanStopped"

    return-object v0

    .line 657
    :pswitch_9f
    const-string/jumbo v0, "noteWifiScanStarted"

    return-object v0

    .line 653
    :pswitch_a3
    const-string/jumbo v0, "noteFullWifiLockReleased"

    return-object v0

    .line 649
    :pswitch_a7
    const-string/jumbo v0, "noteFullWifiLockAcquired"

    return-object v0

    .line 645
    :pswitch_ab
    const-string/jumbo v0, "noteWifiRssiChanged"

    return-object v0

    .line 641
    :pswitch_af
    const-string/jumbo v0, "noteWifiSupplicantStateChanged"

    return-object v0

    .line 637
    :pswitch_b3
    const-string/jumbo v0, "noteWifiState"

    return-object v0

    .line 633
    :pswitch_b7
    const-string/jumbo v0, "noteWifiStopped"

    return-object v0

    .line 629
    :pswitch_bb
    const-string/jumbo v0, "noteWifiRunningChanged"

    return-object v0

    .line 625
    :pswitch_bf
    const-string/jumbo v0, "noteWifiRunning"

    return-object v0

    .line 621
    :pswitch_c3
    const-string/jumbo v0, "noteWifiOff"

    return-object v0

    .line 617
    :pswitch_c7
    const-string/jumbo v0, "noteWifiOn"

    return-object v0

    .line 613
    :pswitch_cb
    const-string/jumbo v0, "notePhoneState"

    return-object v0

    .line 609
    :pswitch_cf
    const-string/jumbo v0, "notePhoneDataConnectionState"

    return-object v0

    .line 605
    :pswitch_d3
    const-string/jumbo v0, "notePhoneSignalStrength"

    return-object v0

    .line 601
    :pswitch_d7
    const-string/jumbo v0, "notePhoneOff"

    return-object v0

    .line 597
    :pswitch_db
    const-string/jumbo v0, "notePhoneOn"

    return-object v0

    .line 593
    :pswitch_df
    const-string/jumbo v0, "noteMobileRadioPowerState"

    return-object v0

    .line 589
    :pswitch_e3
    const-string/jumbo v0, "noteConnectivityChanged"

    return-object v0

    .line 585
    :pswitch_e7
    const-string/jumbo v0, "noteInteractive"

    return-object v0

    .line 581
    :pswitch_eb
    const-string/jumbo v0, "noteWakeUp"

    return-object v0

    .line 577
    :pswitch_ef
    const-string/jumbo v0, "noteUserActivity"

    return-object v0

    .line 573
    :pswitch_f3
    const-string/jumbo v0, "noteScreenBrightness"

    return-object v0

    .line 569
    :pswitch_f7
    const-string/jumbo v0, "noteScreenState"

    return-object v0

    .line 565
    :pswitch_fb
    const-string/jumbo v0, "noteGpsSignalQuality"

    return-object v0

    .line 561
    :pswitch_ff
    const-string/jumbo v0, "noteGpsChanged"

    return-object v0

    .line 557
    :pswitch_103
    const-string/jumbo v0, "noteVibratorOff"

    return-object v0

    .line 553
    :pswitch_107
    const-string/jumbo v0, "noteVibratorOn"

    return-object v0

    .line 549
    :pswitch_10b
    const-string/jumbo v0, "noteLongPartialWakelockFinishFromSource"

    return-object v0

    .line 545
    :pswitch_10f
    const-string/jumbo v0, "noteLongPartialWakelockFinish"

    return-object v0

    .line 541
    :pswitch_113
    const-string/jumbo v0, "noteLongPartialWakelockStartFromSource"

    return-object v0

    .line 537
    :pswitch_117
    const-string/jumbo v0, "noteLongPartialWakelockStart"

    return-object v0

    .line 533
    :pswitch_11b
    const-string/jumbo v0, "noteStopWakelockFromSource"

    return-object v0

    .line 529
    :pswitch_11f
    const-string/jumbo v0, "noteChangeWakelockFromSource"

    return-object v0

    .line 525
    :pswitch_123
    const-string/jumbo v0, "noteStartWakelockFromSource"

    return-object v0

    .line 521
    :pswitch_127
    const-string/jumbo v0, "noteStopWakelock"

    return-object v0

    .line 517
    :pswitch_12b
    const-string/jumbo v0, "noteStartWakelock"

    return-object v0

    .line 513
    :pswitch_12f
    const-string/jumbo v0, "noteJobFinish"

    return-object v0

    .line 509
    :pswitch_133
    const-string/jumbo v0, "noteJobStart"

    return-object v0

    .line 505
    :pswitch_137
    const-string/jumbo v0, "noteSyncFinish"

    return-object v0

    .line 501
    :pswitch_13b
    const-string/jumbo v0, "noteSyncStart"

    return-object v0

    .line 497
    :pswitch_13f
    const-string/jumbo v0, "noteEvent"

    return-object v0

    .line 493
    :pswitch_143
    const-string v0, "computeChargeTimeRemaining"

    return-object v0

    .line 489
    :pswitch_146
    const-string v0, "computeBatteryTimeRemaining"

    return-object v0

    .line 485
    :pswitch_149
    const-string v0, "isCharging"

    return-object v0

    .line 481
    :pswitch_14c
    const-string v0, "getStatisticsStream"

    return-object v0

    .line 477
    :pswitch_14f
    const-string v0, "getStatistics"

    return-object v0

    .line 473
    :pswitch_152
    const-string v0, "getBatteryUsageStats"

    return-object v0

    .line 469
    :pswitch_155
    const-string/jumbo v0, "noteVideoFps"

    return-object v0

    .line 465
    :pswitch_159
    const-string/jumbo v0, "noteStopSensorWithPkg"

    return-object v0

    .line 461
    :pswitch_15d
    const-string/jumbo v0, "noteStartSensorWithPkg"

    return-object v0

    .line 457
    :pswitch_161
    const-string/jumbo v0, "noteResetFlashlight"

    return-object v0

    .line 453
    :pswitch_165
    const-string/jumbo v0, "noteResetCamera"

    return-object v0

    .line 449
    :pswitch_169
    const-string/jumbo v0, "noteStopCamera"

    return-object v0

    .line 445
    :pswitch_16d
    const-string/jumbo v0, "noteStartCamera"

    return-object v0

    .line 441
    :pswitch_171
    const-string/jumbo v0, "noteFlashlightOff"

    return-object v0

    .line 437
    :pswitch_175
    const-string/jumbo v0, "noteFlashlightOn"

    return-object v0

    .line 433
    :pswitch_179
    const-string/jumbo v0, "noteResetAudio"

    return-object v0

    .line 429
    :pswitch_17d
    const-string/jumbo v0, "noteResetVideo"

    return-object v0

    .line 425
    :pswitch_181
    const-string/jumbo v0, "noteStopAudio"

    return-object v0

    .line 421
    :pswitch_185
    const-string/jumbo v0, "noteStartAudio"

    return-object v0

    .line 417
    :pswitch_189
    const-string/jumbo v0, "noteStopVideo"

    return-object v0

    .line 413
    :pswitch_18d
    const-string/jumbo v0, "noteStartVideo"

    return-object v0

    .line 409
    :pswitch_191
    const-string/jumbo v0, "noteStopSensor"

    return-object v0

    .line 405
    :pswitch_195
    const-string/jumbo v0, "noteStartSensor"

    return-object v0

    nop

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_195
        :pswitch_191
        :pswitch_18d
        :pswitch_189
        :pswitch_185
        :pswitch_181
        :pswitch_17d
        :pswitch_179
        :pswitch_175
        :pswitch_171
        :pswitch_16d
        :pswitch_169
        :pswitch_165
        :pswitch_161
        :pswitch_15d
        :pswitch_159
        :pswitch_155
        :pswitch_152
        :pswitch_14f
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_13f
        :pswitch_13b
        :pswitch_137
        :pswitch_133
        :pswitch_12f
        :pswitch_12b
        :pswitch_127
        :pswitch_123
        :pswitch_11f
        :pswitch_11b
        :pswitch_117
        :pswitch_113
        :pswitch_10f
        :pswitch_10b
        :pswitch_107
        :pswitch_103
        :pswitch_ff
        :pswitch_fb
        :pswitch_f7
        :pswitch_f3
        :pswitch_ef
        :pswitch_eb
        :pswitch_e7
        :pswitch_e3
        :pswitch_df
        :pswitch_db
        :pswitch_d7
        :pswitch_d3
        :pswitch_cf
        :pswitch_cb
        :pswitch_c7
        :pswitch_c3
        :pswitch_bf
        :pswitch_bb
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 396
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3750
    const/16 v0, 0x68

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 832
    invoke-static {p1}, Lcom/android/internal/app/IBatteryStats$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 33
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "com.android.internal.app.IBatteryStats"

    .line 837
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v13, v9, :cond_15

    const v0, 0xffffff

    if-gt v13, v0, :cond_15

    .line 838
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    :cond_15
    packed-switch v13, :pswitch_data_92c

    .line 848
    packed-switch v13, :pswitch_data_932

    .line 1913
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 844
    :pswitch_20
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 845
    return v9

    .line 1906
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getDyAppScreenPower()[B

    move-result-object v0

    .line 1907
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1909
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1897
    .end local v0    # "_result":[B
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1898
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1899
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getTargetScreenInfo(Ljava/lang/String;)[B

    move-result-object v1

    .line 1900
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1901
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1902
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1889
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[B
    :pswitch_49
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAppScreenInfo()[B

    move-result-object v0

    .line 1890
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1891
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1892
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1883
    .end local v0    # "_result":[B
    :pswitch_58
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->suspendBatteryInput()V

    .line 1884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1885
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1875
    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1876
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1877
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->resetBattery(Z)V

    .line 1878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1866
    .end local v0    # "_arg0":Z
    :pswitch_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1867
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1868
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->unplugBattery(Z)V

    .line 1869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1870
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1855
    .end local v0    # "_arg0":Z
    :pswitch_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1857
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1858
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1859
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryLevel(IZ)V

    .line 1860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1861
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1844
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1846
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1847
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1848
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargerAcOnline(ZZ)V

    .line 1849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1850
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1834
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1835
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1836
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargingStateUpdateDelayMillis(I)Z

    move-result v1

    .line 1837
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1839
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1826
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_c9
    sget-object v0, Landroid/os/connectivity/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 1827
    .local v0, "_arg0":Landroid/os/connectivity/WifiActivityEnergyInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1828
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    .line 1829
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1818
    .end local v0    # "_arg0":Landroid/os/connectivity/WifiActivityEnergyInfo;
    :pswitch_dc
    sget-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;

    .line 1819
    .local v0, "_arg0":Landroid/telephony/ModemActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1820
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V

    .line 1821
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1810
    .end local v0    # "_arg0":Landroid/telephony/ModemActivityInfo;
    :pswitch_ef
    sget-object v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 1811
    .local v0, "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1812
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    .line 1813
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1800
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :pswitch_102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1801
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1802
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    move-result-object v1

    .line 1803
    .local v1, "_result":[Landroid/os/health/HealthStatsParceler;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1804
    invoke-virtual {v15, v1, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1805
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1790
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":[Landroid/os/health/HealthStatsParceler;
    :pswitch_118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1791
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1792
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v1

    .line 1793
    .local v1, "_result":Landroid/os/health/HealthStatsParceler;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1794
    invoke-virtual {v15, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1795
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1782
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/health/HealthStatsParceler;
    :pswitch_12e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object v0

    .line 1783
    .local v0, "_result":Landroid/os/BluetoothBatteryStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1785
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1775
    .end local v0    # "_result":Landroid/os/BluetoothBatteryStats;
    :pswitch_13d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object v0

    .line 1776
    .local v0, "_result":Landroid/os/WakeLockStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1777
    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1778
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1768
    .end local v0    # "_result":Landroid/os/WakeLockStats;
    :pswitch_14c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v0

    .line 1769
    .local v0, "_result":Landroid/os/connectivity/GpsBatteryStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1770
    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1771
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1761
    .end local v0    # "_result":Landroid/os/connectivity/GpsBatteryStats;
    :pswitch_15b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v0

    .line 1762
    .local v0, "_result":Landroid/os/connectivity/WifiBatteryStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1764
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1754
    .end local v0    # "_result":Landroid/os/connectivity/WifiBatteryStats;
    :pswitch_16a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v0

    .line 1755
    .local v0, "_result":Landroid/os/connectivity/CellularBatteryStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1757
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1744
    .end local v0    # "_result":Landroid/os/connectivity/CellularBatteryStats;
    :pswitch_179
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1746
    .local v0, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1747
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1748
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanResults(Landroid/os/WorkSource;I)V

    .line 1749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1750
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1737
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":I
    :pswitch_193
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanReset()V

    .line 1738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1727
    :pswitch_19e
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1729
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1730
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1731
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped(Landroid/os/WorkSource;Z)V

    .line 1732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1716
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":Z
    :pswitch_1b8
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1718
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1719
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1720
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted(Landroid/os/WorkSource;Z)V

    .line 1721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1703
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":Z
    :pswitch_1d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1705
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1707
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1708
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1709
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOff(IILjava/lang/String;)V

    .line 1710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1711
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1690
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_1ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1692
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1694
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1695
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1696
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOn(IILjava/lang/String;)V

    .line 1697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1682
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_206
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v0

    .line 1683
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1684
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1685
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1675
    .end local v0    # "_result":J
    :pswitch_215
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v0

    .line 1676
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1677
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1678
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1651
    .end local v0    # "_result":J
    :pswitch_224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1653
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1655
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1657
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1659
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1661
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1663
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1665
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1667
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 1668
    .local v24, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1669
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move v13, v9

    move-wide/from16 v9, v24

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIIIIIJ)V

    .line 1670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1638
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":J
    :pswitch_26a
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1640
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1642
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1643
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1644
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode(ILjava/lang/String;I)V

    .line 1645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1646
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1631
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_284
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled()V

    .line 1632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1621
    :pswitch_28f
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1623
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1624
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1625
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V

    .line 1626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1608
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[I
    :pswitch_2a5
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1610
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1612
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1613
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1614
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState(IJI)V

    .line 1615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1616
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1599
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_2bf
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1600
    .local v0, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1601
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 1602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1603
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1588
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_2d5
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1590
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1591
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1592
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    .line 1593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1579
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":I
    :pswitch_2ef
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1580
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1581
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 1582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1583
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1570
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_305
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1571
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1572
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V

    .line 1573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1574
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1561
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_31b
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1562
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1563
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 1564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1565
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1552
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_331
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1553
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1554
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 1555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1543
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_347
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1544
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1545
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    .line 1546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1534
    .end local v0    # "_arg0":I
    :pswitch_359
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1535
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1536
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    .line 1537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1525
    .end local v0    # "_arg0":I
    :pswitch_36b
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1526
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1527
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped(I)V

    .line 1528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1516
    .end local v0    # "_arg0":I
    :pswitch_37d
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1517
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1518
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted(I)V

    .line 1519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1507
    .end local v0    # "_arg0":I
    :pswitch_38f
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1508
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1509
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    .line 1510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1498
    .end local v0    # "_arg0":I
    :pswitch_3a1
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1499
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1500
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    .line 1501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1489
    .end local v0    # "_arg0":I
    :pswitch_3b3
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1490
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged(I)V

    .line 1492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1478
    .end local v0    # "_arg0":I
    :pswitch_3c5
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1480
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1481
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1482
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged(IZ)V

    .line 1483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1467
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_3db
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1469
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1470
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1471
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState(ILjava/lang/String;)V

    .line 1472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1458
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3f1
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1459
    .local v0, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1460
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 1461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1447
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_407
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1449
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1450
    .local v1, "_arg1":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1451
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1438
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :pswitch_425
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1439
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1440
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 1441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1431
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_43b
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    .line 1432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1425
    :pswitch_446
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    .line 1426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1417
    :pswitch_451
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1418
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1419
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    .line 1420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1402
    .end local v0    # "_arg0":I
    :pswitch_463
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1404
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1406
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1408
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1409
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1410
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZII)V

    .line 1411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1393
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_481
    move v13, v9

    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    .line 1394
    .local v0, "_arg0":Landroid/telephony/SignalStrength;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1395
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 1396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1386
    .end local v0    # "_arg0":Landroid/telephony/SignalStrength;
    :pswitch_497
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    .line 1387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1380
    :pswitch_4a2
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    .line 1381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1368
    :pswitch_4ad
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1370
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1372
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1373
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1374
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState(IJI)V

    .line 1375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1357
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_4c7
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1359
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1360
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1361
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged(ILjava/lang/String;)V

    .line 1362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1348
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4dd
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1349
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1350
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive(Z)V

    .line 1351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1337
    .end local v0    # "_arg0":Z
    :pswitch_4ef
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1339
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1340
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1341
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp(Ljava/lang/String;I)V

    .line 1342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1326
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_505
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1328
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1329
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    .line 1331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1317
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_51b
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1318
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1319
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    .line 1320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1308
    .end local v0    # "_arg0":I
    :pswitch_52d
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1309
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1310
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState(I)V

    .line 1311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1299
    .end local v0    # "_arg0":I
    :pswitch_53f
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1300
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1301
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsSignalQuality(I)V

    .line 1302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1288
    .end local v0    # "_arg0":I
    :pswitch_551
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1290
    .local v0, "_arg0":Landroid/os/WorkSource;
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1291
    .local v1, "_arg1":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1279
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :pswitch_56f
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1280
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1281
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff(I)V

    .line 1282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1268
    .end local v0    # "_arg0":I
    :pswitch_581
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1270
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1271
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1272
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn(IJ)V

    .line 1273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1255
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_597
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1259
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 1260
    .local v2, "_arg2":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1261
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 1262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1242
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    :pswitch_5b5
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1244
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1246
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1247
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1248
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1229
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_5cf
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1231
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1233
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 1234
    .local v2, "_arg2":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1235
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 1236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1216
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    :pswitch_5ed
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1220
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1221
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1222
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1199
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_607
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/WorkSource;

    .line 1201
    .local v6, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1203
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1205
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1207
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1208
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1209
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    move-object/from16 v27, v11

    goto/16 :goto_92b

    .line 1170
    .end local v6    # "_arg0":Landroid/os/WorkSource;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":I
    :pswitch_635
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/WorkSource;

    .line 1172
    .local v16, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1174
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1176
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1178
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1180
    .restart local v20    # "_arg4":I
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/WorkSource;

    .line 1182
    .local v21, "_arg5":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1184
    .restart local v22    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1186
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1188
    .local v24, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1190
    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 1191
    .local v26, "_arg10":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1192
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v10, v25

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v27, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    goto/16 :goto_92b

    .line 1151
    .end local v16    # "_arg0":Landroid/os/WorkSource;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":Landroid/os/WorkSource;
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":Ljava/lang/String;
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_693
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/WorkSource;

    .line 1153
    .local v7, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1155
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1157
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1159
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1161
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1162
    .local v16, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1163
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    goto/16 :goto_92b

    .line 1134
    .end local v7    # "_arg0":Landroid/os/WorkSource;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg5":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_6c7
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1136
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1138
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1140
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1142
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1143
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    goto/16 :goto_92b

    .line 1115
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_6f0
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1117
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1119
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1121
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1123
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1125
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1126
    .restart local v16    # "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    goto/16 :goto_92b

    .line 1102
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg5":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_71f
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1104
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1106
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1107
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish(Ljava/lang/String;II)V

    .line 1109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    goto/16 :goto_92b

    .line 1091
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_739
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1094
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart(Ljava/lang/String;I)V

    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    goto/16 :goto_92b

    .line 1080
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_74f
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1082
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1083
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish(Ljava/lang/String;I)V

    .line 1085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    goto/16 :goto_92b

    .line 1069
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_765
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1071
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1072
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1073
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart(Ljava/lang/String;I)V

    .line 1074
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    goto/16 :goto_92b

    .line 1056
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_77b
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1058
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1060
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1061
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent(ILjava/lang/String;I)V

    .line 1063
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    goto/16 :goto_92b

    .line 1048
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_795
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeChargeTimeRemaining()J

    move-result-wide v0

    .line 1049
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1051
    goto/16 :goto_92b

    .line 1041
    .end local v0    # "_result":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7a4
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryTimeRemaining()J

    move-result-wide v0

    .line 1042
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1044
    goto/16 :goto_92b

    .line 1034
    .end local v0    # "_result":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7b3
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->isCharging()Z

    move-result v0

    .line 1035
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1037
    goto/16 :goto_92b

    .line 1025
    .end local v0    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7c2
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1026
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatisticsStream(Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1028
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1030
    goto/16 :goto_92b

    .line 1017
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7d8
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatistics()[B

    move-result-object v0

    .line 1018
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1020
    goto/16 :goto_92b

    .line 1008
    .end local v0    # "_result":[B
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7e7
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/BatteryUsageStatsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1009
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1011
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1013
    goto/16 :goto_92b

    .line 997
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7ff
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 999
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1000
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVideoFps(II)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    goto/16 :goto_92b

    .line 984
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_815
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 986
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 988
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 989
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensorWithPkg(IILjava/lang/String;)V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    goto/16 :goto_92b

    .line 971
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_82f
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 973
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 975
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 976
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensorWithPkg(IILjava/lang/String;)V

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    goto/16 :goto_92b

    .line 964
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_849
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight()V

    .line 965
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    goto/16 :goto_92b

    .line 958
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_854
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera()V

    .line 959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    goto/16 :goto_92b

    .line 950
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_85f
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 951
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera(I)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_92b

    .line 941
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_871
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 942
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera(I)V

    .line 944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    goto/16 :goto_92b

    .line 932
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_883
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 933
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff(I)V

    .line 935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    goto/16 :goto_92b

    .line 923
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_895
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 924
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 925
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn(I)V

    .line 926
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    goto/16 :goto_92b

    .line 916
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8a7
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio()V

    .line 917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    goto/16 :goto_92b

    .line 910
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8b2
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo()V

    .line 911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    goto/16 :goto_92b

    .line 902
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8bd
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 903
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio(I)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    goto :goto_92b

    .line 893
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8ce
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 894
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio(I)V

    .line 896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    goto :goto_92b

    .line 884
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8df
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 885
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 886
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo(I)V

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    goto :goto_92b

    .line 875
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8f0
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 876
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 877
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo(I)V

    .line 878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    goto :goto_92b

    .line 864
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_901
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 866
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 867
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 868
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    goto :goto_92b

    .line 853
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_916
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 855
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 856
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    nop

    .line 1916
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_92b
    return v13

    :pswitch_data_92c
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_932
    .packed-switch 0x1
        :pswitch_916
        :pswitch_901
        :pswitch_8f0
        :pswitch_8df
        :pswitch_8ce
        :pswitch_8bd
        :pswitch_8b2
        :pswitch_8a7
        :pswitch_895
        :pswitch_883
        :pswitch_871
        :pswitch_85f
        :pswitch_854
        :pswitch_849
        :pswitch_82f
        :pswitch_815
        :pswitch_7ff
        :pswitch_7e7
        :pswitch_7d8
        :pswitch_7c2
        :pswitch_7b3
        :pswitch_7a4
        :pswitch_795
        :pswitch_77b
        :pswitch_765
        :pswitch_74f
        :pswitch_739
        :pswitch_71f
        :pswitch_6f0
        :pswitch_6c7
        :pswitch_693
        :pswitch_635
        :pswitch_607
        :pswitch_5ed
        :pswitch_5cf
        :pswitch_5b5
        :pswitch_597
        :pswitch_581
        :pswitch_56f
        :pswitch_551
        :pswitch_53f
        :pswitch_52d
        :pswitch_51b
        :pswitch_505
        :pswitch_4ef
        :pswitch_4dd
        :pswitch_4c7
        :pswitch_4ad
        :pswitch_4a2
        :pswitch_497
        :pswitch_481
        :pswitch_463
        :pswitch_451
        :pswitch_446
        :pswitch_43b
        :pswitch_425
        :pswitch_407
        :pswitch_3f1
        :pswitch_3db
        :pswitch_3c5
        :pswitch_3b3
        :pswitch_3a1
        :pswitch_38f
        :pswitch_37d
        :pswitch_36b
        :pswitch_359
        :pswitch_347
        :pswitch_331
        :pswitch_31b
        :pswitch_305
        :pswitch_2ef
        :pswitch_2d5
        :pswitch_2bf
        :pswitch_2a5
        :pswitch_28f
        :pswitch_284
        :pswitch_26a
        :pswitch_224
        :pswitch_215
        :pswitch_206
        :pswitch_1ec
        :pswitch_1d2
        :pswitch_1b8
        :pswitch_19e
        :pswitch_193
        :pswitch_179
        :pswitch_16a
        :pswitch_15b
        :pswitch_14c
        :pswitch_13d
        :pswitch_12e
        :pswitch_118
        :pswitch_102
        :pswitch_ef
        :pswitch_dc
        :pswitch_c9
        :pswitch_b3
        :pswitch_9d
        :pswitch_87
        :pswitch_75
        :pswitch_63
        :pswitch_58
        :pswitch_49
        :pswitch_33
        :pswitch_24
    .end packed-switch
.end method
