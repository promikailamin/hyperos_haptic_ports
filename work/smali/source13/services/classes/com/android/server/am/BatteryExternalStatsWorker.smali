.class Lcom/android/server/am/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryExternalStatsWorker$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS:J = 0x2eeL

.field private static final TAG:Ljava/lang/String; = "BatteryExternalStatsWorker"

.field public static final UID_REMOVAL_AFTER_USER_REMOVAL_DELAY_MILLIS:I = 0x2710


# instance fields
.field private mBatteryLevelSync:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentReason:Ljava/lang/String;

.field private mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field final mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

.field private mLastCollectionTimeStamp:J

.field private mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field private mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

.field private mOnBattery:Z

.field private mOnBatteryScreenOff:Z

.field private mPerDisplayScreenStates:[I

.field private mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field private mProcessStateSync:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mScreenState:I

.field private final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mSyncTask:Ljava/lang/Runnable;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mUidsToRemove:Landroid/util/IntArray;

.field private mUpdateFlags:I

.field private mUseLatestStates:Z

.field private mWakelockChangesUpdate:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkerLock:Ljava/lang/Object;

.field private final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentReason(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnBattery(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnBatteryScreenOff(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerDisplayScreenStates(Lcom/android/server/am/BatteryExternalStatsWorker;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenState(Lcom/android/server/am/BatteryExternalStatsWorker;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mScreenState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStats(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidsToRemove(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateFlags(Lcom/android/server/am/BatteryExternalStatsWorker;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUseLatestStates(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkerLock(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentFuture(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentReason(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/am/BatteryExternalStatsWorker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdateFlags(Lcom/android/server/am/BatteryExternalStatsWorker;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUseLatestStates(Lcom/android/server/am/BatteryExternalStatsWorker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelSyncDueToBatteryLevelChangeLocked(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateExternalStatsLocked(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZI[IZ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZI[IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 193
    new-instance v0, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker$Injector;Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 194
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker$Injector;Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 18
    .param p1, "injector"    # Lcom/android/server/am/BatteryExternalStatsWorker$Injector;
    .param p2, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 197
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;-><init>()V

    .line 86
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 101
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 104
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 107
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 119
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    .line 122
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 125
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    .line 138
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 140
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 143
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 146
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 151
    new-instance v2, Landroid/os/connectivity/WifiActivityEnergyInfo;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 159
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 163
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    .line 427
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    .line 510
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    .line 198
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    .line 199
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 200
    return-void
.end method

.method private addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V
    .registers 4
    .param p1, "energyConsumerIds"    # Landroid/util/IntArray;
    .param p2, "type"    # I

    .line 964
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 965
    .local v0, "consumerIds":[I
    if-nez v0, :cond_b

    return-void

    .line 966
    :cond_b
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->addAll([I)V

    .line 967
    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .registers 5
    .param p0, "receiver"    # Landroid/os/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .line 772
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 773
    return-object v0

    .line 777
    :cond_4
    const-wide/16 v1, 0x7d0

    .line 778
    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 779
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1f

    .line 781
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 783
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2
    :try_end_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_1c} :catch_20

    .line 785
    .local v2, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_1f

    .line 786
    return-object v2

    .line 791
    .end local v1    # "result":Landroid/os/SynchronousResultReceiver$Result;
    .end local v2    # "data":Landroid/os/Parcelable;, "TT;"
    :cond_1f
    goto :goto_44

    .line 789
    :catch_20
    move-exception v1

    .line 790
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryExternalStatsWorker"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_44
    return-object v0
.end method

.method private cancelSyncDueToBatteryLevelChangeLocked()V
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_b

    .line 317
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 320
    :cond_b
    return-void
.end method

.method private extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .registers 56
    .param p1, "latest"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 797
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 798
    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 799
    .local v1, "timePeriodMs":J
    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v3

    .line 800
    .local v3, "lastScanMs":J
    iget-object v5, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v5

    .line 801
    .local v5, "lastIdleMs":J
    iget-object v7, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v7}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v7

    .line 802
    .local v7, "lastTxMs":J
    iget-object v9, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v9}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v9

    .line 803
    .local v9, "lastRxMs":J
    iget-object v11, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v11}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v11

    .line 805
    .local v11, "lastEnergy":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v27

    .line 806
    .local v27, "deltaTimeSinceBootMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v29

    .line 813
    .local v29, "deltaStackState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v13

    sub-long v30, v13, v7

    .line 814
    .local v30, "txTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v13

    sub-long v32, v13, v9

    .line 815
    .local v32, "rxTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v13

    sub-long v34, v13, v5

    .line 816
    .local v34, "idleTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v13

    sub-long v36, v13, v3

    .line 819
    .local v36, "scanTimeMs":J
    const-wide/16 v13, 0x0

    cmp-long v15, v30, v13

    if-ltz v15, :cond_81

    cmp-long v15, v32, v13

    if-ltz v15, :cond_81

    cmp-long v15, v36, v13

    if-ltz v15, :cond_81

    cmp-long v15, v34, v13

    if-gez v15, :cond_60

    move-wide/from16 v38, v3

    goto :goto_83

    .line 842
    :cond_60
    move-wide/from16 v15, v30

    .line 843
    .local v15, "deltaControllerTxDurationMillis":J
    move-wide/from16 v17, v32

    .line 844
    .local v17, "deltaControllerRxDurationMillis":J
    move-wide/from16 v19, v36

    .line 845
    .local v19, "deltaControllerScanDurationMillis":J
    move-wide/from16 v21, v34

    .line 846
    .local v21, "deltaControllerIdleDurationMillis":J
    nop

    .line 847
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v23

    move-wide/from16 v38, v3

    .end local v3    # "lastScanMs":J
    .local v38, "lastScanMs":J
    sub-long v3, v23, v11

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 848
    .local v3, "deltaControllerEnergyUsedMicroJoules":J
    const/4 v13, 0x0

    move/from16 v40, v13

    move-wide/from16 v41, v15

    move-wide/from16 v43, v17

    move-wide/from16 v45, v19

    move-wide/from16 v47, v21

    .local v13, "wasReset":Z
    goto :goto_db

    .line 819
    .end local v13    # "wasReset":Z
    .end local v15    # "deltaControllerTxDurationMillis":J
    .end local v17    # "deltaControllerRxDurationMillis":J
    .end local v19    # "deltaControllerScanDurationMillis":J
    .end local v21    # "deltaControllerIdleDurationMillis":J
    .end local v38    # "lastScanMs":J
    .local v3, "lastScanMs":J
    :cond_81
    move-wide/from16 v38, v3

    .line 823
    .end local v3    # "lastScanMs":J
    .restart local v38    # "lastScanMs":J
    :goto_83
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v3

    .line 824
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v13

    add-long/2addr v3, v13

    .line 825
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v13

    add-long/2addr v3, v13

    .line 826
    .local v3, "totalOnTimeMs":J
    const-wide/16 v13, 0x2ee

    add-long/2addr v13, v1

    cmp-long v13, v3, v13

    if-gtz v13, :cond_b9

    .line 827
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v13

    .line 828
    .local v13, "deltaControllerEnergyUsedMicroJoules":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v15

    .line 829
    .local v15, "deltaControllerRxDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v17

    .line 830
    .local v17, "deltaControllerTxDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v19

    .line 831
    .local v19, "deltaControllerIdleDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v21

    move-wide/from16 v50, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v50

    move-wide/from16 v52, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v52

    .local v21, "deltaControllerScanDurationMillis":J
    goto :goto_cf

    .line 833
    .end local v13    # "deltaControllerEnergyUsedMicroJoules":J
    .end local v15    # "deltaControllerRxDurationMillis":J
    .end local v17    # "deltaControllerTxDurationMillis":J
    .end local v19    # "deltaControllerIdleDurationMillis":J
    .end local v21    # "deltaControllerScanDurationMillis":J
    :cond_b9
    const-wide/16 v13, 0x0

    .line 834
    .restart local v13    # "deltaControllerEnergyUsedMicroJoules":J
    const-wide/16 v15, 0x0

    .line 835
    .restart local v15    # "deltaControllerRxDurationMillis":J
    const-wide/16 v17, 0x0

    .line 836
    .restart local v17    # "deltaControllerTxDurationMillis":J
    const-wide/16 v19, 0x0

    .line 837
    .restart local v19    # "deltaControllerIdleDurationMillis":J
    const-wide/16 v21, 0x0

    move-wide/from16 v50, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v50

    move-wide/from16 v52, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v52

    .line 839
    .local v15, "deltaControllerTxDurationMillis":J
    .local v17, "deltaControllerRxDurationMillis":J
    .local v19, "deltaControllerScanDurationMillis":J
    .local v21, "deltaControllerIdleDurationMillis":J
    :goto_cf
    const/4 v3, 0x1

    .line 840
    .local v3, "wasReset":Z
    move/from16 v40, v3

    move-wide v3, v13

    move-wide/from16 v41, v15

    move-wide/from16 v43, v17

    move-wide/from16 v45, v19

    move-wide/from16 v47, v21

    .line 851
    .end local v13    # "deltaControllerEnergyUsedMicroJoules":J
    .end local v15    # "deltaControllerTxDurationMillis":J
    .end local v17    # "deltaControllerRxDurationMillis":J
    .end local v19    # "deltaControllerScanDurationMillis":J
    .end local v21    # "deltaControllerIdleDurationMillis":J
    .local v3, "deltaControllerEnergyUsedMicroJoules":J
    .local v40, "wasReset":Z
    .local v41, "deltaControllerTxDurationMillis":J
    .local v43, "deltaControllerRxDurationMillis":J
    .local v45, "deltaControllerScanDurationMillis":J
    .local v47, "deltaControllerIdleDurationMillis":J
    :goto_db
    move-object/from16 v14, p1

    iput-object v14, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 852
    new-instance v49, Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-object/from16 v13, v49

    move-wide/from16 v14, v27

    move/from16 v16, v29

    move-wide/from16 v17, v41

    move-wide/from16 v19, v43

    move-wide/from16 v21, v45

    move-wide/from16 v23, v47

    move-wide/from16 v25, v3

    invoke-direct/range {v13 .. v26}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    .line 860
    .local v13, "delta":Landroid/os/connectivity/WifiActivityEnergyInfo;
    if-eqz v40, :cond_10e

    .line 861
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "BatteryExternalStatsWorker"

    invoke-static {v15, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_10e
    return-object v13
.end method

.method private getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 912
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p1, "consumerIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0, p1}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;)[Z"
        }
    .end annotation

    .line 875
    .local p0, "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    if-nez p0, :cond_4

    .line 876
    const/4 v0, 0x0

    return-object v0

    .line 878
    :cond_4
    const/16 v0, 0x8

    new-array v0, v0, [Z

    .line 879
    .local v0, "buckets":[Z
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 880
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_d
    if-ge v2, v1, :cond_3c

    .line 881
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/power/stats/EnergyConsumer;

    .line 882
    .local v3, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    iget-byte v4, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_3e

    goto :goto_39

    .line 901
    :pswitch_1c
    const/4 v4, 0x4

    aput-boolean v5, v0, v4

    goto :goto_39

    .line 893
    :pswitch_20
    const/4 v4, 0x7

    aput-boolean v5, v0, v4

    .line 894
    goto :goto_39

    .line 890
    :pswitch_24
    const/4 v4, 0x6

    aput-boolean v5, v0, v4

    .line 891
    goto :goto_39

    .line 896
    :pswitch_28
    const/4 v4, 0x0

    aput-boolean v5, v0, v4

    .line 897
    aput-boolean v5, v0, v5

    .line 898
    const/4 v4, 0x2

    aput-boolean v5, v0, v4

    .line 899
    goto :goto_39

    .line 887
    :pswitch_31
    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    .line 888
    goto :goto_39

    .line 884
    :pswitch_35
    const/4 v4, 0x5

    aput-boolean v5, v0, v4

    .line 885
    nop

    .line 880
    .end local v3    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 905
    .end local v2    # "idx":I
    :cond_3c
    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_35
        :pswitch_31
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 90
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    .line 91
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 92
    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    const-string v2, "batterystats-worker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 94
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 95
    return-object v0
.end method

.method static synthetic lambda$updateExternalStatsLocked$7(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 4
    .param p0, "tempWifiReceiver"    # Landroid/os/SynchronousResultReceiver;
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 546
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 547
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 548
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 549
    return-void
.end method

.method private populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;"
        }
    .end annotation

    .line 972
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 973
    return-object v1

    .line 975
    :cond_6
    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    .line 976
    .local v0, "energyConsumers":[Landroid/hardware/power/stats/EnergyConsumer;
    if-eqz v0, :cond_a9

    array-length v2, v0

    if-nez v2, :cond_11

    goto/16 :goto_a9

    .line 981
    :cond_11
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 983
    .local v1, "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 986
    .local v2, "tempTypeToId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/IntArray;>;"
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_80

    aget-object v5, v0, v4

    .line 988
    .local v5, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    iget v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    if-eqz v6, :cond_5e

    .line 989
    iget-byte v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    packed-switch v6, :pswitch_data_aa

    .line 995
    :pswitch_2b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnergyConsumer \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' has unexpected ordinal "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryExternalStatsWorker"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    goto :goto_7d

    .line 1000
    :cond_5e
    :pswitch_5e
    iget v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1002
    iget-byte v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/IntArray;

    .line 1003
    .local v6, "ids":Landroid/util/IntArray;
    if-nez v6, :cond_78

    .line 1004
    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    move-object v6, v7

    .line 1005
    iget-byte v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1007
    :cond_78
    iget v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v6, v7}, Landroid/util/IntArray;->add(I)V

    .line 986
    .end local v5    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    .end local v6    # "ids":Landroid/util/IntArray;
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1010
    :cond_80
    new-instance v3, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 1012
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1013
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_90
    if-ge v4, v3, :cond_a8

    .line 1014
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1015
    .local v5, "consumerType":I
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/IntArray;

    invoke-virtual {v6}, Landroid/util/IntArray;->toArray()[I

    move-result-object v6

    .line 1016
    .local v6, "consumerIds":[I
    iget-object v7, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1013
    .end local v5    # "consumerType":I
    .end local v6    # "consumerIds":[I
    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    .line 1018
    .end local v4    # "i":I
    :cond_a8
    return-object v1

    .line 977
    .end local v1    # "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    .end local v2    # "tempTypeToId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/IntArray;>;"
    .end local v3    # "size":I
    :cond_a9
    :goto_a9
    return-object v1

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_2b
        :pswitch_5e
        :pswitch_5e
    .end packed-switch
.end method

.method private scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .registers 7
    .param p2, "syncRunnable"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 364
    .local p1, "lastScheduledSync":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 368
    :cond_15
    if-eqz p1, :cond_23

    .line 371
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_22

    .line 372
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_23

    .line 374
    :cond_22
    return-object p1

    .line 378
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, p4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 409
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 412
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_27

    .line 413
    iput p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 414
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 417
    :cond_27
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 418
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private updateExternalStatsLocked(Ljava/lang/String;IZZI[IZ)V
    .registers 48
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I
    .param p3, "onBattery"    # Z
    .param p4, "onBatteryScreenOff"    # Z
    .param p5, "screenState"    # I
    .param p6, "displayScreenStates"    # [I
    .param p7, "useLatestStates"    # Z

    .line 524
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v0, 0x0

    .line 525
    .local v0, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v3, 0x0

    .line 526
    .local v3, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .line 527
    .local v4, "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    const/4 v5, 0x0

    .line 529
    .local v5, "railUpdated":Z
    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->getMeasuredEnergyLocked(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    .line 531
    .local v6, "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_46

    .line 534
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_37

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 535
    new-instance v7, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v8, "wifi"

    invoke-direct {v7, v8}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 536
    .local v7, "tempWifiReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v9, Lcom/android/server/am/BatteryExternalStatsWorker$3;

    invoke-direct {v9, v1}, Lcom/android/server/am/BatteryExternalStatsWorker$3;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    new-instance v10, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;

    invoke-direct {v10, v7}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 551
    move-object v0, v7

    goto :goto_38

    .line 553
    .end local v7    # "tempWifiReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_37
    move-object v7, v0

    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .local v7, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :goto_38
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 554
    :try_start_3b
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 555
    monitor-exit v8

    .line 556
    const/4 v5, 0x1

    goto :goto_47

    .line 555
    :catchall_43
    move-exception v0

    monitor-exit v8
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_43

    throw v0

    .line 531
    .end local v7    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_46
    move-object v7, v0

    .line 559
    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v7    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :goto_47
    and-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_66

    .line 561
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 562
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_66

    .line 563
    new-instance v8, Landroid/os/SynchronousResultReceiver;

    const-string v9, "bluetooth"

    invoke-direct {v8, v9}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 565
    .local v8, "resultReceiver":Landroid/os/SynchronousResultReceiver;
    new-instance v9, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v9}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    new-instance v10, Lcom/android/server/am/BatteryExternalStatsWorker$4;

    invoke-direct {v10, v1, v8}, Lcom/android/server/am/BatteryExternalStatsWorker$4;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v0, v9, v10}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    .line 587
    move-object v3, v8

    .line 591
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v8    # "resultReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_66
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_92

    .line 593
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_83

    .line 594
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 595
    .local v0, "temp":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v9, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v9}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    new-instance v10, Lcom/android/server/am/BatteryExternalStatsWorker$5;

    invoke-direct {v10, v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$5;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v8, v9, v10}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 609
    move-object v4, v0

    .line 611
    .end local v0    # "temp":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    :cond_83
    if-nez v5, :cond_92

    .line 612
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 613
    :try_start_88
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 614
    monitor-exit v8

    goto :goto_92

    :catchall_8f
    move-exception v0

    monitor-exit v8
    :try_end_91
    .catchall {:try_start_88 .. :try_end_91} :catchall_8f

    throw v0

    .line 618
    :cond_92
    :goto_92
    and-int/lit8 v0, v2, 0x10

    if-eqz v0, :cond_9b

    .line 620
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->fillLowPowerStats()V

    .line 623
    :cond_9b
    invoke-static {v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 624
    .local v8, "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    invoke-static {v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 625
    .local v15, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    const/4 v9, 0x0

    .line 627
    .local v9, "modemInfo":Landroid/telephony/ModemActivityInfo;
    const-wide/16 v10, 0x7d0

    :try_start_ac
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v10, v11, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_b4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_ac .. :try_end_b4} :catch_d6
    .catch Ljava/lang/InterruptedException; {:try_start_ac .. :try_end_b4} :catch_d6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_ac .. :try_end_b4} :catch_b8

    move-object v9, v0

    .line 633
    move-object/from16 v25, v9

    goto :goto_f3

    .line 631
    :catch_b8
    move-exception v0

    .line 632
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v12, "BatteryExternalStatsWorker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exception reading modem stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f1

    .line 629
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_d6
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    const-string v12, "BatteryExternalStatsWorker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "timeout or interrupt reading modem stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 636
    :goto_f1
    move-object/from16 v25, v9

    .end local v9    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .local v25, "modemInfo":Landroid/telephony/ModemActivityInfo;
    :goto_f3
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    if-eqz v0, :cond_155

    if-nez v6, :cond_fa

    goto :goto_155

    .line 640
    :cond_fa
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v9

    .line 641
    :try_start_fd
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryVoltageMvLocked()I

    move-result v0

    move v12, v0

    .line 642
    .local v12, "voltageMv":I
    monitor-exit v9
    :try_end_105
    .catchall {:try_start_fd .. :try_end_105} :catchall_152

    .line 646
    :try_start_105
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v10, v11, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_10d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_105 .. :try_end_10d} :catch_12e
    .catch Ljava/lang/InterruptedException; {:try_start_105 .. :try_end_10d} :catch_12e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_105 .. :try_end_10d} :catch_10e

    .local v0, "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    goto :goto_149

    .line 651
    .end local v0    # "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :catch_10e
    move-exception v0

    .line 652
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception reading getEnergyConsumedAsync: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v9, 0x0

    move-object v0, v9

    .local v9, "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    goto :goto_14a

    .line 647
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v9    # "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :catch_12e
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timeout or interrupt reading getEnergyConsumedAsync: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v0, 0x0

    .line 654
    .local v0, "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :goto_149
    nop

    .line 656
    :goto_14a
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    invoke-virtual {v9, v0, v12}, Lcom/android/server/am/MeasuredEnergySnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;

    move-result-object v9

    move-object v13, v9

    .local v9, "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    goto :goto_157

    .line 642
    .end local v0    # "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    .end local v9    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v12    # "voltageMv":I
    :catchall_152
    move-exception v0

    :try_start_153
    monitor-exit v9
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_152

    throw v0

    .line 637
    :cond_155
    :goto_155
    const/4 v9, 0x0

    move-object v13, v9

    .line 659
    .local v13, "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    :goto_157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 660
    .local v9, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 661
    .local v26, "uptime":J
    const-wide/16 v11, 0x3e8

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    .end local v3    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v4    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    .local v28, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .local v29, "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    mul-long v3, v9, v11

    .line 662
    .local v3, "elapsedRealtimeUs":J
    mul-long v30, v26, v11

    .line 665
    .local v30, "uptimeUs":J
    iget-object v14, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v14

    .line 666
    :try_start_16c
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v21, 0xe

    const/16 v23, 0x0

    move-object/from16 v16, v0

    move-wide/from16 v17, v9

    move-wide/from16 v19, v26

    move-object/from16 v22, p1

    invoke-virtual/range {v16 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V
    :try_end_17d
    .catchall {:try_start_16c .. :try_end_17d} :catchall_33c

    .line 672
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_1df

    .line 673
    if-eqz p7, :cond_1b0

    .line 674
    :try_start_183
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v0
    :try_end_189
    .catchall {:try_start_183 .. :try_end_189} :catchall_1a0

    move v11, v0

    .line 675
    .end local p3    # "onBattery":Z
    .local v11, "onBattery":Z
    :try_start_18a
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v0
    :try_end_190
    .catchall {:try_start_18a .. :try_end_190} :catchall_192

    move v12, v0

    .end local p4    # "onBatteryScreenOff":Z
    .local v0, "onBatteryScreenOff":Z
    goto :goto_1b4

    .line 733
    .end local v0    # "onBatteryScreenOff":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :catchall_192
    move-exception v0

    move/from16 v33, p4

    move-wide/from16 v36, v3

    move/from16 v32, v5

    move-wide/from16 v38, v9

    move-object v4, v13

    move-object v3, v14

    move-object v5, v15

    goto/16 :goto_34a

    .end local v11    # "onBattery":Z
    .restart local p3    # "onBattery":Z
    :catchall_1a0
    move-exception v0

    move/from16 v11, p3

    move/from16 v33, p4

    move-wide/from16 v36, v3

    move/from16 v32, v5

    move-wide/from16 v38, v9

    move-object v4, v13

    move-object v3, v14

    move-object v5, v15

    goto/16 :goto_34a

    .line 673
    :cond_1b0
    move/from16 v11, p3

    move/from16 v12, p4

    .line 679
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v11    # "onBattery":Z
    .local v12, "onBatteryScreenOff":Z
    :goto_1b4
    if-nez v13, :cond_1b8

    .line 680
    const/4 v0, 0x0

    .local v0, "cpuClusterChargeUC":[J
    goto :goto_1ba

    .line 682
    .end local v0    # "cpuClusterChargeUC":[J
    :cond_1b8
    :try_start_1b8
    iget-object v0, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->cpuClusterChargeUC:[J
    :try_end_1ba
    .catchall {:try_start_1b8 .. :try_end_1ba} :catchall_1d1

    .line 684
    .restart local v0    # "cpuClusterChargeUC":[J
    :goto_1ba
    move/from16 v32, v5

    .end local v5    # "railUpdated":Z
    .local v32, "railUpdated":Z
    :try_start_1bc
    iget-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5, v11, v12, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(ZZ[J)V
    :try_end_1c1
    .catchall {:try_start_1bc .. :try_end_1c1} :catchall_1c5

    move v5, v11

    move/from16 v33, v12

    goto :goto_1e5

    .line 733
    .end local v0    # "cpuClusterChargeUC":[J
    :catchall_1c5
    move-exception v0

    move-wide/from16 v36, v3

    move-wide/from16 v38, v9

    move/from16 v33, v12

    move-object v4, v13

    move-object v3, v14

    move-object v5, v15

    goto/16 :goto_34a

    .end local v32    # "railUpdated":Z
    .restart local v5    # "railUpdated":Z
    :catchall_1d1
    move-exception v0

    move/from16 v32, v5

    move-wide/from16 v36, v3

    move-wide/from16 v38, v9

    move/from16 v33, v12

    move-object v4, v13

    move-object v3, v14

    move-object v5, v15

    .end local v5    # "railUpdated":Z
    .restart local v32    # "railUpdated":Z
    goto/16 :goto_34a

    .line 672
    .end local v11    # "onBattery":Z
    .end local v12    # "onBatteryScreenOff":Z
    .end local v32    # "railUpdated":Z
    .restart local v5    # "railUpdated":Z
    .restart local p3    # "onBattery":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :cond_1df
    move/from16 v32, v5

    .end local v5    # "railUpdated":Z
    .restart local v32    # "railUpdated":Z
    move/from16 v5, p3

    move/from16 v33, p4

    .line 687
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .local v5, "onBattery":Z
    .local v33, "onBatteryScreenOff":Z
    :goto_1e5
    and-int/lit8 v0, v2, 0x3f

    const/16 v11, 0x3f

    if-ne v0, v11, :cond_201

    .line 688
    :try_start_1eb
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked(J)V

    .line 689
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked(J)V

    goto :goto_201

    .line 733
    :catchall_1f6
    move-exception v0

    move-wide/from16 v36, v3

    move v11, v5

    move-wide/from16 v38, v9

    move-object v4, v13

    move-object v3, v14

    move-object v5, v15

    goto/16 :goto_34a

    .line 692
    :cond_201
    :goto_201
    and-int/lit8 v0, v2, 0x10

    if-eqz v0, :cond_20a

    .line 693
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateRpmStatsLocked(J)V
    :try_end_20a
    .catchall {:try_start_1eb .. :try_end_20a} :catchall_1f6

    .line 697
    :cond_20a
    const-wide/16 v34, -0x1

    if-eqz v13, :cond_23c

    .line 698
    :try_start_20e
    iget-object v0, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->displayChargeUC:[J

    .line 699
    .local v0, "displayChargeUC":[J
    if-eqz v0, :cond_21f

    array-length v12, v0

    if-lez v12, :cond_21f

    .line 702
    iget-object v12, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_217
    .catchall {:try_start_20e .. :try_end_217} :catchall_22f

    move-wide/from16 v36, v3

    move-object/from16 v3, p6

    .end local v3    # "elapsedRealtimeUs":J
    .local v36, "elapsedRealtimeUs":J
    :try_start_21b
    invoke-virtual {v12, v0, v3, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl;->updateDisplayMeasuredEnergyStatsLocked([J[IJ)V

    goto :goto_223

    .line 699
    .end local v36    # "elapsedRealtimeUs":J
    .restart local v3    # "elapsedRealtimeUs":J
    :cond_21f
    move-wide/from16 v36, v3

    move-object/from16 v3, p6

    .line 706
    .end local v3    # "elapsedRealtimeUs":J
    .restart local v36    # "elapsedRealtimeUs":J
    :goto_223
    iget-wide v11, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->gnssChargeUC:J

    .line 707
    .local v11, "gnssChargeUC":J
    cmp-long v4, v11, v34

    if-eqz v4, :cond_240

    .line 708
    iget-object v4, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4, v11, v12, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl;->updateGnssMeasuredEnergyStatsLocked(JJ)V

    goto :goto_240

    .line 733
    .end local v0    # "displayChargeUC":[J
    .end local v11    # "gnssChargeUC":J
    .end local v36    # "elapsedRealtimeUs":J
    .restart local v3    # "elapsedRealtimeUs":J
    :catchall_22f
    move-exception v0

    move-wide/from16 v36, v3

    move-object/from16 v3, p6

    move v11, v5

    move-wide/from16 v38, v9

    move-object v4, v13

    move-object v3, v14

    move-object v5, v15

    .end local v3    # "elapsedRealtimeUs":J
    .restart local v36    # "elapsedRealtimeUs":J
    goto/16 :goto_34a

    .line 697
    .end local v36    # "elapsedRealtimeUs":J
    .restart local v3    # "elapsedRealtimeUs":J
    :cond_23c
    move-wide/from16 v36, v3

    move-object/from16 v3, p6

    .line 712
    .end local v3    # "elapsedRealtimeUs":J
    .restart local v36    # "elapsedRealtimeUs":J
    :cond_240
    :goto_240
    if-eqz v13, :cond_267

    iget-object v0, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    if-eqz v0, :cond_267

    .line 715
    const/4 v0, 0x0

    .local v0, "ord":I
    :goto_247
    iget-object v4, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    array-length v4, v4

    if-ge v0, v4, :cond_267

    .line 716
    iget-object v4, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    aget-wide v11, v4, v0

    .line 717
    .local v11, "totalEnergy":J
    iget-object v4, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    aget-object v4, v4, v0

    .line 718
    .local v4, "uidEnergies":Landroid/util/SparseLongArray;
    iget-object v3, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3, v0, v11, v12, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateCustomMeasuredEnergyStatsLocked(IJLandroid/util/SparseLongArray;)V
    :try_end_259
    .catchall {:try_start_21b .. :try_end_259} :catchall_25e

    .line 715
    .end local v4    # "uidEnergies":Landroid/util/SparseLongArray;
    .end local v11    # "totalEnergy":J
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p6

    goto :goto_247

    .line 733
    .end local v0    # "ord":I
    :catchall_25e
    move-exception v0

    move v11, v5

    move-wide/from16 v38, v9

    move-object v4, v13

    move-object v3, v14

    move-object v5, v15

    goto/16 :goto_34a

    .line 722
    :cond_267
    if-eqz v15, :cond_2ba

    .line 723
    :try_start_269
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0
    :try_end_26d
    .catchall {:try_start_269 .. :try_end_26d} :catchall_2ae

    if-eqz v0, :cond_28c

    .line 724
    if-eqz v13, :cond_275

    .line 725
    :try_start_271
    iget-wide v3, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->bluetoothChargeUC:J
    :try_end_273
    .catchall {:try_start_271 .. :try_end_273} :catchall_25e

    move-wide v11, v3

    goto :goto_277

    .line 726
    :cond_275
    move-wide/from16 v11, v34

    :goto_277
    const/16 v0, 0x3f

    .line 727
    .local v11, "btChargeUC":J
    :try_start_279
    iget-object v3, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_27b
    .catchall {:try_start_279 .. :try_end_27b} :catchall_2ae

    move-wide/from16 v38, v9

    .end local v9    # "elapsedRealtime":J
    .local v38, "elapsedRealtime":J
    move-object v9, v3

    move-object v10, v15

    move-object v4, v13

    move-object v3, v14

    .end local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .local v4, "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    move-wide/from16 v13, v38

    move/from16 p3, v5

    move-object v5, v15

    .end local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v5, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local p3    # "onBattery":Z
    move-wide/from16 v15, v26

    :try_start_288
    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    .line 729
    .end local v11    # "btChargeUC":J
    goto :goto_2c3

    .line 730
    .end local v4    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v38    # "elapsedRealtime":J
    .end local p3    # "onBattery":Z
    .local v5, "onBattery":Z
    .restart local v9    # "elapsedRealtime":J
    .restart local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .restart local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_28c
    move/from16 p3, v5

    move-wide/from16 v38, v9

    move-object v4, v13

    move-object v3, v14

    move-object v5, v15

    const/16 v0, 0x3f

    .end local v9    # "elapsedRealtime":J
    .end local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v4    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .local v5, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v38    # "elapsedRealtime":J
    .restart local p3    # "onBattery":Z
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bluetooth info is invalid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c3

    .line 733
    .end local v4    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v38    # "elapsedRealtime":J
    .end local p3    # "onBattery":Z
    .local v5, "onBattery":Z
    .restart local v9    # "elapsedRealtime":J
    .restart local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .restart local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :catchall_2ae
    move-exception v0

    move/from16 p3, v5

    move-wide/from16 v38, v9

    move-object v4, v13

    move-object v3, v14

    move-object v5, v15

    move/from16 v11, p3

    .end local v9    # "elapsedRealtime":J
    .end local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v4    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .local v5, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v38    # "elapsedRealtime":J
    .restart local p3    # "onBattery":Z
    goto/16 :goto_34a

    .line 722
    .end local v4    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v38    # "elapsedRealtime":J
    .end local p3    # "onBattery":Z
    .local v5, "onBattery":Z
    .restart local v9    # "elapsedRealtime":J
    .restart local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .restart local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_2ba
    move/from16 p3, v5

    move-wide/from16 v38, v9

    move-object v4, v13

    move-object v3, v14

    move-object v5, v15

    const/16 v0, 0x3f

    .line 733
    .end local v9    # "elapsedRealtime":J
    .end local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v4    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .local v5, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v38    # "elapsedRealtime":J
    .restart local p3    # "onBattery":Z
    :goto_2c3
    monitor-exit v3
    :try_end_2c4
    .catchall {:try_start_288 .. :try_end_2c4} :catchall_338

    .line 738
    if-eqz v8, :cond_30a

    .line 739
    invoke-virtual {v8}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2f1

    .line 740
    if-eqz v4, :cond_2d3

    .line 741
    iget-wide v9, v4, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->wifiChargeUC:J

    move-wide/from16 v18, v9

    goto :goto_2d5

    :cond_2d3
    move-wide/from16 v18, v34

    .line 742
    .local v18, "wifiChargeUC":J
    :goto_2d5
    iget-object v3, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v9, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v3, v9}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/NetworkStatsManager;

    .line 744
    .local v3, "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v8}, Lcom/android/server/am/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object v17

    move-object/from16 v16, v9

    move-wide/from16 v20, v38

    move-wide/from16 v22, v26

    move-object/from16 v24, v3

    invoke-virtual/range {v16 .. v24}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    .line 746
    .end local v3    # "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    .end local v18    # "wifiChargeUC":J
    goto :goto_30a

    .line 747
    :cond_2f1
    const-string v3, "BatteryExternalStatsWorker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wifi info is invalid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_30a
    :goto_30a
    if-eqz v25, :cond_32e

    .line 752
    if-eqz v4, :cond_313

    .line 753
    iget-wide v9, v4, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->mobileRadioChargeUC:J

    move-wide/from16 v18, v9

    goto :goto_315

    :cond_313
    move-wide/from16 v18, v34

    .line 754
    .local v18, "mobileRadioChargeUC":J
    :goto_315
    iget-object v3, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v9, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v3, v9}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/NetworkStatsManager;

    .line 756
    .restart local v3    # "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v16, v9

    move-object/from16 v17, v25

    move-wide/from16 v20, v38

    move-wide/from16 v22, v26

    move-object/from16 v24, v3

    invoke-virtual/range {v16 .. v24}, Lcom/android/internal/os/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    .line 760
    .end local v3    # "networkStatsManager":Landroid/app/usage/NetworkStatsManager;
    .end local v18    # "mobileRadioChargeUC":J
    :cond_32e
    and-int/lit8 v3, v2, 0x3f

    if-ne v3, v0, :cond_337

    .line 762
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->informThatAllExternalStatsAreFlushed()V

    .line 764
    :cond_337
    return-void

    .line 733
    :catchall_338
    move-exception v0

    move/from16 v11, p3

    goto :goto_34a

    .end local v4    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v32    # "railUpdated":Z
    .end local v33    # "onBatteryScreenOff":Z
    .end local v36    # "elapsedRealtimeUs":J
    .end local v38    # "elapsedRealtime":J
    .local v3, "elapsedRealtimeUs":J
    .local v5, "railUpdated":Z
    .restart local v9    # "elapsedRealtime":J
    .restart local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .restart local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local p4    # "onBatteryScreenOff":Z
    :catchall_33c
    move-exception v0

    move-wide/from16 v36, v3

    move/from16 v32, v5

    move-wide/from16 v38, v9

    move-object v4, v13

    move-object v3, v14

    move-object v5, v15

    move/from16 v11, p3

    move/from16 v33, p4

    .end local v3    # "elapsedRealtimeUs":J
    .end local v9    # "elapsedRealtime":J
    .end local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v4    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .local v5, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v11, "onBattery":Z
    .restart local v32    # "railUpdated":Z
    .restart local v33    # "onBatteryScreenOff":Z
    .restart local v36    # "elapsedRealtimeUs":J
    .restart local v38    # "elapsedRealtime":J
    :goto_34a
    :try_start_34a
    monitor-exit v3
    :try_end_34b
    .catchall {:try_start_34a .. :try_end_34b} :catchall_34c

    throw v0

    :catchall_34c
    move-exception v0

    goto :goto_34a
.end method


# virtual methods
.method public cancelCpuSyncDueToWakelockChange()V
    .registers 3

    .line 296
    monitor-enter p0

    .line 297
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_c

    .line 298
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 301
    :cond_c
    monitor-exit p0

    .line 302
    return-void

    .line 301
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public cancelSyncDueToProcessStateChange()V
    .registers 3

    .line 332
    monitor-enter p0

    .line 333
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_c

    .line 334
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    .line 337
    :cond_c
    monitor-exit p0

    .line 338
    return-void

    .line 337
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method getLastCollectionTimeStamp()J
    .registers 3

    .line 422
    monitor-enter p0

    .line 423
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    .line 424
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getMeasuredEnergyLocked(I)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-nez v0, :cond_a

    goto :goto_50

    .line 933
    :cond_a
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_13

    .line 935
    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 938
    :cond_13
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 939
    .local v0, "energyConsumerIds":Landroid/util/IntArray;
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_20

    .line 940
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 942
    :cond_20
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_28

    .line 943
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 945
    :cond_28
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_30

    .line 946
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 948
    :cond_30
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_38

    .line 949
    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 951
    :cond_38
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_40

    .line 952
    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 955
    :cond_40
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-nez v2, :cond_47

    .line 956
    return-object v1

    .line 958
    :cond_47
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    .line 931
    .end local v0    # "energyConsumerIds":Landroid/util/IntArray;
    :cond_50
    :goto_50
    return-object v1
.end method

.method synthetic lambda$scheduleCleanupDueToRemovedUser$6$com-android-server-am-BatteryExternalStatsWorker(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 344
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 345
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    .line 346
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$scheduleCpuSyncDueToWakelockChange$2$com-android-server-am-BatteryExternalStatsWorker()V
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method synthetic lambda$scheduleCpuSyncDueToWakelockChange$3$com-android-server-am-BatteryExternalStatsWorker()V
    .registers 3

    .line 286
    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 287
    new-instance v0, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method synthetic lambda$scheduleSyncDueToBatteryLevelChange$4$com-android-server-am-BatteryExternalStatsWorker()V
    .registers 3

    .line 308
    const-string v0, "battery-level"

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method synthetic lambda$scheduleSyncDueToProcessStateChange$5$com-android-server-am-BatteryExternalStatsWorker(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 326
    const-string/jumbo v0, "procstate-change"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public scheduleCleanupDueToRemovedUser(I)Ljava/util/concurrent/Future;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 342
    monitor-enter p0

    .line 343
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;I)V

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 348
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 256
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 257
    const-string/jumbo v0, "remove-uid"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 255
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    .end local p1    # "uid":I
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleCpuSyncDueToSettingChange()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 262
    :try_start_1
    const-string/jumbo v0, "setting-change"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 262
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scheduleCpuSyncDueToWakelockChange(J)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 283
    monitor-enter p0

    .line 284
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 290
    monitor-exit p0

    return-object v0

    .line 291
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 397
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_e

    .line 398
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 400
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :cond_e
    monitor-exit p0

    return-void

    .line 396
    .end local p1    # "runnable":Ljava/lang/Runnable;
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 251
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 251
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "flags":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleSyncDueToBatteryLevelChange(J)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 306
    monitor-enter p0

    .line 307
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 310
    monitor-exit p0

    return-object v0

    .line 311
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public scheduleSyncDueToProcessStateChange(IJ)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "delayMillis"    # J

    .line 324
    monitor-enter p0

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;I)V

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    .line 328
    monitor-exit p0

    .line 329
    return-void

    .line 328
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public scheduleSyncDueToScreenStateChange(IZZI[I)Ljava/util/concurrent/Future;
    .registers 7
    .param p1, "flags"    # I
    .param p2, "onBattery"    # Z
    .param p3, "onBatteryScreenOff"    # Z
    .param p4, "screenState"    # I
    .param p5, "perDisplayScreenStates"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI[I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 268
    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_12

    .line 270
    :cond_b
    iput-boolean p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 271
    iput-boolean p3, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 275
    :cond_12
    iput p4, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mScreenState:I

    .line 276
    iput-object p5, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    .line 277
    const-string/jumbo v0, "screen-state"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 278
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public declared-synchronized scheduleWrite()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 382
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_29

    monitor-exit p0

    return-object v0

    .line 386
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :cond_17
    :try_start_17
    const-string/jumbo v0, "write"

    const/16 v1, 0x3f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 389
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-object v0

    .line 381
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 404
    return-void
.end method

.method public systemServicesReady()V
    .registers 13

    .line 203
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 204
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 205
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v3, Landroid/power/PowerStatsInternal;

    invoke-virtual {v2, v3}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/power/PowerStatsInternal;

    .line 207
    .local v2, "psi":Landroid/power/PowerStatsInternal;
    iget-object v3, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 208
    :try_start_21
    iget-object v4, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryVoltageMvLocked()I

    move-result v4

    .line 209
    .local v4, "voltageMv":I
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_ad

    .line 211
    iget-object v5, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 212
    :try_start_2b
    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 213
    iput-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 214
    iput-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 216
    const/4 v3, 0x0

    .line 217
    .local v3, "supportedStdBuckets":[Z
    const/4 v6, 0x0

    .line 218
    .local v6, "customBucketNames":[Ljava/lang/String;
    if-eqz v2, :cond_9c

    .line 219
    nop

    .line 220
    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;

    move-result-object v7

    .line 221
    .local v7, "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    if-eqz v7, :cond_9c

    .line 222
    new-instance v8, Lcom/android/server/am/MeasuredEnergySnapshot;

    invoke-direct {v8, v7}, Lcom/android/server/am/MeasuredEnergySnapshot;-><init>(Landroid/util/SparseArray;)V

    iput-object v8, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_aa

    .line 224
    :try_start_43
    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;

    move-result-object v8

    const-wide/16 v9, 0x7d0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 229
    .local v8, "initialEcrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    iget-object v9, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    invoke-virtual {v9, v8, v4}, Lcom/android/server/am/MeasuredEnergySnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    :try_end_56
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_43 .. :try_end_56} :catch_75
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_56} :catch_75
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_43 .. :try_end_56} :catch_57
    .catchall {:try_start_43 .. :try_end_56} :catchall_aa

    .line 238
    .end local v8    # "initialEcrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    goto :goto_90

    .line 234
    :catch_57
    move-exception v8

    .line 235
    .local v8, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_58
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception reading initial getEnergyConsumedAsync: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 236
    invoke-virtual {v8}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 235
    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 230
    .end local v8    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_75
    move-exception v8

    .line 231
    .local v8, "e":Ljava/lang/Exception;
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timeout or interrupt reading initial getEnergyConsumedAsync: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    nop

    .line 239
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_90
    iget-object v8, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    invoke-virtual {v8}, Lcom/android/server/am/MeasuredEnergySnapshot;->getOtherOrdinalNames()[Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 240
    invoke-static {v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z

    move-result-object v8

    move-object v3, v8

    .line 243
    .end local v7    # "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    :cond_9c
    iget-object v7, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7
    :try_end_9f
    .catchall {:try_start_58 .. :try_end_9f} :catchall_aa

    .line 244
    :try_start_9f
    iget-object v8, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8, v3, v6}, Lcom/android/internal/os/BatteryStatsImpl;->initMeasuredEnergyStatsLocked([Z[Ljava/lang/String;)V

    .line 245
    monitor-exit v7
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_a7

    .line 246
    .end local v3    # "supportedStdBuckets":[Z
    .end local v6    # "customBucketNames":[Ljava/lang/String;
    :try_start_a5
    monitor-exit v5
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_aa

    .line 247
    return-void

    .line 245
    .restart local v3    # "supportedStdBuckets":[Z
    .restart local v6    # "customBucketNames":[Ljava/lang/String;
    :catchall_a7
    move-exception v8

    :try_start_a8
    monitor-exit v7
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    .end local v0    # "wm":Landroid/net/wifi/WifiManager;
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "psi":Landroid/power/PowerStatsInternal;
    .end local v4    # "voltageMv":I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :try_start_a9
    throw v8

    .line 246
    .end local v3    # "supportedStdBuckets":[Z
    .end local v6    # "customBucketNames":[Ljava/lang/String;
    .restart local v0    # "wm":Landroid/net/wifi/WifiManager;
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v2    # "psi":Landroid/power/PowerStatsInternal;
    .restart local v4    # "voltageMv":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :catchall_aa
    move-exception v3

    monitor-exit v5
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_aa

    throw v3

    .line 209
    .end local v4    # "voltageMv":I
    :catchall_ad
    move-exception v4

    :try_start_ae
    monitor-exit v3
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v4
.end method
