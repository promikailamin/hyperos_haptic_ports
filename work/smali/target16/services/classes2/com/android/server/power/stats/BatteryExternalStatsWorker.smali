.class public Lcom/android/server/power/stats/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$ExternalStatsSync;


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mCurrentReason:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

.field public mLastCollectionTimeStamp:J

.field public mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field public mOnBattery:Z

.field public mOnBatteryScreenOff:Z

.field public mPerDisplayScreenStates:[I

.field public mScreenState:I

.field public final mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mTelephony:Landroid/telephony/TelephonyManager;

.field public mUpdateFlags:I

.field public mUseLatestStates:Z

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWorkerLock:Ljava/lang/Object;

.field public final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$09au3fz9zJxz1a0C4NtyPAvX438(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$0Qt5-WUKKSnrPDZAFOdvVci2W08(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCleanupDueToRemovedUser$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$C4q7eJQP9Ur2raY6hyEazsDUoLs(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleSyncDueToProcessStateChange$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HU6SYqtwtE9YRIx-15RXxWLIshE(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCleanupDueToRemovedUser$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QZczAHmUoOM9EvjVDLajdOZdNbE(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 4

    .line 433
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 434
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 435
    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jGOuPZKngR5Hkw2HmXI1V92vqNc(Lcom/android/server/power/stats/BatteryExternalStatsWorker;JJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleSyncLocked$5(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wchZeRT4nlzYK6ffE_ns17IfYeI(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;Lcom/android/internal/os/Clock;)V
    .registers 6

    .line 152
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;Lcom/android/internal/os/Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;Lcom/android/internal/os/Clock;)V
    .registers 7

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 111
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 113
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 116
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 121
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 399
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    .line 158
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    .line 159
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 160
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    .line 161
    iput-object p4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mClock:Lcom/android/internal/os/Clock;

    return-void
.end method

.method public static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-wide/16 v1, 0x7d0

    .line 607
    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 608
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3d

    const/4 v3, 0x1

    .line 610
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 612
    iget-object v1, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v2, "controller_activity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0
    :try_end_1a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_1a} :catch_1d

    if-eqz p0, :cond_3d

    return-object p0

    .line 619
    :catch_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " stats"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BatteryExternalStatsWorker"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-object v0
.end method


# virtual methods
.method public cancelCpuSyncDueToWakelockChange()V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelSyncDueToBatteryLevelChangeLocked()V
    .registers 2

    .line 219
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public cancelSyncDueToProcessStateChange()V
    .registers 2

    .line 232
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 631
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    if-nez v2, :cond_a

    .line 634
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 636
    :cond_a
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 637
    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 638
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v4

    .line 639
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v6}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v6

    .line 640
    iget-object v8, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v8}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v8

    .line 641
    iget-object v10, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v10}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v10

    .line 642
    iget-object v12, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v12}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v12

    .line 644
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v15

    .line 645
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v17

    .line 652
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v18

    sub-long v18, v18, v8

    .line 653
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v8

    sub-long/2addr v8, v10

    .line 654
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    .line 655
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v14, v18, v4

    if-ltz v14, :cond_76

    cmp-long v14, v8, v4

    if-ltz v14, :cond_76

    cmp-long v14, v6, v4

    if-ltz v14, :cond_76

    cmp-long v14, v10, v4

    if-gez v14, :cond_63

    goto :goto_76

    .line 686
    :cond_63
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    move-wide/from16 v26, v2

    :goto_6f
    move-wide/from16 v22, v6

    move-wide/from16 v20, v8

    move-wide/from16 v24, v10

    goto :goto_af

    .line 662
    :cond_76
    :goto_76
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v6

    .line 663
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 664
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2ee

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-gtz v2, :cond_a5

    .line 666
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v4

    .line 667
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v2

    .line 668
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v6

    .line 669
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v8

    .line 670
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v10

    move-wide/from16 v18, v6

    move-wide v6, v10

    move-wide v10, v8

    move-wide v8, v2

    goto :goto_aa

    :cond_a5
    move-wide v6, v4

    move-wide v8, v6

    move-wide v10, v8

    move-wide/from16 v18, v10

    :goto_aa
    const/4 v2, 0x1

    move-wide/from16 v26, v4

    move v4, v2

    goto :goto_6f

    .line 690
    :goto_af
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 691
    new-instance v14, Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-direct/range {v14 .. v27}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    if-eqz v4, :cond_ce

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryExternalStatsWorker"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ce
    return-object v14
.end method

.method public getLastCollectionTimeStamp()J
    .registers 3

    .line 318
    monitor-enter p0

    .line 319
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    .line 320
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final synthetic lambda$scheduleCleanupDueToRemovedUser$3(I)V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    .line 241
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$scheduleCleanupDueToRemovedUser$4(I)V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 248
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    .line 249
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$scheduleCpuSyncDueToWakelockChange$0()V
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method public final synthetic lambda$scheduleCpuSyncDueToWakelockChange$1()V
    .registers 3

    .line 205
    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 206
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$scheduleSyncDueToProcessStateChange$2(I)V
    .registers 3

    .line 226
    const-string/jumbo v0, "procstate-change"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$scheduleSyncLocked$5(JJ)V
    .registers 5

    .line 311
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->sync(JJ)V

    return-void
.end method

.method public scheduleCleanupDueToRemovedUser(I)V
    .registers 7

    .line 238
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 246
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    const-wide/16 p0, 0x2710

    invoke-virtual {v0, v1, v4, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    return-void
.end method

.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)V
    .registers 3

    monitor-enter p0

    .line 181
    :try_start_1
    const-string/jumbo p1, "remove-uid"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 182
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public scheduleCpuSyncDueToWakelockChange(J)V
    .registers 5

    .line 202
    monitor-enter p0

    .line 203
    :try_start_1
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(ILjava/lang/Runnable;J)V

    .line 209
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final scheduleDelayedSyncLocked(ILjava/lang/Runnable;J)V
    .registers 7

    .line 266
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_14

    .line 270
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_15

    :cond_14
    return-void

    .line 276
    :cond_15
    :goto_15
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    return-void
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    .line 292
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 293
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)V
    .registers 3

    monitor-enter p0

    .line 176
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 177
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public scheduleSyncDueToProcessStateChange(IJ)V
    .registers 5

    .line 224
    monitor-enter p0

    .line 225
    :try_start_1
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(ILjava/lang/Runnable;J)V

    .line 228
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public scheduleSyncDueToScreenStateChange(IZZI[I)V
    .registers 8

    .line 187
    monitor-enter p0

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_19

    goto :goto_12

    :catchall_10
    move-exception p1

    goto :goto_25

    .line 189
    :cond_12
    :goto_12
    iput-boolean p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 190
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    const/4 p2, 0x0

    .line 191
    iput-boolean p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 194
    :cond_19
    iput p4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mScreenState:I

    .line 195
    iput-object p5, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    .line 196
    const-string/jumbo p2, "screen-state"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)V

    .line 197
    monitor-exit p0

    return-void

    :goto_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_10

    throw p1
.end method

.method public final scheduleSyncLocked(Ljava/lang/String;I)V
    .registers 11

    .line 305
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 306
    iput p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 307
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 308
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mClock:Lcom/android/internal/os/Clock;

    monitor-enter p1

    .line 309
    :try_start_10
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 310
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 311
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;JJ)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 312
    monitor-exit p1

    goto :goto_30

    :catchall_2b
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2b

    throw p0

    :cond_2f
    move-object v3, p0

    .line 314
    :goto_30
    iget p0, v3, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr p0, p2

    iput p0, v3, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    return-void
