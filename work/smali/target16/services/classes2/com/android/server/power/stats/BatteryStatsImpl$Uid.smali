.class public Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# instance fields
.field public mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

.field public mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

.field public mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

.field public mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

.field public mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mChildUids:Landroid/util/SparseArray;

.field public mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

.field public mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

.field public mCurStepSystemTimeMs:J

.field public mCurStepUserTimeMs:J

.field public mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mFullWifiLockOut:Z

.field public mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mInForegroundService:Z

.field public final mJobCompletions:Landroid/util/ArrayMap;

.field public final mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

.field public mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public final mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mLastStepSystemTimeMs:J

.field public mLastStepUserTimeMs:J

.field public mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

.field public mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public final mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public final mPackageStats:Landroid/util/ArrayMap;

.field public final mPids:Landroid/util/SparseArray;

.field public mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

.field public mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

.field public mProcessState:I

.field public mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public final mProcessStats:Landroid/util/ArrayMap;

.field public mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

.field public final mSensorStats:Landroid/util/SparseArray;

.field public final mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

.field public mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mUid:I

.field public mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

.field public mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public final mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

.field public mWifiBatchedScanBinStarted:I

.field public mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

.field public mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mWifiMulticastWakelockCount:I

.field public mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mWifiRunning:Z

.field public mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mWifiScanStarted:Z

