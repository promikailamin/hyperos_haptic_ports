.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;
.implements Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;
.implements Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field public final mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

.field public final mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mConfigFile:Landroid/util/AtomicFile;

.field public final mContext:Landroid/content/Context;

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public final mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

.field public mDecoderStat:Ljava/nio/charset/CharsetDecoder;

.field public final mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

.field public mEntityNames:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mLastPowerStateFromRadio:I

.field public mLastPowerStateFromWifi:I

.field public volatile mMonitorEnabled:Z

.field public final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

.field public final mPowerManagerFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public final mPowerStatsLock:Ljava/lang/Object;

.field public final mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

.field public final mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

.field public mRailsStatsCollectionEnabled:Z

.field public mStateNames:Ljava/util/Map;

.field public final mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mSystemReady:Landroid/os/ConditionVariable;

.field public final mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

.field public final mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;


# direct methods
.method public static synthetic $r8$lambda$-0x7CFJfWKUGJn7sOwq909HAXBA(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockStartFromSource$29(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$-2M1RtG42SD22KN5-ydbtFvMZ2I(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteScreenBrightness$39(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$-D8HI5hnP0VIbpuX6n5fTQgQZ3E(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$updateForegroundTimeIfOnBattery$97(ILjava/lang/String;JJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$033J9icJbJvpBT0jV8-uqjmNNqI(Lcom/android/server/am/BatteryStatsService;JJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteCurrentTimeChanged$98(JJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$0fzjwUAJJ2V4v0Cay7jzrTdU40o(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartAudio$52(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2xz1boe9KGfInamwFm0ylPZF8fY(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStopLaunch$105(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4D94gb_-zubRD39q5rXspPM9kVc(Lcom/android/server/am/BatteryStatsService;IZIIIJJ)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneDataConnectionState$48(IZIIIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4M_PEQAgP2uRYGkmauOliNusd6s(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiState$68(ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$4VxyzAaJwRPF0CL-i5dwtIRARWk(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiStopped$67(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4a0lpzeAmggp70fkO-xtdl_hMso(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1

    .line 702
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic $r8$lambda$5DnFHppB8VrLRp1FPT4El8R94sA(Lcom/android/server/am/BatteryStatsService;IJIJJ)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteMobileRadioPowerState$44(IJIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$5NUW-CFGVE8WF6xUKrwN74CSvqk(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWakupAlarm$20(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$5c9rjGQgA92fhsoBQw9Y09QbGbc(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 11

    .line 0
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartWakelock$23(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$70eN_K-s58p6l5EY1KYPtppqPbc(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessStart$9(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ZiYijlMS-8U1RKJz230nXdB6hs(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStopRunning$103(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$7uHO_IGSlMPXviLntqEmFU1ne3c(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetFlashlight$63(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8-29OwVe8UfKh4PqhWzvjfFbwlc(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRssiChanged$70(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Iku6fYdB9aja2mKKyninnzJwX0(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanResults$91(Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$93cBRVMrSGLhraooNNz0FTz0-ec(Lcom/android/server/am/BatteryStatsService;IJIJJ)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRadioPowerState$64(IJIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ksEGRSaECVI9gyJ-euviyQNynY(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteConnectivityChanged$43(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$9w4mwgpslyOzt3AR9Ha0zPYHpwA(Lcom/android/server/am/BatteryStatsService;)Ljava/lang/Long;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$createPowerStatsScheduler$1()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$A1l4sHSEiOFowjnuDbkOgGPo5TU(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetVideo$57(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$AVovY0AMHiiXsBa6jBuOU51vHcs(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneSignalStrength$47(Landroid/telephony/SignalStrength;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$BgIgbn34ypE8W0Q_MwEAmAemPlU(Lcom/android/server/am/BatteryStatsService;IIIJJJ)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteScreenState$38(IIIJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$C6FpWSABUutRWNI5WWUNUMlbhX8(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobStart$17(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$C8LquPLFDWJyUcW0-vB81_K2VSw(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetCamera$62(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$C_fMqBY1mk-zhnJsuQbZs3npGcI(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockAcquired$71(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$DC7gpuwMm6j0l2bG19a5M1Ei2sY(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;[I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService;->lambda$noteNetworkInterfaceForTransports$83(Ljava/lang/String;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DU-o6h6aLnoKPvLYt0hicwKfF64(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IIJJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobFinish$18(Ljava/lang/String;IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$E8OYWaCFFgdW-mBaycyhFcXMoQw(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRunningChanged$66(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$EUuMSjtQ0DR6HPStviIw-87Kyeg(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteGpsSignalQuality$37(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$EgeH5604sbT6COs9ssH7Gnc9_UY(Lcom/android/server/am/BatteryStatsService;ZJ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->lambda$noteInteractive$42(ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$GKbzPjAlGhXUKbFZsQflQIXmFJo(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteDeviceIdleMode$85(ILjava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$HB6PHpsf2JO-bV8EaT-6cBmi25g(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 16

    .line 0
    invoke-virtual/range {p0 .. p15}, Lcom/android/server/am/BatteryStatsService;->lambda$noteChangeWakelockFromSource$26(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$I4JXgMyze7aO4AYNI9qaJb5DHnE(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartSensor$32(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$IuvXsiNHK4V_dxqN_Y7AHEsAbJ4(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteGpsChanged$36(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JDCFso_hdzQ-TtWGSaCa34N-MP8(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStartedFromSource$79(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JGPW_Im7RwMLo5l9vXW93TJI7Lw(Lcom/android/server/am/BatteryStatsService;Landroid/os/PowerSaveState;JJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$onLowPowerModeChanged$4(Landroid/os/PowerSaveState;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JVR0Z6yhxWXhP9R0SZTjJsu7cl8(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStartRunning$102(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$K4J0zFXc6EiDhv-npoIAb0cp1Us(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$notePackageUninstalled$87(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KWnpYgez9XnIYTdHYwFXQBEtGWA(Lcom/android/server/am/BatteryStatsService;IZJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiSupplicantStateChanged$69(IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$L6Emotnq_h9BsIXrMev47t-2ues(Lcom/android/server/am/BatteryStatsService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$noteNetworkStatsEnabled$84()V

    return-void
.end method

.method public static synthetic $r8$lambda$LE97gYrrnh1bo_YLW7Vg20gfvIY(Lcom/android/server/am/BatteryStatsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->lambda$onUserRemoved$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OMr0PYqqN0qekZ4Oq5EyCc3f6yY(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteUserActivity$40(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ONL4xIn5u9mOL34Q_nVSX7Zeq6I(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetAudio$56(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$OhJLPVUcNE2aJEqSh0lB1Ezv3_M(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartCamera$60(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$PXj7S4LATbkxA_dspfvOHoPQjvw(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockReleasedFromSource$78(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pn9-Sr4K3UktLGVx-N0-0ipeYfs(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockAcquiredFromSource$77(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q2q8fkCHVH0INoLypQ1Xx7OQO5c(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartVideo$54(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QChUd1G6g1_FJ1G5zg2vCcUJr6g(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteUidProcessState$13(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$RRZ48-2jMh98sFXgwF2MKkkzM0g(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockFinishFromSource$31(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$RbxgJdigotDMT2nBosZSrcpx2JA(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockFinish$30(Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$S2EACvTzdacLK36CDf9BLXIiBdE(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopWakelockFromSource$27(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TItPRlBD8FUMtanBE_REU0Bc7wI(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopWakelock$24(IILjava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TQviDJidtGDxQAAKQbSr5Ay1c4w(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessFinish$12(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$UvPVJvfLJUv7DtJ03YLFls1_iP0(Lcom/android/server/am/BatteryStatsService;JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$createPowerStatsScheduler$0(JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VOEBeS3jOU02rZfcXEfni9PuRDQ(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 11

    .line 0
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartWakelockFromSource$25(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$WGE_EOYGR6nixuM7brNQ9XrOiF4(Lcom/android/server/am/BatteryStatsService;[ILandroid/os/ResultReceiver;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService;->lambda$takeUidSnapshotsAsync$96([ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wa9jIYE_3fUNSKNvj6w1pQ0cQP8(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiControllerActivity$92(Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WhP3tsKNyaWq4EKerIaU2_tdTiA(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanReset$90(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$WiVmYlabAlQvGN_fxvfxPnFRXhE(Lcom/android/server/am/BatteryStatsService;IIJJJ)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobsDeferred$19(IIJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$WkwX9rcT9mMOtA9bjNLRt0WfrYM(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiOn$50(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YruM32EUvUPcBIsiSaEzCqeUrpI(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteAlarmFinish$22(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$_qYga3d6vNLaRUm4VjmbzB2fq2I(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStarted$73(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$_wc9i2CN7elpRhTTxnndgHftIik(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessAnr$11(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$b5OvZJRDpYtfJ0KOoyXUt06apks(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanStopped$89(Landroid/os/WorkSource;ZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$bCU2NMPZlj19lZCQiVHurw0zyFI(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopVideo$55(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$bi7UFzJ1TuR5V0ZuHCwbFgLTnJs(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteSyncStart$15(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$cRayXx_PPKB_F1pufbVe8p0SRDU(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFlashlightOn$58(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$dF-U_JxRR-TXS-G38yOId48wzV8(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneState$49(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ddq7NpuLcp_g9NHT-5dAVluKF5k(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFlashlightOff$59(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$f2qy834aVcQanONYXL7P_ly_aM4(Lcom/android/server/am/BatteryStatsService;IJ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->lambda$onCleanupUser$7(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$f7YTA7KXLeuJfd9ui_uSHE_x4U4(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopSensor$33(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$fx2VFZKhzOzowSIL84RzYCNiM2A(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneOff$46(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$g5F2iod5rkuBWKW51BpAD_uY9EM(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteAlarmStart$21(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hQPDLi0WrcPIkhfpv4ZQEEC1HwU(Lcom/android/server/am/BatteryStatsService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$scheduleWriteToDisk$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$jZB5Bx0ikvbonfq7hXrQlLgCTZE(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$notePackageInstalled$86(Ljava/lang/String;JJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jbWUTPBmhExF4PTH--pKumrewMg(Lcom/android/server/am/BatteryStatsService;IJ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->lambda$removeUid$6(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jy-ohEe969VzgJVbELMt1KjAIwg(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessCrash$10(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$liYAli0riOYojTqmhBGJxlHfFSc(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopCamera$61(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$m7DqKABywY73XuHOMA4DW0024WI(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanStarted$88(Landroid/os/WorkSource;ZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$mIeVS0XPV_1AEQ72QbxceRmeGHo(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStoppedFromSource$80(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$os6KmfqSshX8Zmp511e6oQ6ffTU(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteSyncFinish$16(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$p7pQ56WbLar-P3TAxeMRx2Gu6D0(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneOn$45(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$qWnZXQfGFFn4QHXNmTd4DHWeXNc(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWakeUp$41(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rbX6PWNefdfv6B_50VnXELEMDf0(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopAudio$53(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$s8PaOZnwn24EguCy64xwn3r7fwI(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockStart$28(Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$sVBeRNiwjmDOsFvtBCaXNYMCCqA(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStopped$74(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$sqB_0NoPbXgwuh-ZQaJfwVslwMU(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteVibratorOff$35(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$t91TOJh38hVtPWKKkh8UY9TWjOk(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRunning$65(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$tAEkQCnOHp10pcjaetSHwiFRt94(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$reportExcessiveCpu$101(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$uncJDv-bKHTjZMTHDbwDto1XTb8(Lcom/android/server/am/BatteryStatsService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessDied$100(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$uvNzEI4UwElG2Z0JDERihdRFg7U(Lcom/android/server/am/BatteryStatsService;ZIJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$updateBatteryStatsOnActivityUsage$99(ZIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$v5i86d7gh9jhycRQIAW4bfFGFFo(Lcom/android/server/am/BatteryStatsService;IJ[I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteCpuWakingActivity$2(IJ[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhxw7n4w66Y-hoHgR6-ipsnlQOg(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiOff$51(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vjN6T63qFASpr4d6EP3SrjPBIf0(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiMulticastEnabled$75(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$w-byLGGcKTmpnzM-RJExyhOUG0A(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockReleased$72(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wFqPAiNjCa6qDq5bpl5eDO7CDlc(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStartLaunch$104(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xlvrZK8BUYnDvDihlz7uLyOrKQM(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiBatchedScanStartedFromSource$81(Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xojdHRayd8rEc5I8EnGVfIYEOYE(Lcom/android/server/am/BatteryStatsService;IJJJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteVibratorOn$34(IJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-y3h0lSxXLSXkCUxWA29nzp2J0(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBluetoothControllerActivity$93(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$yJVpRyHcaqVi7LWAiD61dBrBsS8(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiBatchedScanStoppedFromSource$82(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zMfUDYpyfvXoTO_IkZmneH4xVgA(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteModemControllerActivity$94(Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zWa6rENoUGMm9qtqaeaQQmyuaoI(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiMulticastDisabled$76(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zcaXdcretfiWVj0PqArKxPRoVbE(Lcom/android/server/am/BatteryStatsService;ZIIIIIIIIJJJJ)V
    .registers 18

    .line 0
    invoke-virtual/range {p0 .. p17}, Lcom/android/server/am/BatteryStatsService;->lambda$setBatteryState$95(ZIIIIIIIIJJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zkXyGfuKC6HI4x68m_-LppSuQG4(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteEvent$14(ILjava/lang/String;IJJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/am/BatteryStatsService;)Lcom/android/internal/os/Clock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/am/BatteryStatsService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/BatteryStatsService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerStatsUidResolver(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/power/stats/PowerStatsUidResolver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWaitWakeup(Ljava/nio/ByteBuffer;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 17

    move-object/from16 v6, p2

    .line 350
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 192
    new-instance v13, Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-direct {v13}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    iput-object v13, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 194
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-direct {v0}, Lcom/android/server/power/feature/PowerManagerFlags;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 197
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mRailsStatsCollectionEnabled:Z

    .line 200
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 201
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 202
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 203
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    const-string v3, "?"

    .line 204
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    .line 212
    sget-object v4, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iput-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    .line 213
    new-instance v2, Landroid/os/ConditionVariable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mSystemReady:Landroid/os/ConditionVariable;

    .line 215
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 216
    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 218
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    .line 220
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    .line 223
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 225
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 227
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

    .line 333
    new-instance v0, Lcom/android/server/am/BatteryStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$2;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 351
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 352
    new-instance v10, Lcom/android/server/am/BatteryStatsService$3;

    invoke-direct {v10, p0}, Lcom/android/server/am/BatteryStatsService$3;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    .line 362
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "batterystats-handler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 363
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 364
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 365
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;

    invoke-direct {v0, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;-><init>(Landroid/os/ConditionVariable;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    new-instance v5, Lcom/android/internal/os/MonotonicClock;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "monotonic_clock.xml"

    invoke-direct {v0, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v0}, Lcom/android/internal/os/MonotonicClock;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 368
    new-instance v3, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 369
    new-instance v0, Lcom/android/internal/os/CpuScalingPolicyReader;

    invoke-direct {v0}, Lcom/android/internal/os/CpuScalingPolicyReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicyReader;->read()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110055

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x10e003e

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110054

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10e003b

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 379
    new-instance v11, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    invoke-direct {v11}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;-><init>()V

    .line 381
    invoke-virtual {v11, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setResetOnUnplugHighBatteryLevel(Z)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    move-result-object v0

    .line 382
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setHighBatteryLevelAfterCharge(I)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setResetOnUnplugAfterSignificantCharge(Z)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    move-result-object v0

    .line 385
    invoke-virtual {v0, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setMaxHistorySizeBytes(I)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    move-result-object v0

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x10402db

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BatteryStatsService;->setPowerStatsThrottlePeriods(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->build()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    .line 389
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v9, p0

    move-object v8, p0

    move-object v11, v3

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    move-object v8, v5

    move-object v10, v6

    move-object v3, v11

    move-object v11, v7

    move-object v7, v4

    move-object v4, v12

    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 392
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-direct {v0, p1, v2, v11, v7}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;-><init>(Landroid/content/Context;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;Lcom/android/internal/os/Clock;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 393
    invoke-virtual {v2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->setExternalStatsSyncLocked(Lcom/android/server/power/stats/BatteryStatsImpl$ExternalStatsSync;)V

    .line 394
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x10e0131

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v12, 0x3e8

    mul-long/2addr v5, v12

    invoke-virtual {v2, v5, v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->setRadioScanningTimeoutLocked(J)V

    .line 396
    new-instance v5, Lcom/android/server/power/stats/PowerStatsStore;

    invoke-direct {v5, v10, v11}, Lcom/android/server/power/stats/PowerStatsStore;-><init>(Ljava/io/File;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 397
    new-instance v0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    .line 398
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    new-instance v5, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;

    invoke-direct {v5, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;-><init>(Landroid/content/Context;Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Ljava/util/function/DoubleSupplier;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    .line 399
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BatteryStatsService;->createPowerStatsScheduler(Landroid/content/Context;)Lcom/android/server/power/stats/PowerStatsScheduler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 403
    new-instance v3, Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    move-object v4, v0

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;-><init>(Lcom/android/server/power/stats/PowerAttributor;Lcom/android/server/power/stats/PowerStatsStore;ILcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;)V

    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 406
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    invoke-direct {v0, v3}, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    .line 407
    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    const v2, 0x117000d

    invoke-direct {v0, p1, v2, v11}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 408
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "battery_usage_stats_config"

    invoke-direct {v1, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;)Lcom/android/server/am/BatteryStatsService;
    .registers 4

    .line 457
    new-instance p2, Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p2, p0, p1}, Lcom/android/server/am/BatteryStatsService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 458
    iget-object p0, p2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setCallback(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;)V

    .line 459
    iget-object p0, p2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    .line 460
    :try_start_d
    iget-object p1, p2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->readLocked()V

    .line 461
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 462
    invoke-virtual {p2}, Lcom/android/server/am/BatteryStatsService;->scheduleWriteToDisk()V

    return-object p2

    :catchall_17
    move-exception p1

    .line 461
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 2920
    const-string p0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2921
    const-string p0, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2922
    const-string p0, "  [--daily] [--reset] [--reset-all] [--write] [--new-daily] [--read-daily]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2923
    const-string p0, "  [-h] [<package.name>]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2924
    const-string p0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2925
    const-string p0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2926
    const-string p0, "  -c: write the current stats in checkin format."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2927
    const-string p0, "  --proto: write the current aggregate stats (without history) in proto format."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2929
    const-string p0, "  --history: show only history data."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    const-string p0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2932
    const-string p0, "  --history-create-events <num>: create <num> of battery history events."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2933
    const-string p0, "  --charged: only output data since last charged."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2934
    const-string p0, "  --daily: only output full daily data."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    const-string p0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2936
    const-string p0, "  --reset-all: reset the stats, clearing all current and past data."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2937
    const-string p0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2938
    const-string p0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2939
    const-string p0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2940
    const-string p0, "  --settings: dump the settings key/values related to batterystats"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2941
    const-string p0, "  --cpu: dump cpu stats for debugging purpose"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    const-string p0, "  --wakeups: dump CPU wakeup history and attribution."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2943
    const-string p0, "  --power-profile: dump the power profile constants"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2944
    const-string p0, "  --usage: write battery usage stats. Optional arguments:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2945
    const-string p0, "     --proto: output as a binary protobuffer"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2946
    const-string p0, "     --model power-profile: use the power profile model even if measured energy is available"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    const-string p0, "     --accumulated: continuously accumulated since setup or reset-all"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2949
    const-string p0, "  --sample: collect and dump a sample of stats for debugging purpose"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2950
    const-string p0, "  --sync: wait for delayed processing to finish (for use in tests)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2951
    const-string p0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2952
    const-string p0, "  -h: print this help text."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2953
    const-string p0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2954
    const-string p0, "  enable|disable <option>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2955
    const-string p0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2957
    const-string p0, "    Options are:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2958
    const-string p0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2959
    const-string p0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    const-string p0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    const-string p0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private native getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .registers 1

    .line 745
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_5

    return-object v0

    .line 748
    :cond_5
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 749
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method public static onlyCaller([I)Z
    .registers 6

    .line 3630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3631
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_11

    .line 3633
    aget v4, p0, v3

    if-eq v4, v0, :cond_e

    return v2

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static overrideService(Lcom/android/internal/app/IBatteryStats;)V
    .registers 1

    .line 758
    sput-object p0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-void
.end method


# virtual methods
.method public addIsolatedUid(II)V
    .registers 4

    .line 841
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/PowerStatsUidResolver;->noteIsolatedUidAdded(II)V

    const/16 p0, 0x2b

    const/4 v0, 0x1

    .line 842
    invoke-static {p0, p2, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public final awaitCompletion()V
    .registers 3

    .line 700
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 701
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda80;

    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda80;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 705
    :try_start_10
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method

.method public computeBatteryScreenOffRealtimeMs()J
    .registers 7

    .line 1317
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryScreenOffRealtimeMs_enforcePermission()V

    .line 1319
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1320
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1321
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v1

    .line 1323
    div-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_17
    move-exception p0

    .line 1324
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public computeBatteryTimeRemaining()J
    .registers 6

    .line 1299
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_1b

    const-wide/16 v3, 0x3e8

    .line 1301
    div-long/2addr v1, v3

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_1d

    :cond_1b
    :goto_1b
    monitor-exit v0

    return-wide v1

    .line 1302
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public computeChargeTimeRemaining()J
    .registers 6

    .line 1308
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1309
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_1b

    const-wide/16 v3, 0x3e8

    .line 1310
    div-long/2addr v1, v3

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_1d

    :cond_1b
    :goto_1b
    monitor-exit v0

    return-wide v1

    .line 1311
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public final createPowerStatsScheduler(Landroid/content/Context;)Lcom/android/server/power/stats/PowerStatsScheduler;
    .registers 18

    move-object/from16 v0, p0

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v8, v1

    .line 416
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;

    invoke-direct {v11, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    .line 422
    new-instance v2, Lcom/android/server/power/stats/PowerStatsScheduler;

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda102;

    invoke-direct {v3, v1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda102;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 423
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda103;

    invoke-direct {v14, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda103;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v2 .. v15}, Lcom/android/server/power/stats/PowerStatsScheduler;-><init>(Ljava/lang/Runnable;Lcom/android/internal/os/BatteryStatsHistory;Lcom/android/server/power/stats/PowerAttributor;JJLcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    return-object v2
.end method

.method public final doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .registers 8

    add-int/lit8 p2, p2, 0x1

    .line 3041
    array-length v0, p3

    const/4 v1, -0x1

    if-lt p2, v0, :cond_25

    .line 3042
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing option argument for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_15

    const-string p3, "--enable"

    goto :goto_17

    :cond_15
    const-string p3, "--disable"

    :goto_17
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return v1

    .line 3046
    :cond_25
    const-string v0, "full-wake-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    const-string v0, "full-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_8a

    .line 3052
    :cond_3a
    const-string/jumbo v0, "no-auto-reset"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3054
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3055
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3056
    :try_start_4b
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 3057
    monitor-exit v0

    return p2

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_52

    throw p0

    .line 3058
    :cond_55
    const-string/jumbo v0, "pretend-screen-off"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 3060
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3061
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3062
    :try_start_66
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPretendScreenOff(Z)V

    .line 3063
    monitor-exit v0

    return p2

    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_6d

    throw p0

    .line 3065
    :cond_70
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown enable/disable option: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return v1

    .line 3048
    :cond_8a
    :goto_8a
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3049
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 3050
    :try_start_90
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 3051
    monitor-exit p1

    return p2

    :catchall_97
    move-exception p0

    monitor-exit p1
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_97

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 3079
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    const/4 v0, 0x1

    .line 3081
    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->dumpUnmonitored(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    .line 3083
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    return-void

    :catchall_a
    move-exception p1

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 3084
    throw p1
.end method

.method public final dumpAggregatedStats(Ljava/io/PrintWriter;)V
    .registers 2

    .line 2987
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsScheduler;->aggregateAndDumpPowerStats(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpCpuStats(Ljava/io/PrintWriter;)V
    .registers 3

    .line 2976
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2977
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2978
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    .line 2979
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final dumpPowerProfile(Ljava/io/PrintWriter;)V
    .registers 3

    .line 2999
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3000
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpPowerProfileLocked(Ljava/io/PrintWriter;)V

    .line 3001
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final dumpPowerStatsStore(Ljava/io/PrintWriter;)V
    .registers 4

    .line 2991
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/PowerStatsStore;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final dumpPowerStatsStoreTableOfContents(Ljava/io/PrintWriter;)V
    .registers 4

    .line 2995
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/PowerStatsStore;->dumpTableOfContents(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final dumpSettings(Ljava/io/PrintWriter;)V
    .registers 3

    .line 2968
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2969
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2970
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    .line 2971
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final dumpStatsSample(Ljava/io/PrintWriter;)V
    .registers 2

    .line 2983
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpStatsSample(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpUnmonitored(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 36

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v0, p3

    .line 3088
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v3, "BatteryStatsService"

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_56a

    :cond_12
    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    if-eqz v0, :cond_39c

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    .line 3100
    :goto_21
    array-length v3, v0

    if-ge v10, v3, :cond_393

    .line 3101
    aget-object v3, v0, v10

    .line 3102
    const-string v2, "--checkin"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v19, 0x0

    if-eqz v2, :cond_58

    .line 3106
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v6, v2, v19

    if-lez v6, :cond_50

    .line 3110
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 3111
    invoke-virtual {v6}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v15

    sub-long v16, v15, v2

    cmp-long v2, v16, v19

    if-gez v2, :cond_50

    move-wide/from16 v16, v19

    :cond_50
    move-object/from16 v5, p1

    const/4 v13, 0x1

    const/4 v15, 0x1

    :goto_54
    const/16 v21, 0x1

    goto/16 :goto_339

    .line 3117
    :cond_58
    const-string v2, "--history"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    or-int/lit8 v12, v12, 0x8

    move-object/from16 v5, p1

    goto :goto_54

    .line 3119
    :cond_65
    const-string v2, "--history-start"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    or-int/lit8 v12, v12, 0x8

    add-int/lit8 v10, v10, 0x1

    .line 3122
    array-length v2, v0

    if-lt v10, v2, :cond_7d

    .line 3123
    const-string v0, "Missing time argument for --history-since"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3124
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 3127
    :cond_7d
    aget-object v2, v0, v10

    move-wide/from16 v6, v19

    invoke-static {v2, v6, v7}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v5, p1

    const/16 v18, 0x1

    const/16 v21, 0x1

    move-wide v7, v2

    goto/16 :goto_339

    .line 3129
    :cond_8e
    const-string v2, "--history-create-events"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    add-int/lit8 v10, v10, 0x1

    .line 3131
    array-length v2, v0

    if-lt v10, v2, :cond_a4

    .line 3132
    const-string v0, "Missing events argument for --history-create-events"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3133
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 3136
    :cond_a4
    aget-object v2, v0, v10

    const-wide/16 v5, 0x0

    const/16 v21, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3137
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3138
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v5

    .line 3139
    :try_start_b4
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v6, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->createFakeHistoryEvents(J)V

    .line 3140
    const-string v2, "Battery history create events started."

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3142
    monitor-exit v5

    :goto_bf
    move-object/from16 v5, p1

    move/from16 v11, v21

    :goto_c3
    const-wide/16 v19, 0x0

    goto/16 :goto_339

    :catchall_c7
    move-exception v0

    monitor-exit v5
    :try_end_c9
    .catchall {:try_start_b4 .. :try_end_c9} :catchall_c7

    throw v0

    :cond_ca
    const/16 v21, 0x1

    .line 3143
    const-string v2, "-c"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    or-int/lit8 v12, v12, 0x10

    .line 3147
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v19, 0x0

    cmp-long v5, v2, v19

    if-lez v5, :cond_f8

    .line 3151
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 3152
    invoke-virtual {v5}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v5

    sub-long v16, v5, v2

    cmp-long v2, v16, v19

    if-gez v2, :cond_f8

    const-wide/16 v16, 0x0

    :cond_f8
    move-object/from16 v5, p1

    move/from16 v13, v21

    goto :goto_c3

    .line 3158
    :cond_fd
    const-string v2, "--proto"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    move-object/from16 v5, p1

    move/from16 v14, v21

    goto :goto_c3

    .line 3160
    :cond_10a
    const-string v2, "--charged"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    or-int/lit8 v12, v12, 0x2

    :goto_114
    move-object/from16 v5, p1

    goto :goto_c3

    .line 3162
    :cond_117
    const-string v2, "--daily"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    or-int/lit8 v12, v12, 0x4

    goto :goto_114

    .line 3164
    :cond_122
    const-string v2, "--reset-all"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x2

    if-eqz v2, :cond_146

    .line 3165
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3166
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3167
    :try_start_131
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetAllStatsAndHistoryLocked(I)V

    .line 3169
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsStore;->reset()V

    .line 3170
    const-string v3, "Battery stats and history reset."

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3172
    monitor-exit v2

    goto/16 :goto_bf

    :catchall_143
    move-exception v0

    monitor-exit v2
    :try_end_145
    .catchall {:try_start_131 .. :try_end_145} :catchall_143

    throw v0

    .line 3173
    :cond_146
    const-string v2, "--reset"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    .line 3174
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3175
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3176
    :try_start_154
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetAllStatsAndHistoryLocked(I)V

    .line 3178
    const-string v3, "Battery stats reset."

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    monitor-exit v2

    goto/16 :goto_bf

    :catchall_161
    move-exception v0

    monitor-exit v2
    :try_end_163
    .catchall {:try_start_154 .. :try_end_163} :catchall_161

    throw v0

    .line 3181
    :cond_164
    const-string v2, "--write"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_189

    .line 3182
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3183
    const-string v2, "dump"

    const/16 v3, 0x7f

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 3184
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3185
    :try_start_179
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeSyncLocked()V

    .line 3186
    const-string v3, "Battery stats written."

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3188
    monitor-exit v2

    goto/16 :goto_bf

    :catchall_186
    move-exception v0

    monitor-exit v2
    :try_end_188
    .catchall {:try_start_179 .. :try_end_188} :catchall_186

    throw v0

    .line 3189
    :cond_189
    const-string v2, "--new-daily"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a7

    .line 3190
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3191
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3192
    :try_start_197
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 3193
    const-string v3, "New daily stats written."

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3195
    monitor-exit v2

    goto/16 :goto_bf

    :catchall_1a4
    move-exception v0

    monitor-exit v2
    :try_end_1a6
    .catchall {:try_start_197 .. :try_end_1a6} :catchall_1a4

    throw v0

    .line 3196
    :cond_1a7
    const-string v2, "--read-daily"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c5

    .line 3197
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3198
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3199
    :try_start_1b5
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 3200
    const-string v3, "Last daily stats read."

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3202
    monitor-exit v2

    goto/16 :goto_bf

    :catchall_1c2
    move-exception v0

    monitor-exit v2
    :try_end_1c4
    .catchall {:try_start_1b5 .. :try_end_1c4} :catchall_1c2

    throw v0

    .line 3203
    :cond_1c5
    const-string v2, "--enable"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d5

    const-string v2, "enable"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d9

    :cond_1d5
    move/from16 v2, v21

    goto/16 :goto_374

    .line 3210
    :cond_1d9
    const-string v2, "--disable"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e9

    const-string v2, "disable"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ec

    :cond_1e9
    const/4 v6, 0x0

    goto/16 :goto_355

    .line 3217
    :cond_1ec
    const-string v2, "-h"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f8

    .line 3218
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 3220
    :cond_1f8
    const-string v2, "--settings"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_204

    .line 3221
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    return-void

    .line 3223
    :cond_204
    const-string v2, "--cpu"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_210

    .line 3224
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    return-void

    .line 3226
    :cond_210
    const-string v2, "--power-profile"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21c

    .line 3227
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpPowerProfile(Ljava/io/PrintWriter;)V

    return-void

    .line 3229
    :cond_21c
    const-string v2, "--usage"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24f

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3232
    :goto_228
    array-length v5, v0

    if-ge v10, v5, :cond_249

    .line 3233
    aget-object v5, v0, v10

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_244

    const-string v6, "--accumulated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_241

    goto :goto_246

    :cond_241
    move/from16 v2, v21

    goto :goto_246

    :cond_244
    move/from16 v3, v21

    :goto_246
    add-int/lit8 v10, v10, 0x1

    goto :goto_228

    :cond_249
    move-object/from16 v5, p1

    .line 3242
    invoke-virtual {v1, v5, v4, v3, v2}, Lcom/android/server/am/BatteryStatsService;->dumpUsageStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZ)V

    return-void

    :cond_24f
    move-object/from16 v5, p1

    .line 3244
    const-string v2, "--wakeups"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26c

    .line 3245
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, v4, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    .line 3246
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    .line 3245
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->dump(Landroid/util/IndentingPrintWriter;J)V

    return-void

    .line 3248
    :cond_26c
    const-string v2, "--sample"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_278

    .line 3249
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpStatsSample(Ljava/io/PrintWriter;)V

    return-void

    .line 3251
    :cond_278
    const-string v2, "--aggregated"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_284

    .line 3252
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;)V

    return-void

    .line 3254
    :cond_284
    const-string v2, "--store"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_290

    .line 3255
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpPowerStatsStore(Ljava/io/PrintWriter;)V

    return-void

    .line 3257
    :cond_290
    const-string v2, "--store-toc"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29c

    .line 3258
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpPowerStatsStoreTableOfContents(Ljava/io/PrintWriter;)V

    return-void

    .line 3260
    :cond_29c
    const-string v2, "-a"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c9

    or-int/lit8 v12, v12, 0x20

    .line 3262
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v19, 0x0

    cmp-long v6, v2, v19

    if-lez v6, :cond_339

    .line 3265
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v6}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v16

    sub-long v16, v16, v2

    cmp-long v2, v16, v19

    if-gez v2, :cond_339

    move-wide/from16 v16, v19

    goto :goto_339

    :cond_2c9
    const-wide/16 v19, 0x0

    .line 3270
    const-string v2, "-v"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d6

    or-int/lit8 v12, v12, 0x20

    goto :goto_339

    .line 3272
    :cond_2d6
    const-string v2, "--sync"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e2

    .line 3273
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->finishDelayedOperations(Ljava/io/PrintWriter;)V

    return-void

    .line 3275
    :cond_2e2
    const-string v2, "--debug"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_303

    add-int/lit8 v10, v10, 0x1

    .line 3277
    array-length v2, v0

    if-lt v10, v2, :cond_2f8

    .line 3278
    const-string v0, "Missing time argument for --flags HEX"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3279
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 3282
    :cond_2f8
    aget-object v2, v0, v10

    const/16 v3, 0x10

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/android/internal/util/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v2

    or-int/2addr v12, v2

    goto :goto_339

    :cond_303
    const/4 v6, 0x0

    .line 3283
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_32a

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x2d

    if-ne v2, v6, :cond_32a

    .line 3284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3285
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 3290
    :cond_32a
    :try_start_32a
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3291
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 3290
    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_338
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32a .. :try_end_338} :catch_33d

    move v9, v2

    :cond_339
    :goto_339
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_21

    .line 3293
    :catch_33d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3294
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 3211
    :goto_355
    invoke-virtual {v1, v4, v10, v0, v6}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v1

    if-gez v1, :cond_35d

    goto/16 :goto_56a

    .line 3215
    :cond_35d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3204
    :goto_374
    invoke-virtual {v1, v4, v10, v0, v2}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v1

    if-gez v1, :cond_37c

    goto/16 :goto_56a

    .line 3208
    :cond_37c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_393
    move v0, v11

    move-wide/from16 v10, v16

    move/from16 v19, v18

    :goto_398
    move-object/from16 v5, p1

    move v6, v9

    goto :goto_3a8

    :cond_39c
    const-wide/16 v19, 0x0

    move-wide/from16 v10, v19

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    goto :goto_398

    :goto_3a8
    if-eqz v0, :cond_3ac

    goto/16 :goto_56a

    .line 3304
    :cond_3ac
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3306
    :try_start_3b0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3ba

    or-int/lit8 v12, v12, 0x40

    .line 3309
    :cond_3ba
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3311
    const-string v0, "dump"

    const/16 v9, 0x7f

    invoke-virtual {v1, v0, v9}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V
    :try_end_3c4
    .catchall {:try_start_3b0 .. :try_end_3c4} :catchall_597

    .line 3313
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-ltz v6, :cond_3d1

    and-int/lit8 v0, v12, 0xa

    if-nez v0, :cond_3d1

    or-int/lit8 v0, v12, 0x2

    and-int/lit8 v12, v0, -0x11

    :cond_3d1
    const/high16 v0, 0x420000

    if-eqz v14, :cond_4a6

    .line 3327
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v14

    if-eqz v15, :cond_481

    .line 3332
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 3333
    :try_start_3e6
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_3ee
    .catchall {:try_start_3e6 .. :try_end_3ee} :catchall_452

    if-eqz v0, :cond_45d

    .line 3335
    :try_start_3f0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    if-eqz v0, :cond_45d

    .line 3337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 3338
    array-length v4, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3339
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3340
    new-instance v20, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    sget-object v22, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    iget-object v10, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v11, v1, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    new-instance v31, Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v0

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    invoke-direct/range {v20 .. v31}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    move-object/from16 v11, v20

    .line 3345
    invoke-virtual {v11, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 3346
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_43a
    .catch Ljava/io/IOException; {:try_start_3f0 .. :try_end_43a} :catch_45a
    .catch Landroid/os/ParcelFormatException; {:try_start_3f0 .. :try_end_43a} :catch_45a
    .catchall {:try_start_3f0 .. :try_end_43a} :catchall_452

    move v15, v12

    .line 3347
    :try_start_43b
    iget-object v12, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    :try_end_43f
    .catch Ljava/io/IOException; {:try_start_43b .. :try_end_43f} :catch_454
    .catch Landroid/os/ParcelFormatException; {:try_start_43b .. :try_end_43f} :catch_454
    .catchall {:try_start_43b .. :try_end_43f} :catchall_452

    move-object/from16 v18, v0

    move-object v13, v5

    move-wide/from16 v16, v7

    :try_start_444
    invoke-virtual/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    :try_end_447
    .catch Ljava/io/IOException; {:try_start_444 .. :try_end_447} :catch_456
    .catch Landroid/os/ParcelFormatException; {:try_start_444 .. :try_end_447} :catch_456
    .catchall {:try_start_444 .. :try_end_447} :catchall_452

    move-wide/from16 v7, v16

    .line 3349
    :try_start_449
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_450
    .catch Ljava/io/IOException; {:try_start_449 .. :try_end_450} :catch_454
    .catch Landroid/os/ParcelFormatException; {:try_start_449 .. :try_end_450} :catch_454
    .catchall {:try_start_449 .. :try_end_450} :catchall_452

    .line 3350
    :try_start_450
    monitor-exit v2

    return-void

    :catchall_452
    move-exception v0

    goto :goto_47f

    :catch_454
    move-exception v0

    goto :goto_45f

    :catch_456
    move-exception v0

    move-wide/from16 v7, v16

    goto :goto_45f

    :catch_45a
    move-exception v0

    move v15, v12

    goto :goto_45f

    :cond_45d
    move v15, v12

    goto :goto_47d

    .line 3353
    :goto_45f
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure reading checkin file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 3354
    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3353
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3357
    :goto_47d
    monitor-exit v2

    goto :goto_482

    :goto_47f
    monitor-exit v2
    :try_end_480
    .catchall {:try_start_450 .. :try_end_480} :catchall_452

    throw v0

    :cond_481
    move v15, v12

    .line 3360
    :goto_482
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3361
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3362
    :try_start_488
    iget-object v11, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v12, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    move-object/from16 v13, p1

    move-object/from16 v18, v0

    move-wide/from16 v16, v7

    invoke-virtual/range {v11 .. v18}, Landroid/os/BatteryStats;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    if-eqz v19, :cond_4a1

    .line 3364
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    goto :goto_4a1

    :catchall_49f
    move-exception v0

    goto :goto_4a4

    .line 3366
    :cond_4a1
    :goto_4a1
    monitor-exit v2

    goto/16 :goto_56a

    :goto_4a4
    monitor-exit v2
    :try_end_4a5
    .catchall {:try_start_488 .. :try_end_4a5} :catchall_49f

    throw v0

    :cond_4a6
    move v5, v12

    if-eqz v13, :cond_56b

    .line 3369
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    if-eqz v15, :cond_552

    .line 3374
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v12, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v12

    .line 3375
    :try_start_4ba
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_4c2
    .catchall {:try_start_4ba .. :try_end_4c2} :catchall_522

    if-eqz v0, :cond_52d

    .line 3377
    :try_start_4c4
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    if-eqz v0, :cond_52d

    .line 3379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 3380
    array-length v6, v0

    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3381
    invoke-virtual {v3, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3382
    new-instance v20, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    sget-object v22, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v13, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    iget-object v14, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v15, v1, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    new-instance v31, Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v0

    move-object/from16 v23, v6

    move-object/from16 v25, v9

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    invoke-direct/range {v20 .. v31}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    move-object/from16 v0, v20

    .line 3387
    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 3388
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 3389
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    :try_end_512
    .catch Ljava/io/IOException; {:try_start_4c4 .. :try_end_512} :catch_529
    .catch Landroid/os/ParcelFormatException; {:try_start_4c4 .. :try_end_512} :catch_529
    .catchall {:try_start_4c4 .. :try_end_512} :catchall_522

    move v6, v5

    move-object v5, v2

    move-object v2, v0

    :try_start_515
    invoke-virtual/range {v2 .. v11}, Landroid/os/BatteryStats;->dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;J)V
    :try_end_518
    .catch Ljava/io/IOException; {:try_start_515 .. :try_end_518} :catch_526
    .catch Landroid/os/ParcelFormatException; {:try_start_515 .. :try_end_518} :catch_526
    .catchall {:try_start_515 .. :try_end_518} :catchall_522

    move v15, v6

    .line 3391
    :try_start_519
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_520
    .catch Ljava/io/IOException; {:try_start_519 .. :try_end_520} :catch_524
    .catch Landroid/os/ParcelFormatException; {:try_start_519 .. :try_end_520} :catch_524
    .catchall {:try_start_519 .. :try_end_520} :catchall_522

    .line 3392
    :try_start_520
    monitor-exit v12

    return-void

    :catchall_522
    move-exception v0

    goto :goto_550

    :catch_524
    move-exception v0

    goto :goto_530

    :catch_526
    move-exception v0

    move v15, v6

    goto :goto_530

    :catch_529
    move-exception v0

    move v15, v5

    move-object v5, v2

    goto :goto_530

    :cond_52d
    move v15, v5

    move-object v5, v2

    goto :goto_54e

    .line 3395
    :goto_530
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading checkin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 3396
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3395
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3399
    :goto_54e
    monitor-exit v12

    goto :goto_554

    :goto_550
    monitor-exit v12
    :try_end_551
    .catchall {:try_start_520 .. :try_end_551} :catchall_522

    throw v0

    :cond_552
    move v15, v5

    move-object v5, v2

    .line 3402
    :goto_554
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3403
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    move-object/from16 v4, p2

    move v6, v15

    invoke-virtual/range {v2 .. v11}, Landroid/os/BatteryStats;->dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;J)V

    if-eqz v19, :cond_56a

    .line 3406
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    :cond_56a
    :goto_56a
    return-void

    :cond_56b
    move v15, v5

    .line 3411
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3412
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->dump(Landroid/content/Context;Ljava/io/PrintWriter;IIJLandroid/os/BatteryStats$BatteryStatsDumpHelper;J)V

    if-eqz v19, :cond_581

    .line 3415
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    .line 3417
    :cond_581
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 3418
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, v4, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->dump(Landroid/util/IndentingPrintWriter;J)V

    return-void

    :catchall_597
    move-exception v0

    .line 3313
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3314
    throw v0
.end method

.method public final dumpUsageStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZ)V
    .registers 8

    .line 3006
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3007
    const-string v0, "dump"

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 3009
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    const-wide/16 v1, 0x0

    .line 3010
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 3011
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 3012
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 3013
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeScreenStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 3014
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    if-eqz p4, :cond_2a

    .line 3016
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->accumulated()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 3018
    :cond_2a
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object p4

    .line 3019
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3020
    :try_start_31
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->prepareForDumpLocked()V

    .line 3021
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_6b

    .line 3025
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    .line 3027
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3028
    invoke-virtual {v0, p0, p4}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_44} :catch_62

    if-eqz p3, :cond_4c

    .line 3030
    :try_start_46
    invoke-virtual {p0, p1}, Landroid/os/BatteryUsageStats;->dumpToProto(Ljava/io/FileDescriptor;)V

    goto :goto_51

    :catchall_4a
    move-exception p1

    goto :goto_57

    .line 3032
    :cond_4c
    const-string p1, "  "

    invoke-virtual {p0, p2, p1}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_4a

    :goto_51
    if-eqz p0, :cond_56

    .line 3034
    :try_start_53
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_62

    :cond_56
    return-void

    :goto_57
    if-eqz p0, :cond_61

    .line 3027
    :try_start_59
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception p0

    :try_start_5e
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_61
    :goto_61
    throw p1
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_62} :catch_62

    :catch_62
    move-exception p0

    .line 3035
    const-string p1, "BatteryStatsService"

    const-string p2, "Cannot close BatteryUsageStats"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_6b
    move-exception p0

    .line 3021
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public fillLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    .registers 14

    .line 283
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_83

    .line 287
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_81

    .line 291
    :try_start_19
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Landroid/power/PowerStatsInternal;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    .line 292
    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2c} :catch_78

    if-nez v0, :cond_2f

    goto :goto_77

    :cond_2f
    move v2, v1

    .line 300
    :goto_30
    array-length v3, v0

    if-ge v2, v3, :cond_77

    .line 301
    aget-object v3, v0, v2

    .line 302
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v5, v3, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 303
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/os/RpmStats;->getSubsystem(Ljava/lang/String;)Lcom/android/internal/os/RpmStats$PowerStateSubsystem;

    move-result-object v4

    move v5, v1

    .line 305
    :goto_48
    iget-object v6, v3, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v7, v6

    if-ge v5, v7, :cond_74

    .line 306
    aget-object v6, v6, v5

    .line 307
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v8, v3, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    iget v8, v6, Landroid/hardware/power/stats/StateResidency;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-wide v8, v6, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    iget-wide v10, v6, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    long-to-int v6, v10

    invoke-virtual {v4, v7, v8, v9, v6}, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->putState(Ljava/lang/String;JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_77
    :goto_77
    return-void

    :catch_78
    move-exception p0

    .line 294
    const-string p1, "BatteryStatsService"

    const-string v0, "Failed to getStateResidencyAsync"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_81
    move-exception p0

    goto :goto_85

    .line 285
    :cond_83
    :goto_83
    :try_start_83
    monitor-exit v0

    return-void

    .line 287
    :goto_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_81

    throw p0
.end method

.method public fillRailDataStats(Lcom/android/internal/os/RailStats;)V
    .registers 3

    .line 320
    iget-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mRailsStatsCollectionEnabled:Z

    if-nez v0, :cond_9

    const/4 p0, 0x0

    .line 321
    invoke-virtual {p1, p0}, Lcom/android/internal/os/RailStats;->setRailStatsAvailability(Z)V

    return-void

    .line 327
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V

    return-void
.end method

.method public final finishDelayedOperations(Ljava/io/PrintWriter;)V
    .registers 6

    .line 3425
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    .line 3426
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->accumulateBatteryUsageStatsAsync(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;Z)V

    .line 3427
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3429
    const-string p0, "BatteryStats sync complete"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveStatistics()Lcom/android/server/power/stats/BatteryStatsImpl;
    .registers 1

    .line 786
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-object p0
.end method

.method public getAwakeTimeBattery()J
    .registers 3

    .line 2833
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery_enforcePermission()V

    .line 2835
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .registers 3

    .line 2841
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged_enforcePermission()V

    .line 2843
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .registers 6

    .line 929
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryUsageStats_enforcePermission()V

    .line 931
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 933
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    .line 934
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 935
    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    .line 933
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->shouldUpdateStats(Ljava/util/List;JJ)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 936
    const-string v0, "get-stats"

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 937
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    .line 940
    :cond_24
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
    .registers 2

    .line 3504
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBluetoothBatteryStats_enforcePermission()V

    .line 3506
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3507
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3508
    :try_start_9
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 3509
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .registers 2

    .line 3440
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getCellularBatteryStats_enforcePermission()V

    .line 3442
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3443
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3444
    :try_start_9
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 3445
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .registers 2

    .line 3472
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getGpsBatteryStats_enforcePermission()V

    .line 3474
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3475
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3476
    :try_start_9
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 3477
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .registers 5

    .line 3645
    new-instance v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    invoke-direct {v0}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    .line 3646
    new-instance v1, Landroid/os/health/HealthStatsWriter;

    sget-object v2, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v1, v2}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 3647
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStats$Uid;

    if-eqz p1, :cond_1f

    .line 3649
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V

    .line 3651
    :cond_1f
    new-instance p0, Landroid/os/health/HealthStatsParceler;

    invoke-direct {p0, v1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    return-object p0
.end method

.method public getLastBatteryUsageStatsBeforeResetAtomPullTimestamp()J
    .registers 7

    .line 3841
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 3842
    :try_start_3
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    .line 3843
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_19
    .catchall {:try_start_8 .. :try_end_e} :catchall_17

    .line 3844
    :try_start_e
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1b

    if-eqz v2, :cond_3f

    .line 3845
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_19
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_3f

    :catchall_17
    move-exception p0

    goto :goto_4d

    :catch_19
    move-exception v2

    goto :goto_27

    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_26

    .line 3843
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v2

    :try_start_23
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw v3
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_19
    .catchall {:try_start_23 .. :try_end_27} :catchall_17

    .line 3846
    :goto_27
    :try_start_27
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot load config file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3848
    :cond_3f
    :goto_3f
    const-string p0, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    const-string v2, "0"

    .line 3849
    invoke-virtual {v1, p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3848
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 3850
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_27 .. :try_end_4e} :catchall_17

    throw p0
.end method

.method public getScreenOffDischargeMah()J
    .registers 6

    .line 1330
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getScreenOffDischargeMah_enforcePermission()V

    .line 1332
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1333
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUahDischargeScreenOff(I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    .line 1334
    div-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_12
    move-exception p0

    .line 1335
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getServiceType()I
    .registers 1

    .line 0
    const/16 p0, 0x9

    return p0
.end method

.method public getWakeLockStats()Landroid/os/WakeLockStats;
    .registers 2

    .line 3488
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWakeLockStats_enforcePermission()V

    .line 3490
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3491
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3492
    :try_start_9
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 3493
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .registers 2

    .line 3456
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWifiBatteryStats_enforcePermission()V

    .line 3458
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3459
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3460
    :try_start_9
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 3461
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public initPowerManagement()V
    .registers 9

    .line 715
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 716
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 717
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 718
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v3, 0x9

    .line 719
    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v3, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    .line 720
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 718
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePowerSaveModeLockedInit(ZJJ)V

    .line 721
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_31

    .line 722
    new-instance v0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_31
    move-exception v0

    move-object p0, v0

    .line 721
    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_31

    throw p0
.end method

.method public isCharging()Z
    .registers 2

    .line 1291
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1292
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->isCharging()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1293
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isOnBattery()Z
    .registers 1

    .line 2799
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBattery()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$createPowerStatsScheduler$0(JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .registers 13

    .line 418
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x3

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 419
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final synthetic lambda$createPowerStatsScheduler$1()Ljava/lang/Long;
    .registers 3

    .line 425
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->getStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$noteAlarmFinish$22(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .registers 10

    .line 1481
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1482
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 1483
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteAlarmStart$21(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .registers 10

    .line 1467
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1468
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 1469
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteBleScanReset$90(JJ)V
    .registers 6

    .line 2709
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2710
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetBluetoothScanLocked(JJ)V

    .line 2711
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteBleScanResults$91(Landroid/os/WorkSource;IJJ)V
    .registers 9

    .line 2726
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2727
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanResultsFromSourceLocked(Landroid/os/WorkSource;IJJ)V

    .line 2729
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteBleScanStarted$88(Landroid/os/WorkSource;ZJJ)V
    .registers 9

    .line 2674
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2675
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;ZJJ)V

    .line 2677
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteBleScanStopped$89(Landroid/os/WorkSource;ZJJ)V
    .registers 9

    .line 2692
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2693
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;ZJJ)V

    .line 2695
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteBluetoothControllerActivity$93(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V
    .registers 8

    .line 2769
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2770
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    .line 2771
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteChangeWakelockFromSource$26(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 34

    move-object/from16 v0, p0

    .line 1557
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1558
    :try_start_5
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    invoke-virtual/range {v2 .. v17}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1561
    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public final synthetic lambda$noteConnectivityChanged$43(ILjava/lang/String;JJ)V
    .registers 9

    .line 1878
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1879
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;JJ)V

    .line 1880
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteCpuWakingActivity$2(IJ[I)V
    .registers 5

    .line 667
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->noteWakingActivity(IJ[I)V

    return-void
.end method

.method public final synthetic lambda$noteCurrentTimeChanged$98(JJJ)V
    .registers 9

    .line 3701
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3702
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCurrentTimeChangedLocked(JJJ)V

    .line 3703
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteDeviceIdleMode$85(ILjava/lang/String;IJJ)V
    .registers 10

    .line 2631
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2632
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteDeviceIdleModeLocked(ILjava/lang/String;IJJ)V

    .line 2634
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteEvent$14(ILjava/lang/String;IJJ)V
    .registers 10

    .line 1353
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1354
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;IJJ)V

    .line 1355
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteFlashlightOff$59(IJJ)V
    .registers 8

    .line 2164
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2165
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFlashlightOffLocked(IJJ)V

    .line 2166
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteFlashlightOn$58(IJJ)V
    .registers 8

    .line 2146
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2147
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFlashlightOnLocked(IJJ)V

    .line 2148
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteFullWifiLockAcquired$71(IJJ)V
    .registers 8

    .line 2399
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2400
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(IJJ)V

    .line 2401
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteFullWifiLockAcquiredFromSource$77(Landroid/os/WorkSource;JJ)V
    .registers 8

    .line 2496
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2497
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2499
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteFullWifiLockReleased$72(IJJ)V
    .registers 8

    .line 2415
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2416
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(IJJ)V

    .line 2417
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteFullWifiLockReleasedFromSource$78(Landroid/os/WorkSource;JJ)V
    .registers 8

    .line 2514
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2515
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2517
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteGpsChanged$36(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .registers 9

    .line 1761
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1762
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteGpsChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    .line 1763
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteGpsSignalQuality$37(IJJ)V
    .registers 8

    .line 1777
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1778
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteGpsSignalQualityLocked(IJJ)V

    .line 1779
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteInteractive$42(ZJ)V
    .registers 5

    .line 1862
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1863
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteInteractiveLocked(ZJ)V

    .line 1864
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteJobFinish$18(Ljava/lang/String;IIJJ)V
    .registers 10

    .line 1423
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1424
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;IIJJ)V

    .line 1425
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteJobStart$17(Ljava/lang/String;IJJ)V
    .registers 9

    .line 1406
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1407
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;IJJ)V

    .line 1408
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteJobsDeferred$19(IIJJJ)V
    .registers 11

    .line 1436
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1437
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobsDeferredLocked(IIJJJ)V

    .line 1439
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteLongPartialWakelockFinish$30(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .registers 10

    .line 1632
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1633
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1635
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteLongPartialWakelockFinishFromSource$31(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .registers 10

    .line 1651
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1652
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    .line 1654
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteLongPartialWakelockStart$28(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .registers 10

    .line 1595
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1596
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1598
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteLongPartialWakelockStartFromSource$29(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .registers 10

    .line 1614
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1615
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    .line 1617
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteMobileRadioPowerState$44(IJIJJ)V
    .registers 19

    .line 1895
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    .line 1897
    :try_start_3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    if-ne v2, p1, :cond_b

    monitor-exit v9

    return-void

    :catchall_9
    move-exception v0

    goto :goto_1a

    .line 1899
    :cond_b
    iput p1, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 1900
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IJIJJ)Z

    .line 1902
    monitor-exit v9

    return-void

    :goto_1a
    monitor-exit v9
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_9

    throw v0
.end method

.method public final synthetic lambda$noteModemControllerActivity$94(Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .registers 7

    .line 2792
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public final synthetic lambda$noteNetworkInterfaceForTransports$83(Ljava/lang/String;[I)V
    .registers 3

    .line 2599
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V

    return-void
.end method

.method public final synthetic lambda$noteNetworkStatsEnabled$84()V
    .registers 3

    .line 2615
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-string/jumbo v0, "network-stats-enabled"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$notePackageInstalled$86(Ljava/lang/String;JJJ)V
    .registers 10

    .line 2644
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2645
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;JJJ)V

    .line 2647
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$notePackageUninstalled$87(Ljava/lang/String;JJ)V
    .registers 8

    .line 2657
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2658
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;JJ)V

    .line 2659
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$notePhoneDataConnectionState$48(IZIIIJJ)V
    .registers 12

    .line 1968
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1969
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZIIIJJ)V

    .line 1971
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$notePhoneOff$46(JJ)V
    .registers 6

    .line 1934
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1935
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneOffLocked(JJ)V

    .line 1936
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$notePhoneOn$45(JJ)V
    .registers 6

    .line 1918
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1919
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneOnLocked(JJ)V

    .line 1920
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$notePhoneSignalStrength$47(Landroid/telephony/SignalStrength;JJ)V
    .registers 8

    .line 1950
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1951
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;JJ)V

    .line 1952
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$notePhoneState$49(IJJ)V
    .registers 15

    .line 1985
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 1986
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v8

    .line 1987
    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneStateLocked(IIJJ)V

    .line 1988
    monitor-exit v8

    return-void

    :catchall_1b
    move-exception v0

    move-object p0, v0

    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1b

    throw p0
.end method

.method public final synthetic lambda$noteProcessAnr$11(Ljava/lang/String;IJJ)V
    .registers 9

    .line 885
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 886
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;IJJ)V

    .line 887
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteProcessCrash$10(Ljava/lang/String;IJJ)V
    .registers 9

    .line 871
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 872
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;IJJ)V

    .line 873
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteProcessDied$100(II)V
    .registers 4

    .line 3733
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3734
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessDiedLocked(II)V

    .line 3735
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteProcessFinish$12(Ljava/lang/String;IJJ)V
    .registers 9

    .line 897
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 898
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;IJJ)V

    .line 899
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteProcessStart$9(Ljava/lang/String;IJJ)V
    .registers 9

    .line 857
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 858
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;IJJ)V

    .line 859
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteResetAudio$56(JJ)V
    .registers 6

    .line 2110
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2111
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetAudioLocked(JJ)V

    .line 2112
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteResetCamera$62(JJ)V
    .registers 6

    .line 2220
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2221
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetCameraLocked(JJ)V

    .line 2222
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteResetFlashlight$63(JJ)V
    .registers 6

    .line 2238
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2239
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetFlashlightLocked(JJ)V

    .line 2240
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteResetVideo$57(JJ)V
    .registers 6

    .line 2128
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2129
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetVideoLocked(JJ)V

    .line 2130
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteScreenBrightness$39(IIJJ)V
    .registers 9

    .line 1814
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1815
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenBrightnessLocked(IIJJ)V

    .line 1817
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteScreenState$38(IIIJJJ)V
    .registers 12

    .line 1796
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1797
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenStateLocked(IIIJJJ)V

    .line 1799
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteServiceStartLaunch$104(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 10

    .line 3784
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3785
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object p0

    .line 3787
    invoke-virtual {p0, p6, p7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked(J)V

    .line 3788
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_e

    throw p0
.end method

.method public final synthetic lambda$noteServiceStartRunning$102(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 10

    .line 3756
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3757
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object p0

    .line 3759
    invoke-virtual {p0, p6, p7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked(J)V

    .line 3760
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_e

    throw p0
.end method

.method public final synthetic lambda$noteServiceStopLaunch$105(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 10

    .line 3798
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3799
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object p0

    .line 3801
    invoke-virtual {p0, p6, p7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked(J)V

    .line 3802
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_e

    throw p0
.end method

.method public final synthetic lambda$noteServiceStopRunning$103(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 10

    .line 3770
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3771
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object p0

    .line 3773
    invoke-virtual {p0, p6, p7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked(J)V

    .line 3774
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_e

    throw p0
.end method

.method public final synthetic lambda$noteStartAudio$52(IJJ)V
    .registers 8

    .line 2038
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2039
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAudioOnLocked(IJJ)V

    .line 2040
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteStartCamera$60(IJJ)V
    .registers 8

    .line 2183
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2184
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCameraOnLocked(IJJ)V

    .line 2185
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteStartSensor$32(IIJJ)V
    .registers 9

    .line 1668
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1669
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartSensorLocked(IIJJ)V

    .line 1670
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteStartVideo$54(IJJ)V
    .registers 8

    .line 2074
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2075
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteVideoOnLocked(IJJ)V

    .line 2076
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteStartWakelock$23(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 25

    .line 1498
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1499
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v5, 0x0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1501
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1a

    throw p0
.end method

.method public final synthetic lambda$noteStartWakelockFromSource$25(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 13

    .line 1535
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1536
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p10}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1538
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteStopAudio$53(IJJ)V
    .registers 8

    .line 2056
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2057
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAudioOffLocked(IJJ)V

    .line 2058
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteStopCamera$61(IJJ)V
    .registers 8

    .line 2202
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2203
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCameraOffLocked(IJJ)V

    .line 2204
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteStopSensor$33(IIJJ)V
    .registers 9

    .line 1709
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1710
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopSensorLocked(IIJJ)V

    .line 1711
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteStopVideo$55(IJJ)V
    .registers 8

    .line 2092
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2093
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteVideoOffLocked(IJJ)V

    .line 2094
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteStopWakelock$24(IILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 23

    .line 1516
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1517
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1519
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_17

    throw p0
.end method

.method public final synthetic lambda$noteStopWakelockFromSource$27(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 12

    .line 1577
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1578
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 1580
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteSyncFinish$16(Ljava/lang/String;IJJ)V
    .registers 9

    .line 1387
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1388
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;IJJ)V

    .line 1389
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteSyncStart$15(Ljava/lang/String;IJJ)V
    .registers 9

    .line 1369
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1370
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;IJJ)V

    .line 1371
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteUidProcessState$13(IIJJ)V
    .registers 9

    .line 912
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->noteUidProcessState(II)V

    .line 913
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 914
    :try_start_8
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteUidProcessStateLocked(IIJJ)V

    .line 915
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_f

    throw p0
.end method

.method public final synthetic lambda$noteUserActivity$40(IIJJ)V
    .registers 9

    .line 1831
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1832
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteUserActivityLocked(IIJJ)V

    .line 1833
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteVibratorOff$35(IJJ)V
    .registers 8

    .line 1743
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1744
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteVibratorOffLocked(IJJ)V

    .line 1745
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteVibratorOn$34(IJJJ)V
    .registers 10

    .line 1727
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1728
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteVibratorOnLocked(IJJJ)V

    .line 1729
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWakeUp$41(Ljava/lang/String;IJJ)V
    .registers 9

    .line 1847
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1848
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;IJJ)V

    .line 1849
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWakupAlarm$20(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V
    .registers 11

    .line 1452
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1453
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    .line 1455
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiBatchedScanStartedFromSource$81(Landroid/os/WorkSource;IJJ)V
    .registers 9

    .line 2566
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2567
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;IJJ)V

    .line 2569
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiBatchedScanStoppedFromSource$82(Landroid/os/WorkSource;JJ)V
    .registers 8

    .line 2584
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2585
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2587
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiControllerActivity$92(Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .registers 7

    .line 2750
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public final synthetic lambda$noteWifiMulticastDisabled$76(IJJ)V
    .registers 8

    .line 2479
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2480
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(IJJ)V

    .line 2481
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiMulticastEnabled$75(IJJ)V
    .registers 8

    .line 2463
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2464
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(IJJ)V

    .line 2465
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiOff$51(JJ)V
    .registers 6

    .line 2020
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2021
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiOffLocked(JJ)V

    .line 2022
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiOn$50(JJ)V
    .registers 6

    .line 2002
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2003
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiOnLocked(JJ)V

    .line 2004
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiRadioPowerState$64(IJIJJ)V
    .registers 19

    .line 2258
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    .line 2260
    :try_start_3
    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    if-ne v2, p1, :cond_b

    monitor-exit v9

    return-void

    :catchall_9
    move-exception v0

    goto :goto_45

    .line 2262
    :cond_b
    iput p1, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 2263
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v2, :cond_1f

    if-ne p1, v3, :cond_1c

    goto :goto_1f

    .line 2267
    :cond_1c
    const-string v2, "inactive"

    goto :goto_21

    :cond_1f
    :goto_1f
    const-string v2, "active"

    .line 2268
    :goto_21
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi-data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 2271
    :cond_38
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRadioPowerState(IJIJJ)V

    .line 2273
    monitor-exit v9

    return-void

    :goto_45
    monitor-exit v9
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_9

    throw v0
.end method

.method public final synthetic lambda$noteWifiRssiChanged$70(IJJ)V
    .registers 8

    .line 2383
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2384
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRssiChangedLocked(IJJ)V

    .line 2385
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiRunning$65(Landroid/os/WorkSource;JJ)V
    .registers 8

    .line 2290
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2291
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;JJ)V

    .line 2292
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiRunningChanged$66(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .registers 9

    .line 2311
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2312
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    .line 2314
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiScanStarted$73(IJJ)V
    .registers 8

    .line 2431
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2432
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStartedLocked(IJJ)V

    .line 2433
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiScanStartedFromSource$79(Landroid/os/WorkSource;JJ)V
    .registers 8

    .line 2532
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2533
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2534
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiScanStopped$74(IJJ)V
    .registers 8

    .line 2447
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2448
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStoppedLocked(IJJ)V

    .line 2449
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiScanStoppedFromSource$80(Landroid/os/WorkSource;JJ)V
    .registers 8

    .line 2549
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2550
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2551
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiState$68(ILjava/lang/String;J)V
    .registers 6

    .line 2350
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2351
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;J)V

    .line 2352
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiStopped$67(Landroid/os/WorkSource;JJ)V
    .registers 8

    .line 2333
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2334
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;JJ)V

    .line 2335
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$noteWifiSupplicantStateChanged$69(IZJJ)V
    .registers 9

    .line 2366
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2367
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZJJ)V

    .line 2369
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$onCleanupUser$7(IJ)V
    .registers 5

    .line 823
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 824
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->onCleanupUserLocked(IJ)V

    .line 825
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$onLowPowerModeChanged$4(Landroid/os/PowerSaveState;JJ)V
    .registers 8

    .line 772
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 773
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePowerSaveModeLocked(ZJJ)V

    .line 775
    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_c

    throw p0
.end method

.method public final synthetic lambda$onUserRemoved$8(I)V
    .registers 3

    .line 833
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 834
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->onUserRemovedLocked(I)V

    .line 835
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$removeUid$6(IJ)V
    .registers 5

    .line 811
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->onUidRemoved(I)V

    .line 812
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 813
    :try_start_8
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->removeUidStatsLocked(IJ)V

    .line 814
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final synthetic lambda$reportExcessiveCpu$101(ILjava/lang/String;JJ)V
    .registers 9

    .line 3744
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3745
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->reportExcessiveCpuLocked(ILjava/lang/String;JJ)V

    .line 3746
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$scheduleWriteToDisk$5()V
    .registers 1

    .line 797
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleWrite()V

    return-void
.end method

.method public final synthetic lambda$setBatteryState$95(ZIIIIIIIIJJJJ)V
    .registers 38

    move-object/from16 v0, p0

    .line 2816
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2817
    :try_start_5
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    move/from16 v3, p1

    if-eq v2, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 2818
    :goto_12
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move-wide/from16 v18, p16

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/power/stats/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJJJJ)V

    .line 2821
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_3c

    if-eqz v2, :cond_3b

    .line 2823
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-string v1, "battery-state"

    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    :cond_3b
    return-void

    :catchall_3c
    move-exception v0

    .line 2821
    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public final synthetic lambda$takeUidSnapshotsAsync$96([ILandroid/os/ResultReceiver;)V
    .registers 12

    .line 3595
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 3598
    :try_start_5
    array-length v3, p1

    .line 3599
    new-array v4, v3, [Landroid/os/health/HealthStatsParceler;

    .line 3600
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_31
    .catchall {:try_start_5 .. :try_end_b} :catchall_2f

    const/4 v6, 0x0

    move v7, v6

    :goto_d
    if-ge v7, v3, :cond_1c

    .line 3602
    :try_start_f
    aget v8, p1, v7

    invoke-virtual {p0, v8}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v8

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :catchall_1a
    move-exception p0

    goto :goto_33

    .line 3604
    :cond_1c
    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1a

    .line 3605
    :try_start_1d
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 3606
    const-string/jumbo p1, "uid_snapshots"

    invoke-virtual {p0, p1, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3607
    invoke-virtual {p2, v6, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2b} :catch_31
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2f

    .line 3616
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    goto :goto_46

    :catch_31
    move-exception p0

    goto :goto_35

    .line 3604
    :goto_33
    :try_start_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_1a

    :try_start_34
    throw p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_35} :catch_31
    .catchall {:try_start_34 .. :try_end_35} :catchall_2f

    .line 3613
    :goto_35
    :try_start_35
    const-string p1, "exception"

    .line 3614
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 3613
    invoke-virtual {p2, v2, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_2f

    .line 3616
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3617
    throw p0
.end method

.method public final synthetic lambda$updateBatteryStatsOnActivityUsage$99(ZIJJ)V
    .registers 9

    .line 3714
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    if-eqz p1, :cond_11

    .line 3716
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move p1, p2

    move-wide p2, p3

    move-wide p4, p5

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteActivityResumedLocked(IJJ)V

    goto :goto_1d

    :catchall_e
    move-exception v0

    move-object p0, v0

    goto :goto_1f

    :cond_11
    move p1, p2

    move-wide p2, p3

    move-wide p4, p5

    .line 3718
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-wide p5, p4

    move-wide p3, p2

    move p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteActivityPausedLocked(IJJ)V

    .line 3720
    :goto_1d
    monitor-exit v1

    return-void

    :goto_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_e

    throw p0
.end method

.method public final synthetic lambda$updateForegroundTimeIfOnBattery$97(ILjava/lang/String;JJJ)V
    .registers 11

    .line 3681
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3684
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3685
    :try_start_a
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3686
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 3688
    invoke-virtual {p0, p7, p8}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    goto :goto_19

    :catchall_16
    move-exception v0

    move-object p0, v0

    goto :goto_1b

    .line 3690
    :cond_19
    :goto_19
    monitor-exit v1

    return-void

    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_16

    throw p0
.end method

.method public monitor()V
    .registers 2

    .line 672
    iget-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 675
    :cond_5
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    .line 677
    :try_start_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public noteAlarmFinish(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .registers 14

    .line 1475
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v2, "noteAlarmFinish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_13

    .line 1476
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_11
    move-object v4, v0

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 1477
    :goto_15
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p2

    .line 1478
    :try_start_18
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1479
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1480
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1485
    monitor-exit p2

    return-void

    :catchall_33
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_33

    throw p0
.end method

.method public noteAlarmStart(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .registers 14

    .line 1461
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v2, "noteAlarmStart"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_13

    .line 1462
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_11
    move-object v4, v0

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 1463
    :goto_15
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p2

    .line 1464
    :try_start_18
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1465
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1466
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda25;

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1471
    monitor-exit p2

    return-void

    :catchall_33
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_33

    throw p0
.end method

.method public noteBleScanReset()V
    .registers 9

    .line 2703
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanReset_enforcePermission()V

    .line 2705
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2706
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2707
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2708
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2713
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_1f

    throw p0
.end method

.method public noteBleScanResults(Landroid/os/WorkSource;I)V
    .registers 12

    .line 2719
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanResults_enforcePermission()V

    if-eqz p1, :cond_c

    .line 2721
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 2722
    :goto_e
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 2723
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2724
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2725
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2731
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2b

    throw p0
.end method

.method public noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .registers 12

    .line 2667
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted_enforcePermission()V

    if-eqz p1, :cond_c

    .line 2669
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 2670
    :goto_e
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 2671
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2672
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2673
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2679
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2b

    throw p0
.end method

.method public noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .registers 12

    .line 2685
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped_enforcePermission()V

    if-eqz p1, :cond_c

    .line 2687
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 2688
    :goto_e
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 2689
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2690
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2691
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2697
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2b

    throw p0
.end method

.method public noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 11

    .line 2758
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity_enforcePermission()V

    if-eqz p1, :cond_b

    .line 2760
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move-object v4, p1

    goto :goto_2e

    .line 2765
    :cond_d
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2766
    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2767
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2768
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2773
    monitor-exit v1

    return-void

    :catchall_2a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_2a

    throw p0

    .line 2761
    :goto_2e
    const-string p0, "BatteryStatsService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid bluetooth data given: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p6

    .line 1549
    invoke-super {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource_enforcePermission()V

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    .line 1551
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_13

    :cond_12
    move-object v4, v3

    :goto_13
    if-eqz v2, :cond_1a

    .line 1552
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3, v2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_1a
    move-object v7, v3

    .line 1553
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v2

    .line 1554
    :try_start_1e
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v13

    .line 1555
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v15

    .line 1556
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_52

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v2, v4

    move/from16 v3, p2

    move-object/from16 v4, p3

    :try_start_46
    invoke-direct/range {v0 .. v16}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1563
    monitor-exit v17

    return-void

    :catchall_50
    move-exception v0

    goto :goto_55

    :catchall_52
    move-exception v0

    move-object/from16 v17, v2

    :goto_55
    monitor-exit v17
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_50

    throw v0
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .registers 13

    .line 1872
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged_enforcePermission()V

    .line 1874
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1875
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1876
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1877
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1882
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_21

    throw p0
.end method

.method public varargs noteCpuWakingActivity(IJ[I)V
    .registers 12

    .line 666
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/BatteryStatsService;IJ[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public noteCurrentTimeChanged()V
    .registers 11

    .line 3696
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 3697
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3698
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 3699
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 3700
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/BatteryStatsService;JJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3705
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public noteDeviceIdleMode(ILjava/lang/String;I)V
    .registers 15

    .line 2625
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode_enforcePermission()V

    .line 2627
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2628
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 2629
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 2630
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2636
    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_22

    throw p0
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .registers 15

    .line 1341
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent_enforcePermission()V

    if-nez p2, :cond_1d

    .line 1345
    const-string p0, "BatteryStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "noteEvent called with null name. code = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1349
    :cond_1d
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1350
    :try_start_20
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 1351
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 1352
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1357
    monitor-exit v1

    return-void

    :catchall_3c
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_3c

    throw p0
.end method

.method public noteFlashlightOff(I)V
    .registers 11

    .line 2158
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff_enforcePermission()V

    .line 2160
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2161
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2162
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2163
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda50;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda50;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2168
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/16 v0, 0x1a

    .line 2169
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 2168
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteFlashlightOn(I)V
    .registers 11

    .line 2140
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn_enforcePermission()V

    .line 2142
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2143
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2144
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2145
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2150
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/16 v0, 0x1a

    .line 2151
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 2150
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteFullWifiLockAcquired(I)V
    .registers 11

    .line 2393
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired_enforcePermission()V

    .line 2395
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2396
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2397
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2398
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2403
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .registers 10

    .line 2489
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource_enforcePermission()V

    if-eqz p1, :cond_c

    .line 2491
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 2492
    :goto_e
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 2493
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2494
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2495
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2501
    monitor-exit p1

    return-void

    :catchall_2a
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2a

    throw p0
.end method

.method public noteFullWifiLockReleased(I)V
    .registers 11

    .line 2409
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased_enforcePermission()V

    .line 2411
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2412
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2413
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2414
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda55;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2419
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .registers 10

    .line 2507
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource_enforcePermission()V

    if-eqz p1, :cond_c

    .line 2509
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 2510
    :goto_e
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 2511
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2512
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2513
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2519
    monitor-exit p1

    return-void

    :catchall_2a
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2a

    throw p0
.end method

.method public noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 13

    .line 1753
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsChanged_enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 1755
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v4, v1

    goto :goto_e

    :cond_d
    move-object v4, v0

    :goto_e
    if-eqz p2, :cond_15

    .line 1756
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_15
    move-object v5, v0

    .line 1757
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 1758
    :try_start_19
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1759
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p2}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1760
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1765
    monitor-exit p1

    return-void

    :catchall_32
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_35
    .catchall {:try_start_19 .. :try_end_35} :catchall_32

    throw p0
.end method

.method public noteGpsSignalQuality(I)V
    .registers 11

    .line 1771
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsSignalQuality_enforcePermission()V

    .line 1773
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1774
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 1775
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 1776
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda93;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda93;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1781
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public noteInteractive(Z)V
    .registers 7

    .line 1857
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive_enforcePermission()V

    .line 1859
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v0

    .line 1860
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 1861
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda99;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda99;-><init>(Lcom/android/server/am/BatteryStatsService;ZJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1866
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public noteJobFinish(Ljava/lang/String;II)V
    .registers 15

    .line 1417
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish_enforcePermission()V

    .line 1419
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1420
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 1421
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 1422
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda64;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda64;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1427
    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_22

    throw p0
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .registers 13

    .line 1400
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart_enforcePermission()V

    .line 1402
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1403
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1404
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1405
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1410
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_21

    throw p0
.end method

.method public noteJobsDeferred(IIJ)V
    .registers 17

    .line 1432
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1433
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v8

    .line 1434
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v10

    .line 1435
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda107;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda107;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1441
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1f

    throw p0
.end method

.method public noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15

    .line 1626
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish_enforcePermission()V

    .line 1628
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1629
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 1630
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 1631
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1637
    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_22

    throw p0
.end method

.method public noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 14

    .line 1644
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinishFromSource_enforcePermission()V

    if-eqz p3, :cond_c

    .line 1646
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v5, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 1647
    :goto_e
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p3

    .line 1648
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1649
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1650
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1656
    monitor-exit p3

    return-void

    :catchall_2c
    move-exception v0

    move-object p0, v0

    monitor-exit p3
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2c

    throw p0
.end method

.method public noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15

    .line 1589
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart_enforcePermission()V

    .line 1591
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1592
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 1593
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 1594
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1600
    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_22

    throw p0
.end method

.method public noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 14

    .line 1607
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStartFromSource_enforcePermission()V

    if-eqz p3, :cond_c

    .line 1609
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v5, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 1610
    :goto_e
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p3

    .line 1611
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1612
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1613
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1619
    monitor-exit p3

    return-void

    :catchall_2c
    move-exception v0

    move-object p0, v0

    monitor-exit p3
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2c

    throw p0
.end method

.method public noteMobileRadioPowerState(IJI)V
    .registers 17

    .line 1889
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState_enforcePermission()V

    .line 1891
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1892
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v8

    .line 1893
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v10

    .line 1894
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda92;

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda92;-><init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1904
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_2b

    const/16 p0, 0xc

    const/4 p2, 0x0

    move/from16 v7, p4

    .line 1905
    invoke-static {p0, v7, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_2b
    move-exception v0

    move-object p0, v0

    .line 1904
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2b

    throw p0
.end method

.method public noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .registers 12

    .line 2779
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity_enforcePermission()V

    if-nez p1, :cond_1c

    .line 2782
    const-string p0, "BatteryStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid modem data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2786
    :cond_1c
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2787
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2788
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2789
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/usage/NetworkStatsManager;

    .line 2791
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda60;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2795
    monitor-exit v1

    return-void

    :catchall_44
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_44

    throw p0
.end method

.method public noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V
    .registers 6

    .line 2595
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceForTransports_enforcePermission()V

    .line 2597
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v0

    .line 2598
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2601
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public noteNetworkStatsEnabled()V
    .registers 4

    .line 2610
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled_enforcePermission()V

    .line 2612
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v0

    .line 2614
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda63;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda63;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2619
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public notePackageInstalled(Ljava/lang/String;J)V
    .registers 15

    .line 2640
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2641
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 2642
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 2643
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2649
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1e

    throw p0
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .registers 11

    .line 2653
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2654
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2655
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2656
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda77;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda77;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2661
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1d

    throw p0
.end method

.method public notePhoneDataConnectionState(IZIII)V
    .registers 19

    .line 1962
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState_enforcePermission()V

    .line 1964
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1965
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v9

    .line 1966
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v11

    .line 1967
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;-><init>(Lcom/android/server/am/BatteryStatsService;IZIIIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1973
    monitor-exit v1

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public notePhoneOff()V
    .registers 9

    .line 1928
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff_enforcePermission()V

    .line 1930
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1931
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 1932
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 1933
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda59;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda59;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1938
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_1f

    throw p0
.end method

.method public notePhoneOn()V
    .registers 9

    .line 1912
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn_enforcePermission()V

    .line 1914
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1915
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 1916
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 1917
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1922
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_1f

    throw p0
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 11

    .line 1944
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength_enforcePermission()V

    .line 1946
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1947
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 1948
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 1949
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda67;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda67;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1954
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public notePhoneState(I)V
    .registers 11

    .line 1979
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState_enforcePermission()V

    .line 1981
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1982
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 1983
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 1984
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda49;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1990
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public noteProcessAnr(Ljava/lang/String;I)V
    .registers 13

    .line 881
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 882
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 883
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 884
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 889
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1e

    throw p0
.end method

.method public noteProcessCrash(Ljava/lang/String;I)V
    .registers 13

    .line 867
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 868
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 869
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 870
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 875
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_24

    const/16 p0, 0x1c

    const/4 p1, 0x2

    .line 876
    invoke-static {p0, v5, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception v0

    move-object p0, v0

    .line 875
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_24

    throw p0
.end method

.method public noteProcessDied(II)V
    .registers 6

    .line 3731
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v0

    .line 3732
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda70;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda70;-><init>(Lcom/android/server/am/BatteryStatsService;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3737
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public noteProcessFinish(Ljava/lang/String;I)V
    .registers 13

    .line 893
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 894
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 895
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 896
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 901
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_24

    const/16 p0, 0x1c

    const/4 p1, 0x0

    .line 902
    invoke-static {p0, v5, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception v0

    move-object p0, v0

    .line 901
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_24

    throw p0
.end method

.method public noteProcessStart(Ljava/lang/String;I)V
    .registers 13

    .line 853
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 854
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 855
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 856
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 861
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_24

    const/16 p0, 0x1c

    const/4 p1, 0x1

    .line 862
    invoke-static {p0, v5, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception v0

    move-object p0, v0

    .line 861
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_24

    throw p0
.end method

.method public noteResetAudio()V
    .registers 9

    .line 2104
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio_enforcePermission()V

    .line 2106
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2107
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2108
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2109
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda23;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2114
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_27

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/16 v1, 0x17

    const/4 v2, -0x1

    .line 2115
    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 2114
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteResetCamera()V
    .registers 9

    .line 2214
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera_enforcePermission()V

    .line 2216
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2217
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2218
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2219
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2224
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_27

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/16 v1, 0x19

    const/4 v2, -0x1

    .line 2225
    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 2224
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteResetFlashlight()V
    .registers 9

    .line 2232
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight_enforcePermission()V

    .line 2234
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2235
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2236
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2237
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda83;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda83;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2242
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_27

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/16 v1, 0x1a

    const/4 v2, -0x1

    .line 2243
    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 2242
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteResetVideo()V
    .registers 9

    .line 2122
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo_enforcePermission()V

    .line 2124
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2125
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2126
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2127
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda12;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2132
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_27

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/16 v1, 0x18

    const/4 v2, -0x1

    .line 2133
    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 2132
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteScreenBrightness(II)V
    .registers 13

    .line 1808
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness_enforcePermission()V

    .line 1810
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1811
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1812
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1813
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1819
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_21

    throw p0
.end method

.method public noteScreenState(III)V
    .registers 17

    .line 1787
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState_enforcePermission()V

    const/16 v0, 0x1d

    .line 1788
    invoke-static {v0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1790
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1791
    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 1792
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 1793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1794
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda68;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda68;-><init>(Lcom/android/server/am/BatteryStatsService;IIIJJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1802
    monitor-exit v1

    return-void

    :catchall_2c
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_2c

    throw p0
.end method

.method public noteServiceStartLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 3780
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 3781
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 3782
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 3783
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3790
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1f

    throw p0
.end method

.method public noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 3752
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 3753
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 3754
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 3755
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3762
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1f

    throw p0
.end method

.method public noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 3794
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 3795
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 3796
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 3797
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3804
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1f

    throw p0
.end method

.method public noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 3766
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 3767
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 3768
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 3769
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3776
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1f

    throw p0
.end method

.method public noteStartAudio(I)V
    .registers 11

    .line 2032
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio_enforcePermission()V

    .line 2034
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2035
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2036
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2037
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda72;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda72;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2042
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/16 v0, 0x17

    .line 2043
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 2042
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteStartCamera(I)V
    .registers 11

    .line 2176
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera_enforcePermission()V

    .line 2179
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2180
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2181
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2182
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2187
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/16 v0, 0x19

    .line 2189
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 2187
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteStartSensor(II)V
    .registers 13

    .line 1662
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor_enforcePermission()V

    .line 1664
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1665
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1666
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1667
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1672
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_27

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/4 p2, 0x5

    .line 1673
    invoke-static {p2, v4, p0, v5, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 1672
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteStartVideo(I)V
    .registers 11

    .line 2068
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo_enforcePermission()V

    .line 2070
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2071
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2072
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2073
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2078
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/16 v0, 0x18

    .line 2079
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 2078
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 21

    .line 1492
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock_enforcePermission()V

    .line 1494
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1495
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v10

    .line 1496
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v12

    .line 1497
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v13}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1503
    monitor-exit v1

    return-void

    :catchall_2a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2a

    throw p0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 20

    .line 1528
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource_enforcePermission()V

    if-eqz p1, :cond_c

    .line 1530
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 1531
    :goto_e
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 1532
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v9

    .line 1533
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v11

    .line 1534
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;

    move-object v2, p0

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1540
    monitor-exit p1

    return-void

    :catchall_33
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_36
    .catchall {:try_start_11 .. :try_end_36} :catchall_33

    throw p0
.end method

.method public noteStopAudio(I)V
    .registers 11

    .line 2050
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio_enforcePermission()V

    .line 2052
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2053
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2054
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2055
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2060
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/16 v0, 0x17

    .line 2061
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 2060
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteStopCamera(I)V
    .registers 11

    .line 2196
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera_enforcePermission()V

    .line 2198
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2199
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2200
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2201
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda44;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2206
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/16 v0, 0x19

    .line 2207
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 2206
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteStopSensor(II)V
    .registers 13

    .line 1703
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor_enforcePermission()V

    .line 1705
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1706
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1707
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1708
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1713
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_27

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x5

    .line 1714
    invoke-static {p2, v4, p0, v5, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 1713
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteStopVideo(I)V
    .registers 11

    .line 2086
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo_enforcePermission()V

    .line 2088
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2089
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2090
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2091
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda24;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2096
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/16 v0, 0x18

    .line 2097
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 2096
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 19

    .line 1510
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock_enforcePermission()V

    .line 1512
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1513
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v9

    .line 1514
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v11

    .line 1515
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda9;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1521
    monitor-exit v1

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 18

    .line 1570
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource_enforcePermission()V

    if-eqz p1, :cond_c

    .line 1572
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 1573
    :goto_e
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 1574
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v8

    .line 1575
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v10

    .line 1576
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1582
    monitor-exit p1

    return-void

    :catchall_30
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_30

    throw p0
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .registers 13

    .line 1381
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish_enforcePermission()V

    .line 1383
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1384
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1385
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1386
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1391
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_27

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x7

    .line 1392
    invoke-static {p2, v5, p0, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 1391
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .registers 13

    .line 1363
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart_enforcePermission()V

    .line 1365
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1366
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1367
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1368
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda13;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1373
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_27

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/4 p2, 0x7

    .line 1374
    invoke-static {p2, v5, p0, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_27
    move-exception v0

    move-object p0, v0

    .line 1373
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_27

    throw p0
.end method

.method public noteUidProcessState(II)V
    .registers 13

    .line 908
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 909
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 910
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 911
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 917
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1e

    throw p0
.end method

.method public noteUserActivity(II)V
    .registers 13

    .line 1825
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity_enforcePermission()V

    .line 1827
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1828
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1829
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1830
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1835
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_21

    throw p0
.end method

.method public noteVibratorOff(I)V
    .registers 11

    .line 1737
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff_enforcePermission()V

    .line 1739
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1740
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 1741
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 1742
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1747
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public noteVibratorOn(IJ)V
    .registers 15

    .line 1721
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn_enforcePermission()V

    .line 1723
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1724
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 1725
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 1726
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;-><init>(Lcom/android/server/am/BatteryStatsService;IJJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1731
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_21

    throw p0
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .registers 13

    .line 1841
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp_enforcePermission()V

    .line 1843
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1844
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 1845
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 1846
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda74;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda74;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1851
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_21

    throw p0
.end method

.method public noteWakeupSensorEvent(JII)V
    .registers 7

    .line 1679
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_62

    .line 1683
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 1685
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1686
    invoke-virtual {v0, p4}, Landroid/hardware/SensorManager;->getSensorByHandle(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1687
    const-string v1, "BatteryStatsService"

    if-nez v0, :cond_3a

    .line 1688
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown sensor handle "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " received in noteWakeupSensorEvent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3a
    if-gez p3, :cond_59

    .line 1693
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for sensor event with sensor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_59
    const/4 p4, 0x4

    .line 1697
    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(IJ[I)V

    return-void

    .line 1681
    :cond_62
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calling uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not system uid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public noteWakupAlarm(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 16

    .line 1446
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v2, "noteWakupAlarm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_13

    .line 1447
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_11
    move-object v5, v0

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 1448
    :goto_15
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p3

    .line 1449
    :try_start_18
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 1450
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v9

    .line 1451
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1457
    monitor-exit p3

    return-void

    :catchall_34
    move-exception v0

    move-object p0, v0

    monitor-exit p3
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_34

    throw p0
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .registers 12

    .line 2559
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource_enforcePermission()V

    if-eqz p1, :cond_c

    .line 2561
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 2562
    :goto_e
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 2563
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2564
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2565
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda97;

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda97;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2571
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2b

    throw p0
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 10

    .line 2577
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource_enforcePermission()V

    if-eqz p1, :cond_c

    .line 2579
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 2580
    :goto_e
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 2581
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2582
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2583
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2589
    monitor-exit p1

    return-void

    :catchall_2a
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2a

    throw p0
.end method

.method public noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 12

    .line 2737
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity_enforcePermission()V

    if-eqz p1, :cond_b

    .line 2739
    invoke-virtual {p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move-object v4, p1

    goto :goto_39

    .line 2744
    :cond_d
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2745
    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2746
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2747
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/usage/NetworkStatsManager;

    .line 2749
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2752
    monitor-exit v1

    return-void

    :catchall_35
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_35

    throw p0

    .line 2740
    :goto_39
    const-string p0, "BatteryStatsService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid wifi data given: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public noteWifiMulticastDisabled(I)V
    .registers 11

    .line 2473
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled_enforcePermission()V

    .line 2475
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2476
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2477
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2478
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2483
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public noteWifiMulticastEnabled(I)V
    .registers 11

    .line 2457
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled_enforcePermission()V

    .line 2459
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2460
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2461
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2462
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda4;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2467
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public noteWifiOff()V
    .registers 9

    .line 2014
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff_enforcePermission()V

    .line 2016
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2017
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2018
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2019
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2024
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_25

    const/16 p0, 0x71

    const/4 v0, 0x0

    .line 2025
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_25
    move-exception v0

    move-object p0, v0

    .line 2024
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_25

    throw p0
.end method

.method public noteWifiOn()V
    .registers 9

    .line 1996
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn_enforcePermission()V

    .line 1998
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 1999
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2000
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2001
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda35;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2006
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_25

    const/16 p0, 0x71

    const/4 v0, 0x1

    .line 2007
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_25
    move-exception v0

    move-object p0, v0

    .line 2006
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_25

    throw p0
.end method

.method public noteWifiRadioPowerState(IJI)V
    .registers 17

    .line 2250
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState_enforcePermission()V

    .line 2252
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2253
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v8

    .line 2254
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v10

    .line 2255
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2275
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_2b

    const/16 p0, 0xd

    const/4 p2, 0x0

    move/from16 v7, p4

    .line 2276
    invoke-static {p0, v7, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_2b
    move-exception v0

    move-object p0, v0

    .line 2275
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2b

    throw p0
.end method

.method public noteWifiRssiChanged(I)V
    .registers 11

    .line 2377
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged_enforcePermission()V

    .line 2379
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2380
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2381
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2382
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2387
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .registers 11

    .line 2283
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning_enforcePermission()V

    if-eqz p1, :cond_c

    .line 2285
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 2286
    :goto_e
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v8

    .line 2287
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2288
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2289
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2294
    monitor-exit v8
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    const/16 p0, 0x72

    const/4 v0, 0x1

    .line 2296
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    return-void

    :catchall_30
    move-exception v0

    move-object p0, v0

    .line 2294
    :try_start_32
    monitor-exit v8
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_30

    throw p0
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 13

    .line 2303
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged_enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 2305
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v4, v1

    goto :goto_e

    :cond_d
    move-object v4, v0

    :goto_e
    if-eqz p2, :cond_15

    .line 2306
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_15
    move-object v5, v0

    .line 2307
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2308
    :try_start_19
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 2309
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 2310
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda54;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda54;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2316
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_3c

    const/4 p0, 0x1

    const/16 v0, 0x72

    .line 2317
    invoke-static {v0, p2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    const/4 p0, 0x0

    .line 2319
    invoke-static {v0, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    return-void

    :catchall_3c
    move-exception v0

    move-object p0, v0

    .line 2316
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3c

    throw p0
.end method

.method public noteWifiScanStarted(I)V
    .registers 11

    .line 2425
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted_enforcePermission()V

    .line 2427
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2428
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2429
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2430
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda75;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda75;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2435
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .registers 10

    .line 2525
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource_enforcePermission()V

    if-eqz p1, :cond_c

    .line 2527
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 2528
    :goto_e
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 2529
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2530
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2531
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda56;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2536
    monitor-exit p1

    return-void

    :catchall_2a
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2a

    throw p0
.end method

.method public noteWifiScanStopped(I)V
    .registers 11

    .line 2441
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped_enforcePermission()V

    .line 2443
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2444
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 2445
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 2446
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda53;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda53;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2451
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 10

    .line 2542
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource_enforcePermission()V

    if-eqz p1, :cond_c

    .line 2544
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_a
    move-object v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 2545
    :goto_e
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 2546
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2547
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2548
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda62;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda62;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2553
    monitor-exit p1

    return-void

    :catchall_2a
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2a

    throw p0
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .registers 11

    .line 2345
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState_enforcePermission()V

    .line 2347
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2348
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 2349
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda42;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2354
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1b

    throw p0
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .registers 11

    .line 2326
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped_enforcePermission()V

    if-eqz p1, :cond_c

    .line 2328
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v3, v0

    goto :goto_d

    :cond_c
    move-object v3, p1

    .line 2329
    :goto_d
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v8

    .line 2330
    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 2331
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 2332
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda22;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2337
    monitor-exit v8
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_2f

    const/16 p0, 0x72

    const/4 v0, 0x0

    .line 2338
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    return-void

    :catchall_2f
    move-exception v0

    move-object p0, v0

    .line 2337
    :try_start_31
    monitor-exit v8
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2f

    throw p0
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .registers 13

    .line 2360
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged_enforcePermission()V

    .line 2362
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 2363
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 2364
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 2365
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda37;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/am/BatteryStatsService;IZJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2371
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_21

    throw p0
.end method

.method public onCleanupUser(I)V
    .registers 7

    .line 820
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v0

    .line 821
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 822
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 827
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 11

    .line 768
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 769
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 770
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 771
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda88;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda88;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/PowerSaveState;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 777
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1d

    throw p0
.end method

.method public onSystemReady()V
    .registers 3

    .line 569
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->onSystemReady(Landroid/content/Context;)V

    .line 570
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->start()V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 831
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v0

    .line 832
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 837
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final populatePowerEntityMaps()V
    .registers 9

    .line 260
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_46

    :cond_9
    const/4 v1, 0x0

    move v2, v1

    .line 265
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_46

    .line 266
    aget-object v3, v0, v2

    .line 267
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v5, v1

    .line 268
    :goto_16
    iget-object v6, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v7, v6

    if-ge v5, v7, :cond_2b

    .line 269
    aget-object v6, v6, v5

    .line 270
    iget v7, v6, Landroid/hardware/power/stats/State;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v6, v6, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 273
    :cond_2b
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v6, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v3, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v3, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_46
    :goto_46
    return-void
.end method

.method public publish()V
    .registers 3

    .line 467
    new-instance v0, Lcom/android/server/am/BatteryStatsService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService-IA;)V

    const-class v1, Landroid/os/BatteryStatsInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 468
    const-string v0, "batterystats"

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final registerStatsCallbacks()V
    .registers 6

    .line 945
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 946
    new-instance v1, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService-IA;)V

    .line 949
    sget-object p0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v3, 0x2780

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const/16 v3, 0x2781

    .line 953
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const/16 v3, 0x277f

    .line 957
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 962
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v3, 0xbb8

    .line 965
    invoke-virtual {v2, v3, v4}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v2

    .line 966
    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v2

    const/16 v3, 0x27e1

    .line 962
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public removeIsolatedUid(II)V
    .registers 4

    .line 847
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/PowerStatsUidResolver;->noteIsolatedUidRemoved(II)V

    const/4 p0, -0x1

    const/4 p2, 0x0

    const/16 v0, 0x2b

    .line 848
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public removeUid(I)V
    .registers 7

    .line 808
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v0

    .line 809
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 810
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda38;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 816
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public reportExcessiveCpu(ILjava/lang/String;JJ)V
    .registers 17

    .line 3742
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 3743
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda108;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda108;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3748
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_14

    throw p0
.end method

.method public resetBattery(Z)V
    .registers 2

    .line 3892
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->resetBattery_enforcePermission()V

    .line 3894
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1}, Landroid/os/BatteryManagerInternal;->resetBattery(Z)V

    return-void
.end method

.method public scheduleWriteToDisk()V
    .registers 4

    .line 794
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v0

    .line 796
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setBatteryLevel(IZ)V
    .registers 3

    .line 3870
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryLevel_enforcePermission()V

    .line 3872
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryManagerInternal;->setBatteryLevel(IZ)V

    return-void
.end method

.method public setBatteryState(IIIIIIIIJ)V
    .registers 32

    move-object/from16 v1, p0

    .line 2807
    invoke-super {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState_enforcePermission()V

    move/from16 v3, p1

    move/from16 v5, p3

    .line 2809
    invoke-static {v5, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBattery(II)Z

    move-result v2

    .line 2810
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v4

    .line 2811
    :try_start_10
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v13

    .line 2812
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v15

    .line 2813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 2814
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    move-object v6, v0

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_43

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move/from16 v4, p2

    move/from16 v6, p4

    :try_start_37
    invoke-direct/range {v0 .. v18}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/BatteryStatsService;ZIIIIIIIIJJJJ)V

    move-object/from16 v6, v20

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2827
    monitor-exit v19

    return-void

    :catchall_41
    move-exception v0

    goto :goto_46

    :catchall_43
    move-exception v0

    move-object/from16 v19, v4

    :goto_46
    monitor-exit v19
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_41

    throw v0
.end method

.method public setChargerAcOnline(ZZ)V
    .registers 3

    .line 3859
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargerAcOnline_enforcePermission()V

    .line 3861
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryManagerInternal;->setChargerAcOnline(ZZ)V

    return-void
.end method

.method public setChargingStateUpdateDelayMillis(I)Z
    .registers 7

    .line 3661
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargingStateUpdateDelayMillis_enforcePermission()V

    .line 3663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3666
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3667
    const-string v2, "battery_charging_state_update_delay"

    int-to-long v3, p1

    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 3671
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3672
    throw p0
.end method

.method public setLastBatteryUsageStatsBeforeResetAtomPullTimestamp(J)V
    .registers 9

    .line 3815
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 3816
    :try_start_3
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    .line 3817
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_19
    .catchall {:try_start_8 .. :try_end_e} :catchall_17

    .line 3818
    :try_start_e
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1b

    if-eqz v2, :cond_3f

    .line 3819
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_19
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_3f

    :catchall_17
    move-exception p0

    goto :goto_7a

    :catch_19
    move-exception v2

    goto :goto_27

    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_26

    .line 3817
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v2

    :try_start_23
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw v3
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_19
    .catchall {:try_start_23 .. :try_end_27} :catchall_17

    .line 3820
    :goto_27
    :try_start_27
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot load config file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3822
    :cond_3f
    :goto_3f
    const-string v2, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    .line 3823
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 3822
    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_27 .. :try_end_48} :catchall_17

    const/4 p1, 0x0

    .line 3826
    :try_start_49
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p1

    .line 3827
    const-string p2, "Statsd atom pull timestamps"

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3828
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p2, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_59} :catch_5a
    .catchall {:try_start_49 .. :try_end_59} :catchall_17

    goto :goto_78

    :catch_5a
    move-exception p2

    .line 3830
    :try_start_5b
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3831
    const-string p1, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot save config file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3833
    :goto_78
    monitor-exit v0

    return-void

    :goto_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_5b .. :try_end_7b} :catchall_17

    throw p0
.end method

.method public final setPowerStatsThrottlePeriods(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;Ljava/lang/String;)V
    .registers 7

    if-nez p2, :cond_3

    goto :goto_48

    .line 434
    :cond_3
    const-string p0, "([^:]+):(\\d+)\\s*"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 435
    :goto_d
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    .line 436
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 439
    :try_start_19
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_21} :catch_31

    .line 444
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 445
    invoke-virtual {p1, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setDefaultPowerStatsThrottlePeriodMillis(J)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    goto :goto_d

    .line 447
    :cond_2d
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setPowerStatsThrottlePeriodMillis(Ljava/lang/String;J)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    goto :goto_d

    .line 441
    :catch_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid config_powerStatsThrottlePeriods format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    :goto_48
    return-void
.end method

.method public final shouldCollectExternalStats()Z
    .registers 5

    .line 3622
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3623
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public shutdown()V
    .registers 3

    .line 726
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 731
    const-string/jumbo v0, "shutdown"

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 733
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 734
    :try_start_15
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->shutdownLocked()V

    .line 735
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_26

    .line 738
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->shutdown()V

    .line 741
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {p0}, Lcom/android/internal/os/MonotonicClock;->write()V

    return-void

    :catchall_26
    move-exception p0

    .line 735
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public suspendBatteryInput()V
    .registers 1

    .line 3903
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->suspendBatteryInput_enforcePermission()V

    .line 3905
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->suspendBatteryInput()V

    return-void
.end method

.method public final syncStats(Ljava/lang/String;I)V
    .registers 4

    .line 694
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    .line 695
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 696
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    return-void
.end method

.method public systemServicesReady()V
    .registers 5

    .line 472
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->saveBatteryUsageStatsOnNewSession(Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/server/power/stats/PowerStatsStore;Z)V

    .line 475
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    check-cast v0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    .line 477
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 478
    invoke-virtual {v0, v3, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 480
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 481
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 483
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 484
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 486
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 487
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 490
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 491
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    const/16 v1, 0xe

    .line 492
    invoke-virtual {v0, v1, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 494
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 495
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 497
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 498
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 500
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 501
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 503
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 504
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 506
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 507
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 509
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 510
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    const/16 v1, 0x9

    .line 512
    invoke-virtual {v0, v1, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 514
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 515
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 518
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 519
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 522
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 523
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 525
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 526
    invoke-virtual {v1}, Lcom/android/server/power/feature/PowerManagerFlags;->isMoveWscLoggingToNotifierEnabled()Z

    move-result v1

    .line 525
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setMoveWscLoggingToNotifierEnabled(Z)V

    .line 528
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->systemServicesReady()V

    .line 529
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    .line 530
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->systemServicesReady()V

    .line 531
    const-string/jumbo v0, "network_management"

    .line 532
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 531
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 535
    :try_start_cc
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v2

    if-nez v2, :cond_da

    .line 539
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    goto :goto_da

    :catch_d8
    move-exception v0

    goto :goto_e0

    .line 541
    :cond_da
    :goto_da
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_df} :catch_d8

    goto :goto_f6

    .line 543
    :goto_e0
    const-string v1, "BatteryStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not register INetworkManagement event observer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :goto_f6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_f9
    const-class v1, Landroid/power/PowerStatsInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/power/PowerStatsInternal;

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_10b

    .line 549
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->populatePowerEntityMaps()V

    goto :goto_112

    :catchall_109
    move-exception p0

    goto :goto_139

    .line 551
    :cond_10b
    const-string v1, "BatteryStatsService"

    const-string v2, "Could not register PowerStatsInternal"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :goto_112
    monitor-exit v0
    :try_end_113
    .catchall {:try_start_f9 .. :try_end_113} :catchall_109

    .line 554
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 556
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 558
    new-instance v0, Lcom/android/server/am/DataConnectionStats;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/DataConnectionStats;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 559
    invoke-virtual {v0}, Lcom/android/server/am/DataConnectionStats;->startMonitoring()V

    .line 561
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->registerStatsCallbacks()V

    .line 562
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mSystemReady:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void

    .line 553
    :goto_139
    :try_start_139
    monitor-exit v0
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_109

    throw p0
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .registers 7

    .line 3517
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 3518
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3524
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3525
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3526
    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x7f

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    goto :goto_27

    :catchall_23
    move-exception p0

    goto :goto_52

    :catch_25
    move-exception p0

    goto :goto_36

    .line 3528
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2a} :catch_25
    .catchall {:try_start_12 .. :try_end_2a} :catchall_23

    .line 3529
    :try_start_2a
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object p0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_33

    .line 3535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_33
    move-exception p0

    .line 3530
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_36} :catch_25
    .catchall {:try_start_35 .. :try_end_36} :catchall_23

    .line 3532
    :goto_36
    :try_start_36
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashed while writing for takeUidSnapshot("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3533
    throw p0
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_23

    .line 3535
    :goto_52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3536
    throw p0
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .registers 9

    .line 3544
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3545
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3548
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3552
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3553
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3554
    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x7f

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    goto :goto_27

    :catchall_23
    move-exception p0

    goto :goto_45

    :catch_25
    move-exception p0

    goto :goto_44

    .line 3556
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2a} :catch_25
    .catchall {:try_start_12 .. :try_end_2a} :catchall_23

    .line 3557
    :try_start_2a
    array-length v3, p1

    .line 3558
    new-array v4, v3, [Landroid/os/health/HealthStatsParceler;

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v3, :cond_3d

    .line 3560
    aget v6, p1, v5

    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :catchall_3b
    move-exception p0

    goto :goto_42

    .line 3562
    :cond_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_2a .. :try_end_3e} :catchall_3b

    .line 3569
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 3563
    :goto_42
    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3b

    :try_start_43
    throw p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_44} :catch_25
    .catchall {:try_start_43 .. :try_end_44} :catchall_23

    .line 3567
    :goto_44
    :try_start_44
    throw p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_23

    .line 3569
    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3570
    throw p0
.end method

.method public takeUidSnapshotsAsync([ILandroid/os/ResultReceiver;)V
    .registers 6

    .line 3578
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3580
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_1f

    :catch_f
    move-exception p0

    .line 3583
    const-string p1, "exception"

    .line 3584
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x2

    .line 3583
    invoke-virtual {p2, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 3589
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3590
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-string v1, "get-health-stats-for-uids"

    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 3594
    :cond_2e
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;-><init>(Lcom/android/server/am/BatteryStatsService;[ILandroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unplugBattery(Z)V
    .registers 2

    .line 3881
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->unplugBattery_enforcePermission()V

    .line 3883
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1}, Landroid/os/BatteryManagerInternal;->unplugBattery(Z)V

    return-void
.end method

.method public updateBatteryStatsOnActivityUsage(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 15

    .line 3710
    iget-object p4, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p4

    .line 3711
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 3712
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 3713
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;

    move-object v2, p0

    move v4, p3

    move v3, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/am/BatteryStatsService;ZIJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3722
    monitor-exit p4
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_23

    const/16 p0, 0x2a

    .line 3723
    invoke-static {p0, v4, p1, p2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_23
    move-exception v0

    move-object p0, v0

    .line 3722
    :try_start_25
    monitor-exit p4
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_23

    throw p0
.end method

.method public updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
    .registers 17

    .line 3677
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter v1

    .line 3678
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    .line 3679
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 3680
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;

    move-object v3, p0

    move-object v5, p1

    move v4, p2

    move-wide v10, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3692
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1f

    throw p0
.end method