.end method

.method public declared-synchronized scheduleWrite()V
    .registers 3

    monitor-enter p0

    .line 283
    :try_start_1
    const-string/jumbo v0, "write"

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)V

    .line 284
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 285
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public shutdown()V
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final sync(JJ)V
    .registers 21

    move-object/from16 v1, p0

    .line 332
    monitor-enter p0

    .line 333
    :try_start_3
    iget v3, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 334
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 335
    iget-boolean v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 336
    iget-boolean v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    .line 337
    iget v6, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mScreenState:I

    .line 338
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    .line 339
    iget-boolean v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    const/4 v0, 0x0

    .line 340
    iput v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    const/4 v0, 0x0

    .line 341
    iput-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    and-int/lit8 v13, v3, 0x7f

    const/16 v14, 0x7f

    if-ne v13, v14, :cond_27

    .line 344
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V

    goto :goto_27

    :catchall_24
    move-exception v0

    goto/16 :goto_a0

    :cond_27
    :goto_27
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_2e

    .line 347
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->cancelCpuSyncDueToWakelockChange()V

    :cond_2e
    and-int/lit8 v9, v3, 0xe

    const/16 v10, 0xe

    if-ne v9, v10, :cond_37

    .line 350
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->cancelSyncDueToProcessStateChange()V

    .line 352
    :cond_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_24

    .line 355
    :try_start_38
    iget-object v15, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_5c

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    .line 360
    :try_start_3f
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZI[IZJJ)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_6b

    if-ne v13, v14, :cond_53

    .line 365
    :try_start_44
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_51

    .line 367
    :try_start_47
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->informThatAllExternalStatsAreFlushed()V

    .line 368
    monitor-exit v2

    goto :goto_53

    :catchall_4e
    move-exception v0

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_4e

    :try_start_50
    throw v0

    :catchall_51
    move-exception v0

    goto :goto_7c

    .line 374
    :cond_53
    :goto_53
    monitor-exit v15
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_51

    if-eqz v0, :cond_5e

    .line 377
    :try_start_56
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuTimesForAllUids()V

    goto :goto_5e

    :catch_5c
    move-exception v0

    goto :goto_7e

    .line 381
    :cond_5e
    :goto_5e
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_61} :catch_5c

    .line 382
    :try_start_61
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    .line 383
    monitor-exit v2

    goto :goto_85

    :catchall_68
    move-exception v0

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6b} :catch_5c

    :catchall_6b
    move-exception v0

    if-ne v13, v14, :cond_7b

    .line 365
    :try_start_6e
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_51

    .line 367
    :try_start_71
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->informThatAllExternalStatsAreFlushed()V

    .line 368
    monitor-exit v2

    goto :goto_7b

    :catchall_78
    move-exception v0

    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw v0

    .line 373
    :cond_7b
    :goto_7b
    throw v0

    .line 374
    :goto_7c
    monitor-exit v15
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_51

    :try_start_7d
    throw v0
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7e} :catch_5c

    .line 385
    :goto_7e
    const-string v2, "BatteryExternalStatsWorker"

    const-string v4, "Error updating external stats: "

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_85
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_93

    .line 389
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 390
    :try_start_8c
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    .line 391
    monitor-exit p0

    goto :goto_9f

    :catchall_90
    move-exception v0

    monitor-exit p0
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_90

    throw v0

    :cond_93
    if-ne v13, v14, :cond_9f

    .line 393
    monitor-enter p0

    move-wide/from16 v9, p1

    .line 394
    :try_start_98
    iput-wide v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    .line 395
    monitor-exit p0

    goto :goto_9f

    :catchall_9c
    move-exception v0

    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_98 .. :try_end_9e} :catchall_9c

    throw v0

    :cond_9f
    :goto_9f
    return-void

    .line 352
    :goto_a0
    :try_start_a0
    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_24

    throw v0