.field public mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMobileRadioApWakeupCount(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiRadioApWakeupCount(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmMobileRadioApWakeupCount(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWifiRadioApWakeupCount(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCpuActiveTimeCounter(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetProcStateScreenOffTimeCounter(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcStateScreenOffTimeCounter(J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetProcStateTimeCounter(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcStateTimeCounter(J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;IJJ)V
    .registers 14

    .line 8102
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    const/4 v0, -0x1

    .line 7956
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v0, 0x7

    .line 7975
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    const/4 v1, 0x0

    .line 7978
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mInForegroundService:Z

    .line 8057
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    .line 8085
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 8090
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 8095
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 8100
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 8103
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8104
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    move-wide v2, p5

    .line 8107
    new-instance p6, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {p6, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>(Z)V

    iput-object p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    mul-long/2addr p3, v4

    .line 8108
    invoke-virtual {p6, v2, v3, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 8110
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {p1, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 8111
    invoke-virtual {p1, v2, v3, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 8113
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p3, p3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 8114
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p3, p3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 8115
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p3, p3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 8117
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p1, p0, p3, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;I)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    .line 8122
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$2;

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p1, p0, p3, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$2;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;I)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    .line 8128
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$3;

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p1, p0, p3, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$3;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;I)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    .line 8135
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmWifiRunningTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x4

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    move-object p2, v3

    iput-object v1, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 8137
    new-instance p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object p1, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object p3, p1

    iget-object p1, p3, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmFullWifiLockTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object p4

    iget-object p3, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p5, p3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 p3, 0x5

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 8139
    new-instance p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object p1, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object p3, p1

    iget-object p1, p3, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmWifiScanTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object p4

    iget-object p3, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p5, p3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 p3, 0x6

    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    const/4 p0, 0x5

    .line 8141
    new-array p0, p0, [Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iput-object p0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 8142
    new-instance p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object p1, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object p3, p1

    iget-object p1, p3, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmWifiMulticastTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object p4

    iget-object p3, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p5, p3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 p3, 0x7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 8144
    new-array p0, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iput-object p0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 8145
    new-instance p0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object p1, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 8146
    new-instance p0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object p1, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 8147
    new-instance p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object p1, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 8148
    sget-object p0, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length p0, p0

    new-array p0, p0, [Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iput-object p0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    return-void
.end method


# virtual methods
.method public addIsolatedUid(I)V
    .registers 4

    .line 8259
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    if-nez v0, :cond_c

    .line 8260
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    goto :goto_13

    .line 8261
    :cond_c
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_13

    return-void

    .line 8264
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public createAggregatedPartialWakelockTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;
    .registers 9

    .line 8713
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_18

    .line 8714
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    goto :goto_19

    :cond_18
    move-object v3, p0

    .line 8718
    :goto_19
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public createAudioTurnedOnTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    .line 8601
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1b

    .line 8602
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmAudioTurnedOnTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v4, 0xf

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_1c

    :cond_1b
    move-object v3, p0

    .line 8605
    :goto_1c
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public createBluetoothScanResultBgCounterLocked()Lcom/android/server/power/stats/BatteryStatsImpl$Counter;
    .registers 3

    .line 8773
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-nez v0, :cond_d

    .line 8774
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 8776
    :cond_d
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    return-object p0
.end method

.method public createBluetoothScanResultCounterLocked()Lcom/android/server/power/stats/BatteryStatsImpl$Counter;
    .registers 3

    .line 8766
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-nez v0, :cond_f

    .line 8767
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 8769
    :cond_f
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    return-object p0
.end method

.method public createBluetoothScanTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;
    .registers 9

    .line 8722
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_1d

    .line 8723
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmBluetoothScanOnTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v4, 0x13

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    goto :goto_1e

    :cond_1d
    move-object v3, p0

    .line 8727
    :goto_1e
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public createBluetoothUnoptimizedScanTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;
    .registers 9

    .line 8731
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_18

    .line 8732
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    goto :goto_19

    :cond_18
    move-object v3, p0

    .line 8736
    :goto_19
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public createCameraTurnedOnTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    .line 8673
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1b

    .line 8674
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmCameraTurnedOnTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v4, 0x11

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_1c

    :cond_1b
    move-object v3, p0

    .line 8677
    :goto_1c
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public createFlashlightTurnedOnTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    .line 8649
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1b

    .line 8650
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmFlashlightTurnedOnTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v4, 0x10

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_1c

    :cond_1b
    move-object v3, p0

    .line 8653
    :goto_1c
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public createForegroundActivityTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    .line 8697
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_16

    .line 8698
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v4, 0xa

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_17

    :cond_16
    move-object v3, p0

    .line 8701
    :goto_17
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public createForegroundServiceTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    .line 8705
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_16

    .line 8706
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v4, 0x16

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_17

    :cond_16
    move-object v3, p0

    .line 8709
    :goto_17
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public createVibratorOnTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;
    .registers 5

    .line 8809
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    if-nez v0, :cond_13

    .line 8810
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x9

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, p0, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    .line 8813
    :cond_13
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    return-object p0
.end method

.method public createVideoTurnedOnTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    .line 8625
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1b

    .line 8626
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmVideoTurnedOnTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v4, 0x8

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_1c

    :cond_1b
    move-object v3, p0

    .line 8629
    :goto_1c
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public detachFromTimeBase()V
    .registers 4

    .line 9452
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9453
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9454
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9455
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9456
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9457
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9458
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9459
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9461
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9462
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9463
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9465
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9467
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9468
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9469
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9470
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9472
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9474
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9476
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9478
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9479
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9481
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9482
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9483
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9484
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9486
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    .line 9487
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    .line 9488
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    .line 9490
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 9492
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9493
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9495
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([[Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9497
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9498
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9500
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9502
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9504
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9506
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9508
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 9509
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_ca
    if-ltz v1, :cond_d8

    .line 9510
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    .line 9511
    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->detachFromTimeBase()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_ca

    .line 9513
    :cond_d8
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 9514
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e4
    if-ltz v1, :cond_f2

    .line 9515
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 9516
    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_e4

    .line 9518
    :cond_f2
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 9519
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_fe
    if-ltz v1, :cond_10c

    .line 9520
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 9521
    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_fe

    .line 9524
    :cond_10c
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9525
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9526
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9527
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9530
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_128
    if-ltz v0, :cond_138

    .line 9531
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    .line 9532
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->detachFromTimeBase()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_128

    .line 9535
    :cond_138
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_140
    if-ltz v0, :cond_150

    .line 9536
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 9537
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->detach()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_140

    .line 9539
    :cond_150
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 9541
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_15d
    if-ltz v0, :cond_16d

    .line 9542
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    .line 9543
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->detach()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_15d

    .line 9545
    :cond_16d
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final ensureMultiStateCounters(J)V
    .registers 19

    move-object/from16 v0, p0

    .line 8302
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmPowerStatsCollectorEnabled(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_44

    .line 8306
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v1, :cond_29

    .line 8307
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 8310
    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v5

    const/4 v8, 0x0

    const/16 v4, 0x8

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IIJLcom/android/server/power/stats/BatteryStatsImpl-IA;)V

    iput-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 8313
    :cond_29
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v1, :cond_43

    .line 8314
    new-instance v9, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v10, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 8317
    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v12

    const/4 v15, 0x0

    const/16 v11, 0x8

    move-wide/from16 v13, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IIJLcom/android/server/power/stats/BatteryStatsImpl-IA;)V

    iput-object v9, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    :cond_43
    return-void

    .line 8303
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multi-state counters used in streamlined mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ensureNetworkActivityLocked()V
    .registers 6

    .line 9259
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0xa

    .line 9263
    new-array v1, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 9264
    new-array v1, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_2f

    .line 9266
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    .line 9267
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 9269
    :cond_2f
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method public bridge synthetic getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getAggregatedPartialWakelockTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getAggregatedPartialWakelockTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8336
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public bridge synthetic getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getAudioTurnedOnTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getAudioTurnedOnTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8925
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public bridge synthetic getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getBluetoothControllerActivity()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothControllerActivity()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
    .registers 1

    .line 8506
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object p0
.end method

.method public bridge synthetic getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getBluetoothScanBackgroundTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothScanBackgroundTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8960
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 8963
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getBluetoothScanResultBgCounter()Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothScanResultBgCounter()Lcom/android/server/power/stats/BatteryStatsImpl$Counter;
    .registers 1

    .line 8986
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    return-object p0
.end method

.method public bridge synthetic getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getBluetoothScanResultCounter()Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothScanResultCounter()Lcom/android/server/power/stats/BatteryStatsImpl$Counter;
    .registers 1

    .line 8981
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    return-object p0
.end method

.method public bridge synthetic getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getBluetoothScanTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothScanTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8955
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public bridge synthetic getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothUnoptimizedScanBackgroundTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8973
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 8976
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getBluetoothUnoptimizedScanTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothUnoptimizedScanTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8968
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public bridge synthetic getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getCameraTurnedOnTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getCameraTurnedOnTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8940
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public getChildUid(I)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;
    .registers 2

    .line 8280
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;

    return-object p0
.end method

.method public getCpuActiveTime()J
    .registers 6

    .line 8197
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    return-wide v1

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v3, 0x5

    if-ge v0, v3, :cond_15

    .line 8203
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {v3, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->getCountForProcessState(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    return-wide v1
.end method

.method public getCpuActiveTime(I)J
    .registers 3

    .line 8210
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz p0, :cond_f

    if-ltz p1, :cond_f

    const/4 v0, 0x5

    if-lt p1, v0, :cond_a

    goto :goto_f

    .line 8215
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->getCountForProcessState(I)J

    move-result-wide p0

    return-wide p0

    :cond_f
    :goto_f
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getCpuActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 8

    .line 8184
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_22

    .line 8185
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 8186
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJLcom/android/server/power/stats/BatteryStatsImpl-IA;)V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 8188
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    .line 8189
    invoke-static {v0}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v0

    .line 8188
    invoke-static {v1, v0, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 8192
    :cond_22
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    return-object p0
.end method

.method public getCpuClusterTimes()[J
    .registers 3

    .line 8220
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object p0

    return-object p0
.end method

.method public getCpuFreqTimes([JI)Z
    .registers 6

    const/4 v0, 0x0

    if-ltz p2, :cond_1b

    const/4 v1, 0x7

    if-lt p2, v1, :cond_7

    goto :goto_1b

    .line 8229
    :cond_7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v1, :cond_c

    return v0

    .line 8232
    :cond_c
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v2, :cond_16

    const/4 p1, 0x0

    .line 8233
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    return v0

    .line 8236
    :cond_16
    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCountsLocked([JI)Z

    move-result p0

    return p0

    :cond_1b
    :goto_1b
    return v0
.end method

.method public getCpuFreqTimes(I)[J
    .registers 3

    .line 8175
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object p0

    return-object p0
.end method

.method public getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .registers 8

    const/4 v0, 0x0

    .line 9215
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 9216
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-virtual {v1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4e

    .line 9220
    :cond_d
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-virtual {v2, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v2

    .line 9221
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v3

    .line 9222
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9223
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9224
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9225
    :goto_2a
    sget-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v1, v1

    if-ge v0, v1, :cond_4e

    .line 9226
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    aget-object v1, v1, v0

    if-nez v1, :cond_3b

    .line 9227
    const-string v1, ",0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 9229
    :cond_3b
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9230
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4e
    :goto_4e
    return-void
.end method

.method public getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .registers 9

    const/4 v0, 0x0

    .line 9237
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 9238
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-virtual {v1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_6e

    .line 9242
    :cond_d
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-virtual {v2, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v2

    .line 9243
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v3

    .line 9244
    const-string/jumbo v5, "times="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9245
    const-string v5, "count="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9246
    const-string/jumbo v2, "totalLatencyMs="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9247
    :goto_3e
    sget-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v2, v1

    if-ge v0, v2, :cond_6e

    .line 9248
    const-string v2, "<"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9249
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    aget-object v1, v1, v0

    if-nez v1, :cond_5f

    .line 9250
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 9252
    :cond_5f
    invoke-virtual {v1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9254
    :goto_66
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_6e
    :goto_6e
    return-void
.end method

.method public bridge synthetic getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getFlashlightTurnedOnTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getFlashlightTurnedOnTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8935
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public bridge synthetic getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getForegroundActivityTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundActivityTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8945
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public bridge synthetic getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getForegroundServiceTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundServiceTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8950
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public getFullWifiLockTime(JI)J
    .registers 4

    .line 8836
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p0, :cond_7

    const-wide/16 p0, 0x0

    return-wide p0

    .line 8839
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getJobCompletionStats()Landroid/util/ArrayMap;
    .registers 1

    .line 8361
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .registers 1

    .line 8356
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getMobileRadioActiveCount(I)I
    .registers 2

    .line 9150
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_a

    .line 9151
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public getMobileRadioActiveTime(I)J
    .registers 2

    const/4 p1, -0x1

    .line 9132
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeInProcessState(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getMobileRadioActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 8

    .line 9093
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_29

    .line 9094
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 9095
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJLcom/android/server/power/stats/BatteryStatsImpl-IA;)V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 9097
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    .line 9098
    invoke-static {v0}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v0

    .line 9097
    invoke-static {v1, v0, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 9100
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mupdate(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;JJ)J

    .line 9102
    :cond_29
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    return-object p0
.end method

.method public getMobileRadioActiveTimeInProcessState(I)J
    .registers 3

    .line 9138
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez p0, :cond_7

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_7
    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    .line 9142
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->getTotalCountLocked()J

    move-result-wide p0

    return-wide p0

    .line 9144
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->getCountForProcessState(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMobileRadioApWakeupCount(I)J
    .registers 2

    .line 9192
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_9

    .line 9193
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 1

    .line 8511
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object p0
.end method

.method public bridge synthetic getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getMulticastWakelockStats()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getMulticastWakelockStats()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8346
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public getNetworkActivityBytes(II)J
    .registers 4

    .line 9112
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_10

    if-ltz p1, :cond_10

    array-length v0, p0

    if-ge p1, v0, :cond_10

    .line 9114
    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide p0

    return-wide p0

    :cond_10
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getNetworkActivityPackets(II)J
    .registers 4

    .line 9122
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_10

    if-ltz p1, :cond_10

    array-length v0, p0

    if-ge p1, v0, :cond_10

    .line 9124
    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide p0

    return-wide p0

    :cond_10
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getOrCreateBluetoothControllerActivityLocked()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
    .registers 5

    .line 8523
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_12

    .line 8524
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 8527
    :cond_12
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object p0
.end method

.method public getOrCreateModemControllerActivityLocked()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
    .registers 5

    .line 8531
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_15

    .line 8532
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$sfgetMODEM_TX_POWER_LEVEL_COUNT()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 8535
    :cond_15
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object p0
.end method

.method public getOrCreateWifiControllerActivityLocked()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
    .registers 5

    .line 8515
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_12

    .line 8516
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 8519
    :cond_12
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object p0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .registers 1

    .line 8376
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;
    .registers 4

    .line 10521
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    if-nez v0, :cond_16

    .line 10523
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    .line 10524
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .registers 1

    .line 10504
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .registers 3

    .line 10508
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v0, :cond_14

    .line 10510
    new-instance v0, Landroid/os/BatteryStats$Uid$Pid;

    invoke-direct {v0, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    .line 10511
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public final getProcStateScreenOffTimeCounter(J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 3

    .line 8330
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->ensureMultiStateCounters(J)V

    .line 8331
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    return-object p0
.end method

.method public final getProcStateTimeCounter(J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 3

    .line 8324
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->ensureMultiStateCounters(J)V

    .line 8325
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    return-object p0
.end method

.method public getProcessStateTime(IJI)J
    .registers 8

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_14

    const/4 v2, 0x7

    if-lt p1, v2, :cond_8

    goto :goto_14

    .line 9005
    :cond_8
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p0, p0, p1

    if-nez p0, :cond_f

    return-wide v0

    .line 9008
    :cond_f
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0

    :cond_14
    :goto_14
    return-wide v0
.end method

.method public bridge synthetic getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 7932
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStateTimer(I)Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getProcessStateTimer(I)Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 3

    if-ltz p1, :cond_b

    const/4 v0, 0x7

    if-lt p1, v0, :cond_6

    goto :goto_b

    .line 9014
    :cond_6
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p0, p0, p1

    return-object p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .registers 1

    .line 8371
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    .registers 4

    .line 10369
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    if-nez v0, :cond_16

    .line 10371
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {v0, v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/lang/String;)V

    .line 10372
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v0
.end method

.method public getScreenOffCpuFreqTimes([JI)Z
    .registers 6

    const/4 v0, 0x0

    if-ltz p2, :cond_1b

    const/4 v1, 0x7

    if-lt p2, v1, :cond_7

    goto :goto_1b

    .line 8245
    :cond_7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v1, :cond_c

    return v0

    .line 8248
    :cond_c
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v2, :cond_16

    const/4 p1, 0x0

    .line 8249
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    return v0

    .line 8252
    :cond_16
    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCountsLocked([JI)Z

    move-result p0

    return p0

    :cond_1b
    :goto_1b
    return v0
.end method

.method public getScreenOffCpuFreqTimes(I)[J
    .registers 3

    .line 8180
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object p0

    return-object p0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .registers 1

    .line 8366
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;
    .registers 12

    .line 10575
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    if-nez v0, :cond_1a

    if-nez p2, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 10580
    :cond_e
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;I)V

    .line 10581
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10583
    :cond_1a
    iget-object p2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz p2, :cond_1f

    return-object p2

    .line 10587
    :cond_1f
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmSensorTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_3b

    .line 10589
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10590
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmSensorTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3b
    move-object v6, p2

    .line 10592
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v7, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x3

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 10594
    iput-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object v2
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
    .registers 3

    .line 10535
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    move-result-object p0

    .line 10536
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    if-nez p1, :cond_17

    .line 10538
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object p1

    .line 10539
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-object p1
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .registers 1

    .line 8351
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getSystemCpuTimeUs(I)J
    .registers 2

    .line 9161
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTimeAtCpuSpeed(III)J
    .registers 5

    .line 9167
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_1b

    if-ltz p1, :cond_1b

    .line 9168
    array-length v0, p0

    if-ge p1, v0, :cond_1b

    .line 9169
    aget-object p0, p0, p1

    if-eqz p0, :cond_1b

    if-ltz p2, :cond_1b

    .line 9171
    array-length p1, p0

    if-ge p2, p1, :cond_1b

    .line 9172
    aget-object p0, p0, p2

    if-eqz p0, :cond_1b

    .line 9174
    invoke-virtual {p0, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide p0

    return-wide p0

    :cond_1b
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getUid()I
    .registers 1

    .line 8381
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    return p0
.end method

.method public getUserActivityCount(II)I
    .registers 3

    .line 9042
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 9045
    :cond_6
    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result p0

    return p0
.end method

.method public getUserCpuTimeUs(I)J
    .registers 2

    .line 9156
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getVibratorOnTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getVibratorOnTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 9019
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    return-object p0
.end method

.method public bridge synthetic getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getVideoTurnedOnTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getVideoTurnedOnTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8930
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .registers 1

    .line 8341
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
    .registers 10

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_7a

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_44

    const/16 v0, 0x12

    if-ne p2, v0, :cond_2c

    .line 10669
    iget-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p2, :cond_2b

    .line 10671
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmDrawTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, p2, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v3, 0x12

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 10673
    iput-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    :cond_2b
    return-object p2

    .line 10678
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    move-object v2, p0

    .line 10660
    iget-object p0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p0, :cond_5e

    .line 10662
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmWindowTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 10664
    iput-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    :cond_5e
    return-object p0

    :cond_5f
    move-object v2, p0

    .line 10651
    iget-object p0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p0, :cond_79

    .line 10653
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmFullTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 10655
    iput-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    :cond_79
    return-object p0

    :cond_7a
    move-object v2, p0

    .line 10641
    iget-object p0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_92

    .line 10643
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v6, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 10646
    iput-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object v0

    :cond_92
    return-object p0
.end method

.method public getWifiBatchedScanCount(II)I
    .registers 5

    const/4 v0, 0x0

    if-ltz p1, :cond_13

    const/4 v1, 0x5

    if-lt p1, v1, :cond_7

    goto :goto_13

    .line 8909
    :cond_7
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p0, p0, p1

    if-nez p0, :cond_e

    return v0

    .line 8912
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getCountLocked(I)I

    move-result p0

    return p0

    :cond_13
    :goto_13
    return v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .registers 8

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_14

    const/4 v2, 0x5

    if-lt p1, v2, :cond_8

    goto :goto_14

    .line 8900
    :cond_8
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p0, p0, p1

    if-nez p0, :cond_f

    return-wide v0

    .line 8903
    :cond_f
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0

    :cond_14
    :goto_14
    return-wide v0
.end method

.method public bridge synthetic getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWifiControllerActivity()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object p0

    return-object p0
.end method

.method public getWifiControllerActivity()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
    .registers 1

    .line 8501
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object p0
.end method

.method public getWifiMulticastTime(JI)J
    .registers 4

    .line 8917
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p0, :cond_7

    const-wide/16 p0, 0x0

    return-wide p0

    .line 8920
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getWifiRadioApWakeupCount(I)J
    .registers 2

    .line 9207
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_9

    .line 9208
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiRunningTime(JI)J
    .registers 4

    .line 8828
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez p0, :cond_7

    const-wide/16 p0, 0x0

    return-wide p0

    .line 8831
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getWifiScanActualTime(J)J
    .registers 5

    .line 8873
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_7

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_7
    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    .line 8876
    div-long/2addr p1, v0

    .line 8877
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide p0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public getWifiScanBackgroundCount(I)I
    .registers 3

    .line 8865
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_16

    .line 8868
    :cond_b
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getCountLocked(I)I

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

.method public getWifiScanBackgroundTime(J)J
    .registers 5

    .line 8882
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_1d

    :cond_b
    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    .line 8885
    div-long/2addr p1, v0

    .line 8886
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide p0

    mul-long/2addr p0, v0

    return-wide p0

    :cond_1d
    :goto_1d
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public bridge synthetic getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWifiScanBackgroundTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getWifiScanBackgroundTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8891
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 8894
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    move-result-object p0

    return-object p0
.end method

.method public getWifiScanCount(I)I
    .registers 2

    .line 8852
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 8855
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getCountLocked(I)I

    move-result p0

    return p0
.end method

.method public getWifiScanTime(JI)J
    .registers 4

    .line 8844
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_7

    const-wide/16 p0, 0x0

    return-wide p0

    .line 8847
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .registers 1

    .line 7932
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWifiScanTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getWifiScanTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .registers 1

    .line 8860
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public hasNetworkActivity()Z
    .registers 1

    .line 9107
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasUserActivity()Z
    .registers 1

    .line 9037
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public initUserActivityLocked()V
    .registers 6

    .line 9068
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9069
    sget v0, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v1, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1e

    .line 9071
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    return-void
.end method

.method public isInBackground()Z
    .registers 2

    .line 10490
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public makeProcessState(ILandroid/os/Parcel;)V
    .registers 11

    if-ltz p1, :cond_39

    const/4 v0, 0x7

    if-lt p1, v0, :cond_6

    goto :goto_39

    .line 8992
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    if-nez p2, :cond_24

    .line 8994
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v2, v1

    iget-object v1, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v3, 0xc

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v0, p2, p1

    return-void

    :cond_24
    move-object v2, p0

    .line 8997
    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object v3, v2

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v4, 0xc

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v1, p0, p1

    :cond_39
    :goto_39
    return-void
.end method

.method public makeWifiBatchedScanBin(ILandroid/os/Parcel;)V
    .registers 12

    if-ltz p1, :cond_52

    const/4 v0, 0x5

    if-lt p1, v0, :cond_6

    goto :goto_52

    .line 9051
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmWifiBatchedScanTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_22

    .line 9053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9054
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmWifiBatchedScanTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_22
    move-object v6, v0

    .line 9056
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    if-nez p2, :cond_3f

    .line 9058
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v5, 0xb

    iget-object v7, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v2, p2, p1

    return-void

    :cond_3f
    move-object v4, p0

    .line 9061
    iget-object p0, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v5, 0xb

    iget-object v7, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v2, p0, p1

    :cond_52
    :goto_52
    return-void
.end method

.method public final maybeScheduleExternalStatsSync(II)V
    .registers 5

    if-ne p1, p2, :cond_3

    goto :goto_c

    :cond_3
    const/4 v0, 0x2

    if-nez p1, :cond_8

    if-eq p2, v0, :cond_c

    :cond_8
    if-ne p1, v0, :cond_d

    if-nez p2, :cond_d

    :cond_c
    :goto_c
    return-void

    .line 10478
    :cond_d
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileRadioPowerState:I

    invoke-static {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smisActiveRadioPowerState(I)Z

    move-result p1

    if-nez p1, :cond_1a

    const/16 p1, 0xa

    goto :goto_1c

    :cond_1a
    const/16 p1, 0xe

    .line 10482
    :goto_1c
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmExternalSync(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$ExternalStatsSync;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mConstants:Lcom/android/server/power/stats/BatteryStatsImpl$Constants;

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    invoke-interface {p2, p1, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$ExternalStatsSync;->scheduleSyncDueToProcessStateChange(IJ)V

    return-void
.end method

.method public noteActivityPausedLocked(J)V
    .registers 3

    .line 8793
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p0, :cond_7

    .line 8794
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .registers 3

    .line 8788
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteAudioTurnedOffLocked(J)V
    .registers 3

    .line 8613
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p0, :cond_7

    .line 8614
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteAudioTurnedOnLocked(J)V
    .registers 3

    .line 8609
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteBluetoothScanResultsLocked(I)V
    .registers 3

    .line 8780
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createBluetoothScanResultCounterLocked()Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 8782
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createBluetoothScanResultBgCounterLocked()Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    return-void
.end method

.method public noteBluetoothScanStartedLocked(JZ)V
    .registers 5

    .line 8741
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createBluetoothScanTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    if-eqz p3, :cond_10

    .line 8743
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createBluetoothUnoptimizedScanTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    :cond_10
    return-void
.end method

.method public noteBluetoothScanStoppedLocked(JZ)V
    .registers 5

    .line 8748
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_7

    .line 8749
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_7
    if-eqz p3, :cond_10

    .line 8751
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz p0, :cond_10

    .line 8752
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_10
    return-void
.end method

.method public noteCameraTurnedOffLocked(J)V
    .registers 3

    .line 8685
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p0, :cond_7

    .line 8686
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteCameraTurnedOnLocked(J)V
    .registers 3

    .line 8681
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteFlashlightTurnedOffLocked(J)V
    .registers 3

    .line 8661
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p0, :cond_7

    .line 8662
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(J)V
    .registers 3

    .line 8657
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteForegroundServicePausedLocked(J)V
    .registers 3

    .line 8803
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p0, :cond_7

    .line 8804
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteForegroundServiceResumedLocked(J)V
    .registers 3

    .line 8799
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createForegroundServiceTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .registers 10

    .line 8406
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-nez v0, :cond_27

    const/4 v0, 0x1

    .line 8407
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 8408
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_21

    .line 8409
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmFullWifiLockTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x5

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_22

    :cond_21
    move-object v3, p0

    .line 8412
    :goto_22
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_27
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .registers 4

    .line 8418
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 8419
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 8420
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_c
    return-void
.end method

.method public noteJobsDeferredLocked(IJ)V
    .registers 8

    .line 9582
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 9583
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-eqz p1, :cond_3e

    .line 9586
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    const/4 p1, 0x0

    .line 9588
    :goto_17
    sget-object v0, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v2, v0

    if-ge p1, v2, :cond_3e

    .line 9589
    aget-wide v2, v0, p1

    cmp-long v0, p2, v2

    if-gez v0, :cond_3b

    .line 9590
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    aget-object p3, p2, p1

    if-nez p3, :cond_33

    .line 9591
    new-instance p3, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {p3, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object p3, p2, p1

    .line 9594
    :cond_33
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    aget-object p0, p0, p1

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    return-void

    :cond_3b
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_3e
    return-void
.end method

.method public noteMobileRadioActiveTimeLocked(JJ)V
    .registers 6

    .line 9087
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->ensureNetworkActivityLocked()V

    .line 9088
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mincrement(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;JJ)V

    .line 9089
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method public noteMobileRadioApWakeupLocked()V
    .registers 3

    .line 9184
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_f

    .line 9185
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 9187
    :cond_f
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method public noteNetworkActivityLocked(IJJ)V
    .registers 7

    .line 9076
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->ensureNetworkActivityLocked()V

    if-ltz p1, :cond_18

    const/16 v0, 0xa

    if-ge p1, v0, :cond_18

    .line 9078
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 9079
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object p0, p0, p1

    invoke-virtual {p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void

    .line 9081
    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown network activity type "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string p2, "BatteryStatsImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public noteResetAudioLocked(J)V
    .registers 3

    .line 8619
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p0, :cond_7

    .line 8620
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteResetBluetoothScanLocked(J)V
    .registers 4

    .line 8757
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_7

    .line 8758
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopAllRunningLocked(J)V

    .line 8760
    :cond_7
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz p0, :cond_e

    .line 8761
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopAllRunningLocked(J)V

    :cond_e
    return-void
.end method

.method public noteResetCameraLocked(J)V
    .registers 3

    .line 8691
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p0, :cond_7

    .line 8692
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteResetFlashlightLocked(J)V
    .registers 3

    .line 8667
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p0, :cond_7

    .line 8668
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteResetVideoLocked(J)V
    .registers 3

    .line 8643
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p0, :cond_7

    .line 8644
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteStartGps(J)V
    .registers 4

    const/16 v0, -0x2710

    .line 10741
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteStartSensor(IJ)V

    return-void
.end method

.method public noteStartJobLocked(Ljava/lang/String;J)V
    .registers 4

    .line 10613
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz p0, :cond_d

    .line 10615
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    :cond_d
    return-void
.end method

.method public noteStartSensor(IJ)V
    .registers 5

    const/4 v0, 0x1

    .line 10728
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    move-result-object p0

    .line 10729
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteStartSyncLocked(Ljava/lang/String;J)V
    .registers 4

    .line 10599
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz p0, :cond_d

    .line 10601
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    :cond_d
    return-void
.end method

.method public noteStartWakeLocked(ILjava/lang/String;IJ)V
    .registers 7

    .line 10683
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    if-eqz p2, :cond_11

    .line 10685
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p2

    invoke-virtual {p2, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_11
    if-nez p3, :cond_2a

    .line 10688
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createAggregatedPartialWakelockTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    move-result-object p2

    invoke-virtual {p2, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    if-ltz p1, :cond_2a

    .line 10690
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    move-result-object p0

    .line 10691
    iget p1, p0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-nez p1, :cond_2a

    .line 10692
    iput-wide p4, p0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    :cond_2a
    return-void
.end method

.method public noteStopGps(J)V
    .registers 4

    const/16 v0, -0x2710

    .line 10745
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteStopSensor(IJ)V

    return-void
.end method

.method public noteStopJobLocked(Ljava/lang/String;JI)V
    .registers 6

    .line 10620
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_d

    .line 10622
    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 10624
    :cond_d
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p2, p2, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 10625
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseIntArray;

    if-nez p2, :cond_2b

    .line 10627
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    .line 10628
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const/4 p0, 0x0

    .line 10630
    invoke-virtual {p2, p4, p0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 10631
    invoke-virtual {p2, p4, p0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_35
    return-void
.end method

.method public noteStopSensor(IJ)V
    .registers 5

    const/4 v0, 0x0

    .line 10734
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 10736
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_a
    return-void
.end method

.method public noteStopSyncLocked(Ljava/lang/String;J)V
    .registers 4

    .line 10606
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz p0, :cond_d

    .line 10608
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_d
    return-void
.end method

.method public noteStopWakeLocked(ILjava/lang/String;IJ)V
    .registers 8

    .line 10699
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    if-eqz p2, :cond_11

    .line 10701
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p2

    .line 10702
    invoke-virtual {p2, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_11
    if-nez p3, :cond_3d

    .line 10705
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz p2, :cond_1a

    .line 10706
    invoke-virtual {p2, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_1a
    if-ltz p1, :cond_3d

    .line 10709
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryStats$Uid$Pid;

    if-eqz p0, :cond_3d

    .line 10710
    iget p1, p0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez p1, :cond_3d

    add-int/lit8 p2, p1, -0x1

    .line 10711
    iput p2, p0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3d

    .line 10712
    iget-wide p1, p0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget-wide v0, p0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long/2addr p4, v0

    add-long/2addr p1, p4

    iput-wide p1, p0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    const-wide/16 p1, 0x0

    .line 10713
    iput-wide p1, p0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    :cond_3d
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .registers 3

    .line 9024
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    if-nez v0, :cond_7

    .line 9025
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    :cond_7
    if-ltz p1, :cond_15

    .line 9027
    sget v0, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge p1, v0, :cond_15

    .line 9028
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->stepAtomic()V

    return-void

    .line 9030
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown user activity type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "BatteryStatsImpl"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public noteVibratorOffLocked(J)V
    .registers 3

    .line 8821
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    if-eqz p0, :cond_7

    .line 8822
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->abortLastDuration(J)V

    :cond_7
    return-void
.end method

.method public noteVibratorOnLocked(JJ)V
    .registers 5

    .line 8817
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->addDuration(JJ)V

    return-void
.end method

.method public noteVideoTurnedOffLocked(J)V
    .registers 3

    .line 8637
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p0, :cond_7

    .line 8638
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_7
    return-void
.end method

.method public noteVideoTurnedOnLocked(J)V
    .registers 3

    .line 8633
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-le p1, v1, :cond_d

    const/4 v1, 0x4

    if-ge v0, v1, :cond_d

    shr-int/lit8 p1, p1, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8453
    :cond_d
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    if-ne p1, v0, :cond_12

    return-void

    :cond_12
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1c

    .line 8456
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p1, v1, p1

    .line 8457
    invoke-virtual {p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 8459
    :cond_1c
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 8460
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p1, p1, v0

    if-nez p1, :cond_28

    const/4 p1, 0x0

    .line 8461
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 8463
    :cond_28
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p0, p0, v0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .registers 6

    .line 8468
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 8469
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v2, v0

    .line 8470
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 8471
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    :cond_e
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .registers 4

    .line 8489
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-nez v0, :cond_5

    goto :goto_10

    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 8493
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-nez v0, :cond_10

    .line 8495
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_10
    :goto_10
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .registers 10

    .line 8477
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-nez v0, :cond_25

    .line 8478
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1e

    .line 8479
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmWifiMulticastTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_1f

    :cond_1e
    move-object v3, p0

    .line 8482
    :goto_1f
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_26

    :cond_25
    move-object v3, p0

    .line 8484
    :goto_26
    iget p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    return-void
.end method

.method public noteWifiRadioApWakeupLocked()V
    .registers 3

    .line 9199
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_f

    .line 9200
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 9202
    :cond_f
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .registers 10

    .line 8386
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-nez v0, :cond_27

    const/4 v0, 0x1

    .line 8387
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 8388
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_21

    .line 8389
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmWifiRunningTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x4

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    goto :goto_22

    :cond_21
    move-object v3, p0

    .line 8392
    :goto_22
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_27
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .registers 11

    .line 8426
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-nez v0, :cond_29

    const/4 v0, 0x1

    .line 8427
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 8428
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_23

    .line 8429
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmWifiScanTimers(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x6

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    goto :goto_24

    :cond_23
    move-object v3, p0

    .line 8433
    :goto_24
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    :cond_29
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .registers 4

    .line 8439
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 8440
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 8441
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_c
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .registers 4

    .line 8398
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 8399
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 8400
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_c
    return-void
.end method

.method public final nullIfAllZeros(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;I)[J
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 8287
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->getCountsLocked(I)[J

    move-result-object p1

    if-nez p1, :cond_b

    return-object p0

    .line 8292
    :cond_b
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_e
    if-ltz p2, :cond_1c

    .line 8293
    aget-wide v0, p1, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    return-object p1

    :cond_19
    add-int/lit8 p2, p2, -0x1

    goto :goto_e

    :cond_1c
    return-object p0
.end method

.method public readJobCompletionsFromParcelLocked(Landroid/os/Parcel;)V
    .registers 11

    .line 9564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 9565
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_35

    .line 9567
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_32

    .line 9570
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    move v6, v1

    :goto_1d
    if-ge v6, v4, :cond_2d

    .line 9572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 9573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 9574
    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 9576
    :cond_2d
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_35
    return-void
.end method

.method public readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 4

    .line 10552
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 10553
    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 10554
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 4

    .line 10546
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 10547
    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 10548
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 5

    .line 10558
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {v0, v1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)V

    .line 10559
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    .line 10561
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 10563
    :cond_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x0

    .line 10564
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 10566
    :cond_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_36

    const/4 p1, 0x2

    .line 10567
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 10569
    :cond_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_45

    const/16 p1, 0x12

    .line 10570
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_45
    return-void
.end method

.method public removeIsolatedUid(I)V
    .registers 3

    .line 8271
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    :goto_a
    if-gez p1, :cond_d

    return-void

    .line 8275
    :cond_d
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .registers 6

    .line 10721
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 10723
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    :cond_9
    return-void
.end method

.method public reset(JJI)Z
    .registers 12

    .line 9280
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 9281
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 9283
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 p2, 0x1

    const/4 p5, 0x0

    if-eqz p1, :cond_19

    .line 9284
    invoke-virtual {p1, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result p1

    xor-int/2addr p1, p2

    .line 9285
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    or-int/2addr p1, v0

    goto :goto_1a

    :cond_19
    move p1, p5

    .line 9287
    :goto_1a
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_27

    .line 9288
    invoke-virtual {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result v0

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    .line 9289
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    or-int/2addr p1, v0

    .line 9291
    :cond_27
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_34

    .line 9292
    invoke-virtual {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->reset(ZJ)Z

    move-result v0

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    .line 9293
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    or-int/2addr p1, v0

    .line 9295
    :cond_34
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_54

    move v0, p5

    :goto_39
    const/4 v1, 0x5

    if-ge v0, v1, :cond_4b

    .line 9297
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_48

    .line 9298
    invoke-virtual {v1, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 9301
    :cond_4b
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_52

    move v0, p2

    goto :goto_53

    :cond_52
    move v0, p5

    :goto_53
    or-int/2addr p1, v0

    .line 9303
    :cond_54
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_66

    .line 9304
    invoke-virtual {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result v0

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    .line 9305
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-lez v0, :cond_64

    move v0, p2

    goto :goto_65

    :cond_64
    move v0, p5

    :goto_65
    or-int/2addr p1, v0

    .line 9308
    :cond_66
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v0

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    .line 9309
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v0

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    .line 9310
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v0

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    .line 9311
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v0

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    .line 9312
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v0

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    .line 9313
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v0

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    .line 9314
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v0

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    .line 9315
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v0

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    .line 9316
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v0

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    .line 9318
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9319
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9321
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_d5

    move v0, p5

    :goto_bd
    const/4 v1, 0x7

    if-ge v0, v1, :cond_cd

    .line 9323
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-static {v1, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v1

    xor-int/2addr v1, p2

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    .line 9325
    :cond_cd
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    if-eq v0, v1, :cond_d3

    move v0, p2

    goto :goto_d4

    :cond_d3
    move v0, p5

    :goto_d4
    or-int/2addr p1, v0

    .line 9327
    :cond_d5
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    if-eqz v0, :cond_e9

    .line 9328
    invoke-virtual {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->reset(ZJ)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 9329
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->detach()V

    const/4 v0, 0x0

    .line 9330
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    goto :goto_e9

    :cond_e8
    move p1, p2

    .line 9336
    :cond_e9
    :goto_e9
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9338
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9339
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9340
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9341
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9343
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;ZJ)Z

    .line 9344
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;ZJ)Z

    .line 9345
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;ZJ)Z

    .line 9347
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9348
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9350
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([[Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9352
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9353
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9356
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9357
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9359
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9361
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9363
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9365
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9368
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 9369
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, p2

    :goto_153
    if-ltz v1, :cond_169

    .line 9370
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    .line 9371
    invoke-virtual {v2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->reset(J)Z

    move-result v2

    if-eqz v2, :cond_165

    .line 9372
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_166

    :cond_165
    move p1, p2

    :goto_166
    add-int/lit8 v1, v1, -0x1

    goto :goto_153

    :cond_169
    const-wide/16 v0, 0x3e8

    .line 9377
    div-long v0, p3, v0

    .line 9378
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->cleanup(J)V

    .line 9379
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 9380
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, p2

    :goto_17d
    if-ltz v3, :cond_196

    .line 9381
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 9382
    invoke-virtual {v4, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->reset(ZJ)Z

    move-result v5

    if-eqz v5, :cond_192

    .line 9383
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 9384
    invoke-virtual {v4}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->detach()V

    goto :goto_193

    :cond_192
    move p1, p2

    :goto_193
    add-int/lit8 v3, v3, -0x1

    goto :goto_17d

    .line 9389
    :cond_196
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->cleanup(J)V

    .line 9390
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 9391
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, p2

    :goto_1a6
    if-ltz v3, :cond_1bf

    .line 9392
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 9393
    invoke-virtual {v4, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->reset(ZJ)Z

    move-result v5

    if-eqz v5, :cond_1bb

    .line 9394
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 9395
    invoke-virtual {v4}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->detach()V

    goto :goto_1bc

    :cond_1bb
    move p1, p2

    :goto_1bc
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a6

    .line 9400
    :cond_1bf
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;->cleanup(J)V

    .line 9401
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 9403
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9404
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9405
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9406
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    invoke-static {v0, p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 9408
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    move-result p5

    sub-int/2addr p5, p2

    :goto_1e4
    if-ltz p5, :cond_1fe

    .line 9409
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    .line 9410
    invoke-virtual {v0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->reset(J)Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 9411
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p5}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1fb

    :cond_1fa
    move p1, p2

    :goto_1fb
    add-int/lit8 p5, p5, -0x1

    goto :goto_1e4

    .line 9417
    :cond_1fe
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    sub-int/2addr p3, p2

    :goto_205
    if-ltz p3, :cond_215

    .line 9418
    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 9419
    invoke-virtual {p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->detach()V

    add-int/lit8 p3, p3, -0x1

    goto :goto_205

    .line 9421
    :cond_215
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    .line 9423
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    sub-int/2addr p3, p2

    :goto_221
    if-ltz p3, :cond_239

    .line 9424
    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/BatteryStats$Uid$Pid;

    .line 9425
    iget p4, p4, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez p4, :cond_231

    move p1, p2

    goto :goto_236

    .line 9428
    :cond_231
    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_236
    add-int/lit8 p3, p3, -0x1

    goto :goto_221

    .line 9433
    :cond_239
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    sub-int/2addr p3, p2

    :goto_240
    if-ltz p3, :cond_250

    .line 9434
    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    .line 9435
    invoke-virtual {p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->detach()V

    add-int/lit8 p3, p3, -0x1

    goto :goto_240

    .line 9437
    :cond_250
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    const-wide/16 p3, 0x0

    .line 9439
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    .line 9440
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepSystemTimeMs:J

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepUserTimeMs:J

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method public setProcessStateForTest(IJ)V
    .registers 5

    .line 8154
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    .line 8155
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcStateTimeCounter(J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;IJ)V

    .line 8156
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcStateScreenOffTimeCounter(J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;IJ)V

    .line 8158
    invoke-static {p1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result p1

    .line 8159
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 8160
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 8162
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWifiControllerActivity()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 8164
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 8167
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getBluetoothControllerActivity()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 8169
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    :cond_34
    return-void
.end method

.method public updateOnBatteryBgTimeBase(JJ)Z
    .registers 12

    .line 10494
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_11
    move v2, v0

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 10495
    :goto_15
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result p0

    return p0
.end method

.method public updateOnBatteryScreenOffBgTimeBase(JJ)Z
    .registers 12

    .line 10499
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_11
    move v2, v0

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 10500
    :goto_15
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result p0

    return p0
.end method

.method public updateUidProcessStateLocked(IJJ)V
    .registers 17

    .line 10383
    invoke-static {p1}, Landroid/app/ActivityManager;->isForegroundService(I)Z

    move-result v0

    .line 10384
    invoke-static {p1}, Landroid/os/BatteryStats;->mapToInternalProcessState(I)I

    move-result p1

    .line 10385
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    if-ne v1, p1, :cond_12

    iget-boolean v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mInForegroundService:Z

    if-ne v0, v2, :cond_12

    goto/16 :goto_c4

    :cond_12
    if-eq v1, p1, :cond_b5

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1e

    .line 10391
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v3, v1

    invoke-virtual {v1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_1e
    if-eq p1, v2, :cond_31

    .line 10394
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, p1

    if-nez v1, :cond_2a

    const/4 v1, 0x0

    .line 10395
    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 10397
    :cond_2a
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 10400
    :cond_31
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmPowerStatsCollectorEnabled(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_65

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10401
    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mtrackPerProcStateCpuTimes(Lcom/android/server/power/stats/BatteryStatsImpl;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 10402
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateProcStateCpuTimesLocked(IJJ)V

    .line 10405
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcStateTimeCounter(J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCounter()Lcom/android/internal/os/LongArrayMultiStateCounter;

    move-result-object v1

    .line 10407
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcStateScreenOffTimeCounter(J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCounter()Lcom/android/internal/os/LongArrayMultiStateCounter;

    move-result-object v2

    .line 10409
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    .line 10410
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    .line 10413
    :cond_65
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    .line 10414
    invoke-static {v1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v1

    .line 10416
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    const-wide/16 v2, 0x3e8

    mul-long v6, p4, v2

    mul-long/2addr v2, p2

    .line 10418
    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->updateOnBatteryBgTimeBase(JJ)Z

    .line 10419
    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->updateOnBatteryScreenOffBgTimeBase(JJ)Z

    .line 10422
    invoke-static {p1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v10

    .line 10423
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmSystemReady(Lcom/android/server/power/stats/BatteryStatsImpl;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 10424
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmHistory(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object p1

    iget v9, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsHistory;->recordProcessStateChange(JJII)V

    .line 10427
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p1

    invoke-static {p1, v10, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 10429
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p1

    .line 10430
    invoke-static {p1, v10, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 10433
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWifiControllerActivity()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object p1

    if-eqz p1, :cond_a9

    .line 10435
    invoke-static {p1, v10, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 10439
    :cond_a9
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getBluetoothControllerActivity()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object p1

    if-eqz p1, :cond_b2

    .line 10441
    invoke-static {p1, v10, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 10445
    :cond_b2
    invoke-virtual {p0, v1, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->maybeScheduleExternalStatsSync(II)V

    .line 10449
    :cond_b5
    iget-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mInForegroundService:Z

    if-eq v0, p1, :cond_c4

    if-eqz v0, :cond_bf

    .line 10451
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteForegroundServiceResumedLocked(J)V

    goto :goto_c2

    .line 10453
    :cond_bf
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteForegroundServicePausedLocked(J)V

    .line 10455
    :goto_c2
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mInForegroundService:Z

    :cond_c4
    :goto_c4
    return-void
.end method

.method public writeJobCompletionsToParcelLocked(Landroid/os/Parcel;)V
    .registers 9

    .line 9549
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 9550
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_3e

    .line 9552
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9553
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 9554
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 9555
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v1

    :goto_28
    if-ge v5, v4, :cond_3b

    .line 9557
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 9558
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_3e
    return-void
.end method