.end method

.method public systemServicesReady()V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 167
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 168
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2b

    .line 169
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayCount()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    .line 170
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2d

    .line 171
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_30

    :catchall_2d
    move-exception p0

    .line 170
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p0

    .line 171
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_2b

    throw p0
.end method

.method public final updateExternalStatsLocked(Ljava/lang/String;IZZI[IZJJ)V
    .registers 29

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 415
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_3c

    .line 421
    iget-object v3, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 422
    new-instance v3, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v4, "wifi"

    invoke-direct {v3, v4}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 423
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v5, Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;

    invoke-direct {v5, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    new-instance v6, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;

    invoke-direct {v6, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    goto :goto_2e

    :cond_2d
    move-object v3, v2

    .line 440
    :goto_2e
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v4

    .line 441
    :try_start_31
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 442
    monitor-exit v4

    const/4 v4, 0x1

    goto :goto_3e

    :catchall_39
    move-exception v0

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    const/4 v4, 0x0

    move-object v3, v2

    :goto_3e
    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_6e

    .line 448
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->getPowerStatsCollector(I)Lcom/android/server/power/stats/PowerStatsCollector;

    move-result-object v5

    .line 450
    invoke-virtual {v5}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 451
    invoke-virtual {v5}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    goto :goto_6e

    .line 454
    :cond_53
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    if-eqz v5, :cond_6e

    .line 456
    new-instance v6, Landroid/os/SynchronousResultReceiver;

    const-string v7, "bluetooth"

    invoke-direct {v6, v7}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 458
    new-instance v7, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v8, Lcom/android/server/power/stats/BatteryExternalStatsWorker$3;

    invoke-direct {v8, v1, v6}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$3;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v5, v7, v8}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    goto :goto_6f

    :cond_6e
    :goto_6e
    move-object v6, v2

    :goto_6f
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_ac

    .line 487
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getPowerStatsCollector(I)Lcom/android/server/power/stats/PowerStatsCollector;

    move-result-object v5

    .line 489
    invoke-virtual {v5}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_85

    .line 490
    invoke-virtual {v5}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    goto :goto_9d

    .line 493
    :cond_85
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_9d

    .line 494
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 495
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v7, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v8, Lcom/android/server/power/stats/BatteryExternalStatsWorker$4;

    invoke-direct {v8, v1, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$4;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v5, v7, v8}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    :cond_9d
    :goto_9d
    if-nez v4, :cond_ac

    .line 513
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v4

    .line 514
    :try_start_a2
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 515
    monitor-exit v4

    goto :goto_ac

    :catchall_a9
    move-exception v0

    monitor-exit v4
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_a9

    throw v0

    :cond_ac
    :goto_ac
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_b5

    .line 521
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->fillLowPowerStats()V

    .line 524
    :cond_b5
    invoke-static {v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 525
    invoke-static {v6}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 528
    :try_start_c1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v0, v7, v8, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_cb
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c1 .. :try_end_cb} :catch_cf
    .catch Ljava/lang/InterruptedException; {:try_start_c1 .. :try_end_cb} :catch_cf
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c1 .. :try_end_cb} :catch_cd

    move-object v2, v0

    goto :goto_103

    :catch_cd
    move-exception v0

    goto :goto_d1

    :catch_cf
    move-exception v0

    goto :goto_ec

    .line 533
    :goto_d1
    const-string v6, "BatteryExternalStatsWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception reading modem stats: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_103

    .line 531
    :goto_ec
    const-string v6, "BatteryExternalStatsWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timeout or interrupt reading modem stats: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_103
    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p8

    .line 540
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v8

    .line 541
    :try_start_10a
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v14, 0xe

    const/16 v16, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/power/stats/BatteryStatsImpl;->recordHistoryEventLocked(JJILjava/lang/String;I)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_138

    if-eqz p7, :cond_12f

    .line 549
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v0

    .line 550
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v9

    goto :goto_133

    :catchall_12c
    move-exception v0

    goto/16 :goto_1d5

    :cond_12f
    move/from16 v0, p3

    move/from16 v9, p4

    .line 553
    :goto_133
    iget-object v10, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v10, v0, v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuTimeLocked(ZZ)V

    :cond_138
    const/16 v0, 0x7f

    and-int/lit8 v9, p2, 0x7f

    if-ne v9, v0, :cond_148

    .line 557
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateKernelWakelocksLocked(J)V

    .line 558
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked(J)V

    :cond_148
    if-eqz v4, :cond_14f

    .line 562
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRpmStatsLocked(J)V

    :cond_14f
    if-eqz v5, :cond_17b

    .line 566
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 567
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-wide/from16 p3, p8

    move-wide/from16 p5, p10

    move-object/from16 p1, v0

    move-object/from16 p2, v5

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    goto :goto_17b

    .line 569
    :cond_165
    const-string v0, "BatteryExternalStatsWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bluetooth info is invalid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_17b
    :goto_17b
    monitor-exit v8
    :try_end_17c
    .catchall {:try_start_10a .. :try_end_17c} :catchall_12c

    if-eqz v3, :cond_1b9

    .line 577
    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 578
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v4, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    .line 580
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object v3

    move-wide/from16 p3, p8

    move-wide/from16 p5, p10

    move-object/from16 p7, v0

    move-object/from16 p2, v3

    move-object/from16 p1, v4

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    goto :goto_1b9

    .line 583
    :cond_1a2
    const-string v0, "BatteryExternalStatsWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi info is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b9
    :goto_1b9
    if-eqz v2, :cond_1d4

    .line 588
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v3, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    .line 590
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-wide/from16 p2, p8

    move-wide/from16 p4, p10

    move-object/from16 p6, v0

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    :cond_1d4
    return-void

    .line 572
    :goto_1d5
    :try_start_1d5
    monitor-exit v8
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_12c

    throw v0
.end method
